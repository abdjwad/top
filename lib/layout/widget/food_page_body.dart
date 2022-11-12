import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_top/layout/widget/big_text.dart';
import 'package:top_top/layout/widget/small_text.dart';
import 'package:top_top/shared/styles/colors.dar.dart';

class FoodPageBody extends StatefulWidget {
  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 1.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }
  // Scrollbar(Text('')),
  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
            height: 220,
            margin: EdgeInsets.only(
              left: 160,
              right: 160,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/game-of-thrones-season-7-3840x2160-sansa-sophie-turner-tv-series-4k-15194.jpg")))),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(
                left: 200,
                right: 200,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "chinese sald",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: AppColors.mainColor,
                              size: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(
                          text: "4.5",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(
                          text: "1288 comments ",
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
