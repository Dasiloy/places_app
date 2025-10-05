import 'package:flutter/material.dart';
import 'package:places_app/models/place.dart';

class PlaceDetail extends StatelessWidget {
  final Place place;

  const PlaceDetail({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.title)),

      body: Center(
        child: Text(
          place.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(),
        ),
      ),
    );
  }
}
