import 'package:get_storage/get_storage.dart';

class HelperUtils
{
  static storeCounterValue(int value)
  {
    final box = GetStorage();
    box.write("counter", value);
  }
    static int getCounterValue()
  {
    final box = GetStorage();
    return  box.read("counter");
  }

  static storeJWT(String token)
  {
    final box = GetStorage();
    box.write("token", token);
  }
    static String getJWTToken()
  {
    final box = GetStorage();
    return  box.read("token");
  }

  static loginStatus(bool status)
  {
    final box = GetStorage();
    box.write("loginStatus", status);
  }

    static bool getLoginStatus()
  {
    final box = GetStorage();
  return  box.read("loginStatus");
  }





}