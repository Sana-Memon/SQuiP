import 'package:firebase_auth/firebase_auth.dart';
import 'package:squip/app/app.locator.dart';
import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginFireBrigadeViewModel extends BaseViewModel {
  final nav = locator<NavigationService>();

  moveToWelcomeCaptain() {
    nav.navigateToFireRequestCaptainView();
    rebuildUi();
  }

  SignInUser(loginEmailController, loginPasswordController, context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginEmailController.text,
          password: loginPasswordController.text);
      moveToWelcomeCaptain();
      print("login Successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
