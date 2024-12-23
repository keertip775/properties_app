import 'package:flutter/material.dart';
import 'package:properties_app/colors.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/img1.png",
                height: 300,
                width: 300,
              ),
              Text(
                "Payment Successful",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Payment Success",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Back to Home",
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0D9D5F)),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
