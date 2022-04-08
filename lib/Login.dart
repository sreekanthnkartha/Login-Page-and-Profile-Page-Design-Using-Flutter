import 'package:flutter/material.dart';
import 'package:task1/Page2.dart';
import 'package:task1/home.dart';
import 'package:task1/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  // Bool _obscuretext=false;
  bool _obscuretext = false;
  IconData id = Icons.visibility_off;
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.color),
              fit: BoxFit.fill,
            )),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Image(
                        image: AssetImage('images/logo1.png'),
                      ),
                      height: 200,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                          style: inputstyle(),
                          // controller: uc.uname,
                          decoration:
                              inputdec("Username", Icons.person_outline)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        obscureText: _obscuretext,
                        style: inputstyle(),
                        // controller: uc.pwd,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(id),
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    _obscuretext = !_obscuretext;
                                    if (_obscuretext)
                                      id = Icons.visibility_off;
                                    else
                                      id = Icons.visibility;
                                  });
                                }),
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.cyan)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black)),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 16, // or whatever
                              color: Colors.grey,
                              height:
                                  2.2, //                                <----- this was the key
                            ),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 20,
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.all(0),
                            isDense: true,
                            hintText: "Password"),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FlatButton(
                      onPressed: () {
                        print("dfd0");
                        Navigator.pop(context);
                        Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Hpage()));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue[600],
                      minWidth: 160,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text("Forgot Password?",
                          style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Doesn't have an account ? | ",
                            style: TextStyle(color: Colors.white)),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 17)),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
    );
  }
}
