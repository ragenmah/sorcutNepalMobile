import 'package:get_storage/get_storage.dart';

final box = GetStorage();

bool checkFirstAppRun() => box.read("onboard") ?? true;
// bool checkFirstAppRun() => true;
