import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _namecontroller=new TextEditingController();
  TextEditingController _emailcontroller=new TextEditingController();
  TextEditingController _agecontroller=new TextEditingController();
  TextEditingController _commentcontroller=new TextEditingController();
  int _radiovalue=0;
  String result="";
  String info="";
  void change(int value){
    setState(() {
      _radiovalue=value;
    });
    switch(_radiovalue){
      case 0:
        result="male";
        print(result);
        break;
      case 1:
        result="Female";
        print(result);
        break;
    }
  }

  onpress() {
    setState(() {
      if(_radiovalue==0){
        result="Male";
      }
      if (_namecontroller.text.trim().isNotEmpty &&
          _emailcontroller.text.trim().isNotEmpty &&
          _agecontroller.text.trim().isNotEmpty) {
        info = "Name: ${_namecontroller.text}"
            "Gmail: ${_emailcontroller.text}"
            "Age: ${_agecontroller.text}"
            "Type: $result";
        if(_commentcontroller.text.trim().isNotEmpty){
          info = "Name: ${_namecontroller.text}"
              "Gmail: ${_emailcontroller.text}"
              "Age: ${_agecontroller.text}"
              "Type: $result"
              "Comment: ${_commentcontroller.text}";
        }else{
          print("progress");
        }
      }else {
        info="No Progress";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Text("Hello Eslam Hegazy",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
            ),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TextField(
                    controller: _namecontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      enabledBorder:InputBorder.none ,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: "Name",
                      icon: Icon(Icons.person),

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TextField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      enabledBorder:InputBorder.none ,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: "Email",
                      icon: Icon(Icons.email),

                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TextField(
                    controller: _agecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Your Age",
                      enabledBorder:InputBorder.none ,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: "Age",
                      icon: Icon(Icons.perm_camera_mic_sharp),

                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Male"),
                Radio(value: 0, groupValue: _radiovalue, onChanged: change),
                SizedBox(
                  width: 15,
                ),
                Text("Female"),
                Radio(value: 1, groupValue: _radiovalue, onChanged: change),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: _commentcontroller,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: "Enter Your Comment",
                    labelText: "Comment",
                    icon: Icon(Icons.add_comment),
                  ),
                ),
              ),
            ),
            RaisedButton(
              child: Text("Login",style: TextStyle(color: Colors.white),),
              color: Colors.black.withOpacity(0.6),
              onPressed: onpress,
            ),
            SizedBox(height: 15,),
            Text(info,style: TextStyle(fontSize: 15),),
          ],
        ),
      ),
    );
  }
}
