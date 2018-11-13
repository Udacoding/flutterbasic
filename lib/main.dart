import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new FirstScreen(), debugShowCheckedModeBanner: false,);

  }
}

class FirstScreen extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        //menambahkan title app bar
        title: new Text('Belajar Flutter'),
        //mengubah warna background
        backgroundColor: Colors.red[900],
        //menambahkan leading menu home
        leading: new IconButton(icon: new Icon(Icons.home, color: Colors.white),
          onPressed: (){
            Fluttertoast.showToast(msg: "Menu Home",  toastLength: Toast.LENGTH_SHORT,
                bgcolor: "#e74c3c",
                textcolor: '#ffffff');
          },
        ),

        //menambahkan action button
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.call, color: Colors.white),
            //toast call
            onPressed: (){
//                Fluttertoast.showToast(msg: "Panggilan Telepon",  toastLength: Toast.LENGTH_SHORT,
//                    bgcolor: "#e74c3c",
//                    textcolor: '#ffffff');

              //navigate to second screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            },
          ),
          new IconButton(icon: new Icon(Icons.search, color: Colors.white),
            onPressed: (){
              Fluttertoast.showToast(msg: "Fitur Search",  toastLength: Toast.LENGTH_SHORT,
                  bgcolor: "#e74c3c",
                  textcolor: '#ffffff');
            },
          ),


        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,

        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home),
          title: new Text('Home'),

          ),
          BottomNavigationBarItem(icon: new Icon(Icons.mail),
            title: new Text('Message'),

          ),

          BottomNavigationBarItem(icon: new Icon(Icons.person),
            title: new Text('Profile'),

          ),
        ],
      ),


      body: new Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          //widget pertama
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.apps, color: Colors.green[900],size: 40.0),
              new Text('Aplikasi')
            ],
          ),

          //widget kedua
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.add_a_photo, color: Colors.green[900], size: 40.0,),
              new Text('Photo')
            ],
          ),


          //widget ketiga
          //widget kedua
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(Icons.access_alarms, color: Colors.green[900], size: 40.0,),
              new Text('Alarm')
            ],
          ),
        ],



//          child: new Column(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              new Text('Rizki Syaputra', style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold )),
//              new Text('Rudi Abraham', style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold )),
//              new Text('Udacoding', style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold ))
//            ],
//          )

//          new Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: <Widget>[
//              new Icon(Icons.add_a_photo, color: Colors.green[900],size: 40.0),
//              new Icon(Icons.dashboard, color: Colors.green[900],size: 40.0),
//              new Icon(Icons.access_alarms, color: Colors.green[900],size: 40.0)
//            ],
//          ),
//          new Text('Hello World',
//            style: new TextStyle(
//              fontSize: 20.0,
//              fontWeight: FontWeight.bold,
//              fontStyle: FontStyle.italic,
//              color: Colors.red[900]
//            ),
//          ),
      ),

    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pop(context);
        },
          child: Text('Go Back'),
        ),
      ),
      
    );
  }
}