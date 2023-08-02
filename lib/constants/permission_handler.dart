import 'package:permission_handler/permission_handler.dart';

class Permissions {
  static Future<bool> checkGalleryPermission() async {
    await Permission.photos.request();

    final status = await Permission.photos.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      return false;
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } else {
      final requestStatus = await Permission.photos.request();
      return requestStatus.isGranted;
    }
  }

  static Future<bool> checkCameraPermission() async {
    await Permission.camera.request();

    final status = await Permission.camera.status;

    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      return false;
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } else {
      final requestStatus = await Permission.camera.request();
      return requestStatus.isGranted;
    }
  }
}
