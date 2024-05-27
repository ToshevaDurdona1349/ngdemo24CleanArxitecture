import 'package:clean_arxitecture/domain/entities/random_users_entiry.dart';

abstract class RandomUsersRepository{
  Future<List<RandomUserEntity>>loadRandomUserList(int currentPage) async{
    return [];
  }
}