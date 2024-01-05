import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const id = '/login_page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;

  Widget buildEmail(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Username',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),
        const SizedBox(height: 10),
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
                hintText: 'username or email',
                hintStyle: TextStyle(
                    color: Color.fromRGBO(175, 114, 36, 1)
                )
            ),
          ),

        )
      ],
    );
  }

  Widget buildPassword(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),
        const SizedBox(height: 10),
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
                prefixIcon: Icon(Icons.lock_open_rounded,
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

  Widget buildForgotPassBtn(){
    return Container(
      alignment: Alignment.centerRight ,
      child: TextButton(
        onPressed: () {
          print('Forgot password pressed');
        },
        child: const Text('Forgot password',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'
          ),
        ),

      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              activeColor: const Color.fromRGBO(237, 213, 183, 1),
              checkColor: Colors.green,
              value:  isRememberMe,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: MaterialButton(
        onPressed: () {},
          elevation: null,
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
        color: const Color.fromRGBO(184, 135, 74, 1),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/sign_up_page');
      },
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'
              ),
            ),
            TextSpan(
              text: " Sign up",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
              ),
            ),
          ]
        ),
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(228, 185, 119, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/onboarding_page');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

     body:Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/login_bg.png'),
        )
      ),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Text(
              'Hello, welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Enjoy today with your coffee.',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
              ),
            ),

            const SizedBox(height: 50),
            buildEmail(),
            const SizedBox(height: 20),
            buildPassword(),
            buildForgotPassBtn(),
            //buildRememberCb(),
            const SizedBox(height: 60),
            buildLoginBtn(),
            buildSignUpBtn()

          ],
        ),
      ),

      ),
    );
  }
}
