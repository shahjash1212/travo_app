import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 250,
                decoration: const BoxDecoration(
                  color: Color(0xff7b60db),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(height: 20),
                            Text("HI, Welcome Back!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SafeArea(
                  child: BackButton(
                color: Colors.white,
              )),
            ],
          ),
          Container(
            height: 70,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), color: Colors.grey, blurRadius: 10)
                ]),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), color: Colors.grey, blurRadius: 10)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  children: [
                    Icon(Icons.check_box),
                    Text('Remember me'),
                  ],
                )),
                Text('Forgot Password?'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCard(),
                ),
              ),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff7b60db),
                ),
                child: const Center(
                  child: Text("Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                VerticalDivider(
                  color: Colors.black,
                  thickness: 10,
                ),
                Text('or log in With'),
                VerticalDivider(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 3),
                          color: Colors.grey,
                          blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.google),
                    SizedBox(width: 10),
                    Text('Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3), color: Colors.grey, blurRadius: 10),
                ], borderRadius: BorderRadius.circular(50), color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text('Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              Text(
                'Sign UP',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}
