import 'package:calculator_app/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalPage extends StatelessWidget {
  TotalPage({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Total Value",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue
              ),
            ),
            const SizedBox(height: 10,),
            Obx(() => Text(c.sum.toString(), style: TextStyle(
              fontSize: 30,
              color: Colors.green.shade900
            ),)),
            const SizedBox(height: 10,),
            Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: Colors.blue.shade900,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: ()=> Get.back(),
                child: const Text(
                  "Go Home", style: TextStyle(
                  fontSize: 30,
                  // color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}