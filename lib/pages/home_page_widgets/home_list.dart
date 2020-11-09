import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/controllers/home_controller.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      if (_.loading) {
        return Center(
          child: LinearProgressIndicator(),
        );
      }
      return ListView.builder(
        itemCount: _.users.length,
        itemBuilder: (ctx, i) {
          final user = _.users[i];
          return ListTile(
            title: Text(user.firstName),
            subtitle: Text(user.email),
          );
        },
      );
    });
  }
}
