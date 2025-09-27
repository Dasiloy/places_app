import 'package:flutter/material.dart';

import 'package:places_app/models/place.dart';

class PlacesList extends StatelessWidget {
  final List<Place> places;
  const PlacesList({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet!',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: Colors.white),
        ),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) => ListTile(
        // leading: CircleAvatar(
        //   radius: 26,
        //   backgroundImage: AssetImage(places[index].imageUrl),
        // ),
        title: Text(
          places[index].title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(color: Colors.white),
        ),
        // subtitle: Text(
        //   places[index].location,
        //   style: Theme.of(
        //     context,
        //   ).textTheme.bodyMedium!.copyWith(color: Colors.white70),
        // ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 16,
        ),
        onTap: () {
          // Handle tap event
        },
      ),
    );
  }
}
