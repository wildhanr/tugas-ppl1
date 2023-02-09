import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../controllers/home_controller.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
      ),
    );
  }
}
