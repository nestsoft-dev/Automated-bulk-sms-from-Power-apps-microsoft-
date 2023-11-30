import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _number =  TextEditingController();
  final _senderName =  TextEditingController();
  final _message =  TextEditingController();
  final _from =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
           // mainAxisAlignment: MainAxisAlignment.sp,
            children:[
              SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: _message,
            decoration: InputDecoration(
            hintText: 'Enter Message to send',hintStyle: TextStyle(color: Colors.grey[350]),
            border: InputBorder.none,

          ),),
          SizedBox(height: 15,),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _from,
            decoration: InputDecoration(
              hintText: 'Enter Sender number',hintStyle: TextStyle(color: Colors.grey[350]),
              border: InputBorder.none,

            ),),
              SizedBox(height: 15,),
          TextFormField(
            keyboardType: TextInputType.name,
            controller: _senderName,
            decoration: InputDecoration(
              hintText: 'Enter Sender Name',hintStyle: TextStyle(color: Colors.grey[350]),
              border: InputBorder.none,

            ),),
              SizedBox(height: 15,),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _number,
            decoration: InputDecoration(
              hintText: 'Enter Receiver number',hintStyle: TextStyle(color: Colors.grey[350]),
              border: InputBorder.none,

            ),),
              SizedBox(height: 15,),

          GestureDetector(
            onTap: (){

            },
            child: Container(
              height: 50,width:200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),color: Colors.blue
                ),
                child:Center(child:Text('Automate SMS',style: TextStyle(color: Colors.white),))
            ),
          )
        ]),
      ),
    );
  }
}
