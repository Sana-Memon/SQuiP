import 'package:flutter/material.dart';
import 'package:squip/screens/user_side/welcome_user/welcome_user_view_model.dart';
import 'package:squip/screens/welcome_captain/welcome_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class WelcomeCaptainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeCaptainViewModel>.reactive(
        viewModelBuilder: () => WelcomeCaptainViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                child: viewModel.widgetOptions.elementAt(viewModel.myIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: redColor,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                type: BottomNavigationBarType.fixed,
                backgroundColor: whiteColor,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.request_page), label: "All Request"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.done), label: "Accepted Request"),
                ],
                onTap: ((index) {
                  viewModel.onselectItem(index);
                }),
                currentIndex: viewModel.myIndex,
              ),
            ));
  }
}
