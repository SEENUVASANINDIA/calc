// ignore_for_file: camel_case_types, unused_local_variable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

//
//class agecalc extends StatefulWidget {
//  const agecalc({Key? key}) : super(key: key);
//
//  @override
//  State<agecalc> createState() => _agecalcState();
//}
//
//class _agecalcState extends State<agecalc> {
//  late int d, m, y, d1, m1, y1, day;
//  String days1 = "", month1 = "", year1 = "";
//
//  Future f1() async {
//    DateTime? date1 = await showDatePicker(
//        context: context,
//        initialDate: DateTime.now(),
//        firstDate: DateTime(1900),
//        lastDate: DateTime.now());
//
//    setState(() {
//      d = int.parse(DateFormat("dd").format(date1!));
//      m = int.parse(DateFormat("MM").format(date1));
//      y = int.parse(DateFormat("yy").format(date1));
//
//      d1 = int.parse(DateFormat("dd").format(DateTime.now()));
//      m1 = int.parse(DateFormat("MM").format(DateTime.now()));
//      y1 = int.parse(DateFormat("yy").format(DateTime.now()));
//
//      day = finddays(m1, y1);
//      if (d1 - d >= 0) {
//        days1 = (d1 - d).toString() + "days";
//      } else {
//        days1 = (d1 + day - d).toString() + "days";
//        m1 = m1 - 1;
//      }
//      if (m1 - m >= 0) {
//        month1 = (m1 - m).toString() + "months";
//      } else {
//        month1 = (m1 + 12 - m).toString() + "months";
//        y1 = y1 - 1;
//      }
//      year1 = (y1 - y).toString() + "years";
//    });
//  }
//
//  int finddays(int m2, int y2) {
//    int day2;
//    if (m2 == 1 ||
//        m2 == 3 ||
//        m2 == 5 ||
//        m2 == 7 ||
//        m2 == 8 ||
//        m2 == 10 ||
//        m2 == 12) {
//      day2 = 31;
//    } else if (m2 == 4 || m2 == 6 || m2 == 9 || m2 == 11) {
//      day2 = 30;
//    } else {
//      if (y2 % 4 == 0) {
//        day2 = 29;
//      } else {
//        day2 = 28;
//      }
//    }
//    return day2;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('Age Calculator'),
//        centerTitle: true,
//      ),
//      body: Center(
//          child: Column(
//        children: [
//          const SizedBox(
//            height: 150,
//          ),
//          const Text('For Enter Your Age Click Here '),
//          TextButton(
//              onPressed: () {
//                f1();
//              },
//              child: const Text('Click Me')),
//          Text(year1 + " " + month1 + " " + days1),
//        ],
//      )),
//    );
//  }
//}
//
class agecalc extends StatefulWidget {
  const agecalc({Key? key}) : super(key: key);

  @override
  State<agecalc> createState() => _agecalcState();
}

class _agecalcState extends State<agecalc> {
  late int d, m, y, d1, m1, y1, day;
  String days1 = "", month1 = "", year1 = "";

  Future f1() async {
    DateTime? date1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime.now());

    setState(() {
      d = int.parse(DateFormat("dd").format(date1!));
      m = int.parse(DateFormat("MM").format(date1));
      y = int.parse(DateFormat("yy").format(date1));

      d1 = int.parse(DateFormat("dd").format(DateTime.now()));
      m1 = int.parse(DateFormat("MM").format(DateTime.now()));
      y1 = int.parse(DateFormat("yy").format(DateTime.now()));

      day = finddays(m1, y1);
      if (d1 - d >= 0) {
        days1 = (d1 - d).toString() + "days";
      } else {
        days1 = (d1 + day - d).toString() + "days";
        m1 = m1 - 1;
      }
      if (m1 - m >= 0) {
        month1 = (m1 - m).toString() + "months";
      } else {
        month1 = (m1 + 12 - m).toString() + "months";
        y1 = y1 - 1;
      }
      year1 = (y1 - y).toString() + "years";
    });
  }

  int finddays(int m2, int y2) {
    int day2;
    if (m2 == 1 ||
        m2 == 3 ||
        m2 == 5 ||
        m2 == 7 ||
        m2 == 8 ||
        m2 == 10 ||
        m2 == 12) {
      day2 = 31;
    } else if (m2 == 4 || m2 == 6 || m2 == 9 || m2 == 11) {
      day2 = 30;
    } else {
      if (y2 % 4 == 0) {
        day2 = 29;
      } else {
        day2 = 28;
      }
    }
    return day2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          const Text('For Enter Your Age Click Here '),
          TextButton(
              onPressed: () {
                f1();
              },
              child: const Text('Click Me')),
          Text(year1 + " " + month1 + " " + days1),
        ],
      )),
    );
  }
}





















//// ignore_for_file: unused_import, avoid_print, camel_case_types, unused_local_variable
//
//import 'package:age_calculator/age_calculator.dart';
//import 'package:flutter/material.dart';
//
//class agecalc extends StatefulWidget {
//  const agecalc({Key? key}) : super(key: key);
//
//  @override
//  State<agecalc> createState() => _agecalcState();
//}
//
//class _agecalcState extends State<agecalc> {
//  @override
//  Widget build(BuildContext context) {
//    // ignore: prefer_typing_uninitialized_variables
//    // var duration;
//    return Scaffold(
//      appBar: AppBar(
//        title: const Text('AgeCalculator'),
//        centerTitle: true,
//      ),
//      body: Center(
//          child: Column(
//        children: [
//          agec(),
//        ],
//      )),
//    );
//  }
//
//  agec() {
//    DateTime birthday = DateTime(2002, 10, 5);
//
//    DateDuration duration;
//
//    duration = AgeCalculator.age(birthday);
//    Text('Your Age is $duration');
//  }
//}
//