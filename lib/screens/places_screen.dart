import 'package:favorite_places/providers/places_provider.dart';
import 'package:flutter/material.dart';

import 'package:favorite_places/screens/new_place_screen.dart';
import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerStatefulWidget {
  const PlacesScreen({super.key});

  @override
  ConsumerState<PlacesScreen> createState() {
    return _PlacesScreenState();
  }
}

class _PlacesScreenState extends ConsumerState<PlacesScreen> {
  void _addPlace() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => NewPlaceScreen()));
  }

  @override
  Widget build(context) {
    final places = ref.watch(placesProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Places'),
        actions: [IconButton(onPressed: _addPlace, icon: Icon(Icons.add))],
      ),
      body: PlacesList(places: places),
    );
  }
}
