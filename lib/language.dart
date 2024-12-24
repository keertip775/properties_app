import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int selectedindex = 0;

  List languages = ["English", "हिन्दी", "मराठी", "ગુજરાતી", "ಕನ್ನಡ", "తెలుగు"];
  List letters = ["E", "हि", "म", "ગુ", "ಕ", "తె"];
  List items = [
    "Continue",
    "जारी रखना",
    "चालू ठेवा",
    "ચાલુ રાખો",
    "ಮುಂದುವರಿಸಿ",
    "కొనసాగించు"
  ];
  List headings = [
    "Choose Your language.",
    "अपनी भाषा चुनें.",
    "तुमची भाषा निवडा.",
    "તમારી ભાષા પસંદ કરો.",
    "ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆರಿಸಿ.",
    "మీ భాషను ఎంచుకోండి."
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          SafeArea(
            bottom: true,
            // minimum: EdgeInsets.all(10),
            // maintainBottomViewPadding: false,
            child: Text(
              headings[selectedindex],
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 42,
                height: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedindex = index;
// why?

                        // if (selectedindex == index) {
                        //  Color(0xff4caf50);
                        // } else {
                        //   Color(0xfffefefe);
                        // }
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(children: [
                        CircleAvatar(
                          backgroundColor: selectedindex == index
                              ? Colors.white
                              : Colors.orange.withOpacity(0.1),
                          child: Text(
                            letters[index],
                            style: TextStyle(
                              color: selectedindex == index
                                  ? Color(0Xff03743c)
                                  : Colors.brown,
                              fontWeight: FontWeight.bold,
                            ),
                            // "${index + 1}",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          languages[index],
                          style: TextStyle(
                            color: Color(0Xff03743c),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        if (selectedindex == index)
                          Icon(
                            Icons.check,
                            size: 28,
                            color: Color(0Xff03743c),
                          )
                      ]),
                    ),
                    style: ElevatedButton.styleFrom(
                      // surfaceTintColor: Colors.grey.shade300,
                      backgroundColor: selectedindex == index
                          ? Color.fromARGB(255, 188, 234, 212)
                          : Colors.white,
                      side: BorderSide(
                          color: selectedindex == index
                              ? Colors.green
                              : Colors.grey.shade100,
                          width: 2),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   minimumSize: Size.fromWidth(
                    //     380,
                    //   ),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              items[selectedindex],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0Xff03743c),
                minimumSize: Size(400, 60.0)),
          ),
        ]),
      ),

      // ),
    );
  }
}
