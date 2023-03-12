import 'package:flutter/material.dart';
import 'package:squip/utils/image_constant.dart';

Widget appLogo() {
  return Center(
      child: Image.asset(
    logo,
    height: 100,
    width: 100,
  ));
}
