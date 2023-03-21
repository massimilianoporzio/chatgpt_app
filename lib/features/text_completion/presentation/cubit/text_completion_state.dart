part of 'text_completion_cubit.dart';

abstract class TextCompletionState extends Equatable {
  const TextCompletionState();

  @override
  List<Object> get props => [];
}

class TextCompletionInitial extends TextCompletionState {}
