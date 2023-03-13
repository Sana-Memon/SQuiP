import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class AllRequestCaptainViewModel extends BaseViewModel {
  getRequests() {
    CollectionReference ref =
        FirebaseFirestore.instance.collection("emeregencyRequest");
    return ref.get();
  }
}
