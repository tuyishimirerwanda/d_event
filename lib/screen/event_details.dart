import 'package:d_event/Theme/theme.dart';
import 'package:d_event/widget/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expandable_text/expandable_text.dart';

import '../model/event_model.dart';
import '../widget/categories.dart';
import 'choose_ticket_number.dart';

class EventDetails extends StatefulWidget {
  final Event event;

  const EventDetails({Key? key, required this.event}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  int selectedCategoryIndex = -1;

  void navigateToChooseTicket(BuildContext context) {
    if (selectedCategoryIndex != -1) {
      // A category is selected
      final selectedPrice =
          widget.event.categories[selectedCategoryIndex].price;
      final selectedCategoryName = widget
          .event
          .categories[selectedCategoryIndex]
          .name; // Get the selected category name
      final selectedCategoryseats = widget
          .event
          .categories[selectedCategoryIndex]
          .seats; // Get the selected category seats
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ChooseTicketNumber(
          event: widget.event,
          selectedPrice: selectedPrice,
          selectedCategoryName: selectedCategoryName,
          selectedCategerySeats:
              selectedCategoryseats, // Pass the selected category seats
        ),
      ));
    } else {
      // No category is selected, handle it as needed
      _showCategorySelectionDialog(context);
    }
  }

  void _showCategorySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              MyAppTheme.blackColor, // Change dialog background color
          title: const Text(
            'Select Event Category',
            style: TextStyle(
              color: MyAppTheme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'Please select an event category before booking.',
            style: TextStyle(
              color: MyAppTheme.whiteColor,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  color: MyAppTheme.primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: MyAppTheme.blackColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // Wrap the SingleChildScrollView with Expanded
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              widget.event.imageUrl,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0.r),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.event.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: MyAppTheme.myTextStyle(
                                    fontSize: 30.sp,
                                    color: MyAppTheme.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text(
                                widget.event.dayAndDate,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: MyAppTheme.whiteColor,
                                ),
                              ),
                              // Add more event details here
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      MyAppTheme.boarderColor, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    20.0), // Border radius
                                gradient: MyAppTheme.containerbackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Doors Open',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 13.sp,
                                          color: MyAppTheme.orangeColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      widget.event.doorOpen,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 16.sp,
                                          color: MyAppTheme.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      MyAppTheme.boarderColor, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    20.0), // Border radius
                                gradient: MyAppTheme.containerbackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Start Time',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 13.sp,
                                          color: MyAppTheme.orangeColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      widget.event.time,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 16.sp,
                                          color: MyAppTheme.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      MyAppTheme.boarderColor, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    20.0), // Border radius
                                gradient: MyAppTheme.containerbackground,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'End Time',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 13.sp,
                                          color: MyAppTheme.orangeColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      widget.event.end,
                                      style: MyAppTheme.myTextStyle(
                                          fontSize: 16.sp,
                                          color: MyAppTheme.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              widget.event.location,
                              style: MyAppTheme.myTextStyle(
                                fontSize: 16.sp,
                                color: MyAppTheme.whiteColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 23.h,
                        ),
                        Text(
                          'Ticket Categories',
                          style: MyAppTheme.myTextStyle(
                            fontSize: 20.sp,
                            color: MyAppTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        EventCategoryList(
                          categories: widget.event.categories,
                          selectedCategoryIndex: selectedCategoryIndex,
                          onCategorySelected: (index) {
                            setState(() {
                              selectedCategoryIndex = index;
                            });
                          },
                        ), // Use the EventCategoryList widget

                        SizedBox(
                          height: 23.h,
                        ),
                        Text(
                          'Event Description',
                          style: MyAppTheme.myTextStyle(
                            fontSize: 18.sp,
                            color: MyAppTheme.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ExpandableText(
                            widget.event
                                .description, // Display the event description here
                            style: MyAppTheme.myTextStyle(
                              color: MyAppTheme.whiteColor,
                              fontSize: 14.sp,
                            ),
                            expandText: 'Read More',
                            collapseText: 'Read Less',
                            maxLines: 2, // Number of lines to show initially
                            linkColor:
                                MyAppTheme.primaryColor, // Customize link color
                            linkStyle: TextStyle(
                                fontSize: 14.sp,
                                color: MyAppTheme.primaryColor),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        SizedBox(
                          height: 150.h,
                        ),

                        //=======================================================
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //----------------------------------------------------------
          Positioned(
            bottom: 0, // Adjust the position as needed
            left: 1, // Adjust the position as needed
            right: 1, // Adjust the position as needed
            child: Container(
              height: 150.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    MyAppTheme.blackColor,
                    MyAppTheme.blackColor,
                  ], // Adjust the colors as needed
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          // Fixed button at the bottom
          Positioned(
            bottom: 1, // Adjust the position as needed
            left: 20, // Adjust the position as needed
            right: 20, // Adjust the position as needed
            child: Padding(
              padding: EdgeInsets.all(25.r),
              child: ElevatedButton(
                onPressed: () {
                  navigateToChooseTicket(context);
                },
                style: MyElevatedButton.elevatedButtonStyle,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.airplane_ticket_outlined,
                      color: MyAppTheme.blackColor,
                      size: 32.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Book Ticket',
                      style: MyAppTheme.myTextStyle(
                        color: MyAppTheme.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.sp,
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
