import 'package:favorite_places/providers/places_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlaceScreen extends ConsumerStatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  ConsumerState<NewPlaceScreen> createState() {
    return _NewPlaceScreenState();
  }
}

class _NewPlaceScreenState extends ConsumerState<NewPlaceScreen> {
  void _addNewPlace(context, enteredTitle) {
    ref.read(placesProvider.notifier).addNewPlace(enteredTitle);
    Navigator.of(context).pop();
  }

  @override
  Widget build(context) {
    var enteredTitle;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a  new place'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  enteredTitle = value;
                },
                decoration: InputDecoration(label: Text('Title')),
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  _addNewPlace(context, enteredTitle);
                },
                label: Text('Add Place'),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
