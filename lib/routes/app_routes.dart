import 'package:flutter/material.dart';
import 'package:tahausmank_s_application1/presentation/intro_screen/intro_screen.dart';
import 'package:tahausmank_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:tahausmank_s_application1/presentation/login_screen/login_screen.dart';
import 'package:tahausmank_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:tahausmank_s_application1/presentation/items_screen/items_screen.dart';
import 'package:tahausmank_s_application1/presentation/item_details_screen/item_details_screen.dart';
import 'package:tahausmank_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:tahausmank_s_application1/presentation/splash_dark_screen/splash_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/intro_dark_screen/intro_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/login_dark_screen/login_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/home_dark_screen/home_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/items_dark_screen/items_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/item_details_dark_screen/item_details_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/cart_dark_screen/cart_dark_screen.dart';
import 'package:tahausmank_s_application1/presentation/track_order_dark_tab_container_screen/track_order_dark_tab_container_screen.dart';
import 'package:tahausmank_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String introScreen = '/intro_screen';

  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String itemsScreen = '/items_screen';

  static const String itemDetailsScreen = '/item_details_screen';

  static const String cartScreen = '/cart_screen';

  static const String trackOrderPage = '/track_order_page';

  static const String splashDarkScreen = '/splash_dark_screen';

  static const String introDarkScreen = '/intro_dark_screen';

  static const String loginDarkScreen = '/login_dark_screen';

  static const String homeDarkScreen = '/home_dark_screen';

  static const String itemsDarkScreen = '/items_dark_screen';

  static const String itemDetailsDarkScreen = '/item_details_dark_screen';

  static const String cartDarkScreen = '/cart_dark_screen';

  static const String trackOrderDarkPage = '/track_order_dark_page';

  static const String trackOrderDarkTabContainerScreen =
      '/track_order_dark_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        introScreen: IntroScreen.builder,
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        itemsScreen: ItemsScreen.builder,
        itemDetailsScreen: ItemDetailsScreen.builder,
        cartScreen: CartScreen.builder,
        splashDarkScreen: SplashDarkScreen.builder,
        introDarkScreen: IntroDarkScreen.builder,
        loginDarkScreen: LoginDarkScreen.builder,
        homeDarkScreen: HomeDarkScreen.builder,
        itemsDarkScreen: ItemsDarkScreen.builder,
        itemDetailsDarkScreen: ItemDetailsDarkScreen.builder,
        cartDarkScreen: CartDarkScreen.builder,
        trackOrderDarkTabContainerScreen:
            TrackOrderDarkTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: IntroScreen.builder
      };
}
