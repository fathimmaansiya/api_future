import 'package:shared_preferences/shared_preferences.dart';

class Darkmode{
  static const String toggleDark="darkmode";
  void setDarkMode()async{
var sharedPref= await SharedPreferences.getInstance();
sharedPref.setBool(toggleDark, true);

}
}
