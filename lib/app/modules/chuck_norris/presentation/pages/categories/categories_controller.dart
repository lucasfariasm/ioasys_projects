import 'package:ioasys_projects/app/modules/chuck_norris/domain/repositories/chuck_category_repository.dart';
import 'package:ioasys_projects/app/modules/chuck_norris/presentation/models/chuck_category_model.dart';

class CategoriesController {
  final _repository = ChuckCategoryRepository();

  Future<List<ChuckCategoryModel>> getJokesCategories() async {
    return await _repository
        .fetchChuckCategoriesData()
        .onError((error, stackTrace) => throw Error());
  }
}
