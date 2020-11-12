import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(SignUpForm());


class SignUpForm extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Designing of screen using Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SignUp(),);
  }
}



class SignUp extends StatefulWidget{
  SignUpState createState()=>SignUpState();
}



class SignUpState extends State{

  final emailcontroller = TextEditingController();
  final firstnamecontroller = TextEditingController();

  final lastnamecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();




  Widget build(BuildContext context){

    final firstname = TextField(
      obscureText: false,
      controller: firstnamecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: " First Name Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );



    final lastname = TextField(
      obscureText: false,
      controller: lastnamecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Last Name Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final mobile = TextField(
      obscureText: false,
      controller: mobilecontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Mobile No Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final emailField = TextField(
      obscureText: false,
      controller: emailcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Email Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );



    final passwordField = TextField(
      obscureText: true,
      controller: passcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Password Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );

    final confirmpasswordField = TextField(
      obscureText: true,
      controller: passcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          hintText: "Confirm Password Here",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );


    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),

        onPressed: () {
          User user=User();
          user.firstname=firstnamecontroller.text;

          user.lastname=lastnamecontroller.text;
          user.mobile=mobilecontroller.text;
          user.email=emailcontroller.text;


          user.pass=passcontroller.text;
          user.confirmpass=confirmpasscontroller.text;
        },

        child: Text("Sign Up",textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),),

      ),
    );


    return Scaffold(

      appBar: AppBar(title: Text("Sign up")),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [



                Text("Sign up",style: TextStyle(color:Colors.red), ),


                SizedBox(height: 15.0),
                firstname,


                SizedBox(height: 15.0),
                lastname,


                SizedBox(height: 15.0),
                mobile,

                SizedBox(height: 10.0),
                emailField,


                MyStatefulWidget(),


                SizedBox(height: 10.0),
                passwordField,

                SizedBox(height: 10.0),
                confirmpasswordField,

                SizedBox(height: 15.0,),
                loginButon,
                SizedBox(height: 10.0,),




              ],),),),),);

  }

}
class User{
  String firstname;

  String lastname;
  String mobile;
  String email;

  String pass;
  String confirmpass;
}



class ButtonP extends StatefulWidget{
  @override
  _ButtonPState createState() => _ButtonPState();
}

class _ButtonPState extends State<ButtonP>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(

        children: <Widget>[

          FlatButton(
            onPressed: (){},
            child: Text("Logo"),
            color: Colors.blue,
          ),

        ]
        )
      );

  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Gender';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 1,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Gender', 'Male', 'Female']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}