// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:insan_s_application2/core/app_export.dart';
import '../../../core/app_export.dart';
import 'daftarpengajuan_item_model.dart';

/// This class defines the variables used in the [daftar_pengajuan_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DaftarPengajuanModel extends Equatable {
  DaftarPengajuanModel({
    this.dropdownItemList = const [],
    this.daftarpengajuanItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<DaftarpengajuanItemModel> daftarpengajuanItemList;

  DaftarPengajuanModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<DaftarpengajuanItemModel>? daftarpengajuanItemList,
  }) {
    return DaftarPengajuanModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      daftarpengajuanItemList:
          daftarpengajuanItemList ?? this.daftarpengajuanItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, daftarpengajuanItemList];
}
