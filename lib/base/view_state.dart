import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ViewState extends Equatable {
  const ViewState();

  @override
  List<Object> get props => [];
}
