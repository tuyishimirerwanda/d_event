import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dammy_data/dammy_data.dart';

class AutoCarouselSlider extends StatelessWidget {
  const AutoCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: dummyDataSliderList.length,
      options: CarouselOptions(
        height: 220.h,

        autoPlay: true, // Enable auto-play
        autoPlayInterval:
            const Duration(seconds: 4), // Auto-play interval (3 seconds)
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIndex) {
        final item = dummyDataSliderList[index];
        return Container(
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(10.0.r), // Adjust the radius as needed
            child: Image.asset(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
