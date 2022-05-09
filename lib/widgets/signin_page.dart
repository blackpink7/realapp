import 'package:flutter/material.dart';
import 'package:realapp/widgets/homepage.dart';
import 'package:realapp/widgets/sign_up_page.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
static final String id="signin_page";
  @override
  State<SignInPage> createState() => _SigInPageState();
}

class _SigInPageState extends State<SignInPage> {
  TextEditingController emailController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();
  _doSignIn(){
    String email=emailController.text;
    String password=passwordController.text;
    if(email.isNotEmpty&& password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Amazon",style: TextStyle(fontSize: 45,fontFamily: "Billabong"),),
            ),
            Container(
              margin: EdgeInsets.only(left:20,right: 20,top: 15 ),
              height: 48,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[200]),
              child: TextField(
                controller: emailController,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Email",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              margin: EdgeInsets.only(left:20,right: 20,top: 15 ),
              height: 48,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[200]),
              child: TextField(
                controller: passwordController,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: "Password",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              width: double.infinity,
              child: TextButton(
                onPressed: (){

                  _doSignIn();
                },
                child: Text("Sign in",style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(
                  onSurface: Colors.black87,
                  backgroundColor: Colors.red
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 16,color: Colors.grey),),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, SignupPage.id);
                    },
                    child: Text("Sign up",style: TextStyle(color: Colors.black87),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
