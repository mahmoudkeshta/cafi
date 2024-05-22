import 'package:local_auth/local_auth.dart';

class Fingerprint{

final LocalAuthentication _authentication =LocalAuthentication();


Future<bool> isFingerPrintEnabled() async{
  bool isFingerPrintEnabled=await _authentication.canCheckBiometrics;
return isFingerPrintEnabled;
}

Future<bool> isAuth( String reason)async{
  bool auth =await _authentication.authenticate(
    localizedReason: reason,
    options:AuthenticationOptions(biometricOnly: true)
  );
  return auth;
}

}