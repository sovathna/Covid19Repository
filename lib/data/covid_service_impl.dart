import 'dart:convert';

import 'package:covid19_repository/domain/covid_service.dart';
import 'package:covid19_repository/model/history.dart';
import 'package:covid19_repository/model/total.dart';
import 'package:http/http.dart' as http;

class CovidServiceImpl implements CovidService {
  final http.Client _httpClient;

  const CovidServiceImpl(this._httpClient);

  @override
  Future<Total> getTotal(String url) async {
    final response = await _httpClient.get(url);
    if (response.statusCode == 200) {
      final bodyMap = json.decode(response.body);
      // debugPrint('===> Total: $bodyMap');
      return Total.fromMap(bodyMap);
    }
    throw Exception('[Service] error getTotal. ${response.statusCode}');
  }

  @override
  Future<History> getHistory(String url) async {
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
      return History(cases: cases, recovered: recovered, deaths: deaths);
    }
    throw Exception(
        '[Service] error getHistoricalData. ${response.statusCode}');
  }

  @override
  Future<List<Total>> getCountryList(String url) async {
    final response = await _httpClient.get(url);
    if (response.statusCode == 200) {
      final bodyMapList = json.decode(response.body) as List;
      final list = List<Total>();
      bodyMapList.forEach((bodyMap) {
        list.add(Total.fromMap(bodyMap));
      });
      // debugPrint('===> ListTotal: $bodyMapList');
      return list;
    }
    throw Exception('[Service] error getTotal. ${response.statusCode}');
  }
}
