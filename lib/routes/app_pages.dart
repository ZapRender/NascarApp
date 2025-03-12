import 'package:get/get_navigation/get_navigation.dart';
import 'package:nascar_app/presentation/views/descriptionScreen/description_screen.dart';
import 'package:nascar_app/presentation/views/homeSceen/home_screen.dart';
import 'package:nascar_app/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
    GetPage(name: AppRoutes.description, page: () => DescriptionScreen()),
  ];
}
