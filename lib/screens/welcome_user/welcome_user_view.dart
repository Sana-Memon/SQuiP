import 'package:flutter/material.dart';
import 'package:squip/screens/welcome_user/welcome_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class WelcomeUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeUserViewModel>.reactive(
        viewModelBuilder: () => WelcomeUserViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: Center(
                child:
                    viewModel.widgetOptions.elementAt(viewModel.selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: redColor,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                type: BottomNavigationBarType.fixed,
                backgroundColor: whiteColor,
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        icFacebookLogo,
                        width: 20,
                      ),
                      label: "home"),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        icFacebookLogo,
                        width: 20,
                      ),
                      label: "categories"),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        icFacebookLogo,
                        width: 20,
                      ),
                      label: "cart"),
                  BottomNavigationBarItem(
                      icon: Image.asset(
                        icFacebookLogo,
                        width: 20,
                      ),
                      label: "profile"),
                ],
                currentIndex: viewModel.selectedIndex,
                onTap: viewModel.onItemTapped(2),
              ),
            ));
  }
}
