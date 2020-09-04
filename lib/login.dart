import 'package:film/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  Widget HomePage() {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.blue.withOpacity(0.3), BlendMode.dstATop),
            image: AssetImage('image/2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: 150,
            ),
            new Center(
              child: new Container(
                padding: EdgeInsets.only(top: 1),
                child: Image.asset(
                  "image/5.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Cinema Live",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            new SizedBox(
              height: 10,
            ),
            new Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(24),
              ),
              child: new OutlineButton(
                highlightElevation: 1,
                onPressed: () => gotoLogin(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue,
                highlightedBorderColor: Colors.white,
                child: new Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(24),
              ),
              child: new OutlineButton(
                highlightElevation: 1,
                onPressed: () => gotoSignup(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blue,
                highlightedBorderColor: Colors.white,
                child: new Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget LoginPage() {
    var box = true;

    return new Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            // Form(
            //   key: formState,
            // child:
            Container(
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 40.0,
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Opensens'),
                        ),
                        new SizedBox(
                          height: 30.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        new Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: "Enter your Email",
                              hintStyle: TextStyle(color: Colors.white60),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Please Enter Your Email';
                              }
                            },
                            // onSaved: (val) => _emila = val,
                          ),
                        ),
                        new SizedBox(
                          height: 30.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        new Card(
                            color: Theme.of(context).primaryColor,
                            elevation: 5,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                prefixStyle: TextStyle(color: Colors.white),
                                hintText: "Enter your password",
                                hintStyle: TextStyle(color: Colors.white60),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Enter Your Password';
                                } else if (val.length < 3) {
                                  return 'Your Password need to be atleast 4 char';
                                }
                              },
                              // onSaved: (val) => _password = val,
                            )),
                        new Container(
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            onPressed: () => print("for"),
                            padding: EdgeInsets.only(right: 0.0),
                            child: Text(
                              "Forget password?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200),
                            ),
                            color: Theme.of(context).primaryColor,
                            elevation: 0.0,
                          ),
                        ),
                        new Row(
                          children: <Widget>[
                            new Checkbox(
                              value: box,
                              onChanged: (bool val) {
                                setState(() {
                                  box = val;
                                });
                              },
                              checkColor: Colors.green,
                              activeColor: Colors.white,
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        new SizedBox(
                          height: 3,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                                child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 11, horizontal: 100),
                              color: Colors.white,
                              splashColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                            )),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            Text(
                              "-or-",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // SizedBox(
                            //     width: 10,
                            // ),
                            Text(
                              "Don't hava an Account?",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),

                            new FlatButton(
                                onPressed: () => gotoSignup(),
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // )
          ],
        ));
  }

  Widget SignupPage() {
    return new Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            // Form(
            //   key: formState,
            // child:
            new Container(
              child: new Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 40.0,
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Signup",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Opensens'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.white60),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Please Enter Your Email';
                              }
                            },
                            // onSaved: (val) => _emila = val,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white60),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Enter Your Password';
                              } else if (val.length < 3) {
                                return 'Your Password need to be atleast 4 char';
                              }
                            },
                            // onSaved: (val) => _password = val,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: "Enter your password",
                              hintStyle: TextStyle(color: Colors.white60),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Enter Your Password';
                              } else if (val.length < 3) {
                                return 'Your Password need to be atleast 4 char';
                              }
                            },
                            // onSaved: (val) => _password = val,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          color: Theme.of(context).primaryColor,
                          elevation: 5,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.white,
                              ),
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: " confirmation password",
                              hintStyle: TextStyle(color: Colors.white60),
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Enter Your Password';
                              } else if (val.length < 3) {
                                return 'Your Password need to be atleast 4 char';
                              }
                            },
                            // onSaved: (val) => _password = val,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 11, horizontal: 100),
                              color: Colors.white,
                              splashColor: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              child: RaisedButton(
                                elevation: 0,
                                color: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(120)),
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  print("fecabook");
                                },
                                child: Image.asset(
                                  "image/99.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(0),
                              child: FlatButton(
                                color: Theme.of(context).primaryColor,
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  print("Gmail");
                                },
                                child: Image.asset(
                                  "image/9.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  gotoLogin() {
    //controller_0To1.forward(from: 0.0);
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  gotoSignup() {
    //controller_minus1To0.reverse(from: 0.0);
    _controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }

  PageController _controller =
      new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            LoginPage(),
            HomePage(),
            SignupPage(),
          ],
          scrollDirection: Axis.horizontal,
        ));
  }
}
