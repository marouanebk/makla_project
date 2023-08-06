import 'package:flutter/material.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/data.dart';
import 'package:makla/firstslide.dart';

import 'home_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Request focus when the user taps on the widget
        FocusScope.of(context).requestFocus(_focusNode);
      },
      child: Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search",
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 29,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        focusNode: _focusNode,
                        enabled: _focusNode.hasFocus,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Product Sans',
                            fontSize: 15),
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Product Sans',
                              fontSize: 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
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
                            return restaurantItem(
                              restaurant.name,
                              restaurant.location,
                            );
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
