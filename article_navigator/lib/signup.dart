import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SignUp Page'),centerTitle: true,),
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Sign up!',style: TextStyle(
          fontSize:30,
          fontWeight: FontWeight.bold,

        ),),
        SizedBox(height: 25,),
        Text('Create an account, its free.',
        textAlign: TextAlign.justify ,
        style: TextStyle(
          fontSize:15,
          //fontWeight: FontWeight.bold,
          

        ),),
        SizedBox(height: 50,),
        Container(
          width: 380,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: 380,
          child: TextField(decoration: InputDecoration(
            labelText: 'Password',
              hintText: 'Enter your password',
              border: OutlineInputBorder(),
            ),),
        ),
        SizedBox(height: 20,),
        Container(
          width: 380,
          child: TextField(decoration: InputDecoration(
            labelText: 'Confirm password',
              hintText: 'Enter confirm password',
              border: OutlineInputBorder(),
            ),),
        ),
        SizedBox(height: 50,),
        ElevatedButton(
            onPressed: (){}, 
            child:Text('Sign up'),
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
            SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Already have an account? '),
          //SizedBox(width: 5,),
          TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(fontSize: 17),))
        ],),
        SizedBox(height: 20,),
        ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child:Text('Go to home'),
          style:ElevatedButton.styleFrom(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //side: BorderSide(width: 10,color: Colors.blue),
              minimumSize: Size(100, 50),
              padding: EdgeInsets.all(20),
              primary: Colors.amber.shade400,//background
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