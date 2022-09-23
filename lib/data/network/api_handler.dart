part of 'api.dart';

abstract class ApiHandler {
  Future get(String url, String token);
  Future post(String url, dynamic body,String token);
  Future postUpload(http.MultipartRequest request);
  Future put(String url, dynamic body);
  Future delete(String url);

  factory ApiHandler() => _ApiHandlerImpl();
}

class _ApiHandlerImpl implements ApiHandler {
  @override
  Future get(String url, token) async {
    try {
      final response = await http.get(Uri.parse(url), headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json",
      });
      print("$url ${response.body}");
      return _process(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  @override
  Future post(String url, body, token) async {
    try {
      final response = await http.post(Uri.parse(url), headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json",
      },  body: body);
      print("$url ${response.body}");
      print("token :"+token);
      return _process(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  @override
  Future postUpload(http.MultipartRequest request) async {
    try {
      final response = await request.send();
      final responses = await http.Response.fromStream(response);
      // final body = response.stream.transform(utf8.decoder);
      print("${response.statusCode}");
      print("${responses.body}");
      return _processUpload(response.statusCode, responses.body.toString());
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  @override
  Future put(String url, body) async {
    try {
      final response = await http.put(Uri.parse(url), body: body);
      return _process(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  @override
  Future delete(String url) async {
    try {
      final response = await http.delete(Uri.parse(url));
      return _process(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _process(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 400:
      case 401:
      case 403:
      case 422:
      case 404:
        return json.decode(response.body.toString());
      case 500:
      default:
        return FetchDataException(
          'Error occured while connecting to server with StatusCode : ${response.statusCode}',
        );
    }
  }

  dynamic _processUpload(int response, String Body) {
    switch (response) {
      case 200:
      case 201:
      case 400:
      case 401:
      case 403:
      case 422:
      case 404:
        return json.decode(Body);
      case 500:
      default:
        return FetchDataException(
          'Error occured while connecting to server with StatusCode : ${response}',
        );
    }
  }
}