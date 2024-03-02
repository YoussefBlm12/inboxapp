import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:inbox/themes/theme_services.dart';
import 'package:inbox/ui/theme.dart';



import 'core/routes.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/homePage',
      getPages: routes,
    );
  }
}


