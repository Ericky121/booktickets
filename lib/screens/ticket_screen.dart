import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {

  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                //padding: EdgeInsets.only(left:AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
              SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                margin: EdgeInsets.only(right: AppLayout.getHeight(16), left: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "5211478566",
                          secondText: "Passport",
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                margin: EdgeInsets.only(right: AppLayout.getHeight(16), left: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number of E-ticket",
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    AppLayoutBuilderWidget(sections: 15,),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
