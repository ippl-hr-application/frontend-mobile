import '../models/daftarpengajuan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class DaftarpengajuanItemWidget extends StatelessWidget {
  DaftarpengajuanItemWidget(
    this.daftarpengajuanItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DaftarpengajuanItemModel daftarpengajuanItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            daftarpengajuanItemModelObj.cutiTahunan!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 6.v),
          Text(
            daftarpengajuanItemModelObj.juni!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
          Text(
            daftarpengajuanItemModelObj.dalamProses!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
