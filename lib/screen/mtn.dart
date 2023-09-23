import 'package:flutter/material.dart';

class MTNPage extends StatelessWidget {
  final double totalTicketPrice;

  MTNPage({Key? key, required this.totalTicketPrice}) : super(key: key);

  // Define a TextEditingController to capture the phone number input
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MTN Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Total Amount: ${totalTicketPrice.toStringAsFixed(0)} Rwf',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            // Add a text field to enter the phone number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Enter Phone Number',
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing
            // Add a button to initiate the payment
            ElevatedButton(
              onPressed: () {
                // Get the entered phone number
                String phoneNumber = _phoneNumberController.text.trim();

                // Validate the phone number
                if (phoneNumber.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Error'),
                        content: const Text('Please enter a phone number.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  // Process the payment with the entered phone number
                  // Implement your payment logic here
                  // You can use the phoneNumber and totalTicketPrice to process the payment
                  // For example, display a success message or navigate to a confirmation page.
                }
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
