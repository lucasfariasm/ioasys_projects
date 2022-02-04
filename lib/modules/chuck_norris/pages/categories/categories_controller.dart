
import 'package:ioasys_projects/modules/chuck_norris/models/chuck_category_model.dart';
import 'package:ioasys_projects/modules/chuck_norris/repositories/chuck_category_repository.dart';

class CategoriesController{
  final _repository = ChuckCategoryRepository();

  Future<List<ChuckCategoryModel>> getJokesCategories() async{
    return await _repository.fetchChuckCategoriesData().onError((error, stackTrace) => throw Error());

  }
}