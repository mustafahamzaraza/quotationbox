import 'package:flutter/material.dart';
import 'package:quotationbox/screens/signup.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import '../colors_constant.dart';



class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {


   late TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
   // phoneController.dispose();
    super.dispose();
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
                    'OTP Verification',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  )),


              SizedBox(height: 10,),

              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    'Enter the code we have sent you on',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                  )
              ),
              SizedBox(height: 10,),
              Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                 child:  Wrap(
                   children: <Widget>[
                     Text(
                       'your Mobile No. ',
                       style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                     ),

                     Text(
                       '+1 792 2565133 ',
                       style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.black10),
                     ),

                     Icon(Icons.edit,color: Colors.yellowAccent),

                   ],
                 ),
              ),



              SizedBox(
                height: 30,
              ),


              Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: PinCodeFields(
                  length: 4,
                  controller: phoneController,
                  fieldBorderStyle: FieldBorderStyle.square,
                  responsive: true,
                //  fieldHeight:MediaQuery.of(context).size.height/18.4,
                //  fieldWidth: MediaQuery.of(context).size.width/7.4,
                  borderWidth:1.0,
                  activeBorderColor: Colors.grey,
                  activeBackgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(3.0),
                  keyboardType: TextInputType.number,
                  autoHideKeyboard: false,
                  fieldBackgroundColor: Colors.white,
                  borderColor: Colors.grey,
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/13.1,
                    fontWeight: FontWeight.bold,
                  ),
                  onComplete: (output) {
                    // Your logic with pin code
                    print(output);
                  },
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
                    ),
                    child: const Text('VERIFY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    onPressed: () {

                    },
                  )
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                height: 30,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text('Resend Code',style: TextStyle(
                    fontSize: 18,color: Colors.green,
                   decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),),
              ),

              SizedBox(height: 25,),

              Container(
                alignment: Alignment.center,
                height: 30,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text('00:29',style: TextStyle(
                  fontSize: 18,color: AppColors.black25,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                ),),
              ),


            ],
          )
      ),
    );
  }
}
