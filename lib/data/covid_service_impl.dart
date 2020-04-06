import 'dart:convert';

import 'package:covid19_repository/domain/covid_service.dart';
import 'package:covid19_repository/model/historical_data.dart';
import 'package:covid19_repository/model/total_data.dart';
import 'package:http/http.dart' as http;

class CovidServiceImpl implements CovidService {
  final http.Client _httpClient;

  const CovidServiceImpl(this._httpClient);

  @override
  Future<TotalData> getTotalData(String url) async {
    final response = await _httpClient.get(url);
    if (response.statusCode == 200) {
      final bodyMap = json.decode(response.body);
      // debugPrint('===> TotalData: $bodyMap');
      return TotalData.fromMap(bodyMap);
    }
    throw Exception('[Service] error getTotalData. ${response.statusCode}');
  }

  @override
  Future<HistoricalData> getHistoricalData(String url) async {
    final response = await _httpClient.get(url);
    if (response.statusCode == 200) {
      final bodyMap = json.decode(response.body) as Map<String, dynamic>;
      var data = url.endsWith('/all/') ? bodyMap : bodyMap['timeline'];
      // debugPrint('===> HistoricalData: $data');
      final casesMap = data['cases'];
      final recoveredMap = data['recovered'];
      final deathsMap = data['deaths'];
      final cases = List<Case>();
      final recovered = List<Case>();
      final deaths = List<Case>();
      casesMap.forEach((key, value) {
        cases.add(Case(date: key, value: value));
        recovered.add(Case(date: key, value: recoveredMap[key]));
        deaths.add(Case(date: key, value: deathsMap[key]));
      });
      return HistoricalData(cases: cases, recovered: recovered, deaths: deaths);
    }
    throw Exception(
        '[Service] error getHistoricalData. ${response.statusCode}');
  }

  @override
  Future<List<TotalData>> getListTotalData(String url) async {
    final response = await _httpClient.get(url);
    if (response.statusCode == 200) {
      final bodyMapList = json.decode(response.body) as List;
      final list = List<TotalData>();
      bodyMapList.forEach((bodyMap) {
        list.add(TotalData.fromMap(bodyMap));
      });
      // debugPrint('===> ListTotalData: $bodyMapList');
      return list;
    }
    throw Exception('[Service] error getTotalData. ${response.statusCode}');
  }
}
