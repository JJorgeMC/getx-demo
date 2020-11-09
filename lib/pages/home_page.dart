import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/controllers/home_controller.dart';
import 'package:getx_demo/pages/home_page_widgets/home_label.dart';
import 'package:getx_demo/pages/home_page_widgets/home_list.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      init: HomeController(),
      builder: (_) {
        return Scaffold(
          body: HomeList(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _.increment();
            },
          ),
        );
      },
    );
  }
}
