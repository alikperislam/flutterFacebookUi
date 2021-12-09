import 'package:flutter/material.dart';
import 'package:flutter_application_1/share.dart';

import 'Postlar.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // screen color

      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // appbar
                  appbarRp(),
                  Column(
                    children: [
                      // kutu
                      box(),
                      // hikayeler
                      Postlar(),
                      // paylaşım :
                      Share(),
                      Share(),
                      Share(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget appbarRp() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "facebook",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'kanitRegular',
                  color: Color(0xFF1776F7),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 40,
                        color: Colors.grey,
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 35,
                color: Color(0xFF1776F7),
              ),
              Icon(
                Icons.video_settings_sharp,
                size: 35,
                color: Colors.grey,
              ),
              Icon(
                Icons.computer_rounded,
                size: 35,
                color: Colors.grey,
              ),
              Icon(
                Icons.person_pin_circle_sharp,
                size: 35,
                color: Colors.grey,
              ),
              Icon(
                Icons.alarm,
                size: 35,
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomY(),
              bottomX(),
              bottomX(),
              bottomX(),
              bottomX(),
              bottomX(),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget bottomX() => Container(
        width: 55,
        height: 2,
        color: Colors.grey,
      );
  Widget bottomY() => Container(
        width: 55,
        height: 2,
        color: Color(0xFF1776F7),
      );

  Widget box() {
    var deger = "Ne düşünüyorsun ?";
    return Column(
      children: [
        // fotoğraf - textbox
        Row(
          children: [
            Icon(
              Icons.person,
              size: 40,
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  deger = " ";
                });
              },
              child: textX(deger),
            ),
          ],
        ),
        // 3 buton
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttons("Canlı", Icons.camera_alt_outlined, Color(0xFF559018)),
            buttons("Fotoğraf", Icons.photo, Color(0xFFBFBFBF)),
            buttons("Oda", Icons.video_call, Color(0xFFC50000)),
          ],
        ),
      ],
    );
  }

  Widget textX(String d) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: () {
          setState(() {
            d = " ";
          });
        },
        child: Container(
          width: 289,
          height: 40,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "$d",
                style: TextStyle(
                    fontFamily: 'kanitRegular',
                    fontSize: 19,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }

  Widget buttons(String txt, IconData ico, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Container(
        child: Row(
          children: [
            Icon(
              ico,
              color: color,
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "$txt",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'kanitRegular',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
