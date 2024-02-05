import 'package:food_delivery/pages/cart/cart_page.dart';
import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getInitial() => '$initial';

  static String getPopularFood(int pageId, String page) =>
      '$popularFood?pageId=$pageId&page=$page';

  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
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
          return RecommendedFoodDetail(pageId: int.parse(pagId!));
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
