import 'package:bazzar/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Finalscreen extends StatelessWidget {
  final String Imageurl;
  Finalscreen({super.key, required this.Imageurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_shopping_cart,
                  )),
              Positioned(
                  top: 8,
                  right: 2,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                    child: Text(
                      "${Provider.of<Providermodel>(context).quantity}",
                      style: TextStyle(fontSize: 10),
                    ),
                  )),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(Imageurl),
            Text("Quantity:${Provider.of<Providermodel>(context).quantity}")
          ],
        ),
      ),
    );
  }
}
