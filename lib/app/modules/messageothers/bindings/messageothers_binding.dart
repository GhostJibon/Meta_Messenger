import 'package:get/get.dart';

import '../controllers/messageothers_controller.dart';

class MessageothersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessageothersController>(
      () => MessageothersController(),
    );
  }
}
