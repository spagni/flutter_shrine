import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  
  ProductCard({@required this.product});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(locale: Localizations.localeOf(context).toString());

    return Card(
      elevation: 0.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0/11.0,
            child: Image.asset(product.assetName, package: product.assetPackage, fit: BoxFit.fitWidth)
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    product.name, 
                    style: theme.textTheme.title,
                    softWrap: false,
                    //overflow: TextOverflow.ellipsis,
                    maxLines: 1
                  ),
                  SizedBox(height: 8.0),
                  Text(formatter.format(product.price), style: theme.textTheme.body2,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}