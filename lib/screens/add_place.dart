import 'package:flutter/material.dart';

class AddPlace extends StatefulWidget {
  const AddPlace({super.key});

  @override
  State<AddPlace> createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  late String _title;
  final _formKey = GlobalKey<FormState>();

  _onAddPlace() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pop(_title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a New Place')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  validator: (value) {
                    if (value == null ||
                        value == "" ||
                        value.trim().isEmpty ||
                        value.length > 50) {
                      return "Invalid name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _title = value!;
                  },

                  decoration: InputDecoration(labelText: 'Title'),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onAddPlace,
        child: const Icon(Icons.add),
      ),
    );
  }
}
