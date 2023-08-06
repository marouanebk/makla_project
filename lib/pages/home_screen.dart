import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/data.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: CustomAppBar(),
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
                    fontSize: 30.0,
                    wordSpacing: 1,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.location_on,
                    size: 35,
                    color: Color(0xFFF56210),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200.0,
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
                      polylineId: PolylineId("route"),
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
            const SizedBox(height: 30),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'List of Restaurants',
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 29,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
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
                            left: 11, right: 10.0, top: 8.0, bottom: 8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Scrollbar(
                            thumbVisibility: true,
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
          ],
        ),
      ),
    );
  }
}

Widget restaurantItem(String name, String location) {
  return Container(
    margin: EdgeInsets.only(right: 20.0, top: 13, bottom: 13),
    decoration: const BoxDecoration(
      color: Color(0xFFF56210),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Padding(
      padding:
          const EdgeInsets.only(right: 10, left: 20, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg",
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 18,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontFamily: 'Product Sans',
                    color: Color(0xFFFFFFFF),
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Text(
                '150m',
                style: TextStyle(
                  fontFamily: 'Product Sans',
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.location_on_outlined,
                size: 21,
                color: Color(0xFFFFFFFF),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
