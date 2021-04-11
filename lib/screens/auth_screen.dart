import 'package:flutter/material.dart';
import 'package:recycle_app_v2/LocalStorage.dart';
import 'package:recycle_app_v2/screens/home_screen.dart';

import 'package:recycle_app_v2/utils/data/NavigationUtility.dart';
import 'package:recycle_app_v2/utils/views/ButtonsUtility.dart';
import 'package:recycle_app_v2/utils/views/TextInputUtility.dart';
import 'package:recycle_app_v2/utils/views/ToastUtility.dart';
import 'package:recycle_app_v2/utils/views/Width_&_Hight_Responsive.dart';

class authScreen extends StatefulWidget {
  @override
  _authScreenState createState() => _authScreenState();
}

class _authScreenState extends State<authScreen> {
  final _controllerEmailLogIn = TextEditingController();
  final _controllerPasswordLogIn = TextEditingController();
  bool _isObscureLogIn = true;
  bool _eyeLogIn = true;
  final _controllerEmailSignUp = TextEditingController();
  final _controllerUserNameSignUp = TextEditingController();
  final _controllerPasswordSignUp = TextEditingController();
  final _controllerConfirmPasswordSigUp = TextEditingController();
  bool _isObscureSigUp1 = true;
  bool _isObscureSigUp2 = true;
  bool _eyeSigUp1 = true;
  bool _eyeSigUp2 = true;
  bool loginMode = false;
  final _formKey = GlobalKey<FormState>();

  void _login(BuildContext ctx) {
    if (_formKey.currentState.validate()) {
      print(UserModel.email);
      print(UserModel.password);
      if (UserModel.email == _controllerEmailLogIn.text &&
          UserModel.password == _controllerPasswordLogIn.text) {
        showSuccessToast(
            context: context, message: 'Welcome ${UserModel.name}');
        navigate(
          context: context,
          destinationScreen: HomeScreen(),
        );
      } else {
        FocusScope.of(context).requestFocus(FocusNode());
        showErrorToast(context: context, message: "Wrong email or password");
      }
    }
  }

  void _signUp(BuildContext ctx) {
    if (_formKey.currentState.validate()) {
      UserModel.name = _controllerUserNameSignUp.text;
      UserModel.email = _controllerEmailSignUp.text;
      UserModel.password = _controllerPasswordSignUp.text;
      FocusScope.of(context).requestFocus(FocusNode());
      showSuccessToast(
          context: context,
          message: "Congratulation, you have been singed up successfully");
      setState(() {
        loginMode = true;
      });
    } else {
      showErrorToast(context: context, message: "Invalid email or password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: loginMode
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF2B6C90),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                "assets/images/Recycle.png",
                              ),
                              radius: 75,
                            ),
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Email Field Login Mode
                            buildCrudTextFormField(
                              inputType: TextInputType.emailAddress,
                              context: context,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              controller: _controllerEmailLogIn,
                              isObscureText: false,
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter Your Email",
                            ),
                            //Space Login Mode
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Password Field Login Mode
                            buildCrudTextFormField(
                              context: context,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              controller: _controllerPasswordLogIn,
                              isObscureText: _isObscureLogIn,
                              suffixIconButton: IconButton(
                                icon: _eyeLogIn
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscureLogIn = !_isObscureLogIn;
                                    _eyeLogIn = !_eyeLogIn;
                                  });
                                },
                              ),
                              hintText: "Enter Your Password",
                            ),
                            //Space Login Mode
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Login Button
                            buildMaterialButton(
                                context: context,
                                color: Colors.deepPurple,
                                text: "Login",
                                width: 200,
                                callback: () {
                                  _login(context);
                                }),
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Don't have an email
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  loginMode = false;
                                });
                              },
                              child: Text("Don't have an email"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF2B6C90),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                "assets/images/Recycle.png",
                              ),
                              radius: 75,
                            ),
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Email Field
                            buildCrudTextFormField(
                              inputType: TextInputType.emailAddress,
                              context: context,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter an email';
                                }
                                return null;
                              },
                              controller: _controllerEmailSignUp,
                              isObscureText: false,
                              prefixIcon: Icon(Icons.email),
                              hintText: "Enter Your Email",
                            ),
                            //Space
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Username Field
                            buildCrudTextFormField(
                              context: context,
                              prefixIcon:
                                  Icon(Icons.supervised_user_circle_outlined),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              controller: _controllerUserNameSignUp,
                              isObscureText: false,
                              hintText: "Enter Your name",
                            ),
                            //Space
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Password Field
                            buildCrudTextFormField(
                              context: context,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value.length < 7)
                                  return 'Your Password Is Short';
                                return null;
                              },
                              prefixIcon: Icon(Icons.lock),
                              controller: _controllerPasswordSignUp,
                              isObscureText: _isObscureSigUp1,
                              suffixIconButton: IconButton(
                                icon: _eyeSigUp1
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscureSigUp1 = !_isObscureSigUp1;
                                    _eyeSigUp1 = !_eyeSigUp1;
                                  });
                                },
                              ),
                              hintText: "Enter Your Password",
                            ),
                            //Space
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Confirm Password Field
                            buildCrudTextFormField(
                              context: context,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (value !=
                                    _controllerPasswordSignUp.text) {
                                  return "The passwords don't match";
                                }
                                return null;
                              },
                              prefixIcon: Icon(Icons.lock),
                              controller: _controllerConfirmPasswordSigUp,
                              isObscureText: _isObscureSigUp2,
                              suffixIconButton: IconButton(
                                icon: _eyeSigUp2
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscureSigUp2 = !_isObscureSigUp2;
                                    _eyeSigUp2 = !_eyeSigUp2;
                                  });
                                },
                              ),
                              hintText: "Confirm Your Password",
                            ),
                            //Space SigUp
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //SignUp button
                            buildMaterialButton(
                                context: context,
                                color: Colors.deepPurple,
                                text: "SignUp",
                                width: 200,
                                callback: () {
                                  _signUp(context);
                                }),
                            // Space SigUp
                            SizedBox(
                              height: hightResponsive(20, context),
                            ),
                            //Have an email
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  loginMode = true;
                                });
                              },
                              child: Text("Already have an email"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
