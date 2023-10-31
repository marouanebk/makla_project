import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/data.dart';

double getMaxScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();

  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(36.661161, 4.914948);
  static const LatLng destinationLocation = LatLng(36.6496100, 4.9055667);

  static const CameraPosition _kLake = CameraPosition(
    target: destinationLocation,
    zoom: 17,
  );

  List<LatLng> polylineCoordinates = [];

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.6496461, 4.90509343),
    zoom: 17,
  );

  void getPolylinePoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "YOUR_API_KEY",
      PointLatLng(
        sourceLocation.latitude,
        sourceLocation.longitude,
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude,
      ),
    );

    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(
          LatLng(
            point.latitude,
            point.longitude,
          ),
        );
      }
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolylinePoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = getMaxScreenHeight(context);
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bouira ",
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 0.04 * heightDevice,
                    wordSpacing: 1,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.location_on,
                  size: 0.04 * heightDevice,
                  color: const Color(0xFFF56210),
                ),
              ],
            ),
            SizedBox(
              height: 0.02 * heightDevice,
            ),
            Container(
              height: 0.23 * heightDevice,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  indoorViewEnabled: false,
                  mapToolbarEnabled: false,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(36.6599, 4.9108),
                    zoom: 17,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  polylines: {
                    Polyline(
                      polylineId: const PolylineId("route"),
                      points: polylineCoordinates,
                      color: Colors.black,
                      width: 6,
                    ),
                  },
                  markers: Set<Marker>.from(
                    RestaurantData.restaurants.map(
                      (restaurant) => Marker(
                        markerId: MarkerId(restaurant.name),
                        position: LatLng(
                          restaurant.latitude,
                          restaurant.longitude,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.02 * heightDevice),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List of Restaurants',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 0.03 * heightDevice,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 0.01 * heightDevice),
                  Expanded(
                    child: Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     color: const Color(0xFFF56210),
                      //     width: 2.0,
                      //   ),
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 0.01 * heightDevice,
                            right: 0.01 * heightDevice,
                            top: 0.01 * heightDevice,
                            bottom: 0.01 * heightDevice),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Scrollbar(
                            controller: ScrollController(),
                            child: ListView.separated(
                              controller: ScrollController(),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                height: 0,
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
          ],
        ),
      ),
    );
  }
}

Widget restaurantItem(String name, String location, var height) {
  return Container(
    margin: EdgeInsets.only(
        right: 0.01 * height, top: 0.01 * height, bottom: 0.01 * height),
    decoration: const BoxDecoration(
      color: Color(0xFFF56210),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          right: 0.02 * height,
          left: 0.02 * height,
          top: 0.01 * height,
          bottom: 0.01 * height),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg",
            ),
          ),
          SizedBox(width: 0.01 * height),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 0.016 * height,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontFamily: 'Product Sans',
                    color: Color(0xFFFFFFFF),
                    fontSize: 0.01 * height,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '150m',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 0.018 * height,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(width: 0.005 * height),
              Icon(
                Icons.location_on_outlined,
                size: 0.02 * height,
                color: Color(0xFFFFFFFF),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
