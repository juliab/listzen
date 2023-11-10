import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => init(getIt);
