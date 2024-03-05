import '../../../core/app_export.dart';

/// This class is used in the [daftarpengajuan_item_widget] screen.
class DaftarpengajuanItemModel {
  DaftarpengajuanItemModel({
    this.cutiTahunan,
    this.juni,
    this.dalamProses,
    this.id,
  }) {
    cutiTahunan = cutiTahunan ?? "Cuti Tahunan";
    juni = juni ?? "21 Juni 2023";
    dalamProses = dalamProses ?? "Dalam Proses";
    id = id ?? "";
  }

  String? cutiTahunan;

  String? juni;

  String? dalamProses;

  String? id;
}
