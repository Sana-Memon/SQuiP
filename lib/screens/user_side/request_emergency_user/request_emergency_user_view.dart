import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/custom_widgets/custom_button.dart';
import 'package:squip/screens/user_side/request_emergency_user/request_emergency_user_view_model.dart';
import 'package:squip/utils/color_constant.dart';
import 'package:stacked/stacked.dart';

class RequestEmergencyView extends StatelessWidget {
  LatLng currentPosition = LatLng(25.32456, 45.324356);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestEmergencyViewModel>.reactive(
        viewModelBuilder: () => RequestEmergencyViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Using Google map"),
                      GoogleMap(
                        initialCameraPosition:
                            CameraPosition(target: LatLng(0, 0)),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
