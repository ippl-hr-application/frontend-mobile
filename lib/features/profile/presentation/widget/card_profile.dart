import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
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
      child: const Column(
        children: [
          Text(
            "Muhammad Saman",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text("Manajer accounting",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal))
        ],
      ),
    );
  }
}
