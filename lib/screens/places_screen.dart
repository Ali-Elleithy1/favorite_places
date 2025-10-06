import 'package:favorite_places/main.dart';
import 'package:flutter/material.dart';

import 'package:favorite_places/screens/new_place_screen.dart';
import 'package:favorite_places/models/place.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() {
    return _PlacesScreenState();
  }
}

class _PlacesScreenState extends State<PlacesScreen> {
  final List<Place> _favoritePlaces = [];

  void _addPlace() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => NewPlaceScreen()));
  }

  @override
  Widget build(context) {
    Widget content = Center(
      child: Text(
        'No places were added yet!',
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
    );

    if (_favoritePlaces.isNotEmpty) {
      content = ListView(
        children: [
          ..._favoritePlaces.map(
            (place) => ListTile(
              title: Text(
                place.title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Places'),
        actions: [IconButton(onPressed: _addPlace, icon: Icon(Icons.add))],
      ),
      body: content,
    );
  }
}
