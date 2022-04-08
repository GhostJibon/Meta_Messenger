import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/messageothers_controller.dart';

class MessageothersView extends GetView<MessageothersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MessageothersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MessageothersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
