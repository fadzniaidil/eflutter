import 'dart:developer';

import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumComp extends StatefulWidget {
  final int index;
  const AlbumComp({Key? key, required this.index}) : super(key: key);

  @override
  State<AlbumComp> createState() => _AlbumCompState();
}

class _AlbumCompState extends State<AlbumComp> {
  @override
  Widget build(BuildContext context) {
    log(vrlist[1]['title'].toString());
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black]),
          borderRadius: BorderRadius.circular(11),
          image: DecorationImage(
            image: NetworkImage(vrlist[widget.index]['image'].toString()),
            fit: BoxFit.cover,
          )),
      margin: const EdgeInsets.all(10),
      height: 160,
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                vrlist[widget.index]['title'].toString(),
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              margin: const EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                vrlist[widget.index]['author'].toString(),
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
