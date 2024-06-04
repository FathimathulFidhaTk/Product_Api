import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:product_api/Tile.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import 'controller.dart';


void main(){
  runApp(MaterialApp(home: HomePage(),
    debugShowCheckedModeBanner: false,));
}
class HomePage extends StatelessWidget{

  final TestingController productController = Get.put(TestingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
                  () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else
                  return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: productController.TestList.length,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    itemBuilder: (context, index) {
                      return TestTile(productController.TestList[index]);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }

}
