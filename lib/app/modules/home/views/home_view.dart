import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:messengerclone/app/modules/message/views/message_view.dart';
import 'package:messengerclone/app/modules/messageothers/views/messageothers_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: controller.tabController,
          children: [MessageView(), MessageothersView()]),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.blueAccent,
        controller: controller.tabController,
        unselectedLabelColor: Colors.black,
        labelColor: Color(0xff384CFF),
        tabs: [
          Tab(icon: Icon(Icons.home_outlined, size: 30.h)),
          Tab(icon: Icon(Icons.people_outline, size: 30.h)),
        ],
      ),
    );
  }
}
