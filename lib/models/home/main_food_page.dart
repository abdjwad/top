import 'package:flutter/material.dart';
import 'package:top_top/layout/widget/big_text.dart';
import 'package:top_top/layout/widget/food_page_body.dart';
import 'package:top_top/layout/widget/small_text.dart';
import 'package:top_top/shared/styles/colors.dar.dart';

class MainFoodPage extends StatefulWidget {
  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 25,
              bottom: 25,
            ),
            padding: EdgeInsets.only(
              left: 20,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text:'Germane',color: AppColors.mainColor,),
                   Row(
                     children: [
                       SmallText(text:'Barlin',color:Colors.black54),
                       Icon(Icons.arrow_drop_down_rounded,)
                     ],
                   )
                  ],
                ),
                Container(
                  // margin: ,
                  width: 35,
                  height: 35,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
