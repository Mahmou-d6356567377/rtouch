import 'package:flutter/material.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key, required this.time, required this.id, required this.date, required this.msg,
  });
  final String time;
  final String id;
  final String date;
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const  EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      width: MediaQuery.sizeOf(context).width * .95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: -5,
              offset: Offset(0, 0),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Touch',
                style: arabicstyle5.copyWith(
                    fontSize: 19, fontWeight: FontWeight.normal),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  '#$id',
                  style: arabicstyle4.copyWith(
                      fontSize: 19, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                time,
                style: arabicstyle5.copyWith(
                    fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    msg,
                    style: arabicstyle5.copyWith(
                        fontSize: 19, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                  ),
                ),
                
                Flexible(
                  child: Text(
                    date,
                    style: arabicstyle5.copyWith(
                        fontSize: 19, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
