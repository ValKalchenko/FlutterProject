import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/secondpage.dart';


void main() {
  runApp(MyApp()); // Running the main application
}

class MyApp extends StatelessWidget {
  // This stateless widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // returning a materialapp widget
      title: 'Flutter Demo', // setting title
      theme: ThemeData(
        primarySwatch: Colors.blue, // setting primary color theme
      ),
      home: Form(), // setting the home screen to the form widget
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController(); // controller for name input
  TextEditingController _email = TextEditingController(); // controller for email input
  TextEditingController _phone = TextEditingController(); // controller for phone input
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // returning a scaffold widget
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Valerie\'s First Flutter Application', // text display
                // text styles
                style:TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.bold)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please Enter Your Information Below' // text display
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration( // styling the textfield
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Name' // text display
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _email,
                decoration: InputDecoration( // styling the textfield
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email' // text display
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phone,
                decoration: InputDecoration( // styling the textfield
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Phone No' //text displau
                ),
              ),
            ),
            ElevatedButton(onPressed: (){ // creating button

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>secondpage(name: _name.text, email: _email.text, phone: _phone.text)));
              // navigating to second screen with entered information
            }, child: Text('Go Next Page'))
          ],
        ),
      ),
    );
  }
}