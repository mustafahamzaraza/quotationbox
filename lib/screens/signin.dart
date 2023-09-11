import 'package:flutter/material.dart';
import 'package:quotationbox/screens/signup.dart';

import '../colors_constant.dart';



class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool agree = false;


  bool _passwordVisible = false;


  @override
  void initState() {
    _passwordVisible = false;
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
                    'Sign In',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  )),


              SizedBox(height: 10,),

              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    'Welcome back, Please login',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                  )),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Text(
                    'to your account',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                  )),

              SizedBox(height: 20,),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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

                        Text("Remember me",style: TextStyle(fontWeight: FontWeight.bold),),

                      ],
                    ),
                    TextButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(fontSize: 15,color: Colors.orange),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
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
                    child: const Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    onPressed: () {

                    },
                  )
              ),
              SizedBox(height: 40,),
              Container(
                  alignment: Alignment.center,
                  height: 30,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text('Or sign up with',style: TextStyle(fontSize: 15,color: Colors.grey.shade300),),
              ),

              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/horse.png'),
                              )
                          )),
                    ),


                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/horse.png'),
                              )
                          )),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)
                      ),
                      child: Container(
                          margin: EdgeInsets.all(10),
                          child: Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/horse.png'),
                              )
                          )),
                    ),

                  ],
                ),
              ),


              SizedBox(
                height: 50,
              ),

              Container(
                //alignment: Alignment.center,
                height: 30,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a memeber?',style: TextStyle(color: Colors.grey.shade300),),
                    SizedBox(width: 5,),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Text('Sign up',style: TextStyle(color: Colors.orange),)),
                  ],
                ),
              ),


            ],
          )
      ),
    );
  }
}