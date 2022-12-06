
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/great_places.dart';
import './screens/place_list_screen.dart';
import './screens/add_place_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Great Places',
          theme: ThemeData(colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.indigo, secondary: Colors.amber)),
          home: PlacesListScreen(),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          }),
    );
  }
}