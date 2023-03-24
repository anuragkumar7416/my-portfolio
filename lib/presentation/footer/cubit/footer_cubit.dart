import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'footer_state.dart';

class FooterCubit extends Cubit<FooterState> {
  FooterCubit() : super(FooterInitial(false,''));
}
