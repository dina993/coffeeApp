
import 'package:coffee_app/splash_screen/splash_screen.dart';
import 'package:coffee_app/utiles/navigation_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;



Future<void> init() async {

  // getIt.registerLazySingleton(() => const SplashScreen());
  getIt.registerLazySingleton(() => NavigationService());


}