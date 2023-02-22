import 'package:e_commerce_app/Utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:velocity_x/velocity_x.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changedButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeRouts);
      setState(() {
        changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              (Image.asset(
                "assets/images/Login.png",
                fit: BoxFit.cover,
                height: 300,
              )),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: context.accentColor),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(color: context.accentColor),
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: context.accentColor)),
                          hintText: "Enter User name",
                          hintStyle: TextStyle(color: context.accentColor),
                          labelText: "User name",
                          labelStyle: TextStyle(color: context.accentColor)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      style: TextStyle(color: context.accentColor),
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: context.accentColor)),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(color: context.accentColor),
                          labelText: "Password",
                          labelStyle: TextStyle(color: context.accentColor)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6) {
                          return "Password lenght should be atleast 6";
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    Material(
                      color: context.theme.cardColor,
                      borderRadius:
                          BorderRadius.circular(changedButton ? 50 : 8),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changedButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changedButton
                              ? Icon(
                                  Icons.done,
                                  color: context.accentColor,
                                )
                              : Text("Login",
                                  style: TextStyle(
                                      color: context.accentColor,
                                      fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
