import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';

class RequestFireViewModel extends BaseViewModel {
  final LatLng currentPosition = LatLng(25.1193, 55.3773);
  late GoogleMapController mapController;

  // NearbyPlacesResponse nearbyPlacesResponse = NearbyPlacesResponse();

  addMarker(String customText, LatLng location, Map _marker) async {
    var markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icFire);
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
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), icFire);
    var marker = Marker(
        markerId: MarkerId(customText),
        position: location,
        infoWindow: InfoWindow(title: customText),
        icon: markerIcon);

    _marker[customText] = marker;
    rebuildUi();
  }
}
