import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  final String id;
  final String title;
  // final String imagePath;
  // final double latitude;
  // final double longitude;
  // final String address;

  Place({
    required this.id,
    required this.title,
    // required this.imagePath,
    // required this.latitude,
    // required this.longitude,
    // required this.address,
  });

  Place.withId({
    required this.title,
    // required this.imagePath,
    // required this.latitude,
    // required this.longitude,
    // required this.address,
  }) : id = uuid.v4();
}
