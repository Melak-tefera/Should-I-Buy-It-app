import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [

                ],
              ),
              Text(""),
              SizedBox(),
              // there is a searchbar
              TextField(),
              Text("Your Pick"),
              // green transparant container
              Container(
              
              ),
              
              Text(""),
              //...

              
            ],
          ),
        )
        ),
    
    );
  }
}