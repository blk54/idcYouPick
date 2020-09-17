import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDC You Pick',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Welcome to IDC You Pick!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to IDC You Pick!',
              style: new TextStyle(color: Color(0xFFFF5252), fontSize: 25.0),
            ),
            new Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0)),
            Text(
              'Please enter you phone number below:',
              style: new TextStyle(color: Color(0xFFFF5252), fontSize: 20.0),
            ),
            new Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0)),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: "ex: (555) 555-555",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (val) {
                if (val.length==0) {
                  return "Phone Number cannot be empty.";
                }else{
                  return null;
                }
              },
              keyboardType: TextInputType.phone,
              style: new TextStyle (
                fontFamily: "Poppins",
              ),
            ),
            new Padding(padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 200.0)),
            RaisedButton (
              child: Text('Go to Profile Page'),
              onPressed: () {
                navigateToProfilePage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
  Future navigateToProfilePage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilePage'),
        backgroundColor: Color(0xFFFF5252),
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to go back to Main Page'),
            RaisedButton (
              textColor: Colors.white,
              color:Colors.redAccent,
              child: Text ('haha ooga booga'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}