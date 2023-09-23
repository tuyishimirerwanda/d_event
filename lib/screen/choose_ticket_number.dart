import 'package:d_event/Theme/theme.dart';
import 'package:d_event/screen/ticket_holders.dart';
import 'package:d_event/widget/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/event_model.dart';

// ignore: must_be_immutable
class ChooseTicketNumber extends StatefulWidget {
  final Event event;
  final double selectedPrice;
  final String selectedCategoryName;
  int selectedCategerySeats;

  ChooseTicketNumber({
    Key? key,
    required this.event,
    required this.selectedPrice,
    required this.selectedCategoryName,
    required this.selectedCategerySeats,
  }) : super(key: key);

  @override
  _ChooseTicketNumberState createState() => _ChooseTicketNumberState();
}

class _ChooseTicketNumberState extends State<ChooseTicketNumber> {
  int ticketCount = 1; // Initial ticket count

  // Function to calculate the total price based on the number of tickets
  double calculateTotalPrice(int numberOfTickets) {
    return widget.selectedPrice * numberOfTickets;
  }

  void incrementTicketCount() {
    setState(() {
      if (widget.selectedCategerySeats > 0) {
        ticketCount++; // Increment ticket count if available seats allow
        widget.selectedCategerySeats--; // Decrease available seats
      }
    });
  }

  void decrementTicketCount() {
    if (ticketCount > 1) {
      setState(() {
        ticketCount--; // Decrement ticket count, but ensure it's at least 1
        widget.selectedCategerySeats++; // Increase available seats
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalTicketPrice = calculateTotalPrice(ticketCount);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        // title: Text(
        //   'Book Ticket',
        //   style: MyAppTheme.myTextStyle(
        //     color: MyAppTheme.whiteColor,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 23.sp,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: MyAppTheme.pageBackgroundDecoration,
            width: double.infinity,
            height: double.infinity,
          ),
          Stack(
            children: [
              SizedBox(
                width: double
                    .infinity, // Set the width to fill the available width
                height: 400.h, // Set the desired height
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset(
                    widget.event.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // gradient container on bottom of image
              Positioned(
                bottom: 0, // Adjust the position as needed
                left: 1, // Adjust the position as needed
                right: 1, // Adjust the position as needed
                child: Container(
                  height: 50.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        MyAppTheme.blackColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: Container(
                      width: double.infinity,
                      //height: 700.h,
                      decoration: BoxDecoration(
                        color: MyAppTheme.blackColor,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: MyAppTheme.primaryColor,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Book Now',
                              style: MyAppTheme.myTextStyle(
                                color: MyAppTheme.orangeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: MyAppTheme.orangeColor,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Text(
                                    widget.event.title,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: MyAppTheme.whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Text(
                                    widget.selectedCategoryName,
                                    style: TextStyle(
                                      fontSize: 23.sp,
                                      color: MyAppTheme.orangeColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Price of one ticket is ',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: MyAppTheme.whiteColor,
                                        ),
                                      ),
                                      Text(
                                        ' ${widget.selectedPrice.toStringAsFixed(0)} Rwf',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: MyAppTheme.primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Text(
                                    'Available Seats',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: MyAppTheme.whiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: MyAppTheme.primaryColor,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                      gradient: MyAppTheme.containerbackground,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.h,
                                      horizontal: 20.h,
                                    ),
                                    child: Text(
                                      widget.selectedCategerySeats.toString(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: MyAppTheme.whiteColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Text(
                                    'Choose Number of Tickets you need',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: MyAppTheme.whiteColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MyAppTheme.primaryColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          gradient:
                                              MyAppTheme.containerbackground,
                                        ),
                                        child: IconButton(
                                          onPressed: decrementTicketCount,
                                          icon: const Icon(
                                            Icons.remove,
                                            color: MyAppTheme.whiteColor,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text(
                                        '$ticketCount', // Display the selected ticket count
                                        style: TextStyle(
                                          fontSize: 30.sp,
                                          color: MyAppTheme.whiteColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: MyAppTheme.primaryColor,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          gradient:
                                              MyAppTheme.containerbackground,
                                        ),
                                        child: IconButton(
                                          onPressed: incrementTicketCount,
                                          icon: const Icon(
                                            Icons.add,
                                            color: MyAppTheme.whiteColor,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Total Price:  ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: MyAppTheme.whiteColor,
                                        ),
                                      ),
                                      Text(
                                        '${totalTicketPrice.toStringAsFixed(0)} Rwf', // Display the total price
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: MyAppTheme.orangeColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: ElevatedButton(
                                  style: MyElevatedButton.elevatedButtonStyle,
                                  onPressed: () {
                                    // Navigate to the TicketDetailsScreen and pass the necessary data
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TicketDetailsScreen(
                                          event: widget.event,
                                          selectedCategoryName:
                                              widget.selectedCategoryName,
                                          selectedSeatsCount: ticketCount,
                                          selectedPrice: widget
                                              .selectedPrice, // Include selectedPrice
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Continue',
                                    style: MyAppTheme.myTextStyle(
                                      color: MyAppTheme.blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
