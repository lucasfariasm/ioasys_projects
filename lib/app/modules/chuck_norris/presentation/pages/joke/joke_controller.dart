import 'package:ioasys_projects/app/modules/chuck_norris/domain/repositories/chuck_joke_repository.dart';
import 'package:ioasys_projects/app/modules/chuck_norris/presentation/models/chuck_joke_model.dart';

class JokeController {
  final _repository = ChuckJokeRepository();

  Future<ChuckJokeModel> getRandomJokeFromCategory({
    required String category,
  }) async {
    return await _repository.fetchChuckJokeData(category: category);
  }
}
