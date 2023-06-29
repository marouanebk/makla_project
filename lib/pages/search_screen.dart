import 'package:flutter/material.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/data.dart';

import 'home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                fontSize: 29,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              height: 37,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFFF56210), // Border color
                  width: 2.0,
                ),
              ),
              child: const Row(
                children: [
                  Expanded(
                    child: Text(
                      'Search...',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
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
                  padding: const EdgeInsets.only(top: 13, left: 11, right: 22),
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
                          final restaurant = RestaurantData.restaurants[index];
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
    );
  }
}
