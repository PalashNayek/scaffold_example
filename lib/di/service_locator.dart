import 'package:get_it/get_it.dart';

import '../view_models/scaffold_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<ScaffoldViewModel>(() => ScaffoldViewModel());
}
