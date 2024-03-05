// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:insan_s_application2/core/app_export.dart';

/// This class defines the variables used in the [absensi_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AbsensiModel extends Equatable {
  AbsensiModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  AbsensiModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return AbsensiModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
