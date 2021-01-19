import 'package:biolege/screens/rootViewModel.dart';
import '../screens/rootViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      builder: (context, child, model) {
        return Scaffold();
      },
      onModelReady: (model) => model.handleStartupLogic(),
      viewModelBuilder: () => RootViewModel(),
    );
  }
}
