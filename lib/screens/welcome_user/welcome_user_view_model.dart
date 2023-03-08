import 'package:squip/screens/login_captain/login_ambulance/login_ambulance.dart';
import 'package:squip/screens/login_captain/login_fire_brigade/login_fire_brigade.dart';
import 'package:squip/screens/login_captain/login_police/login_police.dart';
import 'package:squip/screens/splash_screen/splash_screen_view.dart';
import 'package:stacked/stacked.dart';

class WelcomeUserViewModel extends BaseViewModel {
  int selectedIndex = 2;
  List widgetOptions = [
    SplashScreenView(),
    LoginAmbulanceView(),
    LoginFireBrigadeView(),
    LoginPoliceView()
  ];
  onItemTapped(int index) {
    selectedIndex = index;
  }
}
