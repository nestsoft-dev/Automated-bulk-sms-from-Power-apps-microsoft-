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
  bool isLoading = false;

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

        isLoading?const Center(child: CircularProgressIndicator(color: Colors.blue,),):  GestureDetector(
            onTap: (){
              if(_number.text.isEmpty||_senderName.text.isEmpty||_from.text.isEmpty||_message.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Input Needed')));
                return;
              }
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
/*
* echo "# Automated-bulk-sms-from-Power-apps-microsoft-" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/nestsoft-dev/Automated-bulk-sms-from-Power-apps-microsoft-.git
  git push -u origin main*/