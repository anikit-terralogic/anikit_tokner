import 'package:flutter_web/src/presentation/ui/homepage/bloc/homepage_event.dart';
import 'package:flutter_web/src/presentation/ui/homepage/bloc/homepage_state.dart';
import 'package:injectable/injectable.dart';

import '../../../base/bloc/base_bloc.dart';

@injectable
class HomePageBloc extends BaseBloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState());
}