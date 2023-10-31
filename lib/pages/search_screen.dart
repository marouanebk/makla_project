import 'package:flutter/material.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/data.dart';

import 'home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    FocusNode _focusNode = FocusNode();
    var heightDevice = getMaxScreenHeight(context);
    return GestureDetector(
      onTap: () {
        // Request focus when the user taps on the widget
        FocusScope.of(context).requestFocus(_focusNode);
      },
      child: Scaffold(
        appBar: const CustomAppBar(),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search",
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 0.04 * heightDevice,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 0.02 * heightDevice,
              ),
              Container(
                height: 0.06 * heightDevice,
                padding: EdgeInsets.symmetric(horizontal: 0.02 * heightDevice),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFF56210), // Border color
                    width: 2.0,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Product Sans',
                            fontSize: 0.015 * heightDevice),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Product Sans',
                              fontSize: 0.018 * heightDevice),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: Color(0xFFF56210),
                      size: 21,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFF56210),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13, bottom: 13, left: 11, right: 22),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: ScrollController(),
                        child: ListView.separated(
                          controller: ScrollController(),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 15,
                          ),
                          itemCount: RestaurantData.restaurants.length,
                          itemBuilder: (context, index) {
                            final restaurant =
                                RestaurantData.restaurants[index];
                            return restaurantItem(restaurant.name,
                                restaurant.location, heightDevice);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
