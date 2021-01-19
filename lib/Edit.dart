import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:biolege/MyAccount.dart';

class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 25,
                    height: 30,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 0.54),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(234, 234, 234, 1)),
                  ),
                ), //arrow
                Image.asset(
                  'asset/images/BiolegeOrange.png',
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My articles',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 18),
                ),
                Icon(
                  Icons.mode_edit,
                  size: 20,
                  color: Color(0xff808080),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 13),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(196, 196, 196, .7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Title of article',
                        style: TextStyle(
                            fontFamily: 'Nunito', color: Color(0xff808080)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 13),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(196, 196, 196, .7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Article ',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xff808080)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
