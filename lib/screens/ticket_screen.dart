import 'package:booktickets/data/app_info_list.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/themes/app_layout.dart';
import 'package:booktickets/themes/styles.dart';
import 'package:booktickets/widget/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getWidth(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1),
              Gap(AppLayout.getWidth(20)),
              const TicketTabsWidget(
                firstTabTitle: "Upcoming",
                secondTabTitle: "Previous",
              ),
              Gap(AppLayout.getWidth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/dalafiarisamuel',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              Gap(AppLayout.getWidth(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0]),
              )

            ],
          )
        ],
      ),
    );
  }
}
