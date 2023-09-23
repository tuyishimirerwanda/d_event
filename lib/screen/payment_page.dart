import 'package:d_event/Theme/theme.dart';
import 'package:d_event/screen/mtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentPage extends StatelessWidget {
  final double totalTicketPrice;

  const PaymentPage({Key? key, required this.totalTicketPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payment'),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                'Payment Method',
                style: MyAppTheme.myTextStyle(
                  color: MyAppTheme.orangeColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Total Amount: ${totalTicketPrice.toStringAsFixed(0)} Rwf',
                style: MyAppTheme.myTextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 60.0),
              Text('Select Payment Method:', style: MyAppTheme.myTextStyle()),
              const SizedBox(height: 20.0),
              // Add your payment method selection widgets here (e.g., credit card form, PayPal button, etc.)
              // Replace this with actual payment processing UI or integrations.
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the MTNPage and pass the totalTicketPrice
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MTNPage(totalTicketPrice: totalTicketPrice),
                        ),
                      );
                    },
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: MyAppTheme.blackColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      height: 130,
                      width: 130,
                      child: Image.asset(
                        'images/MTN.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: MyAppTheme.blackColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      height: 130,
                      width: 130,
                      child: Image.asset(
                        'images/AIRTEL.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: MyAppTheme.myTextStyle(
                    color: MyAppTheme.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
