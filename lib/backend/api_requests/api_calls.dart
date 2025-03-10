import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'https://xbnb-8lga-shzm.b2.xano.io/api:Q2luFzBp';
  static Map<String, String> headers = {};
  static SignupCall signupCall = SignupCall();
  static LoginCall loginCall = LoginCall();
  static MeCall meCall = MeCall();
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup',
      apiUrl: '${baseUrl}/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class MeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Me',
      apiUrl: '${baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Auth Group Code

/// Start ProductCatalogAPI Group Code

class ProductCatalogAPIGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'https://xbnb-8lga-shzm.b2.xano.io/api:IuNb-2Jd';
  static Map<String, String> headers = {};
  static DeleteCategoryRecordCall deleteCategoryRecordCall =
      DeleteCategoryRecordCall();
  static GetCategoryRecordCall getCategoryRecordCall = GetCategoryRecordCall();
  static EditCategoryRecordCall editCategoryRecordCall =
      EditCategoryRecordCall();
  static GetAllCategoryCall getAllCategoryCall = GetAllCategoryCall();
  static AddCategoryRecordCall addCategoryRecordCall = AddCategoryRecordCall();
  static DeleteProductRecordCall deleteProductRecordCall =
      DeleteProductRecordCall();
  static GetProductRecordCall getProductRecordCall = GetProductRecordCall();
  static EditProductRecordCall editProductRecordCall = EditProductRecordCall();
  static GetAllProductsCall getAllProductsCall = GetAllProductsCall();
  static AddProductCall addProductCall = AddProductCall();
  static UploadImageProductCall uploadImageProductCall =
      UploadImageProductCall();
}

class DeleteCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete category record.',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get category record',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditCategoryRecordCall {
  Future<ApiCallResponse> call({
    int? categoryId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit category record',
      apiUrl: '${baseUrl}/category/${categoryId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCategoryCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Category',
      apiUrl: '${baseUrl}/category',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AddCategoryRecordCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add category record',
      apiUrl: '${baseUrl}/category',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete product record.',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get product record',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditProductRecordCall {
  Future<ApiCallResponse> call({
    int? productId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "",
  "description": "",
  "value": 0,
  "stock_level": 0,
  "category_id": 0,
  "photo": {
    "access": "public",
    "path": "",
    "name": "",
    "type": "",
    "size": 0,
    "mime": "",
    "meta": {}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit product record',
      apiUrl: '${baseUrl}/product/${productId}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllProductsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Products',
      apiUrl: '${baseUrl}/product',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
  int? value(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].value''',
      ));
  int? categoryid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].category_id''',
      ));
  int? stock(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].stock_level''',
      ));
  List<String>? urlimage(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddProductCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? name = '',
    int? categoria,
    String? description = '',
    double? value,
    int? stock,
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}",
  "description": "${escapeStringForJson(description)}",
  "value": ${value},
  "stock_level": ${stock},
  "category_id": ${categoria}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Product',
      apiUrl: '${baseUrl}/product',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class UploadImageProductCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? image,
    int? productId,
    String? bearerAuth = '',
    String? authToken = '',
  }) async {
    final baseUrl = ProductCatalogAPIGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Upload Image Product',
      apiUrl: '${baseUrl}/product/upload/${productId}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'file': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ProductCatalogAPI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
