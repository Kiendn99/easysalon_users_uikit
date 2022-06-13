import 'dart:convert';
import 'package:easysalon_users_app/rest_api/api.dart';
import 'package:either_dart/either.dart';
import 'package:mixup/helpers/fetch_constants.dart';

class CreateTokenBody {
  CreateTokenBody({required this.password, required this.mobileNumber});
  String mobileNumber;
  String password;
}

// class AuthLoginResult {
//   AuthLoginResult({required this.token, required this.expTokenDate});
//   String token;
//   int expTokenDate;
// }

class AuthApi {
  static Future<Either<FetchError, String>> Function(CreateTokenBody params)
      createToken =
      authApi.createRequest((client, getUri, getHeaders) => (params) async {
            final uri = getUri("Authentication/login", params);
            print(uri);
            final headers = await getHeaders();
            final body = {
              'mobileNumber': params.mobileNumber,
              'password': params.password
            };

            final response = await client.post(uri,
                headers: headers, body: jsonEncode(body));
            print(response.statusCode);
            if (response.statusCode != 200) {
              return Left(FetchError(
                  message: "Login failed", httpStatus: response.statusCode));
            }
            var jsonMap = json.decode(response.body);
            final token = jsonMap["token"];
            // return Right(
            //   AuthLoginResult(
            //     expTokenDate: jsonMap["expTokenDate"],
            //     token: jsonMap["token"]));
            return Right(token);
          });
}
