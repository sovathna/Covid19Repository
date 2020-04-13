import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/events/history_event.dart';
import 'package:covid19_repository/model/results/history_result.dart';

abstract class HistoryInteractor extends Interactor {
  Stream<HistoryResult> getHistoricalData(GetHistoryEvent event);
}
