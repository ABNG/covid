import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/utils/size_config.dart';
import 'package:flutter_covid/constants/const.dart';
import 'package:flutter_covid/model/lab_model.dart';
import 'package:flutter_covid/reusable_widget/reusable_Text.dart';
import 'package:flutter_covid/reusable_widget/reusable_material_button.dart';
import 'package:flutter_covid/reusable_widget/reusable_textField.dart';

const List<String> day = ["Morning", "Afternoon", "Night"];
const List<String> timing = [
  "8:00 AM - 12:00 PM",
  "12:00 PM - 5:00 PM",
  "5:00 PM - 10:00 PM"
];

class TestBooking extends StatefulWidget {
  final LabModel labModel;

  TestBooking({this.labModel});

  @override
  _TestBookingState createState() => _TestBookingState();
}

class _TestBookingState extends State<TestBooking> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Booking",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.labModel.image,
                      fit: BoxFit.cover,
                      width: 80,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.labModel.labName,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Test Type:",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.labModel.testType,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ReusableText(
                text: "Full Name (as in Emirates ID)",
              ),
              ReusableTextField(),
              SizedBox(
                height: 20,
              ),
              ReusableText(
                text: "Emirates ID Number",
              ),
              ReusableTextField(),
              SizedBox(
                height: 20,
              ),
              ReusableText(
                text: "Mobile Number",
              ),
              ReusableTextField(),
              SizedBox(
                height: 20,
              ),
              ReusableText(
                text: "Select Test Date",
              ),
              Container(
                width: SizeConfig.screenWidth / 2,
                height: 40,
                color: Colors.white,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: color,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FittedBox(
                child: Text(
                  "Preferable Test Time (You will get notified with your test time)",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Color(0xff85A2C7)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            FlutterLogo(
                              size: 80,
                            ),
                            Text(
                              day[index],
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.grey[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              timing[index],
                              style: TextStyle(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.grey[400],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              ReusableMaterialButton(
                title: "Continue",
                pressMe: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
