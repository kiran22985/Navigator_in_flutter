import 'package:article_navigator/login.dart';
import 'package:article_navigator/signup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Hello There!',style: TextStyle(
          fontSize:30,
          fontWeight: FontWeight.bold,

        ),),
        SizedBox(height: 25,),
        Text('Automatic identify verification which enables you to verify your identity',
        textAlign: TextAlign.justify ,
        style: TextStyle(
          fontSize:15,
          //fontWeight: FontWeight.bold,
          

        ),),
        SizedBox(height: 50,),
        Image.asset('images/bck.PNG', width: 200,height: 200,), 
        SizedBox(height: 50,),
        ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, 
            child:Text('Login'),
          style:ElevatedButton.styleFrom(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //side: BorderSide(width: 10,color: Colors.blue),
              minimumSize: Size(250, 50),
              padding: EdgeInsets.all(20),
              primary: Colors.blue,//background
              onPrimary: Colors.white,
              elevation: 20,
              //shadowColor: Colors.red,
              
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              )

            )),
            SizedBox(height: 40,),
        ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
            }, 
            child:Text('SignUp'),
          style:ElevatedButton.styleFrom(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //side: BorderSide(width: 10,color: Colors.blue),
              minimumSize: Size(250, 50),
              padding: EdgeInsets.all(20),
              primary: Color(0xffe53935),//background
              onPrimary: Colors.white,
              elevation: 20,
              //shadowColor: Colors.red,
              
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              )

            )),
      ],),)
      
    );
  }
}