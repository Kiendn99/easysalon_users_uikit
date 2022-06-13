import 'package:either_dart/either.dart';
import 'package:mixup/helpers/fetch_constants.dart';

abstract class LoginRepository{
  Future<Either<FetchError,String>> loginRepo({required String mobileNumber,required String password});
}
