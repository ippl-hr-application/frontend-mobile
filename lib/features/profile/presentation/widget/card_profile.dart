import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? positon;

  const CardProfile(
      {required this.firstName,
      required this.lastName,
      required this.positon,
      super.key});

  @override
  Widget build(BuildContext context) {
    final String name = '${firstName ?? ''} ${lastName ?? ''}';
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(235, 243, 252, 1),
          // border: Border.all(color: Colors.black, width: 0.2),
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Text(
            name.toString(),
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(positon.toString(),
              style: const TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.normal))
        ],
      ),
    );
  }
}
