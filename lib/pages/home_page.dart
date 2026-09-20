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
                  Text(
                    "Should I Buy It?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    
                    ),
                  Spacer(),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.timelapse_outlined,
                      size: 30,
                      color: Colors.white,
                      
                      )
                    )
                ],
              ),
              Text(
                "Search for something you want. we'll turn its price into the time you'd need to work for it.",
                style: TextStyle(
                  color: Colors.white,
                  
                ),
                ),
              SizedBox(height: 40,),

              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  "What do want to buy?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
                SizedBox(height: 10,),
              // there is a searchbar
              SearchBar(
                backgroundColor: WidgetStateProperty.resolveWith((states) {return const Color(0xFF1E1E1E); }),
              ),
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