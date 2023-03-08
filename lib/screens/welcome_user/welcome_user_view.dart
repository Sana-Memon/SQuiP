import 'package:flutter/material.dart';
import 'package:squip/screens/welcome_user/welcome_user_view_model.dart';
import 'package:stacked/stacked.dart';

class WelcomeUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeUserViewModel>.reactive(
        viewModelBuilder: () => WelcomeUserViewModel(),
        builder: (context, viewModel, child) => Scaffold());
  }
}
