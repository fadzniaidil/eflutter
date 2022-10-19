import 'dart:developer';

import 'package:eflutter/configs/iu_config.dart';
import 'package:eflutter/pages/component/spotifyalbum.dart';
import 'package:eflutter/pages/component/spotifyrecommended.dart';
import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color.fromARGB(255, 25, 20, 20);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    log(vrlist[0]['title'].toString());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello, $username',
          style: GoogleFonts.montserratAlternates(fontWeight: FontWeight.bold),
        ),
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      bottomNavigationBar: Container(
        height: 70,
        width: wid(context),
        color: Colors.black54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              'https://i.scdn.co/image/ab67616d0000b273831f99bf6eb5be7b8eac0b48',
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sugar',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('Maroon 5', style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Center(
                child: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Center(
                child: Icon(
                  Icons.swap_vert_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              child: const Center(
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: height,
          width: width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red, Colors.black]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.network(
                      'https://media.japanesestation.com/images/555x312/2021/04/24/91556-jsjukebox.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 200,
                  width: width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Image(
                            image: AssetImage(icon),
                            height: 30,
                          ),
                          Text('DAVID WONG',
                              style: GoogleFonts.montserratSubrayada(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Text(
                            'Exclusive',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Text(
                            'Kusungguh Bodoh',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'MY PLAYLIST',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Column(
              children: [
                SizedBox(
                    height: 200,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: vrlist.length,
                        itemBuilder: (context, index) {
                          return AlbumComp(index: index);
                        })),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'RECOMMENDED',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: SizedBox(
                  width: width,
                  height: 500,
                  child: ListView.builder(
                      itemCount: vrlist.length,
                      itemBuilder: ((context, index) {
                        return Recommended(index: index);
                      }))),
            )
          ]),
        ),
      ),
    ));
  }
}
