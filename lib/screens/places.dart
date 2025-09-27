import 'package:flutter/material.dart';

import "package:places_app/models/place.dart";
import "package:places_app/screens/add_place.dart";
import "package:places_app/widgets/places_list.dart";

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Places')),
      body: PlacesList(places: Place.createDummies()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (ctx) => const AddPlace()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
