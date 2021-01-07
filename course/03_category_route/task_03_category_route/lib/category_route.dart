// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:task_03_category_route/category.dart';


// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    List<Category> myCategoryList = new List(8);
    for (int i = 0; i < 8; i++) {
      myCategoryList[i] = Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake);
      //print(_categoryNames[i]);
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for(int i = 0 ; i < 8 ; i++) myCategoryList[i]
        ],
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      title: Text("List of Categories"),
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
