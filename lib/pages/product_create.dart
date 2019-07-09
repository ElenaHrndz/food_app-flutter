import 'package:flutter/material.dart';

class ProductCreatedPage extends StatefulWidget {
  final Function addProduct;

  ProductCreatedPage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCratePageState();
  }
}

class _ProductCratePageState extends State<ProductCreatedPage> {
  String _titleValue;
  String _descriptionValue;
  double _priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product title'),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ),
          SizedBox(height: 15.0),
          RaisedButton(
            child: Text('Save'),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _titleValue,
                'description': _descriptionValue,
                'price': _priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, 'home');
            },
          )
        ],
      ),
    );
  }
}
