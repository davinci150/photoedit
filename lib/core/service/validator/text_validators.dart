import 'package:flutter/cupertino.dart';

import '../context_provider/context_provider_i.dart';
import 'text_validator_i.dart';

class TextValidator implements TextValidatorI {
  final ContextProviderI contextProvider;

  TextValidator({@required this.contextProvider});

  @override
  String checkPhone(String phoneNumber) {
    const String pattern =
        r'^$|^\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|4(2\d|[987654310])|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|3[9643210]|2[70]|7|1)\d{1,14}$';
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(phoneNumber)) {
      return 'This is not a valid phone number.';
    } else {
      return '';
    }
  }

  @override
  String checkEmail(String email) {
    //return '';
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return 'This is not a valid email address.';
    } else {
      return '';
    }
  }

  @override
  String checkPassword(String password) {
    //return '';
    const String pattern =
        r'''^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[=+\-^$*.[\]{}()?"!@#%&/\\,><':;|_~`])(?=.*[a-zA-Z]).{8,}$''';
    final RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(password)) {
      return 'This is not a valid password.';
    } else {
      return '';
    }
  }

  @override
  String checkMatchingPasswords(String password, String retypedPassword) {
    if (password != retypedPassword) {
      return 'Passwords don\'t match';
    } else {
      return '';
    }
  }

  @override
  String checkSmsCode(String sms) {
    if (sms.length < 4) {
      return 'This is not a valid password.';
    } else {
      return '';
    }
  }

  @override
  String checkSystolicReading(int reading) {
    const double minSystolicReading = 70;
    const double maxSystolicReading = 190;

    if (maxSystolicReading >= reading && reading >= minSystolicReading) {
      return '';
    } else {
      return 'This is not valid';
    }
  }

  @override
  String checkDiastolicReading(int reading) {
    const double minDiastolicReading = 40;
    const double maxDiastolicReading = 100;

    if (maxDiastolicReading >= reading && reading >= minDiastolicReading) {
      return '';
    } else {
      return 'This is not valid';
    }
  }

  @override
  String checkHba1CReadingInMMolMol(double reading) {
    const double minHba1CInMMolMol = 20;
    const double maxHba1CInMMolMol = 180;

    if (maxHba1CInMMolMol >= reading && reading >= minHba1CInMMolMol) {
      return '';
    } else {
      return 'This is not valid';
    }
  }

  @override
  String checkBloodGlucoseReadingInMmolL(double reading) {
    const double minBloodGlucoseInMmolL = 2.6;
    const double maxBloodGlucoseInMmolL = 21.1;

    if (maxBloodGlucoseInMmolL >= reading &&
        reading >= minBloodGlucoseInMmolL) {
      return '';
    } else {
      return 'This is not valid';
    }
  }
}
