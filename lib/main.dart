import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ArtApp(),
    );
  }
}

class ArtApp extends StatelessWidget {
  const ArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 270,
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(206, 74, 160, 100),
                    Color.fromARGB(150, 230, 237, 104),
                  ],
                ),
              ),

              child: Center(
                child: Image.asset( 
                  'assets/Peach_Rogue.jpg',
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: 300,
              height: 80,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(306, 74, 160, 100),
                    Color.fromARGB(150, 230, 237, 104),
                  ],
                ),
              ),


              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Rogue & Gambit #2', // title of of the art
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,// make the title bold
                      ),
                    ),
                    subtitle: Text( // second line of text 
                      'Peach Momoko (2023)',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: (){
                    //add logice here as in notes in lab 1 and button secotion
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Previous',
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                MaterialButton(
                   onPressed: () {
                      // Add next logic here
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                  ),
                ),

              ],
              

              
            ),


          ],
        ),
      ),
    );
  }
}