import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'home.dart';
import 'models.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0.1,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Row(children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Text(
                  "Popular Categories".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                  childAspectRatio: 0.8,
                  crossAxisCount: 3,
                  children:
                      List.generate(CategoryData.catagories.length, (index) {
                    return Center(
                      child: CategoryCard(data: CategoryData.catagories[index]),
                    );
                  })),
            ),
          ]),
        ),
      ),
    );
  }
}
