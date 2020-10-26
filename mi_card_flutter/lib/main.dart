import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   MyApp()
  );
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.teal.shade900,
          title: Center(
            child: Text('My Portfolio',style: TextStyle(
              fontSize: 24,
              color: Colors.teal.shade50,
              fontFamily: 'sanblack',
                fontWeight:FontWeight.bold
            ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.thumb_up),
          backgroundColor: Colors.orangeAccent, onPressed: () { print('icon button got pressed'); },
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50,
                backgroundImage:AssetImage('image/avatar (2).png'),
          ),
              ),
           Text('Godwin Judah J',
           style: TextStyle(
             fontFamily:'aladin',
             fontSize: 28,
             fontWeight:FontWeight.bold,
             color: Colors.white,
           ),),
              Text('SCHOOL STUDENT',
               style: TextStyle(
                 fontFamily: 'sans',
                 color: Colors.teal.shade200,
                  fontSize: 25,
                 fontWeight: FontWeight.bold
               ),),
          SizedBox(height: 20,width: 150,
          child: Divider(color: Colors.teal.shade50
            ,
          ),),
          Card(
            margin: EdgeInsets.symmetric(vertical: 12 ,horizontal: 12),
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.phone,
                  color: Colors.teal.shade400,
                  size: 25),
              title: Text('8686666722',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'aladin',
                  color: Colors.teal.shade700,
                ),),
            )

            ,
          ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0 ,horizontal: 12),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.email,
                      color: Colors.teal.shade400,
                      size: 25),
                  title:Text('godwinjudah.j@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'aladin',
                      color: Colors.teal.shade700,
                    ),) ,
                )

                ,
              )
            ]),

        ),

    )
    ) ;
  }
}
