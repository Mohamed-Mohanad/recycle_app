import 'package:flutter/material.dart';
import 'package:recycle_app_v2/LocalStorage.dart';
import 'package:recycle_app_v2/utils/views/ButtonsUtility.dart';
import 'package:recycle_app_v2/utils/views/ImagesUtility.dart';
import 'package:recycle_app_v2/utils/views/TextInputUtility.dart';
import 'package:recycle_app_v2/utils/views/ToastUtility.dart';
import 'package:recycle_app_v2/utils/views/Width_&_Hight_Responsive.dart';

class userScreen extends StatefulWidget {
  @override
  _userScreenState createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  final _controllerUserName = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _update(BuildContext ctx) {
    if (_formKey.currentState.validate()) {
      setState(() {
        UserModel.name = _controllerUserName.text;
      });
      FocusScope.of(context).requestFocus(FocusNode());
      showSuccessToast(
          context: context, message: "Your name has been updated successfully");
    } else {
      FocusScope.of(context).requestFocus(FocusNode());
      showErrorToast(
          context: context,
          message: "Oops, there is a problem try again later..");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: hightResponsive(10, context),
              ),
              Center(
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: icon(
                        context: context, iconData: Icons.person, size: 50)),
              ),
              SizedBox(
                height: hightResponsive(20, context),
              ),
              Center(
                child: Text(
                  UserModel.name,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: hightResponsive(20, context),
              ),
              buildCrudTextFormField(
                context: context,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your new name';
                  }
                  return null;
                },
                controller: _controllerUserName,
                isObscureText: false,
              ),
              SizedBox(
                height: hightResponsive(20, context),
              ),
              buildMaterialButton(
                  context: context,
                  color: Colors.deepPurple,
                  text: "Update",
                  width: 200,
                  callback: () {
                    _update(context);
                  }),
              SizedBox(
                height: hightResponsive(40, context),
              ),
              buildMaterialButton(
                  context: context,
                  color: Colors.deepPurple,
                  text: "LogOut",
                  width: 300,
                  callback: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
