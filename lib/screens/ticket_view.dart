import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {

  /*
  {
  'from': {
    'code':"NYC",
    'name':"New-York"
    },
  'to': {
    'code':"LDN",
    'name':"London"
    },
  'flying_time': '8H 30M',
  'date': "1 MAY",
  'departure_time':"08:00 AM",
  "number":23
  }
   */
  final Map<String, dynamic> ticket;
  final bool isColor;
  const TicketView({Key? key, required this.ticket, this.isColor = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16), left: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
           Showing the blue part of the card/ticket
           */
            Container(
              decoration: BoxDecoration(
                color: isColor ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                )
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: isColor ? Styles.headLineStyle3.copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                      ),
                      Expanded(child: Container(),),
                      ThickContainer(isColor: isColor,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(isColor: isColor, sections: 15),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor ? Colors.white : Color(0xFF8ACCF7)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: isColor,),
                      Expanded(child: Container(),),
                      Text(
                        ticket["to"]["code"],
                          style: isColor ? Styles.headLineStyle3.copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                            ticket["from"]["name"],
                          style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                          : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
            /*
           Showing the orange part of the card/ticket
           */
            Container(
              color: isColor ? Styles.orangeColor : Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(isColor: isColor, sections: 15,),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            /*
            Bottom part of the orange card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor ? 21 : 0),
                    bottomRight: Radius.circular(isColor ? 21 : 0),
                  )
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket["date"],
                            style: isColor ? Styles.headLineStyle3.copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "DATE",
                            style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket["departure_time"],
                            style: isColor ? Styles.headLineStyle3.copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket["number"]}",
                            style: isColor ? Styles.headLineStyle3.copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor ? Styles.headLineStyle4.copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
