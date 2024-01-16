import 'package:flutter/material.dart';
import 'package:flutter_application_login/chat_view.dart';
import 'package:flutter_application_login/register_view.dart';
// import 'package:flutter_application_login/register_view.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

bool isShow=true;

var formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


body: Center(
  child: Padding(
    padding:  const EdgeInsets.all(20),
    child: SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Linelogo.png',height: 150,),
            const SizedBox(height: 10,),
            const Text('login to your account',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            const SizedBox(height: 20,),
            
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                  return'Email must not be empty';  
                  }
                  return null;
                },
        
                autocorrect: true,
                enableSuggestions: true,
            
                decoration: InputDecoration(
                  // label: const Text('Email'),
                  hintText: 'Enter your Email',
                  
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  prefixIcon: const Icon(Icons.email,color: Colors.blue,),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                ),
              ),
        
              const SizedBox(height: 15,),
        
              
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                   validator: (value) {
                  if (value!.length<8) {
                  return'Password must be at least 8 characters';  
                  }
                  return null;
                },
                autocorrect: true,
                enableSuggestions: true,
                obscureText: isShow,
                decoration: InputDecoration(
                  // label: const Text('Email'),
                  hintText: 'Enter Your Password',
                  
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  prefixIcon: const Icon(Icons.lock,color: Colors.blue,),
                  suffixIcon:IconButton(onPressed: (){
                    setState(() {
                      isShow=!isShow;
                    });
                  }, 
                  
                  icon: Icon((isShow)
                                     ?Icons.remove_red_eye_rounded
                                     :Icons.visibility_off_rounded
                    
                    ,color:const Color.fromARGB(255, 99, 64, 255)),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                ),
              ),
        
              const SizedBox(height: 15,),
        
              SizedBox(
                width: double.infinity,
                height: 50,
        
        
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    foregroundColor: Colors.white,
                    ),
                  
                  onPressed: (){
                    
                    
                    if (formkey.currentState!.validate()) {
                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Chat())));
                }
                  }, child: const Text('Login'))),
          const SizedBox(height: 15,),
        
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('I hav\'t an account '),
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const Register())));
              }, child: const Text('create one!',style: TextStyle(color: Colors.blue)),)
            ],
          )
          
          ],
        ),
      ),
    ),
  ),
),

    );
  }
}