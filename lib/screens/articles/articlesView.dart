import 'package:biolege/screens/articles/articleViewModel.dart';
import 'package:biolege/screens/articles/editArticcle/editArticleView.dart';
import 'package:flutter/material.dart';
import 'package:biolege/Howto.dart';
import 'package:stacked/stacked.dart';

class ArticleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, model, child) => Scaffold(
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
                          'My articles',
                          style: TextStyle(fontFamily: 'Nunito', fontSize: 18),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditArticleView()));
                          },
                          child: Icon(
                            Icons.mode_edit,
                            size: 20,
                            color: Color(0xff808080),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Howto()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 14, horizontal: 13),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(196, 196, 196, .7),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'How to deal with sudden chest pain ?',
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, .7),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'How to deal with sudden chest pain ?',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 13),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(196, 196, 196, .7),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'How to deal with sudden chest pain ?',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
              // bottomNavigationBar: BottomNavigationBar(
              //     type: BottomNavigationBarType.fixed,
              //     items: [
              //       BottomNavigationBarItem(
              //         icon: InkWell(
              //           onTap: () {
              //             Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                     builder: (context) => PatientDetailsInfo()));
              //           },
              //           child: Icon(
              //             Icons.assignment_turned_in,
              //             color: Color.fromRGBO(196, 196, 196, 1),
              //           ),
              //         ),
              //         title: Text(
              //           'Appointments',
              //           style: TextStyle(
              //               fontFamily: 'Nunito',
              //               fontSize: 11,
              //               color: Color(0xff808080)),
              //         ),
              //       ),
              //       BottomNavigationBarItem(
              //         icon: Icon(
              //           Icons.location_city,
              //           color: Color(0xffFF8900),
              //         ),
              //         title: Text(
              //           'My chamber',
              //           style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //         ),
              //       ),
              //       BottomNavigationBarItem(
              //         icon: Icon(
              //           Icons.notifications,
              //           color: Color.fromRGBO(196, 196, 196, 1),
              //         ),
              //         title: Text(
              //           'Notification',
              //           style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //         ),
              //       ),
              //       BottomNavigationBarItem(
              //         icon: InkWell(
              //           onTap: () {
              //             Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                     builder: (context) => MyAccount()));
              //           },
              //           child: Icon(
              //             Icons.account_circle,
              //             color: Color.fromRGBO(196, 196, 196, 1),
              //           ),
              //         ),
              //         title: Text(
              //           'Profile',
              //           style: TextStyle(fontFamily: 'Nunito', fontSize: 12),
              //         ),
              //       )
              //     ]),
            ),
        viewModelBuilder: () => ArticleViewModel());
  }
}
