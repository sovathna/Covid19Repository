import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/historical_data_event.dart';
import 'package:covid19_repository/model/historical_data_result.dart';

abstract class HistoricalDataInteractor extends Interactor {
  Stream<HistoricalDataResult> getHistoricalData(GetHistoricalDataEvent event);
}
