import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex/controller.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(UserController());

    return Scaffold(
      body: Obx(
          () => SafeArea(
              child: GridView.count(crossAxisCount: 2,
              padding: const EdgeInsets.all(5),
              children: controller.users.map(
                    (item){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(item.name),
                            ),
                          ),
                          ),
                        ],
                      );
                    }
                ).toList(),
              ),
          ),
      ),
    );
  }
}
