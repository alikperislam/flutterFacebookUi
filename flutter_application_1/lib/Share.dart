import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    var yukseklik = MediaQuery.of(context).size.height;
    var genislik = MediaQuery.of(context).size.width;
    int sayi = 1592;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Image(image: AssetImage("lib/stry/o.jpg")),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Haber Otag",
                style: TextStyle(fontFamily: 'kanitRegular', fontSize: 23),
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                size: 40,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Nissan, GTR - R35 modelinin seri üretimine 2023'te son verecek.",
              style: TextStyle(fontFamily: 'kanitRegular', fontSize: 18),
            ),
          ),
          Container(
            child: Image(image: AssetImage("lib/stry/gtr.jpg")),
            width: 300,
            height: 180,
            decoration: BoxDecoration(),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              Text(
                "$sayi",
                style: TextStyle(
                    fontFamily: 'kanitRegular',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "353 yorum ' 26 paylaşım",
                style: TextStyle(
                    fontFamily: 'kanitRegular',
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {});
              print(sayi);
            },
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sayi = sayi + 1;
                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.favorite_border,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Beğen",
                          style: TextStyle(
                              fontFamily: 'kanitRegular',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.comment_outlined,
                          size: 35,
                        ),
                      ),
                      Text(
                        "Yorum",
                        style: TextStyle(
                            fontFamily: 'kanitRegular',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.share,
                          size: 35,
                        ),
                      ),
                      Text(
                        "Paylaş",
                        style: TextStyle(
                            fontFamily: 'kanitRegular',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
