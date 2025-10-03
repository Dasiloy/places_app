import 'package:flutter/material.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:places_app/providers/place_provider.dart";
import "package:places_app/screens/add_place.dart";
import "package:places_app/widgets/places_list.dart";

class PlacesScreen extends ConsumerStatefulWidget {
  const PlacesScreen({super.key});

  @override
  ConsumerState<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends ConsumerState<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Places')),
      body: PlacesList(places: ref.watch(placesProvider)),
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
