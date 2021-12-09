import 'package:flutter/material.dart';

class Postlar extends StatefulWidget {
  const Postlar({Key? key}) : super(key: key);

  @override
  _PostlarState createState() => _PostlarState();
}

class _PostlarState extends State<Postlar> {
  @override
  Widget build(BuildContext context) {
    //final genislik = MediaQuery.of(context).size.width;
    var yukseklik = MediaQuery.of(context).size.height;

    return Container(
      color: Color(0xFFF6F2F2),
      height: yukseklik / 3.5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storys(
            683,
            50,
            Color(0xFFF6F2F2),
            "lib/stry/btc.png",
          ),
          storys(
            683,
            50,
            Color(0xFFF6F2F2),
            "lib/stry/elon.png",
          ),
          storys(
            683,
            50,
            Color(0xFFF6F2F2),
            "lib/stry/messi.png",
          ),
          storys(
            683,
            50,
            Color(0xFFF6F2F2),
            "lib/stry/ggg.png",
          ),
        ],
      ),
    );
  }

  Widget storys(var getYukseklik, var getGenislik, Color clr, String foto) {
    return Container(
        height: getYukseklik / 3.8, child: Image(image: AssetImage("$foto")));
  }
}
