import 'package:flutter/material.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 33,
              color: Color(0xFFF56210),
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 8.0),
            child: IconButton(
              icon: const Icon(
                Icons.help_outline,
                size: 33,
                color: Color(0xFFF56210),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFF56210), // Border color
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg"),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Restaurant Eleven',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Color(0xFFF56210), // Border color
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/location.png',
                      width: 24,
                      height: 24,
                    ), // Replace with actual logo
                    title: const Text(
                      'locaiton',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF56210),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/instagram.png',
                      width: 24,
                      height: 24,
                    ), // Replace with actual logo
                    title: const Text(
                      'Instagram Account',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF56210),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/facebook.png',
                      width: 24,
                      height: 24,
                    ), // Replace with actual logo
                    title: const Text(
                      'Facebook Account',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF56210),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.phone,
                      size: 24,
                      color: Color(0xFFF56210),
                    ),
                    title: const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF56210),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    child: Container(
                      width: 130,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFFF56210), // Border color
                          width: 3.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Menu",
                            style: TextStyle(
                              fontSize: 23.0,
                              wordSpacing: 1,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFF56210),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF56210),
                              borderRadius: BorderRadius.circular(45.0),
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  // size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF56210),
                          borderRadius: BorderRadius.circular(45.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.call,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF56210),
                          borderRadius: BorderRadius.circular(45.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF56210),
                          borderRadius: BorderRadius.circular(45.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.navigation,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF56210),
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
