

import 'dart:convert';
import 'package:educare/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: const LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double h = SizeConfig.safeBlockVertical;
    double w = SizeConfig.safeBlockHorizontal;
    // var textStyle = TextStyle(fontSize: 20, color: Colors.white);
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset("assets/logo.jpg"),
              width: SizeConfig.safeBlockHorizontal * .3,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * .02,
            ),
            const Text("Lütfen giriş yapınız."),
            SizedBox(
              height: SizeConfig.safeBlockVertical * .09,
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child:  TextFormField(
              decoration: InputDecoration(
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  // icon:  Icon(Icons.email),
                  labelStyle: Theme.of(context).textTheme.bodyText2,
            ),
            ),),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusColor: Colors.amber,
                  // icon:  Icon(Icons.lock),
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  helperMaxLines: 2,

                  errorMaxLines: 2,
                  suffixIcon: IconButton(
                    icon: Icon(
                       Icons.visibility ,
                      color: Colors.orange,
                    ),
                    onPressed: () {
                      setState(() {
                      });
                    },
                  ),
                ),

                textInputAction: TextInputAction.done,
              ),
            ),

            Container(
                width: w,
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          const Text("Beni Hatırla"),
                        ],
                      ),
                    ),
                    Flexible(
                        flex: 6,
                        child: Container(
                          margin: const EdgeInsets.only(
                            right: 30,
                          ),
                          child: TextButton(
                              onPressed: () {

                              },
                              child: const Text(
                                'Şifremi Unuttum?',
                                style: TextStyle(color: Colors.black54),
                              )),
                        )),
                  ],
                )),
            Container(
        decoration: BoxDecoration(
            color:  Colors.amber ,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        width: MediaQuery.of(context).size.width * .8,
        height: SizeConfig.safeBlockVertical * .07,
        child:  ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
          },
          style: Theme.of(context).elevatedButtonTheme.style,
          child: Text(
            'Giriş',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
        ),
      ),
            Container(
              width: w,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: unnecessary_string_escapes
                const Text("Hesabım Yok?"),
                TextButton(
                    onPressed: () {

                    },
                    child: const Text('Kayıt Ol')),
              ],
            ),
            SizedBox(
              height: h * .05,
            ),

          ],
        ),
      ),
    );
  }
}

