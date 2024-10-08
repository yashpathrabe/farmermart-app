import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ProductApiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Product Api',
      apiUrl:
          'https://script.googleusercontent.com/a/macros/sbjit.edu.in/echo?user_content_key=iuHFyynYLO-UMHJKbf2xOxG0nxFaIr6e2eShkaHVwbzNLy4MdrlnDPnpH7qA9V-gIM1u7rQIiqR9ajgZqxk2HkciVuZwhR73m5_BxDlH2jW0nuo2oDemN9CCS2h10ox_nRPgeZU6HP96mluPxKlmlKWZgVVTXtKL1X4897iSixbMBfO-Fmcs7E9eHhKaB-Ne4Z_15vUqqZz-Yk4OGGj3Lo81b_iOrkCfO_VFpcw68bryA7lEQ6CcE8DrOoYysTksJx81zZ87iEM&lib=MWq7V5QT153zV1eOzV1idVqjxeNgr3uQH',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].EnterTitle''',
      ));
  static String? quantity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].ItemQuantity''',
      ));
  static String? price(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].ExpectedPrice''',
      ));
  static String? photos(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].AddPhotos''',
      ));
  static String? area(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].SelectArea''',
      ));
  static String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Category''',
      ));
  static int? mobile(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].MobileNo''',
      ));
}

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
  if (item is DocumentReference) {
    return item.path;
  }
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
