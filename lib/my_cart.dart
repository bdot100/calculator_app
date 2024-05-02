import 'package:calculator_app/my_controller.dart';
import 'package:calculator_app/total_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Books", 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white,),
                    onPressed: ()=> c.increament(),
                  ),
                ),
                const SizedBox(width: 20,),
                Obx(() => Text(c.books.toString(),
                  style: const TextStyle(
                    fontSize: 30
                  ),
                )),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.remove, color: Colors.white,),
                    onPressed: ()=> c.decreament(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const Text("Pens", 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white,),
                    onPressed: ()=> c.increamentPens(),
                  ),
                ),
                const SizedBox(width: 20,),
                Obx(() => Text(c.pens.toString(),
                  style: const TextStyle(
                    fontSize: 30
                  ),
                )),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.remove, color: Colors.white,),
                    onPressed: ()=> c.decreamentPens(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
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
                    onPressed: ()=> Get.to(()=> TotalPage()),
                    child: const Text(
                      "Total", style: TextStyle(
                      fontSize: 30,
                      // color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
} 