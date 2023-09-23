import 'package:d_event/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Theme/theme.dart';
import '../dammy_data/dammy_data.dart';
import '../widget/event_card.dart';
import '../widget/flyer_slider.dart';
import '../widget/horizontal_slide_cards.dart';
import 'event_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  void navigateToEventDetails(BuildContext context, Event event) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EventDetails(event: event),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyAppTheme.blackColor,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'images/D-Event-logo-2.png',
          height: 40,
        ),
        leading: IconButton(
          icon: const Icon(
              Icons.density_medium_outlined), // Add your leading icon here
          onPressed: () {
            // Add your leading icon action here
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: MyAppTheme.pageBackgroundDecoration,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'Welcome Back',
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeLarge30,
                            color: MyAppTheme.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'Moise',
                        style: MyAppTheme.myTextStyle(
                          fontSize: MyAppTheme.fontSizeSmall16,
                          color: MyAppTheme.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 16.w),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         'Recommended Events',
                    //         style: MyAppTheme.myTextStyle(
                    //             fontSize: MyAppTheme.fontSizeMedium20,
                    //             color: MyAppTheme.primaryColor,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //       const Spacer(),
                    //       Text(
                    //         'See all',
                    //         style: MyAppTheme.myTextStyle(
                    //           fontSize: MyAppTheme.fontSizeExtraSmall12,
                    //           color: MyAppTheme.whiteColor,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 5,
                    ),
                    const AutoCarouselSlider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Next Event',
                            style: MyAppTheme.myTextStyle(
                                fontSize: MyAppTheme.fontSizeMedium20,
                                color: MyAppTheme.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            'See all',
                            style: MyAppTheme.myTextStyle(
                              fontSize: MyAppTheme.fontSizeExtraSmall12,
                              color: MyAppTheme.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const HorizontalSlideCards(),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'All Event',
                        style: MyAppTheme.myTextStyle(
                            fontSize: MyAppTheme.fontSizeMedium20,
                            color: MyAppTheme.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (final event in dummyEventData)
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: EventCard(
                          event: event,
                          onPressed: () {
                            // Handle the "Book Now" button press for this event
                            // You can implement your booking logic here
                            navigateToEventDetails(context, event);
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
