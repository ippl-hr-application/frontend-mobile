// import 'package:flutter/material.dart';
// import 'package:meraih_mobile/models/person.dart';
// import 'package:meraih_mobile/service/auth_service.dart';

// enum PersonConditional { init, loading, loaded, failure }

// class PersonProvider extends ChangeNotifier {
//   PersonConditional status = PersonConditional.init;

//   List<Person> _person = [];
//   List<Person> get perones = _user;

//   fetchLiveUser()async{
//     status = PersonConditional.loading;
//     notifyListeners();
//     final list = await GetUser.getUser();
//     if(list == null){
//       status = PersonConditional.failure;
//       notifyListeners();
//       return;
//     }

//     _person = list;
//     status = PersonConditional.loaded;
//     notifyListeners();
//   }
// }
