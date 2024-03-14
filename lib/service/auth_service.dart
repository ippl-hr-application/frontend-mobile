// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:meraih_mobile/models/person.dart';

// class GetUser {
//   static Future<List<Person>> getUser() async {
//     String userUrl = "https://1274-36-85-37-196.ngrok-free.app/profile";
//     String token =
//         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbXBsb3llZV9pZCI6ImFoai1hZGJhZHV5MyIsImNvbXBhbnlfYnJhbmNoX2lkIjoxLCJpYXQiOjE3MTAyNjc5MzAsImV4cCI6MTcxMDg3MjczMH0.bp5T8BRIUj9YhNB5Jn0gFO2EzCrHui_SCiBdN62PXMU";
//     try {
//       final response = await http.get(
//         Uri.parse(userUrl),
//         headers: {
//           'Authorization': 'Bearer $token', // Tambahkan token JWT di sini
//         },
//       );
//       if (response.statusCode == 200) {
//         final jsonData = jsonDecode(response.body);
//         if (jsonData.containsKey('data')) {
//           List<dynamic> dataList = jsonData['data'];
//           List<Person> persons =
//               dataList.map((e) => Person.fromJson(e)).toList();
//           return persons;
//         } else {
//           throw Exception('Data key not found in the response.');
//         }
//       } else {
//         throw Exception('Failed to get data: ${response.statusCode}');
//       }
//     } catch (error) {
//       throw Exception('Failed to fetch data: $error');
//     }
//   }
// }
