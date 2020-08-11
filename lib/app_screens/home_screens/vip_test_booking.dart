import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/utils/size_config.dart';
import 'package:flutter_covid/constants/const.dart';
import 'package:flutter_covid/reusable_widget/reusable_Text.dart';
import 'package:flutter_covid/reusable_widget/reusable_material_button.dart';
import 'package:flutter_covid/reusable_widget/reusable_textField.dart';

class VipTestBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.3,
            child: Placeholder(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView(
                children: [
                  ReusableText(
                    text: "Address",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableTextField(),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableText(
                    text: "Select City",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    color: Colors.white,
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableText(
                    text: "Building / Villa name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableTextField(),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableText(
                    text: "Apartment / Villa Number",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableTextField(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.06,
                  ),
                  ReusableMaterialButton(
                    title: "Continue",
                    pressMe: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
