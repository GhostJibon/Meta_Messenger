import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:messengerclone/app/modules/explore/views/explore_view.dart';
import 'package:messengerclone/app/modules/message/views/message_view.dart';
import 'package:messengerclone/app/modules/messageothers/views/messageothers_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: controller.tabController,
          children: [MessageView(), MessageothersView(), ExploreView()]),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.blueAccent,
        controller: controller.tabController,
        unselectedLabelColor: Colors.black,
        labelColor: Color(0xff384CFF),
        tabs: [
          Tab(
              icon: Image.asset(
            'assets/images/bicon1.png',
            height: 25.h,
            width: 25.h,
          )),
          Tab(
              icon: Image.asset(
            'assets/images/bicon2.png',
            height: 25.h,
            width: 25.h,
          )),
          Tab(
              icon: Image.asset(
            'assets/images/bicon3.png',
            height: 25.h,
            width: 25.h,
          )),
        ],
      ),
    );
  }
}
