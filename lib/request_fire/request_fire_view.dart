import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/request_fire/request_fire_view_model.dart';
import 'package:stacked/stacked.dart';

class RequestFireView extends StatelessWidget {
  final LatLng currentPosition = LatLng(24.9141, 67.0583);
  final LatLng nearFireStation1 = LatLng(24.915684116, 67.063230648);
  Map<String, Marker> _marker = {};

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestFireViewModel>.reactive(
      viewModelBuilder: () => RequestFireViewModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: currentPosition, zoom: 14),
          onMapCreated: (controller) {
            viewModel.mapController = controller;
            viewModel.addMarker(
                'My current Location', currentPosition, _marker);
            viewModel.addMarkerFire(
                "Nearest Fire station", nearFireStation1, _marker);
          },
          markers: _marker.values.toSet(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Request Fire Brigade"),
          icon: const Icon(Icons.location_history),
        ),
      ),
    );
  }
}
