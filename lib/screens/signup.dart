import 'package:flutter/material.dart';
import 'package:quotationbox/screens/otp_verification.dart';
import 'package:quotationbox/screens/signup.dart';

import '../colors_constant.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();


  bool agree = false;


  bool _passwordVisible = false;
  bool _confirmpasswordVisible = false;
  String? _chosenValue;

  @override
  void initState() {
    _passwordVisible = false;
    _confirmpasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Title"),
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 25,right: 25),
          child: ListView(
            children: <Widget>[


              SizedBox(
                height: 50,
              ),

              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  )),


              SizedBox(height: 10,),

              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    'Welcome back, Please signup',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Text(
                    'to create account',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                  )),


              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Username",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.black25),),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: 'enter username',
                  ),
                ),
              ),


              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Email address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.black25),),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    border: OutlineInputBorder(),
                    hintText: 'yourname@gmail.com',

                  ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Phone number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.black25),),
              ),


              Container(
                padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
                child: Row(
                  children: [

                  Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: 1,style: BorderStyle.solid),
                        ),
                        child:  DropdownButton<String>(
                          focusColor:Colors.white,
                          value: _chosenValue,
                          underline: Container(),
                          isExpanded: true,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor:Colors.grey,
                          items: <String>[
                            "+1",
                            "+971",
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,style:TextStyle(color:Colors.black),),
                            );
                          }).toList(),
                          hint:Text(
                            "+1",
                            style: TextStyle(
                                color: AppColors.black25,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (vgear){

                          },

                        ),



                      ),

                  Expanded(
                    child: TextField(
                      controller: phoneController,
                    decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                      hintText: 'mobile number',
                ),
              ),
                  ),





                  ],
                )
              ),

              // Container(
              //   padding: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
              //   child: TextField(
              //     controller: phoneController,
              //     decoration: const InputDecoration(
              //       prefixIcon: Icon(Icons.mail_outline),
              //       border: OutlineInputBorder(),
              //       labelText: 'yourname@gmail.com',
              //     ),
              //   ),
              // ),

              Container(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.black25),),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    }, icon: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    ),
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(),
                    hintText: '***********',
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Container(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("Confirm Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: AppColors.black25),),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: confirmpasswordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _confirmpasswordVisible = !_confirmpasswordVisible;
                      });
                    }, icon: Icon(
                      _confirmpasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    ),
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(),
                    hintText: '***********',
                  ),
                ),
              ),


              SizedBox(height: 10,),

              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states){
                            if(states.contains(MaterialState.disabled)){
                              return Colors.grey;
                            }
                            return Colors.grey;
                          }),
                          value: agree,
                          onChanged: (check){
                            setState(() {
                              agree= check!;
                            });
                          },
                        ),
                        Wrap(
                          children: <Widget>[
                            Text('Agree with our ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: AppColors.black25),),
                            InkWell(
                              onTap: (){},
                              child: Text('Terms & Conditions ',
                                style: TextStyle(
                                fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  //decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Text('and',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.black25),),
                          ],
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Wrap(
                          children: <Widget>[
                            InkWell(
                              onTap: (){},
                              child: Text('Privacy Policy.',
                                style: TextStyle(
                                fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                 // decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                  height: 60,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.darkgreen, //background color of button
                      side: BorderSide(width:3, color: AppColors.darkgreen), //border width and color
                      // shape: RoundedRectangleBorder( //to set border radius to button
                      //     borderRadius: BorderRadius.circular(30)
                      // ),

                    ),
                    child: const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => OtpVerification()));


                    },
                  )
              ),


              SizedBox(
                height: 25,
              ),

              Container(
                //alignment: Alignment.center,
                height: 30,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?',style: TextStyle(color: Colors.grey.shade300),),
                    SizedBox(width: 5,),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Text('Sign in',style: TextStyle(color: Colors.orange),)),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          )
      ),
    );
  }
}