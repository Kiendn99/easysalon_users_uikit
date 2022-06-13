import 'package:http/http.dart' as http;
import 'package:mixup/index.dart';

const apiEntry = String.fromEnvironment('ENV') == "production"
    ? "https://api-customer.easysalon.vn/api/"
    : "https://customer-stg.easysalon.dev/api/";

final api = HttpRemote(
    client: http.Client(),
    name: "main",
    getUri: (path, param) {
      var uri = Uri.parse("$apiEntry$path");
      return uri;
    },
    getHeaders: () async {
      var token = Dispatcher<String?>("TOKEN").getValue();
      var headers = Map<String, String>();

      headers['content-type'] = "application/json";

      if (token != null) {
        headers['Authorization'] = "Bearer $token";
      }

      return headers;
    });

final authApi = HttpRemote(
    client: http.Client(),
    name: "auth",
    getUri: (path, param) {
      var uri = Uri.parse("$apiEntry$path");
      return uri;
    },
    getHeaders: () async {
      var headers = {'content-type': 'application/json'};
      return headers;
    });
