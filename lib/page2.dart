import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String selectedsnack = "None selected";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SafeArea(
            child: Text(
          "Selected snack:$selectedsnack",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        RadioMenuButton(
          value: "Mango",
          groupValue: selectedsnack,
          onChanged: (selectedvalue) {
            setState(() {});
          },
          child: Text("Mango"),
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            minimumSize: MaterialStatePropertyAll(Size(300, 80)),
          ),
        ),
      ]),
    );
  }
}
