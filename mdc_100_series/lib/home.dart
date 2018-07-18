// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'supplemental/asymmetric_view.dart';
import 'package:flutter/material.dart';
import 'widgets/ProductCard.dart';
import 'model/data.dart';
import 'model/product.dart';

class HomePage extends StatelessWidget {
  // TODO: Make a collection of cards (102)
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      // TODO: Add app bar (102)
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          )
        ],
      ),
      // TODO: Add a grid view (102)
      body: AsymmetricView(products: getProducts(Category.all)),
    );
  }

  Widget _buildGrid() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: _buildList(10),
    );
  }

  List<ProductCard> _buildList(int count) {
    List<Product> products = getProducts(Category.all);

    if (products == null || products.isEmpty) {
      return const <ProductCard>[];
    }

    return products.map((product) {
      return ProductCard(product: product);
    }).toList();
  }
}
