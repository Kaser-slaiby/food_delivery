import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
        name: popularFood,
        page: () {
          var pagId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pagId!));
        },

        //transition The best transition in pages
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () => RecommendedFoodDetail(),
        //transition The best transition in pages
        transition: Transition.fadeIn),
  ];
}
