import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const id = '/sign_up_page';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  Widget buildUsername(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Username:',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),
        const SizedBox(height: 8),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color:  const Color.fromRGBO(237, 213, 183, 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.brown,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:  const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.person_3_sharp,
                  color: Color.fromRGBO(175, 114, 36, 1),
                ),
                hintText: 'username',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(175, 114, 36, 1)
                )
            ),
          ),

        )
      ],
    );
  }

  Widget emailBuild(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email:',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),
        const SizedBox(height: 8),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color:  const Color.fromRGBO(237, 213, 183, 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.brown,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:  const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email_rounded,
                  color: Color.fromRGBO(175, 114, 36, 1),
                ),
                hintText: 'e-mail',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(175, 114, 36, 1)
                )
            ),
          ),

        )
      ],
    );
  }

  Widget passwordBuild(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password:',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),
        const SizedBox(height: 8),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color:  const Color.fromRGBO(237, 213, 183, 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.brown,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child:  const TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock_open_sharp,
                  color: Color.fromRGBO(175, 114, 36, 1),
                ),
                hintText: 'password',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(175, 114, 36, 1)
                )
            ),
          ),

        )
      ],
    );
  }

  Widget iconsSocial(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Connect with:',
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
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(228, 185, 119, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login_page');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/OnBoarding.png'),
            )
        ),
        child:  SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const  Text(
                "What's up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Please register before logging in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              const SizedBox(height: 50),
              buildUsername(),
              const SizedBox(height: 15),
              emailBuild(),
              const SizedBox(height: 15),
              passwordBuild(),
              const SizedBox(height: 100),
              const Divider(
                thickness: 1.5,
                color: Colors.brown,
                height: 2,
                endIndent: 1.5,
                indent: 1.5,
              ),
              const SizedBox(height: 5),
              iconsSocial()








            ],
          ),
        ),


      ),
    );
  }
}
