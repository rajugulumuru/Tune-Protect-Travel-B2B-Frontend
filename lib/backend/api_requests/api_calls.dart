import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start iTravel Group Code

class ITravelGroup {
  static String baseUrl = 'http://202.165.25.108:32219/api/v1';
  static Map<String, String> headers = {
    'X-JWT-Assertion':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vd3NvMi5vcmcvY2xhaW1zL3N1YnNjcmliZXIiOiJCMkIifQ.lt7OCtrhCGZ8-fA816rD5KB3gWMOO-vzRrzXJfpcumI',
    'Authorization': 'Basic YjJiLXVhdDpxd2VyMTIzNA==',
  };
  static GetCategoryListCall getCategoryListCall = GetCategoryListCall();
  static DiscoverPlanListCall discoverPlanListCall = DiscoverPlanListCall();
  static CalculatorCall calculatorCall = CalculatorCall();
  static ConfirmCall confirmCall = ConfirmCall();
  static GetPoliciesSummaryCall getPoliciesSummaryCall =
      GetPoliciesSummaryCall();
  static SaleStatementCall saleStatementCall = SaleStatementCall();
  static BookingSearchCall bookingSearchCall = BookingSearchCall();
  static QueueCall queueCall = QueueCall();
  static PayableCalculatorCall payableCalculatorCall = PayableCalculatorCall();
  static QuoteCall quoteCall = QuoteCall();
  static PolicyGenerateDocumentCall policyGenerateDocumentCall =
      PolicyGenerateDocumentCall();
  static GetProductListCall getProductListCall = GetProductListCall();
}

class GetCategoryListCall {
  Future<ApiCallResponse> call({
    String? encodedBasicAuth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategoryList',
      apiUrl: '${ITravelGroup.baseUrl}/Category',
      callType: ApiCallType.GET,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DiscoverPlanListCall {
  Future<ApiCallResponse> call({
    String? planType = '',
    String? languageCode = '',
  }) {
    final body = '''
{
  "planType": "${planType}",
  "languageCode": "${languageCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'discoverPlanList',
      apiUrl: '${ITravelGroup.baseUrl}/DiscoverPlan',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic names(dynamic response) => getJsonField(
        response,
        r'''$.plans[:].attributes[:].name''',
        true,
      );
  dynamic planType(dynamic response) => getJsonField(
        response,
        r'''$.request.planType''',
      );
  dynamic attributes(dynamic response) => getJsonField(
        response,
        r'''$.plans[:].attributes''',
        true,
      );
}

class CalculatorCall {
  Future<ApiCallResponse> call({
    String? planCode = '',
    String? policyStart = '',
    String? policyEnd = '',
    String? currencyCode = '',
    String? languageCode = '',
  }) {
    final body = '''
{
  "planCode": "${planCode}",
  "policyStart": "${policyStart}",
  "policyEnd": "${policyEnd}",
  "currencyCode": "${currencyCode}",
  "LanguageCode": "${languageCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Calculator',
      apiUrl: '${ITravelGroup.baseUrl}/Calculator',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ConfirmCall {
  Future<ApiCallResponse> call({
    String? quoteID = '',
    String? paymentTransactionRef = '',
    String? paymentDate = '',
    String? paymentTime = '',
    int? paymentType,
  }) {
    final body = '''
{
  "quoteID": "${quoteID}",
  "paymentTransactionRef": "${paymentTransactionRef}",
  "paymentDate": "${paymentDate}",
  "paymentTime": "${paymentTime}",
  "paymentType": "${paymentType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm',
      apiUrl: '${ITravelGroup.baseUrl}/Confirm',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPoliciesSummaryCall {
  Future<ApiCallResponse> call({
    String? agencyName = '',
    String? agentName = '',
  }) {
    final body = '''
{
  "agencyName": "${agencyName}",
  "agentName": "${agentName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetPoliciesSummary',
      apiUrl: '${ITravelGroup.baseUrl}/GetPoliciesSummary',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SaleStatementCall {
  Future<ApiCallResponse> call({
    String? agencyName = '',
    int? month,
    int? year,
  }) {
    final body = '''
{
  "AgencyName": "${agencyName}",
  "Month": ${month},
  "Year": ${year}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaleStatement',
      apiUrl: '${ITravelGroup.baseUrl}/SaleStatement',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BookingSearchCall {
  Future<ApiCallResponse> call({
    String? agencyNames = '',
    String? agentName = '',
  }) {
    final body = '''
{
  "agencyNames": "${agencyNames}",
  "agentName": "${agentName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BookingSearch',
      apiUrl: '${ITravelGroup.baseUrl}/BookingSearch',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QueueCall {
  Future<ApiCallResponse> call({
    String? agencyName = '',
    String? agentName = '',
  }) {
    final body = '''
{
  "agencyName": "${agencyName}",
  "agentName": "${agentName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Queue',
      apiUrl: '${ITravelGroup.baseUrl}/Queue',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic originCity(dynamic response) => getJsonField(
        response,
        r'''$[:].originCity''',
        true,
      );
  dynamic destinationCity(dynamic response) => getJsonField(
        response,
        r'''$[:].destinationCity''',
        true,
      );
  dynamic departuredate(dynamic response) => getJsonField(
        response,
        r'''$[:].departureDate''',
        true,
      );
  dynamic returnDate(dynamic response) => getJsonField(
        response,
        r'''$[:].returnDate''',
        true,
      );
  dynamic currencyCode(dynamic response) => getJsonField(
        response,
        r'''$[:].currencyCode''',
        true,
      );
  dynamic premiumAccount(dynamic response) => getJsonField(
        response,
        r'''$[:].premiumAmount''',
        true,
      );
  dynamic bookingAgent(dynamic response) => getJsonField(
        response,
        r'''$[:].bookedBy''',
        true,
      );
  dynamic bookingDate(dynamic response) => getJsonField(
        response,
        r'''$[:].purchaseDate''',
        true,
      );
}

class PayableCalculatorCall {
  Future<ApiCallResponse> call({
    String? agencyName = '',
    int? type,
    int? month,
    int? year,
    String? underwriterID = '',
  }) {
    final body = '''
{
  "agencyName": "${agencyName}",
  "underwriterID": null,
  "type": ${type},
  "month": ${month},
  "year": ${year}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PayableCalculator',
      apiUrl: '${ITravelGroup.baseUrl}/PayableCalculator',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuoteCall {
  Future<ApiCallResponse> call({
    List<String>? insuredPersonsList,
    String? fullName = '',
    String? email = '',
    String? dob = '',
    String? address = '',
    String? nationality = '',
    String? idNo = '',
    String? gender = '',
    String? postcode = '',
    String? city = '',
    String? state = '',
    String? country = '',
    int? insuredType,
    int? age,
    int? ageNextBirthday,
    String? contacts = '',
    String? id = '',
    String? contactType = '',
    String? contactNumber = '',
    String? planCode = '',
    String? channel = '',
    String? policyStart = '',
    String? policyEnd = '',
    int? totalDays,
    String? languageCode = '',
    String? subPlans = '',
    String? subPlanString = '',
    String? currencyCode = '',
    String? promoCode = '',
    String? affinityCode = '',
    String? ownerMasterPolicyNo = '',
    String? ownerPolicyNo = '',
    String? agentCode = '',
  }) {
    final insuredPersons = _serializeList(insuredPersonsList);

    final body = '''
{
  "InsuredPersons": [{
    "Id": "${id}",
    "FullName": "${fullName}",
    "Email": "${email}",
    "DOB": "${dob}",
    "Address": "${address}",
    "Nationality": "${nationality}",
    "IdNo": "${idNo}",
    "Gender": "${gender}",
    "Postcode": "${postcode}",
    "City": "${city}",
    "State": "${state}",
    "Country": "${country}",
    "InsuredType": ${insuredType},
    "Age": ${age},
    "AgeNextBirthday": ${ageNextBirthday},
    "Contacts": [
      {
        "Id": "00000000-0000-0000-0000-000000000000",
        "ContactType": "Mobile",
        "ContactNumber": "123456"
      }
    ],
    "Extension": "{}"
  }],
  "PlanCode": "B2BTADRT",
  "Channel": "B2B",
  "PolicyStart": "2023-02-22T00:00:00Z",
  "PolicyEnd": "2023-02-28T00:00:00Z",
  "TotalDays": 6,
  "Extension": "{\\"ArrivalCountry\\":\\"TH\\",\\"DepartureCountry\\":\\"TH\\",\\"TripDuration\\":\\"30\\"}",
  "ExtensionString": "{ }",
  "LanguageCode": "EN",
  "QuestionnaireGroupResult": [],
  "SubPlans": null,
  "SubPlanString": null,
  "CurrencyCode": "MYR",
  "PromoCode": null,
  "AffinityCode": null,
  "OwnerMasterPolicyNo": null,
  "OwnerPolicyNo": null,
  "AgentCode": "AGT_001"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Quote',
      apiUrl: '${ITravelGroup.baseUrl}/Quote',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PolicyGenerateDocumentCall {
  Future<ApiCallResponse> call({
    String? policyNo = '',
    int? documentType,
  }) {
    final body = '''
{
  "PolicyNo": "${policyNo}",
  "documentType": ${documentType}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PolicyGenerateDocument',
      apiUrl: '${ITravelGroup.baseUrl}/PolicyGenerateDocument',
      callType: ApiCallType.POST,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetProductListCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getProductList',
      apiUrl: '${ITravelGroup.baseUrl}/GetProduct',
      callType: ApiCallType.GET,
      headers: {
        ...ITravelGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End iTravel Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
