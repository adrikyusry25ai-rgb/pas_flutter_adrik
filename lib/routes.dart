import 'package:flutter_application_1/PAS/pages/menu/pas_feat_page.dart';
import 'package:flutter_application_1/PAS/pages/menu/pas_home_page.dart';
import 'package:flutter_application_1/PAS/pages/menu/pas_profile.dart';
import 'package:flutter_application_1/PAS/pages/pas_main_menu.dart';
import 'package:flutter_application_1/PAS/pages/pas_menu_drawer_page.dart';
import 'package:flutter_application_1/PAS/pages/pas_transaksi_pembelian_pages.dart';
import 'package:flutter_application_1/menu/home_page.dart';
import 'package:flutter_application_1/pages/detail_produk_page.dart';
import 'package:flutter_application_1/pages/list_produk_page.dart';
import 'package:flutter_application_1/pages/login_clone_fix.dart';
// import 'package:flutter_application_1/pages/main_menu_page.dart';
import 'package:flutter_application_1/pages/menu_drawer_page.dart';
import 'package:flutter_application_1/PAS/pages/pas_login_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';


class Routes {
  
  static const String confirmRegistration = '/confirmRegistration';
  static const String registration = '/registration';
  static const String listProduk = '/listProduk';
  static const String detailProduk = '/detailProduk';
  static const String mainMenu = '/mainMenu';
  static const String main = '/main';
  static const String menuDrawerpage = '/menuDrawerpage';
  static const String home = '/home';
  static const String history = '/history';
  static const String profile = '/profile';
  static const String loginPageCloneFix = '/loginPageCloneFix';
  static const String pasloginPage = '/pasloginPage';
  static const String pasMainMenu = '/pasMainMenu';
  static const String pasMenuDrawerpage = '/pasMenuDrawerpage';
  static const String pasHome = '/pasHome';
  static const String pasFeat = '/pasFeat';
  static const String pasProfile = '/pasProfile';
  static const String pastransaksipembelian = '/pastransaksipembelian';


  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
    GetPage(name: menuDrawerpage, page: () => MenuDrawerPage()),
    GetPage(name: loginPageCloneFix, page: () => LoginPageCloneFix()),
    GetPage(name: pasloginPage, page: () => PasLoginPage()),
    GetPage(name: pasMainMenu, page: () => PasMainMenu()),
    GetPage(name: pasMenuDrawerpage, page: () => PasMenuDrawerPage()),
    GetPage(name: pasHome, page: () => PasHomePage()),
    GetPage(name: pasFeat, page: () => PasFeatPage()),  
    GetPage(name: pasProfile, page: () => PasProfilePage()),
    GetPage(name: pastransaksipembelian, page: () => PasTransaksiPembelian())
  ];
}
