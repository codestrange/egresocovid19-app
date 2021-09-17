import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

abstract class IHomeBloc extends Bloc<HomeEvent, HomeState> {
  IHomeBloc(HomeState initialState) : super(initialState);
}

@Injectable(as: IHomeBloc)
class HomeBloc extends IHomeBloc {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) {
      event.when(
        started: () {},
      );
    });
  }
}
