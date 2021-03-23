abstract class TextValidatorI {
  String checkEmail(String text);

  String checkPassword(String text);

  String checkMatchingPasswords(String password, String retypedPassword);

  String checkSmsCode(String text);

  String checkSystolicReading(int reading);

  String checkDiastolicReading(int reading);

  String checkHba1CReadingInMMolMol(double reading);

  String checkBloodGlucoseReadingInMmolL(double reading);
  String checkPhone(String phoneNumber);
}
