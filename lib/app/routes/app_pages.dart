import 'package:get/get.dart';

import '../modules/chatbox/bindings/chatbox_binding.dart';
import '../modules/chatbox/views/chatbox_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/message/bindings/message_binding.dart';
import '../modules/message/views/message_view.dart';
import '../modules/messageothers/bindings/messageothers_binding.dart';
import '../modules/messageothers/views/messageothers_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHATBOX,
      page: () => ChatboxView(),
      binding: ChatboxBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGEOTHERS,
      page: () => MessageothersView(),
      binding: MessageothersBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
  ];
}
