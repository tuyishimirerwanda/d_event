import 'package:d_event/Theme/theme.dart';
import 'package:d_event/widget/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/event_model.dart';
import 'cart_page.dart';

class TicketDetailsScreen extends StatefulWidget {
  final Event event;
  final String selectedCategoryName;
  final int selectedSeatsCount;
  final double selectedPrice; // Include selectedPrice in the constructor

  const TicketDetailsScreen({
    Key? key,
    required this.event,
    required this.selectedCategoryName,
    required this.selectedSeatsCount,
    required this.selectedPrice, // Receive selectedPrice
  }) : super(key: key);

  @override
  _TicketDetailsScreenState createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
  late List<String> ticketHolders;
  final TextEditingController _emailController =
      TextEditingController(text: "tuyishimiremoise01@gmail.com");

  @override
  void initState() {
    super.initState();

    // Initialize ticketHolders list with empty strings
    ticketHolders = List.filled(
      widget.selectedSeatsCount,
      '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          // Red background that covers the entire screen
          Container(
            decoration: MyAppTheme.pageBackgroundDecoration,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 400.h,
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
                // bottom: 0, // Adjust the position as needed
                // left: 1, // Adjust the position as needed
                // right: 1, // Adjust the position as needed
                child: Container(
                  height: 50.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        // MyAppTheme.blackColor,
                        MyAppTheme.blackColor,
                      ], // Adjust the colors as needed
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyAppTheme.blackColor,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(
                      color: MyAppTheme.primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 30,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ticket Holder',
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
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Provide names of every ticket holder',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: MyAppTheme.whiteColor,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                          ],
                        ),
                      ),
                      for (var index = 0;
                          index < widget.selectedSeatsCount;
                          index++)
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${index + 1}',
                                  style: MyAppTheme.myTextStyle(
                                    color: MyAppTheme.primaryColor,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                Expanded(
                                  child: TextField(
                                    onChanged: (text) {
                                      // Store the ticket holder name in the list
                                      ticketHolders[index] = text;
                                    },
                                    style: const TextStyle(
                                      color: MyAppTheme.whiteColor,
                                    ),
                                    decoration: const InputDecoration(
                                      labelText: 'Ticket Holder Name',
                                      labelStyle: TextStyle(
                                        color:
                                            Color.fromARGB(119, 255, 255, 255),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: MyAppTheme.primaryColor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: MyAppTheme.orangeColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'You will recieve tickets on this email',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: MyAppTheme.whiteColor,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller:
                                    _emailController, // Set the controller
                                style: const TextStyle(
                                  color: MyAppTheme.whiteColor,
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    color: Color.fromARGB(119, 255, 255, 255),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: MyAppTheme.primaryColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: MyAppTheme.orangeColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            ElevatedButton(
                              style: MyElevatedButton.elevatedButtonStyle,
                              onPressed: () {
                                // Create a Map to hold the selected ticket information
                                final ticketInfo = {
                                  'event': widget.event,
                                  'selectedCategoryName':
                                      widget.selectedCategoryName,
                                  'selectedSeatsCount':
                                      widget.selectedSeatsCount,
                                  'ticketHolders': ticketHolders,
                                  'email': _emailController.text,
                                  'selectedPrice': widget
                                      .selectedPrice, // Include selectedPrice
                                };

                                // Navigate to the cart page and pass the necessary data
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CartPage(ticketInfo: ticketInfo),
                                  ),
                                );
                              },
                              child: Text(
                                'Add to Cart',
                                style: MyAppTheme.myTextStyle(
                                  color: MyAppTheme.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
