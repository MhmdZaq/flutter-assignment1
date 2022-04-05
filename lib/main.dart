import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myapp()));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.45,
                child: Image.asset(
                  'assets/yoga.gif',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                          color: Color.fromARGB(255, 38, 35, 78),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forget password ?!',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    RaisedButton(
                      child: Text('Log In'),
                      color: Color.fromARGB(255, 95, 62, 172),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second()));
                },
                child: Text.rich(
                  TextSpan(text: 'Don\'t have an account ?! ', children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(color: Color.fromARGB(255, 38, 35, 78)),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.45,
                child: Image.asset(
                  'assets/play.gif',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 38, 35, 78),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Forget password ?!',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    RaisedButton(
                      child: Text('Sign Up'),
                      color: Color.fromARGB(255, 95, 62, 172),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Myapp()));
                },
                child: Text.rich(
                  TextSpan(text: 'Already have an account?! ', children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(color: Color.fromARGB(255, 38, 35, 78)),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
