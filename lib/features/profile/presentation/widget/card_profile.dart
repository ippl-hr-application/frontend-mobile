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
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(32, 81, 229, 1),
          // border: Border.all(color: Colors.black, width: 0.2),
          // borderRadius: const BorderRadius.all(Radius.circular(16.0)),
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
          const Center(
            child: Icon(
              Icons.person,
              size: 100,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            name.toString().toUpperCase(),
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(height: 3.0),
          Text(positon.toString(),
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white))
        ],
      ),
    );
  }
}
