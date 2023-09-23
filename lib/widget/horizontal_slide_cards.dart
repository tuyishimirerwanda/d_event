import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dammy_data/dammy_data.dart';
import '../model/event_model.dart';
import '../screen/event_details.dart';

class HorizontalSlideCards extends StatelessWidget {
  const HorizontalSlideCards({Key? key}) : super(key: key);

  void navigateToEventDetails(BuildContext context, Event event) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EventDetails(event: event),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: dummyDataCardsList.map((item) {
            return Container(
              width: 130.w, // Width of each card
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
              ),

              child: GestureDetector(
                onTap: () {},
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 4.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        item.imageUrl,
                        height: 100.h, // Height of the image
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
