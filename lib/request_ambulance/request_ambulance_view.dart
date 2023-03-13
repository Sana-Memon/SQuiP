import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/request_ambulance/request_ambulance_view_model.dart';
import 'package:squip/request_fire/request_fire_view_model.dart';
import 'package:stacked/stacked.dart';

class RequestAmbulanceView extends StatelessWidget {
  final LatLng currentPosition = LatLng(24.9141, 67.0583);
  final LatLng nearAmbulance = LatLng(24.914344, 67.056496);
  Map<String, Marker> _marker = {};

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestAmbulanceViewModel>.reactive(
      viewModelBuilder: () => RequestAmbulanceViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: currentPosition, zoom: 14),
          onMapCreated: (controller) {
            viewModel.mapController = controller;
            viewModel.addMarker(
                'My current Location', currentPosition, _marker);
            viewModel.addMarkerFire(
                "Nearest Fire station", nearAmbulance, _marker);
          },
          markers: _marker.values.toSet(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("clicking");

            viewModel.goToWelcomeUser();
            viewModel.opendialogue();

            viewModel.insertRequestAmbulance();
            print("method calling ambulance request inserted done");
          },
          label: const Text("Request Ambulance"),
          icon: const Icon(Icons.location_history),
        ),
      ),
    );
  }
}
