import 'package:chatgpt_app/core/mixins/loggy_mixins.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver with CubitLoggy {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      loggy.info('onCreate -- ${bloc.runtimeType}');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    if (kDebugMode) {
      loggy.info('onEvent -- ${bloc.runtimeType}, $event');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      loggy.info('onChange -- ${bloc.runtimeType}, $change');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      loggy.info('onTransition -- ${bloc.runtimeType}, $transition');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      loggy.info('onError -- ${bloc.runtimeType}, $error');
    }
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      loggy.info('onClose -- ${bloc.runtimeType}');
    }
  }
}
