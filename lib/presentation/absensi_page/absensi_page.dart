import 'package:insan_s_application2/widgets/custom_drop_down.dart';
import 'models/absensi_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';
import 'notifier/absensi_notifier.dart';

// ignore_for_file: must_be_immutable
class AbsensiPage extends ConsumerStatefulWidget {
  const AbsensiPage({Key? key})
      : super(
          key: key,
        );

  @override
  AbsensiPageState createState() => AbsensiPageState();
}

class AbsensiPageState extends ConsumerState<AbsensiPage>
    with AutomaticKeepAliveClientMixin<AbsensiPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    right: 26.h,
                  ),
                  child: Column(
                    children: [
                      _buildHadir(context),
                      SizedBox(height: 12.v),
                      _buildFifteen(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHadir(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hadir".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "Absen".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 17.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "30".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "0".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return SizedBox(
      height: 350.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 58.v,
                right: 59.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Consumer(
              builder: (context, ref, _) {
                return SizedBox(
                  height: 350.v,
                  width: 342.h,
                  child: CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single,
                      firstDate: DateTime(DateTime.now().year - 5),
                      lastDate: DateTime(DateTime.now().year + 5),
                      firstDayOfWeek: 0,
                      dayTextStyle: TextStyle(
                        color: appTheme.blueGray800,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    value:
                        ref.watch(absensiNotifier).selectedDatesFromCalendar1 ??
                            [],
                    onValueChanged: (dates) {
                      ref.watch(absensiNotifier).selectedDatesFromCalendar1 =
                          dates;
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
