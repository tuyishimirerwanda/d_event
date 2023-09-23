import 'package:d_event/Theme/theme.dart';
import 'package:d_event/screen/payment_page.dart';
import 'package:d_event/widget/elevated_button.dart';
import 'package:flutter/material.dart';
import '../model/event_model.dart';
// Import your HomePage file

class CartPage extends StatelessWidget {
  final Map<String, dynamic> ticketInfo;

  const CartPage({Key? key, required this.ticketInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the information from the ticketInfo Map
    final Event event = ticketInfo['event'];
    final String selectedCategoryName = ticketInfo['selectedCategoryName'];
    final int selectedSeatsCount = ticketInfo['selectedSeatsCount'];
    final double selectedPrice = ticketInfo['selectedPrice'];
    final double totalTicketPrice = selectedSeatsCount * selectedPrice;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cart'),
        backgroundColor: MyAppTheme.blackColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: MyAppTheme.pageBackgroundDecoration,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // First Column - Event Image
                    Column(
                      children: [
                        Image.asset(
                          event.imageUrl,
                          width: 100, // Adjust as needed
                          height: 130, // Adjust as needed
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    // Second Column - Event Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text('Event: ${event.title}'),
                            subtitle: Text('Category: $selectedCategoryName'),
                          ),
                          ListTile(
                            title: Text(
                              'Number of Ticket: $selectedSeatsCount',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Total Price: ${totalTicketPrice.toStringAsFixed(0)} Rwf',
                  style: MyAppTheme.myTextStyle(
                    color: MyAppTheme.whiteColor,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Continue Shopping
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const HomePage(),
                  //       ),
                  //     );
                  //   },
                  //   child: const Text('Continue Shopping'),
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentPage(
                            totalTicketPrice: totalTicketPrice,
                          ),
                        ),
                      );
                    },
                    // Other button styling...
                    style: MyElevatedButton.elevatedButtonStyle,
                    child: Text(
                      'Go to Checkout',
                      style: MyAppTheme.myTextStyle(
                        color: MyAppTheme.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
