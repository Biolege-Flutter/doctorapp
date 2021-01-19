import 'package:biolege/app/size_configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:biolege/MyAccount.dart';
// import 'package:biolege/PatientDetailsInfo.dart';
// import 'package:biolege/Article.dart';

// import 'screens/MyAccount/myAccountView.dart';

class Patients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.location_on,
                                size: 17,
                                color: Color(0xff808080),
                              ),
                              Text(
                                'Dona clinic',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: Color(0xff808080),
                                    fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Text("Today"),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      //arrow Button
                      Image.asset(
                        'asset/images/BiolegeOrange.png',
                        height: 20,
                      ),
                    ],
                  ), //arrow_button
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Patients',
                        style: TextStyle(fontFamily: 'Nunito', fontSize: 18),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Sept 12, 2020',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Nunito',
                                    color: Color(0xff808080)),
                              ),
                              Icon(
                                Icons.calendar_today,
                                size: 18,
                                color: Color(0xff808080),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ), //patients
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 10,
                            )
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ), //imageBlank
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anwar Ali Khan',
                                      style: TextStyle(
                                          fontFamily: 'Nunito', fontSize: 15),
                                    )
                                  ],
                                ), //Himmat
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'First visit',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 13,
                                          color: Color(0xff808080)),
                                    ),
                                  ],
                                ), //chest
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '11:30 AM',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Color(0xff808080)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 10,
                            )
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ), //imageBlank
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anwar Ali Khan',
                                      style: TextStyle(
                                          fontFamily: 'Nunito', fontSize: 15),
                                    )
                                  ],
                                ), //Himmat
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'First visit',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 13,
                                          color: Color(0xff808080)),
                                    ),
                                  ],
                                ), //chest
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '11:30 AM',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Color(0xff808080)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 10,
                            )
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                ), //imageBlank
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anwar Ali Khan',
                                      style: TextStyle(
                                          fontFamily: 'Nunito', fontSize: 15),
                                    )
                                  ],
                                ), //Himmat
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'First visit',
                                      style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 13,
                                          color: Color(0xff808080)),
                                    ),
                                  ],
                                ), //chest
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '11:30 AM',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 12,
                                      color: Color(0xff808080)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
