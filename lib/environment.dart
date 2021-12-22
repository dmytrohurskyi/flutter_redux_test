import 'package:package_info/package_info.dart';

enum EnvironmentType { free, paid }

class Environment {
  late EnvironmentType current;

  Future initializeEnvType() async {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      switch (packageInfo.packageName) {
        case 'com.example.redux_flutter_app_for_vova.paid':
          current = EnvironmentType.paid;
          break;
        default:
          current = EnvironmentType.free;
      }
    });
  }
}
