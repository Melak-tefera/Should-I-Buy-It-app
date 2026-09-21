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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    height: 100,
                    child: Text(
                      "Should I \nBuy It?",
                      maxLines: 2,
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        height: 1
                      ),
                      
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
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  "Search for something you want. we'll turn its \nprice into the time you'd need to work for it.",
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),
                  ),
              ),
              SizedBox(height: 40,),

              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  "What do want to buy?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),
              ),
                SizedBox(height: 10,),
              // there is a searchbar
              SearchBar(
                leading: Icon(Icons.search, color: Colors.white, size: 26,),
                hintText: "What to buy?", 
                
                backgroundColor: WidgetStateProperty.resolveWith((states) {return const Color(0xFF1E1E1E); }),
                hintStyle: WidgetStateProperty.all(
                const TextStyle(
                  color: Colors.white54, // lighter hint text
                  fontSize: 16,
                ),
              ),
              textStyle: WidgetStateProperty.all(
                const TextStyle(
                  color: Colors.white, // typed text color
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
  ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: Text(
                  "Your Pick",
                  style:TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ),
                  ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(212, 47, 47, 47),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),


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