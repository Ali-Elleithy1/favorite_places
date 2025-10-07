import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/legacy.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier() : super([]);

  void addNewPlace(String title) {
    final newPlace = Place(title: title);
    state = [newPlace, ...state];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>(
  (ref) => PlacesNotifier(),
);
