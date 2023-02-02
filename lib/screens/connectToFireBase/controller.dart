import 'package:dio/dio.dart';
import 'package:engamrbakr/screens/connectToFireBase/model.dart';

class ConnectToFireController {
  Future<MoviesData?> getAPIData() async {
    try {
      var data = await Dio().get(
        'https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=1',
      );
      Map<String, dynamic> json = data.data;
      return MoviesData.fromJson(json);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
