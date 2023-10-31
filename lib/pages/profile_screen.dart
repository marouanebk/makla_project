import 'package:flutter/material.dart';

import 'package:makla/custom_app_bar.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

double getMaxScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getMaxScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

const orangeColor = Color(0xFFF56210);
const whiteColor = Colors.white;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = getMaxScreenHeight(context);
    var widthDevice = getMaxScreenWidth(context);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.all(0.02 * heightDevice),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFFF56210), // Border color
                width: 1.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.015 * heightDevice,
                ),
                ClipOval(
                  child: Image(
                    fit: BoxFit.cover,
                    height: 0.11 * heightDevice,
                    width: 0.11 * heightDevice,
                    image: NetworkImage(
                      "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg",
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Text(
                  "Restaurant Eleven",
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 0.025 * heightDevice,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                const Divider(
                  color: Color(0xFFF56210), // Border color
                  thickness: 2,
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.02 * heightDevice),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: 0.047 * heightDevice,
                          color: Color(0xFFF56210),
                        ),
                      ),
                      SizedBox(width: 0.05 * widthDevice),
                      Text(
                        "Restaurant Eleven Bouira",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 0.022 * heightDevice,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.02 * heightDevice),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone_in_talk_outlined,
                          size: 0.047 * heightDevice,
                          color: Color(0xFFF56210),
                        ),
                      ),
                      SizedBox(width: 0.05 * widthDevice),
                      Text(
                        "+213-0665749000",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 0.022 * heightDevice,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.02 * heightDevice),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          SocialIconsFlutter.instagram,
                          size: 0.044 * heightDevice,
                          color: Color(0xFFF56210),
                        ),
                      ),
                      SizedBox(width: 0.05 * widthDevice),
                      Text(
                        "Restaurant Eleven",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 0.022 * heightDevice,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 0.02 * heightDevice),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook_outlined,
                          size: 0.047 * heightDevice,
                          color: Color(0xFFF56210),
                        ),
                      ),
                      SizedBox(width: 0.05 * widthDevice),
                      Text(
                        "Restaurant Eleven",
                        style: TextStyle(
                          fontFamily: 'Product Sans',
                          fontSize: 0.022 * heightDevice,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 20.0,
                  ),
                ),
                Container(
                  height: 0.07 * heightDevice,
                  width: 0.17 * heightDevice,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFF56210),
                      width: 2.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 0.025 * heightDevice,
                        color: orangeColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Container(
                  height: 0.07 * heightDevice,
                  width: 0.17 * heightDevice,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFF56210),
                      width: 2.0,
                    ),
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'Product Sans',
                        fontSize: 0.025 * heightDevice,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.02 * heightDevice,
                )
              ],
            ),
          ),
        ));
  }
}
