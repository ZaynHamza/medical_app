import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:medical_app/categories_page.dart';
import 'package:medical_app/models.dart';
import 'package:medical_app/search_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 1,
      ),
      body: Stack(children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              // HomeAppBar
              HomeAppBar(),
              // Search bar
              MySearchBar(),
              // Upload Prescription
              TopCard(),
              // ADCard
              CarouselSlider(
                options: CarouselOptions(height: 180),
                items: AdCardData.ads.map((i) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: AdCard(
                      data: i,
                    ),
                  );
                }).toList(),
              ),
              // See all categories button
              CategoriesButton(),
              // Categories gridview preview
              CategoriesPreview(),
            ]),
          ),
        ),
        // Home Bottom Navigation Bar
        HomeBottomNavBar()
      ]),
    );
  }
}
