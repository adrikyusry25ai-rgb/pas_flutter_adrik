import 'package:get/get.dart';
// import 'package:flutter_application_1/models/produk_model.dart';

class PasDetailProdukController extends GetxController {

var hasilHitung = 0.0.obs;

  late String namaProduk;
  late String description;
  late int harga;
  late String image;
  late double Rating;
  late String Review;


  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
      namaProduk = arguments['namaProduk'];
      description = arguments['description'];
      harga = arguments['harga'];
      image = arguments['image'];
      Rating = arguments['Rating'];
      Review = arguments['Review'];
  }

   void kali(double harga, double jumlah) {
    double subtotal = harga * jumlah;
    hasilHitung.value = subtotal;
    Get.snackbar(
      "hasil perkalian",
      "${subtotal.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}