import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:makla/data.dart';
// import 'package:location/location.dart';
// import 'package:restaurent_app/core/const/AppConsts.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  TextEditingController search = TextEditingController();

  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(36.661161, 4.914948);
  static const LatLng destinationLocation = LatLng(36.6496100, 4.9055667);

  static const CameraPosition _kLake = CameraPosition(
      // bearing: 192.8334901395799,
      target: destinationLocation,
      // tilt: 59.440717697143555,
      zoom: 17);

  List<LatLng> polylineCoordiantes = [];
  // LocationData? currentLocation;

  // void getCurrentLocation() {
  //   Location location = Location();

  //   location.getLocation().then(
  //     (ele) {
  //       currentLocation = ele;
  //       setState(() {});
  //     },
  //   );
  // }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.6496461, 4.90509343),
    zoom: 17,
    // zoom : 13.5
  );

  void getPolyLinePoint() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      // AppConst.googleApiKey,
      "AIzaSyAf2h9tJDd01X9k-ZDpTYQWDFJydA-wAXY",
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
        polylineCoordiantes.add(
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
    // getCurrentLocation();
    getPolyLinePoint();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE5DF),
      body: Column(
        children: [
          Container(
            height: 100,
            child: const Center(
              child: Text(
                'Bouira ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 300,
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(36.6599, 4.9108),
                zoom: 17,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: {
                Polyline(
                  polylineId: PolylineId("route"),
                  points: polylineCoordiantes,
                  color: Colors.black,
                  width: 6,
                ),
              },
               markers: Set<Marker>.from(
                RestaurantData.restaurants.map(
                  (restaurant) => Marker(
                    markerId: MarkerId(restaurant.name),
                    position: LatLng(restaurant.latitude, restaurant.longitude),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'List of Restaurants',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: RestaurantData.restaurants.length,
                    itemBuilder: (context, index) {
                      final restaurant = RestaurantData.restaurants[index];
                      return restaurantItem(restaurant.name , restaurant.location);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the destination'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  Widget restaurantItem(String name, String location) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Container(
        height: 76,
        decoration: const BoxDecoration(
          color: Color(0xFFF56210),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 15, bottom: 15),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 16,
                // Replace with the profile picture of the restaurant
                backgroundImage: NetworkImage(
                    "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg"),
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
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // SizedBox(height: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
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
                      fontSize: 12,
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
      ),
    );
  }
}
