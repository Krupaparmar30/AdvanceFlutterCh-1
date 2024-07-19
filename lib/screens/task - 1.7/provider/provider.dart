import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../view/hide_photoes_gallery/hide_photoes_gallery.dart';

class PhotoGallryProvider extends ChangeNotifier {
  final LocalAuthentication authentication = LocalAuthentication();
  bool changePrint = false;

  Future<void> LocalAuthenticationUse(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await authentication.getAvailableBiometrics();
    } on PlatformException catch (e) {}
    try {
      final didAuthenticate = await authentication.authenticate(
          localizedReason: "Verify with Fingerprint");
      changePrint = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {}
    if (changePrint) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const hidePhotoesGallery(),
      ));
    } else {}
  }
}
