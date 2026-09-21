import 'package:flutter/material.dart';
import 'dart:ui';
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(237, 84, 84, 84),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(
                            Icons.phone,
                            size: 30,
                            color: Colors.white,
                            ),
                        
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Header",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold

                            ),
                            ),
                          Text(
                            "description ......",
                            overflow:TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white

                            ),
                            )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "10000 birr",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),
              // green transparant container
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 1, 132, 69).withValues(alpha: 0.12),
                      border: Border.all(
                        color: const Color(0xFF69F0AE).withValues(alpha: 0.45),
                        width: 1.2,
                        ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF00E676).withValues(alpha: 0.18),
                          blurRadius: 24,
                          spreadRadius: 2,
                        )
                      ]
               
                    ),
                    child:Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(42, 35, 134, 88).withValues(alpha: 0.45),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(
                                Icons.timelapse_outlined,
                                color: Colors.white,
                              
                                ),
                            ),
                            Text(
                              "This Will Cost You",
                              style: TextStyle(
                                color: const Color.fromARGB(189, 252, 251, 251),
                                fontSize: 18
                              ),
                              )
                          ],
                        ),
                        Text(
                          "9h 35m",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                        Text(
                          "About 1.2 working days of your time.",
                          style: TextStyle(
                            color: Color.fromARGB(189, 252, 251, 251),
                          ),
                          ),
                        // thre is some cutter or ....
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "hourly rate",
                                  style: TextStyle(
                                    color: Color.fromARGB(189, 252, 251, 251),
                          ),
                                  ),
                                Text(
                                  "100 birr",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                          ),
                                  )
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "hourly rate",
                                  style: TextStyle(
                                    color: Color.fromARGB(189, 252, 251, 251),
                          ),
                                  ),
                                Text(
                                  "1.2 days",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    
                          ),
                                  )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ),
                ),
               
               ),
             ),
             SizedBox(height: 10,),
              
              Row(
                children: [
                  Text(
                    "Your hourly rate",
                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                          ),
                    ),
                  Spacer(),
                  Text(
                    "100 birr",
                    style: TextStyle(
                                    color: const Color.fromARGB(255, 1, 132, 69).withValues(alpha: 0.6),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                          ),
                    )
                ],
              ),
             // Slider(value: value, onChanged: onChanged),
              Row(
                children: [
                  Text(
                    "5 birr",
                    style: TextStyle(
                                    color: Color.fromARGB(189, 252, 251, 251),
                          ),
                    ),
                  Spacer(),
                  Text(
                    "500 birr",
                    style: TextStyle(
                                    color: Color.fromARGB(189, 252, 251, 251),
                          ),
                    )
                ],
              )
              //...

              
            ],
          ),
        )
        ),
    
    );
  }
}