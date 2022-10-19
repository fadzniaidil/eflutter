import 'package:eflutter/configs/iu_config.dart';
import 'package:eflutter/controllers/controller1.dart';
import 'package:eflutter/pages/component/list_component4.dart';
import 'package:eflutter/pages/page2.dart';
import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        shadowColor: Colors.black,
        title: const Center(
          child: Text(
            'Kursus Flutter',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: GetBuilder<Controller1>(
          init: Controller1(),
          builder: (c1) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(bg),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    primaryColor.withAlpha(150),
                    BlendMode.lighten,
                  ),
                ),
              ),
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    //body 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 350,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage(gf))),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    //body 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //body 2.1
                        Container(
                          color: Colors.blue,
                          height: 150,
                          width: 150,
                          child: Image.network(
                            'https://static.wikia.nocookie.net/de87bbfb-fb54-4ffb-bff3-1e67aaa304c3',
                            fit: BoxFit.fill,
                          ),
                        ),
                        //body 2.2
                        SizedBox(
                          height: 150,
                          child: Column(
                            children: [
                              Container(
                                alignment: AlignmentDirectional.center,
                                height: 50,
                                width: 150,
                                color: Colors.red,
                                child: const Text(
                                  'Title',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                    'This is just dummy text terlalu panjang sampai lebih ui'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //body 2.1
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.blue,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyvEVnVjIin1HPVmd4KfEvcHbqqE-Kf4xpRQ&usqp=CAU'),
                        ),
                        //body 2.2
                        SizedBox(
                          height: 150,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  c1.changeText();
                                },
                                child: Container(
                                  alignment: AlignmentDirectional.center,
                                  height: 50,
                                  width: 150,
                                  color: Colors.red,
                                  child: Text(
                                    c1.b,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                    'This is just dummy text terlalu panjang sampai lebih ui'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //body 2.1
                        Container(
                            color: Colors.blue,
                            height: 150,
                            width: 150,
                            child: Image.network(
                              'https://c.tenor.com/RUPfwcBRSWMAAAAd/cursed-emoji.gif',
                              fit: BoxFit.fill,
                            )),
                        //body 2.2
                        SizedBox(
                          height: 150,
                          child: Column(
                            children: [
                              InkWell(
                                highlightColor: Colors.amber,
                                splashColor: Colors.blue,
                                onTap: () {
                                  c1.changeText2();
                                },
                                child: Container(
                                  alignment: AlignmentDirectional.center,
                                  height: 50,
                                  width: 150,
                                  color: Colors.red,
                                  child: Text(
                                    c1.a,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                    'This is just dummy text terlalu panjang sampai lebih ui'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    //body 3
                    Column(
                      children: [
                        InkWell(
                          onTap: (() => c1.chnageBanner()),
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            height: 50,
                            width: 200,
                            color: c1.banner,
                            child: const Text('Body 3 Title'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.amber,
                              child: Center(child: Text(username)),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.amber,
                              child: Center(child: Text(password)),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            child: (c1.isLoad)
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        modelData!.data.participant.length,
                                    itemBuilder: (context, index) {
                                      return ListComp4(
                                          index: index,
                                          ontap: (val) {
                                            c1.funcClick(val);
                                          });
                                    },
                                  ))
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Page2(),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        color: Colors.purple,
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 50,
                        child: const Center(child: Text('Next Page')),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
