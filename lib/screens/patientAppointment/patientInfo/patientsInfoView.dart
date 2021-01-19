// import 'package:biolege/MyChamber.dart';
import 'package:biolege/screens/patientAppointment/patientVital/patientVitalView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:biolege/MyAccount.dart';
// import 'screens/MyChamber/MyChamber.dart';

class PatientDetailsInfo extends StatelessWidget {
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
                              ),
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
                      //arrow Button
                      Image.asset(
                        'asset/images/BiolegeOrange.png',
                        height: 20,
                      ),
                    ],
                  ), //arrow_button
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Patient details',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ), //MyProfile
                ],
              ),
            ), //arowMyprofile
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.4),
                    blurRadius: 10,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 110.0,
                      width: 110.0,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.4),
                                blurRadius: 10,
                              )
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ), //PersonImage
                  Center(
                    child: Text(
                      'Agnideep Sengupta',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ), //UserName
                  Center(
                    child: Text(
                      '21 years',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Color.fromRGBO(128, 128, 128, 1)),
                    ),
                  ), //age
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 40.0,
                      width: 200.0,
                      color: Colors.white,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.4),
                                blurRadius: 2,
                              )
                            ],
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                'Info',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: Colors.blue,
                                    fontSize: 13),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 7, bottom: 7),
                              child: VerticalDivider(
                                color: Color.fromRGBO(128, 128, 128, 1),
                              ),
                            ), //divider
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PatientDetailsVital()));
                                },
                                child: Text(
                                  'Vitals',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Color.fromRGBO(128, 128, 128, 1),
                                      fontSize: 13),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ), //InfoVital
                  Center(
                    child: Text(
                      'Edit details',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Nunito',
                          color: Color.fromRGBO(128, 128, 128, 1),
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.people,
                          color: Color.fromRGBO(128, 128, 128, 1),
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ), //gender
                  Container(
                    margin: EdgeInsets.only(left: 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Male',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Color.fromRGBO(128, 128, 128, 1),
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Date of birth',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ), //Date of birth
                  Container(
                    margin: EdgeInsets.only(left: 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '04-09-1998',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.call,
                          color: Color.fromRGBO(128, 128, 128, 1),
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Contact',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ), //Contact
                  Container(
                    margin: EdgeInsets.only(left: 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '8876977257',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.email,
                          color: Color.fromRGBO(128, 128, 128, 1),
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'E-mail',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ), //email
                  Container(
                    margin: EdgeInsets.only(left: 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'agnideepsg02@gmail.com',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color.fromRGBO(128, 128, 128, 1),
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Blood group',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                  ), //Blood group
                  Container(
                    margin: EdgeInsets.only(left: 51),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'A +',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                        )
                      ],
                    ),
                  ), //Address
                  Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      child: Divider(
                        thickness: 1,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    // height: 110.0,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.4),
                              blurRadius: 2,
                            )
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        margin: EdgeInsets.all(9),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Agnideep Sengupta',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 13),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Kedia Puram, VIP Colony, Hojai, Assam-782435',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 13),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact : 8876967257',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ), //card//card
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 120,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff141B41),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'Add Revisit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            'Completed',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
