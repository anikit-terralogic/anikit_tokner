import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_web/src/presentation/base/bloc/base_bloc_event.dart';

@immutable
abstract class HomePageEvent extends BaseBlocEvent {
  const HomePageEvent();
}
