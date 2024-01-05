import 'package:auth_ui_hw_29/pages/login_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  static const id = "/onboarding_page";
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
 Widget btnLogin(){
   return Container(
     width: double.infinity,
     padding: const EdgeInsets.symmetric(vertical: 25),
     child: MaterialButton(
       onPressed: () {
         Navigator.pushNamed(context, '/login_page');
       },
       elevation: 5,
       padding: const EdgeInsets.all(15),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(10)
       ),
       color: const Color.fromRGBO(184, 135, 74, 1),
       child: const Text(
         'LOGIN',
         style: TextStyle(
           fontSize: 18,
           fontWeight: FontWeight.bold,
           color: Colors.black87
         ),
       ),
     ),
   );
 }

 Widget btnSignUp(){
   return Container(
     padding: const EdgeInsets.symmetric(vertical: 25),
     width: double.infinity,
     child: MaterialButton(
       onPressed: () {
         Navigator.pushNamed(context,  '/sign_up_page');
       },
       elevation: 5,
       padding: const EdgeInsets.all(15),
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
       ),
       color: const Color.fromRGBO(184, 135, 74, 1),
       child: const Text(
         'SIGN UP',
         style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.bold,
             color: Colors.black87
         ),
       ),
     ),
   );
 }

 Widget socialIcons(){
   return Row(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
      const Text(
        'Sign in with:',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87
        ),
      ),
       const SizedBox(width: 10),
       IconButton(
           onPressed: (){
             print('Google icon pressed');
           },
           icon: const Icon(Icons.g_mobiledata_rounded),
           iconSize: 46.5,
           color: const Color.fromRGBO(128, 74, 5, 1),
           splashColor: Colors.blue,
       ),
       const SizedBox(width: 10),
       IconButton(
         onPressed: (){
           print('Facebook icon pressed');
         },
         icon: const Icon(Icons.facebook_rounded),
         iconSize: 36.5,
         color: const Color.fromRGBO(128, 74, 5, 1),
         splashColor: Colors.blue,
       ),
       const SizedBox(width: 10),
       IconButton(
         onPressed: (){
           print('Telegram icon pressed');
         },
         icon: const Icon(Icons.telegram_rounded),
         iconSize: 36.5,
         color: const Color.fromRGBO(128, 74, 5, 1),
         splashColor: Colors.blue,
       ),
     ],
   );
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           image: AssetImage('assets/images/OnBoarding.png'),
         ),
       ),
       child:   SingleChildScrollView(
         physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Container(
             height: 150,
             width: 300,
             decoration: const BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/images/begining.png'),
               ),
             ),
           ),
           const SizedBox(height: 200),
           btnLogin(),
           const SizedBox(height: 5),
           btnSignUp(),
           const SizedBox(height: 10),
           const Divider(
             thickness: 1.5,
             color: Colors.brown,
             height: 2,
             endIndent: 1.5,
             indent: 1.5,
           ),
           socialIcons()



           ],
         ),
       ),
     ),
    );
  }
}
