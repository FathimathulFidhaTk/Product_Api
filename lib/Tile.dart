import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_api/model.dart';

class TestTile extends StatelessWidget{
  final TestingModel Tests;
  TestTile(this.Tests);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
           height: 180,
           width: double.infinity,
        clipBehavior: Clip.antiAlias,
           decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
              ),
              child: CachedNetworkImage(imageUrl: Tests.image,

              ),)
            ],
          ),SizedBox(height: 8,),
          Text(Tests.id.toString()),
          SizedBox(height: 8,),
          Text(Tests.name),
          SizedBox(height: 8,),
          Text(Tests.creationAt.toString()),
          SizedBox(height: 8,),
          Text(Tests.updatedAt.toString()),
          SizedBox(height: 8,),




        ],
      ),
    );
  }

}