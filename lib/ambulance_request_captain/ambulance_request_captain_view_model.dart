import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class AmbulanceRequestCaptainViewModel extends BaseViewModel {
  getRequests() {
    var ref = FirebaseFirestore.instance
        .collection("emeregencyRequest")
        .where("emergency", isEqualTo: "Ambulance");
    return ref.get();
  }
}
