import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 7',
      theme: ThemeData(
       fontFamily: 'Pacifico',
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'WOW Pizza'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text(widget.title),
        actions: <Widget> [IconButton(onPressed: () {Text:'Our Facebook page!';}, 
        icon: Icon(Icons.facebook_outlined, color: Colors.white,)),
        // IconButton(onPressed: () {Text:'Our Twitter page!';}, 
        // icon: FaIcon(FontAwesomeIcons.twitter))
        ],
      ),
      body: Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          myButton('Vegetable Pizza'),
          myButton('Cheese Pizza'),
          myButton('Fries'),
           Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/cheese.jpg', height: 80, width: 80,),
                  SizedBox(width: 15,),
                  Text("Hi, I'm the Pizza Assistant, what can I help you order?", style: TextStyle(color: Colors.black, fontSize: 25),)                    
                  
          ] )
      
           
          ],
        ),
        
      ),
      );
  }
}

OutlinedButton myButton(String text){
  return OutlinedButton(onPressed: (){}, child: Text(text), style: OutlinedButton.styleFrom(
    foregroundColor: Colors.orange, padding: EdgeInsets.all(5),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  ),);
}
