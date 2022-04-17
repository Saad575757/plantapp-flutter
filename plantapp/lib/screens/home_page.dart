import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> widgets = [
    Container(color: Colors.pink),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
  ];
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 90,
            padding: EdgeInsets.symmetric(vertical: 35,),
            color: Theme.of(context).primaryColor,
            child: RotatedBox(
              quarterTurns: 1,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz, color: Colors.white,),
                    onPressed: (){},
                  ),
                  Spacer(),
                  buildMenuItem("Green Plant", 0),
                  buildMenuItem("Indore Plant", 1),
                  buildMenuItem("Shape Plant", 2),

                  Spacer(),
                  RotatedBox(
                    quarterTurns: -1,
                    child: IconButton(
                      icon: Icon(Icons.home, color: Colors.white, size: 30,),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),),
            Expanded(child: Container(
              child: PageView(
                children: [
                  widgets[currentIndex]
                ],
              ),
            )),
        ],
      ),
    );
  }
  TextButton buildMenuItem(String title, int index){
    bool isSelected = currentIndex == index;
    return TextButton( 
      
      child: Text(title, style: TextStyle(color : isSelected?Colors.white: Colors.white60,
       fontSize:isSelected ? 20:18,
       fontWeight: isSelected ? FontWeight.bold: FontWeight.normal),
       ),
       onPressed: () => setState(() => currentIndex = index),
        );
  }
}