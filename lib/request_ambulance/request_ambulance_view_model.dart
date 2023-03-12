import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class RequestAmbulanceViewModel extends BaseViewModel {
  late GoogleMapController mapController;

  // NearbyPlacesResponse nearbyPlacesResponse = NearbyPlacesResponse();

  addMarker(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icHospital);
    var marker = Marker(
      markerId: MarkerId(customText),
      position: location,
      infoWindow: InfoWindow(title: customText),
      // icon: markerIcon
    );

    _marker[customText] = marker;
    rebuildUi();
  }

  addMarkerFire(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icHospital);
    var marker = Marker(
        markerId: MarkerId(customText),
        position: location,
        infoWindow: InfoWindow(title: customText),
        icon: markerIcon);

    _marker[customText] = marker;
    rebuildUi();
  }
}
