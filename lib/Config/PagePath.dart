import 'package:get/get.dart';
import 'package:sampark_chat_app_25/Pages/Auth/AuthPage.dart';
import 'package:sampark_chat_app_25/Pages/Chat/ChatPage.dart';
import 'package:sampark_chat_app_25/Pages/Home/HomePage.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage",
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/chatPage",
    page: () => ChatPage(),
    transition: Transition.rightToLeft,
  ),
];
