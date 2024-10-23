class AppAssets {
  AppAssets._();

  static const String baseDbURI = 'assets/images/db/';
  static const String personDbURI = '${baseDbURI}person_image.jpg';

  static const String baseAssetsURI = 'assets/images/';
  static const String mainBackground = '${baseAssetsURI}main_background.png';
  static const String noData = '${baseAssetsURI}no_data.png';
  static const String errorData = '${baseAssetsURI}error.png';

//logo
  static const String baseLogoURI = '${baseAssetsURI}logo/';
  static const String logoURI = '${baseLogoURI}app_icon.png';

  // static String get appName => SharedStorage.getLanguage() == "ar"
  //     ? "${baseLogoURI}app_name_ar.svg"
  //     : "${baseLogoURI}app_name_en.svg";
  //
  // static String get appNameGeneral => SharedStorage.getLanguage() == "ar"
  //     ? "${baseLogoURI}app_name_general_ar.svg"
  //     : "${baseLogoURI}app_name_general_en.svg";

  /*static String get splashLogo => SharedStorage.getLanguage() == "ar"
      ? baseLogoURI + "splash_logo_ar.png"
      : baseLogoURI + "splash_logo_en.png";*/
  static String splashLogo = "${baseLogoURI}splash_logo.png";

  //splash
  static const String baseSplashURI = '${baseAssetsURI}splash/';

  static const String splashBackGroundImageURI =
      '${baseSplashURI}splash_background.jpg';

  //auth assets
  static const String baseAuthURI = '${baseAssetsURI}auth/';

  static const String changeLanguageURI = '${baseAuthURI}changeLanguage.svg';


  //Home  asset
  static const String baseHomeURI = '${baseAssetsURI}home/';
  static const String appBackgroundURI = '${baseHomeURI}app_background_1.png';

  static const String drawerMenu = '${baseHomeURI}drawer_menu.svg';
  static const String homePageAppBarLogo =
      '${baseHomeURI}home_page_app_bar_logo.svg';
  static const String profilePicture = '${baseHomeURI}profile_picture.png';

  /*static const String homePageBackGroundImageURI =
      baseHomeURI + 'home_page_backGraound_image.svg';*/

  //request  asset
  static const String baseRequestURI = '${baseAssetsURI}request/';
  static const String cameraIcon = '${baseRequestURI}camera.svg';
  static const String galleryIcon = '${baseRequestURI}gallery.svg';
  static const String uploadImageIcon = '${baseRequestURI}uploadImage.svg';
  static const String saveTempIcon = '${baseRequestURI}saveTemp.svg';


  //place holder
  static const String placeHolder =
      'assets/images/place_holders/place_holder.png';








  //Home Page

  static const String vectorHome = '${baseHomeURI}Vector.png';
  static const String sociallyHome = '${baseHomeURI}Socially.png';
  static const String stories1Home = '${baseHomeURI}stories1.png';
  static const String stories2Home = '${baseHomeURI}stories2.png';
  static const String stories3Home = '${baseHomeURI}stories3.png';
  static const String stories4Home = '${baseHomeURI}stories4.png';
  static const String stories5Home = '${baseHomeURI}stories5.png';
  static const String stories6Home = '${baseHomeURI}stories6.png';
  static const String stories7Home = '${baseHomeURI}stories7.png';
  static const String unheartHome = '${baseHomeURI}unheart.svg';
  static const String saveHome = '${baseHomeURI}save.svg';
  static const String heartHome = '${baseHomeURI}heart.svg';
  static const String downloadHome = '${baseHomeURI}download.svg';
  static const String commentHome = '${baseHomeURI}comment.svg';
  static const String backHome = '${baseHomeURI}back.svg';
  static const String archiveHome = '${baseHomeURI}archive.svg';
  static const String rectangleHome = '${baseHomeURI}rectangle.png';
  static const String ellipseHome = '${baseHomeURI}Ellipse.png';
  static const String ellipse1Home = '${baseHomeURI}Ellipse1.png';
  static const String i04Home = '${baseHomeURI}I04.png';
  static const String ellipse19Home = '${baseHomeURI}ellipse19.png';
}
