import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TotalData extends Equatable {
  final String country;
  final int cases;
  final int active;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int critical;
  final double updated;
  final int affectedCountries;
  final double casesPerOneMillion;
  final double deathsPerOneMillion;
  final int tests;
  final double testsPerOneMillion;
  final CountryInfo countryInfo;

  const TotalData({
    this.country,
    this.cases,
    this.active,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.critical,
    this.updated,
    this.affectedCountries,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.countryInfo,
  });

  static TotalData fromMap(Map<String, dynamic> tmp) {
    return TotalData(
        country: tmp.containsKey('country') ? tmp['country'] : null,
        cases: tmp['cases'],
        active: tmp['active'],
        todayCases: tmp['todayCases'],
        deaths: tmp['deaths'],
        todayDeaths: tmp['todayDeaths'],
        recovered: tmp['recovered'],
        critical: tmp['critical'],
        updated: double.parse(tmp['updated'].toString()),
        affectedCountries: tmp.containsKey('affectedCountries')
            ? tmp['affectedCountries']
            : null,
        casesPerOneMillion: (tmp.containsKey('casesPerOneMillion')
                ? tmp['casesPerOneMillion'] ?? 0.0
                : 0.0)
            .toDouble(),
        deathsPerOneMillion: (tmp.containsKey('deathsPerOneMillion')
                ? tmp['deathsPerOneMillion'] ?? 0.0
                : 0.0)
            .toDouble(),
        tests: tmp['test'] ?? 0,
        testsPerOneMillion: (tmp.containsKey('testsPerOneMillion')
                ? tmp['testsPerOneMillion'] ?? 0.0
                : 0.0)
            .toDouble(),
        countryInfo: tmp.containsKey('countryInfo')
            ? CountryInfo(
                id: tmp['countryInfo']['_id'],
                iso2: tmp['countryInfo']['iso2'],
                iso3: tmp['countryInfo']['iso3'],
                lat: double.parse(tmp['countryInfo']['lat'].toString()),
                long: double.parse(tmp['countryInfo']['long'].toString()),
                flag: tmp['countryInfo']['flag'],
              )
            : null);
  }

  @override
  List<Object> get props => [
        country,
        cases,
        active,
        todayCases,
        deaths,
        todayDeaths,
        recovered,
        critical,
        updated,
        affectedCountries,
        casesPerOneMillion,
        deathsPerOneMillion,
        tests,
        testsPerOneMillion,
      ];
}

@immutable
class CountryInfo extends Equatable {
  final int id;
  final String iso2;
  final String iso3;
  final double lat;
  final double long;
  final String flag;

  const CountryInfo({
    this.id,
    this.iso2,
    this.iso3,
    this.lat,
    this.long,
    this.flag,
  });

  @override
  List<Object> get props => [id, iso2, iso3, lat, long, flag];
}
