
import 'package:clean_arxitecture/domain/entities/random_users_entiry.dart';
import '../repositories/random_user_repository.dart';

class RandomUsersUseCase{
  final RandomUsersRepository repository;

  RandomUsersUseCase(this.repository);

  Future<List<RandomUserEntity>> call (int currentPage) async{
    return await repository.loadRandomUserList(currentPage);
  }
}