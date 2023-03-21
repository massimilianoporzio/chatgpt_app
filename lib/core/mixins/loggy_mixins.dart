import 'package:loggy/loggy.dart';

mixin CubitLoggy implements LoggyType {
  @override
  Loggy<CubitLoggy> get loggy =>
      Loggy<CubitLoggy>('Cubit Loggy - $runtimeType');
}

mixin UsecaseLoggy implements LoggyType {
  @override
  Loggy<UsecaseLoggy> get loggy =>
      Loggy<UsecaseLoggy>('Usecase Loggy - $runtimeType');
}
