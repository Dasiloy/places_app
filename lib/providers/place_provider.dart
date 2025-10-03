import 'package:flutter_riverpod/legacy.dart';

import 'package:places_app/models/place.dart';

class PlaceNotifier extends StateNotifier<List<Place>> {
  PlaceNotifier() : super(const []);

  void addPlace(String title) {
    state = [Place.withId(title: title), ...state];
  }
}

final placesProvider = StateNotifierProvider<PlaceNotifier, List<Place>>(
  (ref) => PlaceNotifier(),
);
