import 'package:dio/dio.dart';
import 'package:ioasys_projects/pages/chuck_norris/models/chuck_category_model.dart';

const urlBase = 'https://api.chucknorris.io/';

class ChuckCategoryRepository {
  final Dio _dio = Dio();

  Future<List<ChuckCategoryModel>> fetchChuckCategoriesData() async {
    final response = await _dio.get('${urlBase}jokes/categories');

    return ChuckCategoryModel.fromJsonList(response.data);
  }
}
