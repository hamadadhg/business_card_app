import 'package:business_card_app/states/take_value_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TakeValueCubit extends Cubit<TakeValueState> {
  TakeValueCubit()
      : super(
          InitialState(),
        );
}