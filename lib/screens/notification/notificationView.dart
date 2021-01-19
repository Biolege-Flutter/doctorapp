import 'package:biolege/screens/notification/notificationViewModel.dart';
import 'package:biolege/widgets/reusables.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotifivationViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBarWithLogo(context),
              body: SafeArea(
                child: Scaffold(),
              ),
            ),
        viewModelBuilder: () => NotifivationViewModel());
  }
}
