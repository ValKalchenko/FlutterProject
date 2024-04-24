import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';

class secondpage extends StatelessWidget {
   String name,email,phone;
   secondpage({Key? key,required this.name,required this.email,required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is your information:', style:TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold)),
            Text('Name: $name'),
            Text('Email: $email'),
            Text('Phone: $phone'),
            ElevatedButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));

            }, child: Text('Go Back'))
          ],
        ),
      ),
    ),
    );
  }
}