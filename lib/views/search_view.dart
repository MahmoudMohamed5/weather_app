import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Weather'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) {
           
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              border: getBorder(),
              labelText: 'search',
              enabledBorder: getBorder(),
              focusedBorder: getBorder(),
              hintText: 'Enter City Name',
              suffixIcon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
    );
  }
}
