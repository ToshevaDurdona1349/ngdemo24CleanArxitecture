import 'package:clean_arxitecture/data/datasources/http_service.dart';
import 'package:clean_arxitecture/domain/repositories/random_user_repository.dart';
import '../../domain/entities/random_users_entiry.dart';

class RandomUsersRepositoryImpl extends RandomUsersRepository{
  @override
  Future<List<RandomUserEntity>>loadRandomUserList(int currentPage) async{
   var response =await Network.GET(Network.API_RANDOM_USER_LIST, Network.paramsRandomUserList(currentPage));
   var randomUserListRes = Network.parseRandomUserList(response!);
   return randomUserListRes.results;
  }
}