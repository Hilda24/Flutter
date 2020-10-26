import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title:Center(child: Text('Keep on Smiling'),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Image(
            image:
                 NetworkImage('https://static.standard.co.uk/s3fs-public/thumbnails/image/2017/08/15/12/smileyfaceemoji1508a.jpg'),
      ),
      ),
    ),
  ),
  );
}

