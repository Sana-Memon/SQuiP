import 'package:flutter/material.dart';
import 'package:squip/custom_widgets/app_bar.dart';
import 'package:squip/custom_widgets/profile_list_tile.dart';
import 'package:squip/screens/user_side/active_services_user/active_services_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class ActiveServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActiveServiceViewModel>.reactive(
        viewModelBuilder: () => ActiveServiceViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: customerAppBar("Active Services"),
              body: Column(
                children: [
                  profileListTile(
                      "Police Service", Icons.notifications_active_outlined),
                  profileListTile(
                      "Police Service", Icons.notifications_active_outlined),
                  profileListTile(
                      "Ambulance Service", Icons.notifications_active_outlined),
                  profileListTile(
                      "Ambulance Service", Icons.notifications_active_outlined),
                  profileListTile("Fire Brigade Service",
                      Icons.notifications_active_outlined),
                  profileListTile("Fire Brigade Service",
                      Icons.notifications_active_outlined),
                ],
              ),
              // bottomNavigationBar: BottomNavigationBar(
              //   selectedItemColor: redColor,
              //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              //   type: BottomNavigationBarType.fixed,
              //   backgroundColor: whiteColor,
              //   items: [
              //     BottomNavigationBarItem(
              //         icon: Icon(Icons.access_alarm),
              //         label: "Choose Emergency"),
              //     BottomNavigationBarItem(
              //         icon: Icon(Icons.emergency), label: "Active Services"),
              //     BottomNavigationBarItem(
              //         icon: Icon(Icons.man), label: "User Profile"),
              //   ],
              //   onTap: ((index) {
              //     viewModel.onselectItem(index);
              //   }),
              //   currentIndex: viewModel.myIndex,
              // ),
            ));
  }
}
