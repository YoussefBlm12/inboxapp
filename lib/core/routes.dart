import 'package:get/get.dart';

import '../ui/pages/my_pageHome.dart';

List<GetPage> routes = [
  GetPage(
    name: '/homePage',
    page: () =>  MyHomePage(),
    transition: Transition.native,
  ),
];