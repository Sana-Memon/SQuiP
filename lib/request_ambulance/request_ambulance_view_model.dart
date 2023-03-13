import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:squip/utils/image_constant.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RequestAmbulanceViewModel extends BaseViewModel {
  late GoogleMapController mapController;
  final nav = locator<NavigationService>();
  final dialogue = locator<DialogService>();

  opendialogue() {
    dialogue.showDialog(
        buttonTitle: "Ok",
        title: "your Request sent to Ambulance, We'll arrive soon");
    rebuildUi();
  }

  insertRequestAmbulance() async {
    CollectionReference ref =
        FirebaseFirestore.instance.collection("emeregencyRequest");
    await ref.add({"name": "test", "emergency": "Ambulance"});
    print("Police request inserted");
  }

  goToWelcomeUser() {
    nav.navigateToWelcomeUserView();
  }
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
