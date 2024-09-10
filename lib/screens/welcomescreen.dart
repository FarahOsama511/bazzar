import 'package:bazzar/providers/provider.dart';
import 'package:bazzar/screens/finalscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage:
                NetworkImage(Provider.of<Providermodel>(context).Image!),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, ${Provider.of<Providermodel>(context).username!}",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "How is your health?",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              Image.asset("assets/image1.png"),
              Text(
                "Welacome, ${Provider.of<Providermodel>(context).username!},Email:${Provider.of<Providermodel>(context).email!},Phone:${Provider.of<Providermodel>(context).mobilenumber.toString()}",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 108,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Provider.of<Providermodel>(context, listen: false)
                              .Incrementquantity();
                        },
                        icon: Icon(Icons.remove)),
                    Text(Provider.of<Providermodel>(context, listen: false)
                        .quantity
                        .toInt()
                        .toString()),
                    IconButton(
                        onPressed: () {
                          Provider.of<Providermodel>(context, listen: false)
                              .decrementquantity();
                        },
                        icon: Icon(Icons.add)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Finalscreen(
                      Imageurl: "assets/image1.png",
                    );
                  }));
                },
                color: Colors.black,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
