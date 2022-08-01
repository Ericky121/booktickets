import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20)
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                  airline ticket
                   */
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(7))),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Airline tickets"
                      ),
                    ),
                  ),
                  /*
                  hotels
                   */
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(7))),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                          "Hotels"
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFF4F6FD),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure"
          ),
          Gap(AppLayout.getHeight(20)),
          AppIconText(
              icon: Icons.flight_land_rounded,
              text: "Arrival"
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xD91130CE),
            ),
            child: Text(
              "find tickets",
              style: Styles.textStyle.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
