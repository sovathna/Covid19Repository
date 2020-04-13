library covid19_repository;

export 'package:covid19_repository/base/view_state.dart';
export 'package:covid19_repository/data/interactor/total_interactor_impl.dart';
export 'package:covid19_repository/data/interactor/country_list_interactor_impl.dart';
export 'package:covid19_repository/data/interactor/history_interactor_impl.dart';
export 'package:covid19_repository/data/covid_repository_impl.dart';
export 'package:covid19_repository/data/covid_service_impl.dart';

export 'package:covid19_repository/domain/interactor/history_interactor.dart';
export 'package:covid19_repository/domain/interactor/country_list_interactor.dart';
export 'package:covid19_repository/domain/interactor/total_interactor.dart';
export 'package:covid19_repository/domain/covid_repository.dart';
export 'package:covid19_repository/domain/covid_service.dart';

export 'package:covid19_repository/model/history.dart';
export 'package:covid19_repository/model/events/history_event.dart';
export 'package:covid19_repository/model/results/history_result.dart';
export 'package:covid19_repository/model/events/country_list_event.dart';
export 'package:covid19_repository/model/results/country_list_result.dart';
export 'package:covid19_repository/model/events/total_event.dart';
export 'package:covid19_repository/model/results/total_result.dart';
export 'package:covid19_repository/model/total.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
