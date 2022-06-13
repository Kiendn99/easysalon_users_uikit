import 'dart:convert';

class ApiMeta {
  int currentPage = 0;
  Map<String, dynamic> query = Map();
  int rowPerPage = 0;
  int totalItem = 0;
  int totalPage = 0;
}

class ApiModel<TResponse> {
  ApiModel({this.data});

  static Map<String, dynamic>? getData(String jsonString) {
    var jsonMap = json.decode(jsonString);

    return jsonMap['data'];
  }

  TResponse? data;
}

class ApiModels<TResponse> {
  static List<Map<String, dynamic>>? getData(String jsonString) {
    var jsonMap = jsonDecode(jsonString);

    return jsonMap['data'];
  }

  static ApiMeta getMeta(String jsonString) {
    var jsonMap = jsonDecode(jsonString);

    var metaMap = jsonMap['meta'];

    var meta = ApiMeta();

    meta.currentPage = metaMap['currentPage'];
    meta.query = metaMap['query'];
    meta.rowPerPage = metaMap['rowPerPage'];
    meta.totalItem = metaMap['totalItem'];
    meta.totalPage = metaMap['totalPage'];

    return meta;
  }

  ApiModels({required this.data, required this.meta});

  List<TResponse> data;
  ApiMeta meta;
}
