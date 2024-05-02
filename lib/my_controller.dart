import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value; 

  increament(){
    books.value++;
  }

  increamentPens(){
    pens.value++;
  }

  decreament(){
    if(books.value <= 0){
      Get.snackbar("Error!", "Value cannot be less than zero",
      icon: const Icon(Icons.alarm),
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
      colorText: Colors.white,
      );
    }else{
       books.value--;
    }
  }

  decreamentPens(){
    if(pens.value <= 0){
      Get.snackbar("Error!", "Value cannot be less than zero",
      icon: const Icon(Icons.alarm),
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
      colorText: Colors.white,
      );
    }else{
       pens.value--;
    }
  }
}