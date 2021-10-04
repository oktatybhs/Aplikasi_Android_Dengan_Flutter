import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchProduct extends SearchDelegate<String> {
  List<String> searchProduct = [];

  void addSearchProduct(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    searchProduct = prefs.getStringList('searchProduct') ?? [];
    searchProduct.insert(0, value);
    await prefs.setStringList('searchProduct', searchProduct);
  }

  void getSearchProduct() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    searchProduct = prefs.getStringList('searchProduct') ?? [];
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, query);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != '') addSearchProduct(query);
    return Center(
      child: Text(
        'Product Not Found',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    getSearchProduct();
    final count = searchProduct.length > 10 ? 10 : searchProduct.length;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.history),
          title: Text(searchProduct.elementAt(index)),
          trailing: Icon(Icons.north_west),
        );
      },
    );
  }
}
