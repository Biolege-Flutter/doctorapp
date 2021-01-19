import 'package:biolege/screens/MyChamber/DetailsDisplay/DetailsDisplayViewModel.dart';
import 'package:biolege/widgets/reusables.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

// import 'package:biolege/MyAccount.dart';

class DetailsDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsDisplayViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: buildAppBarWithLogo(context),
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
                          'images/BiolegeOrange.png',
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
                          'Star health Hospital',
                          style: TextStyle(fontFamily: 'Nunito', fontSize: 18),
                        ),
                        Icon(
                          Icons.edit,
                          size: 20,
                          color: Color(0xff808080),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Designation',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 13,
                              color: Color(0xff808080)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Specialization',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 13,
                                    color: Color(0xff808080)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Color(0xffC4C4C4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'My consultation fee',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 13,
                              color: Color(0xff808080)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          r'$300',
                          style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Days',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 13,
                              color: Color(0xff808080)),
                        ),
                        Icon(
                          Icons.edit,
                          size: 20,
                          color: Color(0xff808080),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Mon',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ), //Location
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Tue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w300),
                                )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Wed',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color.fromRGBO(196, 196, 196, .5)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Thu',
                                    style: TextStyle(
                                        color: Color(0xff808080),
                                        fontSize: 15,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color.fromRGBO(196, 196, 196, .5)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Fri',
                                    style: TextStyle(
                                        color: Color(0xff808080),
                                        fontSize: 15,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color.fromRGBO(196, 196, 196, .5)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  'Sat',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                      fontSize: 15,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color.fromRGBO(196, 196, 196, .5)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  'Sun',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                      fontSize: 15,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ), //list
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Timings',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 13,
                              color: Color(0xff808080)),
                        ),
                        Icon(
                          Icons.edit,
                          size: 20,
                          color: Color(0xff808080),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Monday',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 15),
                        ),
                      ],
                    ), //monday,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '-',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff808080)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                      ],
                    ), //BlankSpace
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Add hours',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Tuesday',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 15),
                        ),
                      ],
                    ), //monday,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '-',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff808080)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                      ],
                    ), //BlankSpace
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Add hours',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Wednesday',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 15),
                        ),
                      ],
                    ), //monday,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '-',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff808080)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          child: TextField(
                            decoration: new InputDecoration(
                              hintText: '',
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF808080)),
                            ),
                          ),
                        ),
                      ],
                    ), //BlankSpace
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Add hours',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color(0xff808080),
                              fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Average time for each patient',
                          style: TextStyle(
                              color: Color(0xff808080),
                              fontFamily: 'Nunito',
                              fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '20 minutes',
                          style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
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
                          'we will divide the slot according to the average\ntime required for the patient',
                          style: TextStyle(
                              color: Color(0xff808080),
                              fontFamily: 'Nunito',
                              fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
              // bottomNavigationBar:
              //     BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
              //   BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.assignment_turned_in,
              //       color: Color.fromRGBO(196, 196, 196, 1),
              //     ),
              //     title: Text(
              //       'Appointments',
              //       style: TextStyle(
              //           fontFamily: 'Nunito', fontSize: 11, color: Color(0xff808080)),
              //     ),
              //   ),
              //   BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.location_city,
              //       color: Color(0xffFF8900),
              //     ),
              //     title: Text(
              //       'My chamber',
              //       style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //     ),
              //   ),
              //   BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.notifications,
              //       color: Color.fromRGBO(196, 196, 196, 1),
              //     ),
              //     title: Text(
              //       'Notification',
              //       style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //     ),
              //   ),
              //   BottomNavigationBarItem(
              //     icon: InkWell(
              //       onTap: () {
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => MyAccountView()));
              //       },
              //       child: Icon(
              //         Icons.account_circle,
              //         color: Color.fromRGBO(196, 196, 196, 1),
              //       ),
              //     ),
              //     title: Text(
              //       'Profile',
              //       style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //     ),
              //   )
              // ]),
            ),
        viewModelBuilder: () => DetailsDisplayViewModel());
  }
}
