import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatbox_controller.dart';

class ChatboxView extends GetView<ChatboxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatboxView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChatboxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
