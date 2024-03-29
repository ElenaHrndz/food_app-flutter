import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage products'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Created Product',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'My products',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[ProductCreatedPage(addProduct), ProductListPage()],
          )),
    );
  }
}
