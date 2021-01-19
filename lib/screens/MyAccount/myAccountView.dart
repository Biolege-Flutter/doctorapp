import 'package:biolege/screens/MyAccount/myAccountViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyAccountViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: model.navigateToProfileScreen,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My profile',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Doctor Name',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 25,
                                        backgroundColor: Color(0xffC4C4C4),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.black87,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: .5,
                        color: Color.fromRGBO(196, 196, 196, .9),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: model.navigateToPatientScreen,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Patients',
                                    style: TextStyle(
                                        fontFamily: 'Nunito', fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black87,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            InkWell(
                              onTap: model.navigateToArticleScreen,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Article',
                                    style: TextStyle(
                                        fontFamily: 'Nunito', fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black87,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            InkWell(
                              onTap: model.navigateToMyChamberScreen,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'My chambers',
                                    style: TextStyle(
                                        fontFamily: 'Nunito', fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black87,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              color: Color.fromRGBO(234, 234, 234, 1),
                              height: 1,
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biolege ecosystem',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Data security',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Help',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Customer service',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Divider(
                              color: Color.fromRGBO(234, 234, 234, 1),
                              height: 1,
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Log out',
                                  style: TextStyle(
                                      fontFamily: 'Nunito', fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.black87,
                                  size: 18,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => MyAccountViewModel());
  }
}
