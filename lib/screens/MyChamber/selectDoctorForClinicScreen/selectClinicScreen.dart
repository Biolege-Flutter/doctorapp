// import 'package:clinicapp/widgets/animations.dart';
// import 'package:clinicapp/widgets/reusables.dart';
import 'package:biolege/widgets/animations.dart';
import 'package:biolege/widgets/reusables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../app/size_configuration.dart';
import '../../../theme/theme.dart';
// import '../../../../widgets/reusables.dart';
import 'selectClinicScreenModel.dart';

class SelectClinicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectClinicScreenViewModel>.reactive(
      builder: (context, model, child) {
        return !model.isBusy
            ? Scaffold(
                appBar: buildAppBarWithLogo(context),
                body: SafeArea(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Search Clinic",
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Text(
                          "Select clinic to add to your Chamber",
                          style: TextStyle(fontSize: 16, color: offBlack3),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Form(
                            key: model.searchFormKey,
                            onChanged: () => model.search(),
                            child: TextFormField(
                              onChanged: (value) => model.search(),
                              keyboardType: TextInputType.name,
                              decoration: buildInputDecoration(
                                  "Search",
                                  Icon(
                                    EvilIcons.search,
                                    color: primaryColor,
                                  )),
                              controller: model.searchedText,
                            )),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        model.results.length != 0
                            ? ListView.builder(
                                primary: false,
                                itemCount: model.results.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return FadeInLTR(
                                    0.1,
                                    Card(
                                      // color: offWhite,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: white, width: 0.1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ListTile(
                                        onTap: () => model
                                            .onSelected(model.results[index]),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                        leading: CircleAvatar(
                                          radius: 25.0,
                                          // backgroundImage: NetworkImage(
                                          //     'https://via.placeholder.com/150'),
                                          backgroundColor: Colors.black12,
                                        ),
                                        title: Text(
                                          model.results[index].name,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        // subtitle: Text(model.results[index]
                                        //         .specialization[0] ??
                                        //     ''),
                                        // trailing: model.clinicsList
                                        //         .containsKey(
                                        //             model.results[index].id)
                                        //     ? Text("Already added",
                                        //         style: TextStyle(fontSize: 10))
                                        //     : Text(
                                        //         "Show info",
                                        //         style: TextStyle(fontSize: 10),
                                        //       ),
                                      ),
                                    ),
                                  );
                                })
                            : Column(
                                children: [
                                  Center(
                                    child: Text("No clinics to show"),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                )),
              )
            : Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
      },
      onModelReady: (model) => model.getClinicsList(),
      createNewModelOnInsert: true,
      viewModelBuilder: () => SelectClinicScreenViewModel(),
    );
  }
}
