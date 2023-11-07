import 'package:bestappever/pages/homepage.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:SingleChildScrollView(
          child:SizedBox(
            height:MediaQuery.of(context).size.height
            ,child:Column(
              children: [
                SizedBox(
                  height:38,
                ),
                // Spacer(),
                Text("Hey There,Welcome Back",style: TextStyle(
                  fontSize: 25.2,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height:38,
                ),
                // Spacer(),
                Text("Log in to continue",style:TextStyle(
                  fontWeight:FontWeight.bold,
                  fontFamily: 'Urbanist',
                  color: Colors.orange,
                )),
                SizedBox(
                  height:38,
                ),
                // Spacer(),
                Padding(
                  padding:EdgeInsets.only(left:15,right:15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                          ,border:Border.all()
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Username',
                      border:OutlineInputBorder()
                      )
                          ,
                    ),
                  ),
                ),
                SizedBox(
                  height:28,
                ),

                Padding(
                  padding:EdgeInsets.only(left:15,right:15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)
                        ,border:Border.all()
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Password',
                          border:OutlineInputBorder()
                      )
                      ,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed:(){
                    print('forgot password is Clicked');
                  }, child: Text('Forgot Password?')),
                ),
                ElevatedButton(onPressed: (){
                  //
                  Navigator.of(context).pushReplacementNamed('/mainpage');
                }, child: Text("Log in")),
                Text('Or sign in with'),
                SizedBox(
                  height:10,
                ),
                // Spacer(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style:TextButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.0)
                        ),
                          onPressed: (){
                            print("Facebook icon is clicked");
                          }, child:Image.asset('assets/images/facebook.png',width:22,height:22,),

                      ),

                      TextButton(
                          style:TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.0)
                          ),onPressed: (){
                        print("google icon is clicked");
                      }, child: Image.asset('assets/images/search.png',width:22,height:22)
                      ),
                    ],
                  ),
                ),
                TextButton(onPressed: (){
                  print("dont have an account button clicked");
                }, child:Text('Don\'t have an account ? Sign up',style:TextStyle(decoration: TextDecoration.underline)))
              ]
          ),
        )
    ));
    throw UnimplementedError();
  }

}