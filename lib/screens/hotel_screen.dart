import 'package:booktickets/themes/app_layout.dart';
import 'package:booktickets/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      margin: const EdgeInsets.only(right: 17, top: 5),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(20),
          Text(hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text(hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text("\$${hotel['price']}/night",
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
