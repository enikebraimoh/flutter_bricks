import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'colors.dart';

class DisplayUtils {
  // number formatter
  static String formatNumber(double number, {bool withDecimals = true}) {
    // format number based on decimals flag
    var format = withDecimals ? '#,###.00' : '#,###';
    var formatter = NumberFormat(format, 'en_US');
    return formatter.format(number);
  }

  static String formatAmount(int amount, {bool withDecimals = true}) {
    var formattedNumber =
        formatNumber(amount / 100.00, withDecimals: withDecimals);
    return formattedNumber;
  }

  static String formatPrice(double amount, {bool withDecimals = false}) {
    var formattedNumber =
        formatNumber(amount.toDouble(), withDecimals: withDecimals);
    return formattedNumber;
  }

  static String formateDate({date}) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat.MMMd().format(dateTime);
    String formattedTime = DateFormat.jm().format(dateTime).toLowerCase();
    // DateFormat('hh:mm aaa').format(date).toLowerCase();
    return "$formattedDate  $formattedTime";
  }

  static String formateDateOnly({date}) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat.MMMd().format(dateTime);

    return "$formattedDate  ";
  }

  // static String formateToTimeAgo({String? date}) {
  //   DateTime dateTime = DateTime.parse(date!);

  //   // String formattedDate = DateFormat.MMMd().format(dateTime);
  //   // String formattedTime = DateFormat.jm().format(dateTime).toLowerCase();
  //   // DateFormat('hh:mm aaa').format(date).toLowerCase();
  //   return Jiffy(dateTime).fromNow();
  // }

  static String formatDateToTodayOrYesterday(String rawDate) {
    DateTime todayDate = DateTime.now();
    DateTime yesterdayDate = DateTime.now().subtract(
      const Duration(days: 1),
    );
    String parsedTodayDate = DateFormat("yyyy-MM-dd").format(todayDate);
    String parsedYesterdatDate = DateFormat("yyyy-MM-dd").format(yesterdayDate);
    if (rawDate == parsedTodayDate) {
      return "Today";
    }

    if (rawDate == parsedYesterdatDate) {
      return "Yesterday";
    }

    return rawDate;
  }

  static String formateDateFormat({date}) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('dd MMMM yyyy').format(dateTime);
    // String formattedTime = DateFormat.jm().format(date).toLowerCase();
    // DateFormat('hh:mm aaa').format(date).toLowerCase();
    return formattedDate;
  }

  static String formateBirthDate({date}) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('yyyy-MM-dd').format(dateTime);
    return formattedDate;
  }

  static String formateActiveOrderDate({date}) {
    DateTime dateTime = DateTime.parse(date!);
    String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
    String formattedTime =
        DateFormat('hh:mm aaa').format(dateTime).toLowerCase();
    return "$formattedDate  $formattedTime";
  }

  static String formateTime({date}) {
    String formattedTime = DateFormat.jm().format(date).toLowerCase();
    return formattedTime;
  }

  static Future selectDate({
    context,
    int? addedDay,
    DateTime? firstDate,
  }) async {
    DateTime today = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: today,
        firstDate: firstDate ?? DateTime(2000),
        lastDate: DateTime(2035),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: AppColors.selarPurple,
                onPrimary: Colors.white,
                surface: AppColors.selarPurple,
                onSurface: Colors.black,
              ),
              dialogBackgroundColor: Colors.white,
            ),
            child: child!,
          );
        },
        confirmText: 'Okay',
        cancelText: 'Not now',
        selectableDayPredicate: (DateTime d) {
          if (d.isBefore(DateTime.now().add(Duration(days: addedDay!)))) {
            return true;
          }
          return false;
        });

    return selectedDate;
  }

  static Future selectDateIos({
    ctx,
    DateTime? firstDate,
    required Function(DateTime? value) onSelect,
  }) async {
    showCupertinoModalPopup(
        barrierDismissible: false,
        context: ctx,
        builder: (_) => Container(
              height: 240.h,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Material(
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.w, top: 10.h),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            // getIt<NavigationService>().back();
                          },
                          child: Text(
                            "Done",
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200.h,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime.now(),
                      minimumDate: firstDate ?? DateTime(2000),
                      onDateTimeChanged: onSelect,
                    ),
                  ),
                ],
              ),
            ));
  }
}

extension DateHelpers on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }
}
