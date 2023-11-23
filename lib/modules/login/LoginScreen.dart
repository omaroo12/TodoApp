import 'package:flutter/material.dart';

import '../../shared/comp/components.dart';

class Login_Screen extends StatelessWidget {


var formKey=GlobalKey<FormState>();
  var email_Controller=TextEditingController();
  var password_Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(

        title: const Text('login screen'),

      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  defaultTextFormField(
                    controller: email_Controller,
                    labelText: 'email',
                    prefixIconn: Icons.email,
                    textInput: TextInputType.emailAddress,
                    validate: ( value){
                      if(value.isEmpty||value==null)
                        {
                          return 'email is empty';
                        }
                      else
                        {
                          return null;
                        }


                    }
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: password_Controller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                            Icons.password
                        ),
                      suffixIcon:Icon(
                        Icons.remove_red_eye_outlined,


                      )




                    ),

                  ),
                  SizedBox(
                    height: 15.00,
                  ),
                  MaterialButton(onPressed: (){
                    if (formKey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('email is empty')));
                      }


                  }
                  ,minWidth: double.maxFinite,
                  child: Text('Login',
                 style: TextStyle(
                   color: Colors.white,
                 ), ),
                  color: Colors.blue,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?'

                      ),
                      TextButton(onPressed: (){}, child: Text('Register now'))

                    ],
                  ),




                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
