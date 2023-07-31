import 'package:dio/dio.dart';

import '../model/user_model.dart';


class UserService {
   Future<dynamic> getUsers() async {
    try {
      Response response =
          await Dio().get("http://192.168.42.184:3000/BeepAPP");
      print(response.data);
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        return response.statusCode.toString();
      }
    } on DioException catch (e) {
      e.message.toString();
    }
  }


  

  static Future<void> getCards() async {
    try {
      String accessToken =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjRiNDI3MTNiOTBkMmM1YmYzMjhlNGFlIn0sImlhdCI6MTY4OTU3NjQzMCwiZXhwIjoxNjkyMTY4NDMwfQ.C9CTd14VBFJAzmAgaiqrQAEObD5gNSE6K6q1FVm5R9Y";
      Response response = await Dio().get("http://192.168.42.183:4000/order",
          options: Options(headers: {"Authorization": "Bearer $accessToken"}));
      print(response.statusCode.toString());
      if (response.statusCode == 200) {
        print(response.data);
      } else {
        print(response.statusMessage);
      }
    } on DioException catch (e) {
      print(e.message);
    }
  }
}
