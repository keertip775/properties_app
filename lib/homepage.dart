import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:properties_app/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var kp8 = const EdgeInsets.all(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Properties",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 40,
            child: Icon(
              Icons.chevron_left,
              size: 55,
              color: Colors.purple,
            )),
      ),
      body: Container(
        padding: kp8,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.pink.withOpacity(0.1),
            Colors.white,
          ],
        )),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Padding(
                padding: kp8,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: AppColors.primarycolor,
                    filled: true,
                    labelText: "Property Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: kp8,
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  fillColor: AppColors.primarycolor,
                  filled: true,
                  labelText: "Property Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: kp8,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.primarycolor,
                  filled: true,
                  labelText: " Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: kp8,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.primarycolor,
                  filled: true,
                  labelText: "  Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: " Latitude",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: "  Longitude",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: " Bedrooms",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: "  Bathrooms",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: " Area",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: kp8,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColors.primarycolor,
                        filled: true,
                        labelText: "  Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: kp8,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: AppColors.primarycolor,
                  filled: true,
                  labelText: "  Amenities(ex.Lawn,Internet)",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: kp8,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: DropdownMenu(
                    width: 360,
                    // menuStyle: MenuStyle(
                    //   shape:
                    // )

                    label: Text("Select Furnished"),
                    dropdownMenuEntries: []),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Featured Image",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DottedBorder(
              dashPattern: [5, 5],
              strokeWidth: 2,
              color: Colors.grey.withOpacity(0.5),
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 128, 74, 244),
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: AppColors.primarycolor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Select Image",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Floor Plan  Image",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DottedBorder(
              dashPattern: [5, 5],
              strokeWidth: 2,
              color: Colors.grey.withOpacity(0.5),
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 128, 74, 244),
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: AppColors.primarycolor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Select Image",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Gallery Image",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DottedBorder(
              dashPattern: [5, 5],
              strokeWidth: 2,
              color: Colors.grey.withOpacity(0.5),
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 128, 74, 244),
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: AppColors.primarycolor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Select Image",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.all(
                16.0,
              ),
              child: SizedBox(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: AppColors.primarycolor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 0.0,
                    ),
                    backgroundColor: Color.fromARGB(255, 128, 74, 244),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// do un comment one by one , you will get where error will come
