import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
        body: Column(
          children: [
            Container(
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
            Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  myLocationButtonEnabled: true,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  polylines: {
                    Polyline(
                      polylineId: const PolylineId("route"),
                      points: polylineCoordiantes,
                      color: Colors.black,
                      width: 6,
                    )
                  },
                  markers: {
                    // const Marker(
                    //   markerId: MarkerId("source"),
                    //   position: sourceLocation,
                    // ),36.753107709123775, 3.4906133502296357
                    Marker(
                      markerId: const MarkerId("current Location"),
                      position: LatLng(36.753107709123775, 3.4906133502296357),
                      anchor: const Offset(0.5, 1.0),
                    ),
                    const Marker(
                      markerId: MarkerId("destination"),
                      position: destinationLocation,
                    ),
                  },
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _goToTheLake,
          label: const Text('To the destination'),
          icon: const Icon(Icons.directions_boat),
        ));
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
