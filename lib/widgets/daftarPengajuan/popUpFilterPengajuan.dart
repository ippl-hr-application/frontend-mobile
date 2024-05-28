import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'custom_checkbox_button.dart';
import 'custom_radio_button.dart';
// import 'notifier/pop_up_filter_notifier.dart';
import 'package:flutter/material.dart';

class PopUpFilterScreen extends StatefulWidget {
  final Function(String) onFilterChanged;

  const PopUpFilterScreen({super.key, required this.onFilterChanged});

  @override
  PopUpFilterScreenState createState() => PopUpFilterScreenState();
}

class PopUpFilterScreenState extends State<PopUpFilterScreen> {
  String selectedStatus = 'PENDING';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 38,
        vertical: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Status pengajuan",
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 20,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(right: 1),
                  child: const Icon(Icons.close),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          _buildStatusOption(context, 'PENDING', 'Dalam Proses'),
          const SizedBox(height: 10),
          _buildStatusOption(context, 'REJECTED', 'Ditolak'),
          const SizedBox(height: 10),
          _buildStatusOption(context, 'APPROVED', 'Diterima'),
          const SizedBox(height: 15),
        ],
      ),
    ));
  }

  Widget _buildStatusOption(BuildContext context, String value, String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: RadioListTile<String>(
        title: Text(label),
        value: value,
        groupValue: selectedStatus,
        onChanged: (String? newValue) {
          setState(() {
            selectedStatus = newValue!;
          });
          widget.onFilterChanged(selectedStatus);
        },
      ),
    );
  }
}
