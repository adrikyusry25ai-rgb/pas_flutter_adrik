
import 'package:flutter/material.dart';
import 'package:flutter_application_1/PAS/pages/menu/pas_feat_page.dart';
import 'package:flutter_application_1/PAS/pages/menu/pas_home_page.dart';
import 'package:flutter_application_1/PAS/pages/menu/pas_profile.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PasMenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

List<Widget> listPages = [PasHomePage(), PasFeatPage(), PasProfilePage()];

} 