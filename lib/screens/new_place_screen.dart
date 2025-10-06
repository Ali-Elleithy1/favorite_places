import 'package:flutter/material.dart';

class NewPlaceScreen extends StatelessWidget {
  const NewPlaceScreen({super.key});

  @override
  Widget build(context) {
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
                decoration: InputDecoration(label: Text('Title')),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {},
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
