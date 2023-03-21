import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'text_completion_state.dart';

class TextCompletionCubit extends Cubit<TextCompletionState> {
  TextCompletionCubit() : super(TextCompletionInitial());
}
