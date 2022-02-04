import 'package:dio/dio.dart';
import 'package:ioasys_projects/errors.dart';
import 'package:ioasys_projects/modules/chuck_norris/models/chuck_joke_model.dart';

const urlBase = 'https://api.chucknorris.io/';

class ChuckJokeRepository {
  final Dio _dio = Dio();

  Future<ChuckJokeModel> fetchChuckJokeData({
    required String category,
  }) async {
    try {
      final response =
          await _dio.get('${urlBase}jokes/random?category=$category');

      return ChuckJokeModel.fromJson(response.data);
    } on DioError catch (e) {
      throw HttpClientError(
        message: e.message,
        statusCode: e.response?.statusCode ?? 500,
      );
    } catch (e) {
      throw RepositoryFailure(message: e.toString());
    }
  }
}
