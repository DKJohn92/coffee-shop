import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<Shop>(context, listen: false).addItemToCart(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added to Cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // Heading
              const Text(
                'How would you like your coffee?',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 25),
              //list of coffees
              Expanded(
                  child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                  //get individual coffee
                  Coffee eachCoffee = value.coffeeShop[index];
                  // return the title for this coffee
                  return CoffeeTile(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCart(eachCoffee),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
