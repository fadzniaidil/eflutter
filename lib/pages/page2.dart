import 'package:eflutter/controllers/controller2.dart';
import 'package:eflutter/pages/page3.dart';
import 'package:eflutter/tempdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<Controller2>(
          init: Controller2(),
          builder: (c2) {
            return SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.red, Colors.blue, Colors.teal]),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 100,
                          height: 100,
                          child: Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: const Icon(
                                  Icons.tiktok,
                                  size: 100,
                                  color: Color.fromARGB(255, 74, 208, 241),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                child: const Icon(
                                  Icons.tiktok,
                                  size: 100,
                                  color: Color.fromARGB(255, 228, 39, 39),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: const Icon(
                                  Icons.tiktok,
                                  size: 100,
                                  color: Color.fromARGB(255, 8, 8, 8),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "TestApp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: c2.current == 'Username'
                                ? Colors.blue[200]
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              )
                            ]),
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          onTap: () => c2.setDefault(1),
                          onChanged: (value) {
                            username = value;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.people),
                            hintText: 'Username',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: c2.current == 'Password'
                                ? Colors.blue[200]
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              )
                            ]),
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          onTap: () => c2.setDefault(2),
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: c2.current == 'Phone Number'
                                ? Colors.blue[200]
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              )
                            ]),
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          onTap: () => c2.setDefault(2),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.numbers),
                            hintText: 'Phone Number',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() => c2.pickDate(context)),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          height: 50,
                          decoration: BoxDecoration(
                              color: c2.current == c2.dob
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Icon(
                                      Icons.date_range,
                                      color: Colors.grey[600],
                                    )),
                                Text(c2.dob,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18,
                                        color: Colors.grey[600])),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: c2.current == 'Address'
                                ? Colors.blue[200]
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              )
                            ]),
                        margin: const EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          onTap: () => c2.setDefault(3),
                          maxLines: 5,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.telegram),
                              hintText: 'Address',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page3())),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Center(
                              child: Text('Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => c2.urlLauncher(),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Center(
                              child: Text('Main Page',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
