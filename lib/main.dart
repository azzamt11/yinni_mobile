import 'package:yinni_mobile/core/app.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:yinni_mobile/core/base/di/dependency_injection.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await Stetho.initialize();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await di.injectServices();
  await Future.delayed(const Duration(seconds: 2));

  runApp(const App());
}