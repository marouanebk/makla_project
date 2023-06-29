class RestaurantData {
  static List<Restaurant> restaurants = [
    Restaurant(
      name: 'Restaurant A',
      location: '123 Main St, City A',
      latitude: 36.6598,
      longitude: 4.9106,
    ),
    Restaurant(
      name: 'Restaurant B',
      location: '456 Elm St, City A',
      latitude: 36.6599,
      longitude: 4.9108,
    ),
    Restaurant(
      name: 'Restaurant C',
      location: '789 Oak St, City A',
      latitude: 36.6597,
      longitude: 4.9105,
    ),
    Restaurant(
      name: 'Restaurant D',
      location: '789 Oak St, City A',
      latitude: 36.6597,
      longitude: 4.9105,
    ),
    Restaurant(
      name: 'Restaurant E',
      location: '789 Oak St, City A',
      latitude: 36.6597,
      longitude: 4.9105,
    ),
  ];
}

class Restaurant {
  final String name;
  final String location;
  final double latitude;
  final double longitude;

  Restaurant({
    required this.name,
    required this.location,
    required this.latitude,
    required this.longitude,
  });
}
