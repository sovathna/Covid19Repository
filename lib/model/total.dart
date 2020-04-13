import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Total extends Equatable {
  final String country;
  final int cases;
  final int active;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int critical;
  final num updated;
  final int affectedCountries;
  final num casesPerOneMillion;
  final num deathsPerOneMillion;
  final int tests;
  final num testsPerOneMillion;
  final CountryInfo countryInfo;

  const Total({
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

  static Total fromMap(Map<String, dynamic> tmp) {
    return Total(
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
        casesPerOneMillion: tmp.containsKey('casesPerOneMillion')
            ? tmp['casesPerOneMillion']
            : 0.0.toDouble(),
        deathsPerOneMillion: tmp.containsKey('deathsPerOneMillion')
            ? tmp['deathsPerOneMillion']
            : 0.0,
        tests: tmp['tests'] ?? 0,
        testsPerOneMillion: tmp.containsKey('testsPerOneMillion')
            ? tmp['testsPerOneMillion']
            : 0.0,
        countryInfo: tmp.containsKey('countryInfo')
            ? CountryInfo(
                id: tmp['countryInfo']['_id'],
                iso2: tmp['countryInfo']['iso2'],
                iso3: tmp['countryInfo']['iso3'],
                lat: tmp['countryInfo']['lat'],
                long: tmp['countryInfo']['long'],
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
  final num lat;
  final num long;
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
