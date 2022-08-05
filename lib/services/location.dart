import 'package:geolocator/geolocator.dart';

class Location {
  double lat = 0.0;
  double long = 0.0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      lat = position.latitude; //33.6590; //
      long = position.longitude; //73.0282;

    } catch (e) {
      print(e);
    }
  }
}
