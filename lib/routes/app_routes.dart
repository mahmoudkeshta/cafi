import 'package:coffee_app/presentation/wishlist_screen/wishlist_screen1.dart';
import 'package:get/get.dart';
import '../presentation/flash_screen/onboarding.dart';
import '../presentation/loading_screen/loading_screen.dart';
import '../presentation/loading_screen/binding/loading_binding.dart';


import '../presentation/flash_screen_one_screen/flash_screen_one_screen.dart';
import '../presentation/flash_screen_one_screen/binding/flash_screen_one_binding.dart';
import '../presentation/flash_screen/flash_screen.dart';
import '../presentation/flash_screen/binding/flash_binding.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../presentation/sign_in_action_screen/sign_in_action_screen.dart';
import '../presentation/sign_in_action_screen/binding/sign_in_action_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/sign_up_action_screen/sign_up_action_screen.dart';
import '../presentation/sign_up_action_screen/binding/sign_up_action_binding.dart';
import '../presentation/verify_two_screen/verify_two_screen.dart';
import '../presentation/verify_two_screen/binding/verify_two_binding.dart';
import '../presentation/verify_action_screen/verify_action_screen.dart';
import '../presentation/verify_action_screen/binding/verify_action_binding.dart';
import '../presentation/create_password_screen/create_password_screen.dart';
import '../presentation/create_password_screen/binding/create_password_binding.dart';
import '../presentation/create_password_two_screen/create_password_two_screen.dart';
import '../presentation/create_password_two_screen/binding/create_password_two_binding.dart';
import '../presentation/success_screen/success_screen.dart';
import '../presentation/success_screen/binding/success_binding.dart';
import '../presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import '../presentation/forgot_password_one_screen/binding/forgot_password_one_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/verify_screen/verify_screen.dart';
import '../presentation/verify_screen/binding/verify_binding.dart';
import '../presentation/verify_one_screen/verify_one_screen.dart';
import '../presentation/verify_one_screen/binding/verify_one_binding.dart';
import '../presentation/create_password_three_screen/create_password_three_screen.dart';
import '../presentation/create_password_three_screen/binding/create_password_three_binding.dart';
import '../presentation/create_password_one_screen/create_password_one_screen.dart';
import '../presentation/create_password_one_screen/binding/create_password_one_binding.dart';
import '../presentation/get_help_screen/get_help_screen.dart';
import '../presentation/get_help_screen/binding/get_help_binding.dart';
import '../presentation/live_chat_screen/live_chat_screen.dart';
import '../presentation/live_chat_screen/binding/live_chat_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/active_chat_screen/active_chat_screen.dart';
import '../presentation/active_chat_screen/binding/active_chat_binding.dart';
import '../presentation/call_screen/call_screen.dart';
import '../presentation/call_screen/binding/call_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/shop_screen/shop_screen.dart';
import '../presentation/shop_screen/binding/shop_binding.dart';
import '../presentation/categories_screen/categories_screen.dart';
import '../presentation/categories_screen/binding/categories_binding.dart';
//import '../presentation/search_screen/search_screen.dart';
//import '../presentation/search_screen/binding/search_binding.dart';
import '../presentation/search_filter_screen/search_filter_screen.dart';
import '../presentation/search_filter_screen/binding/search_filter_binding.dart';
import '../presentation/search_items_screen/search_items_screen.dart';
import '../presentation/search_items_screen/binding/search_items_binding.dart';
import '../presentation/search_items_filter_screen/search_items_filter_screen.dart';
import '../presentation/search_items_filter_screen/binding/search_items_filter_binding.dart';
import '../presentation/search_shop_screen/search_shop_screen.dart';
import '../presentation/search_shop_screen/binding/search_shop_binding.dart';
import '../presentation/search_shop_filter_screen/search_shop_filter_screen.dart';
import '../presentation/search_shop_filter_screen/binding/search_shop_filter_binding.dart';
import '../presentation/search_shop_action_screen/search_shop_action_screen.dart';
import '../presentation/search_shop_action_screen/binding/search_shop_action_binding.dart';
import '../presentation/search_shop_action_filter_tab_container_screen/search_shop_action_filter_tab_container_screen.dart';
import '../presentation/search_shop_action_filter_tab_container_screen/binding/search_shop_action_filter_tab_container_binding.dart';
import '../presentation/product_screen/product_screen.dart';
import '../presentation/product_screen/binding/product_binding.dart';
import '../presentation/product_action_screen/product_action_screen.dart';
import '../presentation/product_action_screen/binding/product_action_binding.dart';
import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/cart_screen/binding/cart_binding.dart';
import '../presentation/checkout_one_tab_container_screen/checkout_one_tab_container_screen.dart';
import '../presentation/checkout_one_tab_container_screen/binding/checkout_one_tab_container_binding.dart';
import '../presentation/let_cook_screen/let_cook_screen.dart';
import '../presentation/let_cook_screen/binding/let_cook_binding.dart';
import '../presentation/cooking_screen/cooking_screen.dart';
import '../presentation/cooking_screen/binding/cooking_binding.dart';
import '../presentation/waiting_screen/waiting_screen.dart';
import '../presentation/waiting_screen/binding/waiting_binding.dart';
import '../presentation/pickup_screen/pickup_screen.dart';
import '../presentation/pickup_screen/binding/pickup_binding.dart';
import '../presentation/order_success_screen/order_success_screen.dart';
import '../presentation/order_success_screen/binding/order_success_binding.dart';
import '../presentation/review_select_screen/review_select_screen.dart';
import '../presentation/review_select_screen/binding/review_select_binding.dart';
import '../presentation/write_review_one_screen/write_review_one_screen.dart';
import '../presentation/write_review_one_screen/binding/write_review_one_binding.dart';
import '../presentation/write_review_screen/write_review_screen.dart';
import '../presentation/write_review_screen/binding/write_review_binding.dart';
import '../presentation/review_screen/review_screen.dart';
import '../presentation/review_screen/binding/review_binding.dart';
import '../presentation/order_success_one_screen/order_success_one_screen.dart';
import '../presentation/order_success_one_screen/binding/order_success_one_binding.dart';
import '../presentation/cooking_one_screen/cooking_one_screen.dart';
import '../presentation/cooking_one_screen/binding/cooking_one_binding.dart';
import '../presentation/delivery_screen/delivery_screen.dart';
import '../presentation/delivery_screen/binding/delivery_binding.dart';
import '../presentation/tracking_orders_screen/tracking_orders_screen.dart';
import '../presentation/tracking_orders_screen/binding/tracking_orders_binding.dart';
import '../presentation/received_screen/received_screen.dart';
import '../presentation/received_screen/binding/received_binding.dart';
import '../presentation/order_success_two_screen/order_success_two_screen.dart';
import '../presentation/order_success_two_screen/binding/order_success_two_binding.dart';
import '../presentation/your_order_tab_container_screen/your_order_tab_container_screen.dart';
import '../presentation/your_order_tab_container_screen/binding/your_order_tab_container_binding.dart';
import '../presentation/order_details_screen/order_details_screen.dart';
import '../presentation/order_details_screen/binding/order_details_binding.dart';
import '../presentation/invioce_screen/invioce_screen.dart';
import '../presentation/invioce_screen/binding/invioce_binding.dart';
import '../presentation/refund_screen/refund_screen.dart';
import '../presentation/refund_screen/binding/refund_binding.dart';
import '../presentation/request_refund_screen/request_refund_screen.dart';
import '../presentation/request_refund_screen/binding/request_refund_binding.dart';
import '../presentation/request_refund_action_screen/request_refund_action_screen.dart';
import '../presentation/request_refund_action_screen/binding/request_refund_action_binding.dart';
import '../presentation/choose_payment_screen/choose_payment_screen.dart';
import '../presentation/choose_payment_screen/binding/choose_payment_binding.dart';
import '../presentation/choose_payment_action_screen/choose_payment_action_screen.dart';
import '../presentation/choose_payment_action_screen/binding/choose_payment_action_binding.dart';
import '../presentation/refund_status_screen/refund_status_screen.dart';
import '../presentation/refund_status_screen/binding/refund_status_binding.dart';
import '../presentation/refund_success_screen/refund_success_screen.dart';
import '../presentation/refund_success_screen/binding/refund_success_binding.dart';
import '../presentation/refund_declined_screen/refund_declined_screen.dart';
import '../presentation/refund_declined_screen/binding/refund_declined_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/wishlist_screen/wishlist_screen.dart';
import '../presentation/wishlist_screen/binding/wishlist_binding.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/notification_screen/binding/notification_binding.dart';
import '../presentation/balance_screen/balance_screen.dart';
import '../presentation/balance_screen/binding/balance_binding.dart';
import '../presentation/top_up_screen/top_up_screen.dart';
import '../presentation/top_up_screen/binding/top_up_binding.dart';
import '../presentation/top_up_action_screen/top_up_action_screen.dart';
import '../presentation/top_up_action_screen/binding/top_up_action_binding.dart';
import '../presentation/balance_added_screen/balance_added_screen.dart';
import '../presentation/balance_added_screen/binding/balance_added_binding.dart';
import '../presentation/reward_screen/reward_screen.dart';
import '../presentation/reward_screen/binding/reward_binding.dart';
import '../presentation/invite_screen/invite_screen.dart';
import '../presentation/invite_screen/binding/invite_binding.dart';
import '../presentation/claim_screen/claim_screen.dart';
import '../presentation/claim_screen/binding/claim_binding.dart';
import '../presentation/reward_history_screen/reward_history_screen.dart';
import '../presentation/reward_history_screen/binding/reward_history_binding.dart';
import '../presentation/earn_point_screen/earn_point_screen.dart';
import '../presentation/earn_point_screen/binding/earn_point_binding.dart';
import '../presentation/invite_one_screen/invite_one_screen.dart';
import '../presentation/invite_one_screen/binding/invite_one_binding.dart';
import '../presentation/gift_card_screen/gift_card_screen.dart';
import '../presentation/gift_card_screen/binding/gift_card_binding.dart';
import '../presentation/add_gift_screen/add_gift_screen.dart';
import '../presentation/add_gift_screen/binding/add_gift_binding.dart';
import '../presentation/add_gift_action_screen/add_gift_action_screen.dart';
import '../presentation/add_gift_action_screen/binding/add_gift_action_binding.dart';
import '../presentation/buy_gift_card_screen/buy_gift_card_screen.dart';
import '../presentation/buy_gift_card_screen/binding/buy_gift_card_binding.dart';
import '../presentation/buy_gift_card_action_screen/buy_gift_card_action_screen.dart';
import '../presentation/buy_gift_card_action_screen/binding/buy_gift_card_action_binding.dart';
import '../presentation/gift_card_code_screen/gift_card_code_screen.dart';
import '../presentation/gift_card_code_screen/binding/gift_card_code_binding.dart';
import '../presentation/edit_info_screen/edit_info_screen.dart';
import '../presentation/edit_info_screen/binding/edit_info_binding.dart';
import '../presentation/address_screen/address_screen.dart';
import '../presentation/address_screen/binding/address_binding.dart';
import '../presentation/payment_screen/payment_screen.dart';
import '../presentation/payment_screen/binding/payment_binding.dart';
import '../presentation/cafe_following_container_screen/cafe_following_container_screen.dart';
import '../presentation/cafe_following_container_screen/binding/cafe_following_container_binding.dart';
import '../presentation/setting_screen/setting_screen.dart';
import '../presentation/setting_screen/binding/setting_binding.dart';
import '../presentation/change_password_one_screen/change_password_one_screen.dart';
import '../presentation/change_password_one_screen/binding/change_password_one_binding.dart';
import '../presentation/change_password_two_screen/change_password_two_screen.dart';
import '../presentation/change_password_two_screen/binding/change_password_two_binding.dart';
import '../presentation/change_password_screen/change_password_screen.dart';
import '../presentation/change_password_screen/binding/change_password_binding.dart';
import '../presentation/about_screen/about_screen.dart';
import '../presentation/about_screen/binding/about_binding.dart';
import '../presentation/policy_and_privacy_screen/policy_and_privacy_screen.dart';
import '../presentation/policy_and_privacy_screen/binding/policy_and_privacy_binding.dart';
import '../presentation/term_of_service_screen/term_of_service_screen.dart';
import '../presentation/term_of_service_screen/binding/term_of_service_binding.dart';
import '../presentation/about_company_screen/about_company_screen.dart';
import '../presentation/about_company_screen/binding/about_company_binding.dart';
import '../presentation/faqs_screen/faqs_screen.dart';
import '../presentation/faqs_screen/binding/faqs_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';

  static const String flashScreenTwoScreen = '/flash_screen_two_screen';

  static const String flashScreenOneScreen = '/flash_screen_one_screen';

  static const String flashScreen = '/flash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInActionScreen = '/sign_in_action_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpActionScreen = '/sign_up_action_screen';

  static const String verifyTwoScreen = '/verify_two_screen';

  static const String verifyActionScreen = '/verify_action_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String createPasswordTwoScreen = '/create_password_two_screen';

  static const String successScreen = '/success_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verifyScreen = '/verify_screen';

  static const String verifyOneScreen = '/verify_one_screen';

  static const String createPasswordThreeScreen =
      '/create_password_three_screen';

  static const String createPasswordOneScreen = '/create_password_one_screen';

  static const String getHelpScreen = '/get_help_screen';

  static const String liveChatScreen = '/live_chat_screen';

  static const String chatScreen = '/chat_screen';

  static const String activeChatScreen = '/active_chat_screen';

  static const String callScreen = '/call_screen';

  static const String homeScreen = '/home_screen';

  static const String shopScreen = '/shop_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String searchScreen = '/search_screen';

  static const String searchFilterScreen = '/search_filter_screen';

  static const String searchItemsScreen = '/search_items_screen';

  static const String searchItemsFilterScreen = '/search_items_filter_screen';

  static const String searchShopScreen = '/search_shop_screen';

  static const String searchShopFilterScreen = '/search_shop_filter_screen';

  static const String searchShopActionScreen = '/search_shop_action_screen';

  static const String searchShopActionFilterPage =
      '/search_shop_action_filter_page';

  static const String searchShopActionFilterTabContainerScreen =
      '/search_shop_action_filter_tab_container_screen';

  static const String productScreen = '/product_screen';

  static const String productActionScreen = '/product_action_screen';

  static const String cartScreen = '/cart_screen';

  static const String checkoutOnePage = '/checkout_one_page';

  static const String checkoutOneTabContainerScreen =
      '/checkout_one_tab_container_screen';

  static const String letCookScreen = '/let_cook_screen';

  static const String cookingScreen = '/cooking_screen';

  static const String waitingScreen = '/waiting_screen';

  static const String pickupScreen = '/pickup_screen';

  static const String orderSuccessScreen = '/order_success_screen';

  static const String reviewSelectScreen = '/review_select_screen';

  static const String writeReviewOneScreen = '/write_review_one_screen';

  static const String writeReviewScreen = '/write_review_screen';

  static const String reviewScreen = '/review_screen';

  static const String cartOnePage = '/cart_one_page';

  static const String orderSuccessOneScreen = '/order_success_one_screen';

  static const String cookingOneScreen = '/cooking_one_screen';

  static const String deliveryScreen = '/delivery_screen';

  static const String trackingOrdersScreen = '/tracking_orders_screen';

  static const String receivedScreen = '/received_screen';

  static const String orderSuccessTwoScreen = '/order_success_two_screen';

  static const String yourOrderPage = '/your_order_page';

  static const String yourOrderTabContainerScreen =
      '/your_order_tab_container_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String invioceScreen = '/invioce_screen';

  static const String refundScreen = '/refund_screen';

  static const String requestRefundScreen = '/request_refund_screen';

  static const String requestRefundActionScreen =
      '/request_refund_action_screen';

  static const String choosePaymentScreen = '/choose_payment_screen';

  static const String choosePaymentActionScreen =
      '/choose_payment_action_screen';

  static const String refundStatusScreen = '/refund_status_screen';

  static const String refundSuccessScreen = '/refund_success_screen';

  static const String refundDeclinedScreen = '/refund_declined_screen';

  static const String profileScreen = '/profile_screen';

  static const String wishlistScreen = '/wishlist_screen';
  static const String wishlistScreen1 = '/Wishlist_Screen1';

  static const String notificationScreen = '/notification_screen';

  static const String balanceScreen = '/balance_screen';

  static const String topUpScreen = '/top_up_screen';

  static const String topUpActionScreen = '/top_up_action_screen';

  static const String balanceAddedScreen = '/balance_added_screen';

  static const String rewardScreen = '/reward_screen';

  static const String inviteScreen = '/invite_screen';

  static const String claimScreen = '/claim_screen';

  static const String rewardHistoryScreen = '/reward_history_screen';

  static const String earnPointScreen = '/earn_point_screen';

  static const String inviteOneScreen = '/invite_one_screen';

  static const String giftCardScreen = '/gift_card_screen';

  static const String addGiftScreen = '/add_gift_screen';

  static const String addGiftActionScreen = '/add_gift_action_screen';

  static const String buyGiftCardScreen = '/buy_gift_card_screen';

  static const String buyGiftCardActionScreen = '/buy_gift_card_action_screen';

  static const String giftCardCodeScreen = '/gift_card_code_screen';

  static const String editInfoScreen = '/edit_info_screen';

  static const String addressScreen = '/address_screen';

  static const String paymentScreen = '/payment_screen';

  static const String cafeFollowingPage = '/cafe_following_page';

  static const String cafeFollowingContainerScreen =
      '/cafe_following_container_screen';

  static const String settingScreen = '/setting_screen';

  static const String changePasswordOneScreen = '/change_password_one_screen';

  static const String changePasswordTwoScreen = '/change_password_two_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String aboutScreen = '/about_screen';

  static const String policyAndPrivacyScreen = '/policy_and_privacy_screen';

  static const String termOfServiceScreen = '/term_of_service_screen';

  static const String aboutCompanyScreen = '/about_company_screen';

  static const String faqsScreen = '/faqs_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String On_Boarding = '/OnBoarding';
  

  static List<GetPage> pages = [
    GetPage(
      name: loadingScreen,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
      ],
    ),
    GetPage(
      name: On_Boarding ,
      page: () => OnBoarding(),
      bindings: [
        
      ],
    ),
    GetPage(
      name: flashScreenOneScreen,
      page: () => FlashScreenOneScreen(),
      bindings: [
        FlashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: flashScreen,
      page: () => FlashScreen(),
      bindings: [
        FlashBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signInActionScreen,
      page: () => SignInActionScreen(),
      bindings: [
        SignInActionBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpActionScreen,
      page: () => SignUpActionScreen(),
      bindings: [
        SignUpActionBinding(),
      ],
    ),
    GetPage(
      name: verifyTwoScreen,
      page: () => VerifyTwoScreen(),
      bindings: [
        VerifyTwoBinding(),
      ],
    ),
    GetPage(
      name: verifyActionScreen,
      page: () => VerifyActionScreen(),
      bindings: [
        VerifyActionBinding(),
      ],
    ),
    GetPage(
      name: createPasswordScreen,
      page: () => CreatePasswordScreen(),
      bindings: [
        CreatePasswordBinding(),
      ],
    ),
    GetPage(
      name: createPasswordTwoScreen,
      page: () => CreatePasswordTwoScreen(),
      bindings: [
        CreatePasswordTwoBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordOneScreen,
      page: () => ForgotPasswordOneScreen(),
      bindings: [
        ForgotPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verifyScreen,
      page: () => VerifyScreen(),
      bindings: [
        VerifyBinding(),
      ],
    ),
    GetPage(
      name: verifyOneScreen,
      page: () => VerifyOneScreen(),
      bindings: [
        VerifyOneBinding(),
      ],
    ),
    GetPage(
      name: createPasswordThreeScreen,
      page: () => CreatePasswordThreeScreen(),
      bindings: [
        CreatePasswordThreeBinding(),
      ],
    ),
    GetPage(
      name: createPasswordOneScreen,
      page: () => CreatePasswordOneScreen(),
      bindings: [
        CreatePasswordOneBinding(),
      ],
    ),
    GetPage(
      name: getHelpScreen,
      page: () => GetHelpScreen(),
      bindings: [
        GetHelpBinding(),
      ],
    ),
    GetPage(
      name: liveChatScreen,
      page: () => LiveChatScreen(),
      bindings: [
        LiveChatBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: activeChatScreen,
      page: () => ActiveChatScreen(),
      bindings: [
        ActiveChatBinding(),
      ],
    ),
    GetPage(
      name: callScreen,
      page: () => CallScreen(),
      bindings: [
        CallBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: shopScreen,
      page: () => ShopScreen(),
      bindings: [
        ShopBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    /*
    * GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),*/
    GetPage(
      name: searchFilterScreen,
      page: () => SearchFilterScreen(),
      bindings: [
        SearchFilterBinding(),
      ],
    ),
    GetPage(
      name: searchItemsScreen,
      page: () => SearchItemsScreen(),
      bindings: [
        SearchItemsBinding(),
      ],
    ),
    GetPage(
      name: searchItemsFilterScreen,
      page: () => SearchItemsFilterScreen(),
      bindings: [
        SearchItemsFilterBinding(),
      ],
    ),
    GetPage(
      name: searchShopScreen,
      page: () => SearchShopScreen(),
      bindings: [
        SearchShopBinding(),
      ],
    ),
    GetPage(
      name: searchShopFilterScreen,
      page: () => SearchShopFilterScreen(),
      bindings: [
        SearchShopFilterBinding(),
      ],
    ),
    GetPage(
      name: searchShopActionScreen,
      page: () => SearchShopActionScreen(),
      bindings: [
        SearchShopActionBinding(),
      ],
    ),
    GetPage(
      name: searchShopActionFilterTabContainerScreen,
      page: () => SearchShopActionFilterTabContainerScreen(),
      bindings: [
        SearchShopActionFilterTabContainerBinding(),
      ],
    ),
    GetPage(
      name: productScreen,
      page: () => ProductScreen(),
      bindings: [
        ProductBinding(),
      ],
    ),
    GetPage(
      name: productActionScreen,
      page: () => ProductActionScreen(),
      bindings: [
        ProductActionBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: checkoutOneTabContainerScreen,
      page: () => CheckoutOneTabContainerScreen(),
      bindings: [
        CheckoutOneTabContainerBinding(),
      ],
    ),
    GetPage(
      name: letCookScreen,
      page: () => LetCookScreen(),
      bindings: [
        LetCookBinding(),
      ],
    ),
    GetPage(
      name: cookingScreen,
      page: () => CookingScreen(),
      bindings: [
        CookingBinding(),
      ],
    ),
    GetPage(
      name: waitingScreen,
      page: () => WaitingScreen(),
      bindings: [
        WaitingBinding(),
      ],
    ),
    GetPage(
      name: pickupScreen,
      page: () => PickupScreen(),
      bindings: [
        PickupBinding(),
      ],
    ),
    GetPage(
      name: orderSuccessScreen,
      page: () => OrderSuccessScreen(),
      bindings: [
        OrderSuccessBinding(),
      ],
    ),
    GetPage(
      name: reviewSelectScreen,
      page: () => ReviewSelectScreen(),
      bindings: [
        ReviewSelectBinding(),
      ],
    ),
    GetPage(
      name: writeReviewOneScreen,
      page: () => WriteReviewOneScreen(),
      bindings: [
        WriteReviewOneBinding(),
      ],
    ),
    GetPage(
      name: writeReviewScreen,
      page: () => WriteReviewScreen(),
      bindings: [
        WriteReviewBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
      ],
    ),
    GetPage(
      name: orderSuccessOneScreen,
      page: () => OrderSuccessOneScreen(),
      bindings: [
        OrderSuccessOneBinding(),
      ],
    ),
    GetPage(
      name: cookingOneScreen,
      page: () => CookingOneScreen(),
      bindings: [
        CookingOneBinding(),
      ],
    ),
    GetPage(
      name: deliveryScreen,
      page: () => DeliveryScreen(),
      bindings: [
        DeliveryBinding(),
      ],
    ),
    GetPage(
      name: trackingOrdersScreen,
      page: () => TrackingOrdersScreen(),
      bindings: [
        TrackingOrdersBinding(),
      ],
    ),
    GetPage(
      name: receivedScreen,
      page: () => ReceivedScreen(),
      bindings: [
        ReceivedBinding(),
      ],
    ),
    GetPage(
      name: orderSuccessTwoScreen,
      page: () => OrderSuccessTwoScreen(),
      bindings: [
        OrderSuccessTwoBinding(),
      ],
    ),
    GetPage(
      name: yourOrderTabContainerScreen,
      page: () => YourOrderTabContainerScreen(),
      bindings: [
        YourOrderTabContainerBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: invioceScreen,
      page: () => InvioceScreen(),
      bindings: [
        InvioceBinding(),
      ],
    ),
    GetPage(
      name: refundScreen,
      page: () => RefundScreen(),
      bindings: [
        RefundBinding(),
      ],
    ),
    GetPage(
      name: requestRefundScreen,
      page: () => RequestRefundScreen(),
      bindings: [
        RequestRefundBinding(),
      ],
    ),
    GetPage(
      name: requestRefundActionScreen,
      page: () => RequestRefundActionScreen(),
      bindings: [
        RequestRefundActionBinding(),
      ],
    ),
    GetPage(
      name: choosePaymentScreen,
      page: () => ChoosePaymentScreen(),
      bindings: [
        ChoosePaymentBinding(),
      ],
    ),
    GetPage(
      name: choosePaymentActionScreen,
      page: () => ChoosePaymentActionScreen(),
      bindings: [
        ChoosePaymentActionBinding(),
      ],
    ),
    GetPage(
      name: refundStatusScreen,
      page: () => RefundStatusScreen(),
      bindings: [
        RefundStatusBinding(),
      ],
    ),
    GetPage(
      name: refundSuccessScreen,
      page: () => RefundSuccessScreen(),
      bindings: [
        RefundSuccessBinding(),
      ],
    ),
    GetPage(
      name: refundDeclinedScreen,
      page: () => RefundDeclinedScreen(),
      bindings: [
        RefundDeclinedBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: wishlistScreen,
      page: () => WishlistScreen(),
      bindings: [
        WishlistBinding(),
      ],
    ),

    GetPage(
      name: wishlistScreen1,
      page: () => WishlistScreen1(),
      bindings: [
        WishlistBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: balanceScreen,
      page: () => BalanceScreen(),
      bindings: [
        BalanceBinding(),
      ],
    ),
    GetPage(
      name: topUpScreen,
      page: () => TopUpScreen(),
      bindings: [
        TopUpBinding(),
      ],
    ),
    GetPage(
      name: topUpActionScreen,
      page: () => TopUpActionScreen(),
      bindings: [
        TopUpActionBinding(),
      ],
    ),
    GetPage(
      name: balanceAddedScreen,
      page: () => BalanceAddedScreen(),
      bindings: [
        BalanceAddedBinding(),
      ],
    ),
    GetPage(
      name: rewardScreen,
      page: () => RewardScreen(),
      bindings: [
        RewardBinding(),
      ],
    ),
    GetPage(
      name: inviteScreen,
      page: () => InviteScreen(),
      bindings: [
        InviteBinding(),
      ],
    ),
    GetPage(
      name: claimScreen,
      page: () => ClaimScreen(),
      bindings: [
        ClaimBinding(),
      ],
    ),
    GetPage(
      name: rewardHistoryScreen,
      page: () => RewardHistoryScreen(),
      bindings: [
        RewardHistoryBinding(),
      ],
    ),
    GetPage(
      name: earnPointScreen,
      page: () => EarnPointScreen(),
      bindings: [
        EarnPointBinding(),
      ],
    ),
    GetPage(
      name: inviteOneScreen,
      page: () => InviteOneScreen(),
      bindings: [
        InviteOneBinding(),
      ],
    ),
    GetPage(
      name: giftCardScreen,
      page: () => GiftCardScreen(),
      bindings: [
        GiftCardBinding(),
      ],
    ),
    GetPage(
      name: addGiftScreen,
      page: () => AddGiftScreen(),
      bindings: [
        AddGiftBinding(),
      ],
    ),
    GetPage(
      name: addGiftActionScreen,
      page: () => AddGiftActionScreen(),
      bindings: [
        AddGiftActionBinding(),
      ],
    ),
    GetPage(
      name: buyGiftCardScreen,
      page: () => BuyGiftCardScreen(),
      bindings: [
        BuyGiftCardBinding(),
      ],
    ),
    GetPage(
      name: buyGiftCardActionScreen,
      page: () => BuyGiftCardActionScreen(),
      bindings: [
        BuyGiftCardActionBinding(),
      ],
    ),
    GetPage(
      name: giftCardCodeScreen,
      page: () => GiftCardCodeScreen(),
      bindings: [
        GiftCardCodeBinding(),
      ],
    ),
    GetPage(
      name: editInfoScreen,
      page: () => EditInfoScreen(),
      bindings: [
        EditInfoBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: cafeFollowingContainerScreen,
      page: () => CafeFollowingContainerScreen(),
      bindings: [
        CafeFollowingContainerBinding(),
      ],
    ),
    GetPage(
      name: settingScreen,
      page: () => SettingScreen(),
      bindings: [
        SettingBinding(),
      ],
    ),
    GetPage(
      name: changePasswordOneScreen,
      page: () => ChangePasswordOneScreen(),
      bindings: [
        ChangePasswordOneBinding(),
      ],
    ),
    GetPage(
      name: changePasswordTwoScreen,
      page: () => ChangePasswordTwoScreen(),
      bindings: [
        ChangePasswordTwoBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: policyAndPrivacyScreen,
      page: () => PolicyAndPrivacyScreen(),
      bindings: [
        PolicyAndPrivacyBinding(),
      ],
    ),
    GetPage(
      name: termOfServiceScreen,
      page: () => TermOfServiceScreen(),
      bindings: [
        TermOfServiceBinding(),
      ],
    ),
    GetPage(
      name: aboutCompanyScreen,
      page: () => AboutCompanyScreen(),
      bindings: [
        AboutCompanyBinding(),
      ],
    ),
    GetPage(
      name: faqsScreen,
      page: () => FaqsScreen(),
      bindings: [
        FaqsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
      ],
    )
  ];
}
