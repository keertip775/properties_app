import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool isactivated = true;
  List names = [
    "Preston Inglewood \nAppartment",
    "New duplex house for\n sell",
    "Heaven Appartment"
  ];
  // List category = ["hall", "h2", "h3"];
  List items = ["150/month", "1500/month", "800/month"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left,
          size: 35,
        ),
        title: Text(
          "My Booking",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              height: 70,

              // width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 235, 235),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isactivated = true;
                        });
                      },
                      child: Text(
                        "Active",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isactivated
                                ? Color(
                                    0xff2fa1b9,
                                  )
                                : Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(180, 60),
                        backgroundColor: isactivated
                            ? Colors.white
                            : const Color.fromARGB(0, 244, 241, 241),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isactivated = false;
                        });
                      },
                      child: Text(
                        "Completed",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isactivated
                              ? Colors.black
                              : Color(
                                  0xff2fa1b9,
                                ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isactivated
                            ? Colors.white
                            : Color.fromARGB(0, 255, 237, 237),
                        minimumSize: Size(180, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 200,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 5),
                        child: Column(
                          children: [
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      "assets/images/hall.png",
                                      height: 120,
                                      width: 120,
                                      fit: BoxFit.fill,
                                      alignment: Alignment.topRight,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text(
                                          names[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        items[index],
                                        style: TextStyle(),
                                      ),
                                    ],
                                  ),
                                  Container(
                                      // alignment: Alignment.topRight,
                                      height: 35,
                                      width: 58,
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(
                                          0.3,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          10,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Paid",
                                          style: TextStyle(
                                              // color: Color.fromARGB(255, 2, 137, 6)),
                                              color: Color(0xff2BB46D),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))
                                ]),
                            Divider(),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Details",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(
                                        0xff2fa1b9,
                                      ),
                                      minimumSize: Size(180, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "E-Recipt",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2fa1b9)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        // backgroundColor: Color(
                                        // 0xff2fa1b9,
                                        // ),
                                        minimumSize: Size(180, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        side: BorderSide(
                                            color: Color(0xff2fa1b9))),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                // child: Container(
                //   height: 200,
                //   width: 380,
                //   decoration: BoxDecoration(
                //     // color: Colors.grey,
                //     borderRadius: BorderRadius.circular(
                //       10,
                //     ),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 10, left: 5),
                //     child: Column(
                //       children: [
                //         Row(
                //             // mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               ClipRRect(
                //                 borderRadius: BorderRadius.circular(
                //                   10,
                //                 ),
                //                 child: Image.asset(
                //                   "assets/images/hall.png",
                //                   height: 120,
                //                   width: 120,
                //                   fit: BoxFit.fill,
                //                   alignment: Alignment.topRight,
                //                 ),
                //               ),
                //               SizedBox(
                //                 width: 20,
                //               ),
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 // mainAxisAlignment: MainAxisAlignment.end,
                //                 children: [
                //                   Text(
                //                     "Preston Inglewood \nAppartment",
                //                     style: TextStyle(
                //                         fontSize: 18, fontWeight: FontWeight.bold),
                //                   ),
                //                   Text(
                //                     "150/month",
                //                     style: TextStyle(),
                //                   ),
                //                 ],
                //               ),
                //               Container(
                //                   // alignment: Alignment.topRight,
                //                   height: 35,
                //                   width: 58,
                //                   decoration: BoxDecoration(
                //                     color: Colors.green.withOpacity(
                //                       0.3,
                //                     ),
                //                     borderRadius: BorderRadius.circular(
                //                       10,
                //                     ),
                //                   ),
                //                   child: Center(
                //                     child: Text(
                //                       "Paid",
                //                       style: TextStyle(
                //                           // color: Color.fromARGB(255, 2, 137, 6)),
                //                           color: Color(0xff2BB46D),
                //                           fontWeight: FontWeight.bold),
                //                     ),
                //                   ))
                //             ]),
                //         Divider(),
                //         Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               ElevatedButton(
                //                 onPressed: () {},
                //                 child: Text(
                //                   "Details",
                //                   style: TextStyle(
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.bold,
                //                       color: Colors.white),
                //                 ),
                //                 style: ElevatedButton.styleFrom(
                //                   backgroundColor: Color(
                //                     0xff2fa1b9,
                //                   ),
                //                   minimumSize: Size(180, 50),
                //                   shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(20),
                //                   ),
                //                 ),
                //               ),
                //               ElevatedButton(
                //                 onPressed: () {},
                //                 child: Text(
                //                   "E-Recipt",
                //                   style: TextStyle(
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.bold,
                //                       color: Color(0xff2fa1b9)),
                //                 ),
                //                 style: ElevatedButton.styleFrom(
                //                     // backgroundColor: Color(
                //                     // 0xff2fa1b9,
                //                     // ),
                //                     minimumSize: Size(180, 50),
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius: BorderRadius.circular(20),
                //                     ),
                //                     side: BorderSide(color: Color(0xff2fa1b9))),
                //               ),
                //             ]),
                //       ],
                //     ),
                //   ),
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
