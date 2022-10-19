import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommended extends StatelessWidget {
  final int index;

  const Recommended({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Center(
                  child: Text(
                (index + 1).toString(),
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )),
            ),
            Container(
              width: 270,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vrlist[index]['title'].toString(),
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    vrlist[index]['author'].toString(),
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.bookmark_outline_outlined,
              color: Colors.white,
            )
          ],
        ),
        const Divider(
          indent: 10,
          endIndent: 10,
        )
      ],
    );
  }
}
