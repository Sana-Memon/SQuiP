import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class AllRequestCaptainViewModel extends BaseViewModel {
  getRequests() {
    var ref = FirebaseFirestore.instance
        .collection("emeregencyRequest")
        .where("emergency", isEqualTo: "police");
    return ref.get();
  }
}
