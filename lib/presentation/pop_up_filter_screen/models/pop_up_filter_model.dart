// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [pop_up_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopUpFilterModel extends Equatable {
  PopUpFilterModel({this.radioList = const []}) {}

  List<String> radioList;

  PopUpFilterModel copyWith({List<String>? radioList}) {
    return PopUpFilterModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
