import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'categories_page.dart';

class CategoryData {
  final String categoryImage;
  final String categoryTitle;

  CategoryData({required this.categoryImage, required this.categoryTitle});

  static List<CategoryData> catagories = [
    CategoryData(
        categoryImage: "assets/categories/image 3.png",
        categoryTitle: "Nutritional Drinks"),
    CategoryData(
        categoryImage: "assets/categories/image 4.png",
        categoryTitle: "Ayurveda"),
    CategoryData(
        categoryImage: "assets/categories/image 5.png",
        categoryTitle: "Vitamins & Supplement"),
    CategoryData(
        categoryImage: "assets/categories/image 6.png",
        categoryTitle: "Healthcare Devices"),
    CategoryData(
        categoryImage: "assets/categories/image 7.png",
        categoryTitle: "Homeopathy"),
    CategoryData(
        categoryImage: "assets/categories/image 8.png",
        categoryTitle: "Diabetes Care"),
    CategoryData(
        categoryImage: "assets/categories/image 3.png",
        categoryTitle: "Nutritional Drinks"),
    CategoryData(
        categoryImage: "assets/categories/image 4.png",
        categoryTitle: "Ayurveda"),
    CategoryData(
        categoryImage: "assets/categories/image 5.png",
        categoryTitle: "Vitamins & Supplement"),
  ];
}

class CategoriesPreview extends StatelessWidget {
  const CategoriesPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
          childAspectRatio: 0.8,
          crossAxisCount: 3,
          children: List.generate(6, (index) {
            return Center(
              child: CategoryCard(data: CategoryData.catagories[index]),
            );
          })),
    );
  }
}

class CategoriesButton extends StatelessWidget {
  const CategoriesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Popular Categories",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        Row(children: [
          TextButton(
              onPressed: () {
                Get.to(CategoriesPage());
              },
              child: const Text(
                "SEE ALL",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
          )
        ]),
      ],
    );
  }
}

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffFDFBF7),
        ),
        width: double.maxFinite,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: BottomNavBarData.myButtons
              .map((e) => TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: BottomNavBar(data: e)))
              .toList(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.data}) : super(key: key);

  final BottomNavBarData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      child: Image.asset(
        data.imageIcon,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}

class BottomNavBarData {
  final String imageIcon;
  final String name;
  final Color myColor;

  BottomNavBarData(
      {required this.imageIcon, required this.name, required this.myColor});

  static List<BottomNavBarData> myButtons = [
    BottomNavBarData(
      imageIcon: "assets/icons/01.png",
      name: "HOME",
      myColor: Colors.black,
    ),
    BottomNavBarData(
      imageIcon: "assets/icons/02.png",
      name: "ORDER",
      myColor: Colors.grey,
    ),
    BottomNavBarData(
      imageIcon: "assets/icons/03.png",
      name: "LAB TEST",
      myColor: Colors.grey,
    ),
    BottomNavBarData(
      imageIcon: "assets/icons/04.png",
      name: "OFFERS",
      myColor: Colors.grey,
    ),
    BottomNavBarData(
      imageIcon: "assets/icons/05.png",
      name: "PROFILE",
      myColor: Colors.grey,
    ),
  ];
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final CategoryData data;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 95,
            height: 98,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(0xffEFEDE9), width: 2),
            ),
            child: Image.asset(data.categoryImage),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 6),
              width: 95,
              child: Text(
                data.categoryTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ))
        ]);
  }
}

class AdCard extends StatelessWidget {
  const AdCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final AdCardData data;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Image.asset(
          data.adImage,
          fit: BoxFit.fill,
        ),
      ),
    ]);
  }
}

class AdCardData {
  final String adImage;

  AdCardData({required this.adImage});

  static List<AdCardData> ads = [
    AdCardData(adImage: "assets/ads/ad.png"),
    AdCardData(adImage: "assets/ads/ad.png"),
    AdCardData(adImage: "assets/ads/ad.png"),
    AdCardData(adImage: "assets/ads/ad.png"),
  ];
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5),
            child: Image.asset(
              'assets/icons/User-icon.png',
            )),
        const Expanded(
          child: Text(
            "MEDICINE",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "Be Vietnam Pro",
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Image.asset(
          'assets/icons/Cart-icon.png',
        )
      ],
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.maxFinite,
      // margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: const Color(0xffD7D0FF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "UPLOAD PRESCRIPTION",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            width: 240,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.only(bottom: 5),
            child: const Text(
              "Upload a Prescription and Tell Us what you Need. We do the Rest.!",
              style: TextStyle(fontSize: 13),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: const Text(
                  "FLAT 25% OFF\nON MEDICINES*",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              Container(
                height: 33,
                width: 98,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xff5F48E6),
                ),
                child: const Text(
                  "ORDER NOW",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      // padding: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xffF3F2E9),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(bottom: 15),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF3F2E9)),
          ),
          hintText: 'Search Medicine & Health Products',
          suffixIcon: Icon(Icons.search_sharp),
        ),
      ),
    );
  }
}
