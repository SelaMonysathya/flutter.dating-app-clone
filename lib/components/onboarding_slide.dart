import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app_clone/components/carousel_dot.dart';
import 'package:dating_app_clone/dummy_data/onboarding_page_json.dart';
import 'package:dating_app_clone/theme/color.dart';
import 'package:dating_app_clone/utils/constant.dart';
import 'package:flutter/material.dart';

class OnBoardingSlide extends StatefulWidget {
  const OnBoardingSlide({ Key? key }) : super(key: key);

  @override
  State<OnBoardingSlide> createState() => _OnBoardingSlideState();
}

class _OnBoardingSlideState extends State<OnBoardingSlide> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: ((index, reason) {
              setState(() {
                activeIndex = index;
              });
            }),
            height: size.height * 0.65,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
          ),
          items: List.generate(slideItems.length, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                    image: DecorationImage(
                      image: NetworkImage(slideItems[index]['imageUrl']),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                activeIndex == index
                ? Column(
                  children: [
                    Text(
                      slideItems[index]['title'],
                      style: TextStyle(
                        color: primary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: defaultSmallPadding,),
                    Text(
                      slideItems[index]['description'],
                    )
                  ],
                )
                : SizedBox(),
              ],
            );
          }), 
        ),
        SizedBox(height: defaultPadding * 2,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(slideItems.length, (index) {
            return CarouselDot(isActive: activeIndex == index);
          }),
        ),
      ],
    );
  }
}