import 'package:d_event/widget/book_now_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/theme.dart';
import '../model/event_model.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final VoidCallback onPressed;

  const EventCard({
    super.key,
    required this.event,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          side: BorderSide(
            color: MyAppTheme.boarderColor,
          ),
        ),
        child: Container(
          //height: 135.h,
          width: double.infinity,
          decoration: MyAppTheme.pageBackgroundDecoration,
          child: Row(
            children: <Widget>[
              // Left side image
              SizedBox(
                width: 100.w, // Adjust as needed
                height: 138.h,
                child: Image.asset(
                  event.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        maxLines: 1, // Limit the number of lines to 2
                        overflow: TextOverflow
                            .ellipsis, // Add ellipsis for long titles
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeMedium20,
                            color: MyAppTheme.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        event.dayAndDate,
                        style: MyAppTheme.myTextStyle(
                          fontSize: MyAppTheme.fontSizeExtraSmall12,
                          color: MyAppTheme.whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: MyAppTheme.myTextStyle(
                                  fontSize: MyAppTheme.fontSizeSmall16,
                                  color: MyAppTheme.orangeColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                event.time,
                                style: MyAppTheme.myTextStyle(
                                  fontSize: MyAppTheme.fontSizeExtraSmall12,
                                  color: MyAppTheme.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Status',
                                style: MyAppTheme.myTextStyle(
                                  fontSize: MyAppTheme.fontSizeSmall16,
                                  color: MyAppTheme.orangeColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                event.status,
                                style: MyAppTheme.myTextStyle(
                                  fontSize: MyAppTheme.fontSizeExtraSmall12,
                                  color: MyAppTheme.whiteColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          OutlinedButton(
                            onPressed: onPressed,
                            style: MyBookNowButton.outlinedButtonStyle,
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                color: MyAppTheme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
