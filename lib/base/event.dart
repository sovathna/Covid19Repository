import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class Event extends Equatable {
  const Event();

  @override
  List<Object> get props => [];
}
