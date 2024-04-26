import 'package:food_delivery/pages/auth/sign_in_page.dart';
import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/splash/splash_page.dart';
import 'package:get/get.dart';

import '../pages/home/home_page.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";
  static const String sigIn = "/sign-in";

  static String getSplashPage() => '$splashPage';

  static String getInitial() => '$initial';

  static String getPopularFood(int pageId, String page) =>
      '$popularFood?pageId=$pageId&page=$page';

  static String getRecommendedFood(int pageId, String page) =>
      '$recommendedFood?pageId=$pageId&page=$page';

  static String getCartPage() => '$cartPage';
  static String getSignInPage() => '$sigIn';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: () => SplashScreen()),
    GetPage(
        name: initial,
        page: () {
          return HomePage();
        }),
    GetPage(
        name: sigIn,
        page: () {
          return SignInPage();
        },
        transition: Transition.topLevel),
    GetPage(
        name: popularFood,
        page: () {
          var pagId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return PopularFoodDetail(
            pageId: int.parse(pagId!),
            page: page!,
          );
        },

        //transition The best transition in pages
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pagId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return RecommendedFoodDetail(
            pageId: int.parse(pagId!),
            page: page!,
          );
        },
        //transition The best transition in pages
        transition: Transition.fadeIn),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
