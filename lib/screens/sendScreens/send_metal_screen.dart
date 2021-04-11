import 'package:flutter/material.dart';
import 'package:recycle_app_v2/LocalStorage.dart';
import 'package:recycle_app_v2/screens/sendScreens/time.dart';
import 'package:recycle_app_v2/utils/views/Alert_Message.dart';
import 'package:recycle_app_v2/utils/views/ButtonsUtility.dart';
import 'package:recycle_app_v2/utils/views/ImagesUtility.dart';
import 'package:recycle_app_v2/utils/views/SizedBoxUtility.dart';
import 'package:recycle_app_v2/utils/views/TextInputUtility.dart';
import 'package:recycle_app_v2/utils/views/ToastUtility.dart';

class sendMetal extends StatefulWidget {
  @override
  _sendMetalState createState() => _sendMetalState();
}

class _sendMetalState extends State<sendMetal> {
  final _formKey = GlobalKey<FormState>();

  final _locationController = TextEditingController();

  final _quantityController = TextEditingController();

  Time selectedTime;
  Day selectedDay;

  int metalQuantity;

  void _send(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (_formKey.currentState.validate()) {
      metalQuantity = (int.parse(_quantityController.text));
      FocusScope.of(context).requestFocus(FocusNode());
      showMyDialog(
        context: context,
        title: Text(
          "Confirm",
        ),
        message: Text(
          "We will come on ${selectedDay.name} at ${selectedTime.name} at ${_locationController.text} for ${_quantityController.text} kg of plastic.",
        ),
        metal: true,
        metalQ: metalQuantity,
        paper: false,
        others: false,
        plastic: false,
      );
    } else {
      showErrorToast(context: context, message: "Wrong insertion data");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                assetPngImage(
                    context: context,
                    imageName: "Metal",
                    height: 150,
                    width: 100),
                verticalSizedBox(context: context, size: 20),
                buildCrudTextFormField(
                  context: context,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the location';
                    }
                    return null;
                  },
                  controller: _locationController,
                  isObscureText: false,
                  prefixIcon: Icon(Icons.add_location_alt_rounded),
                  hintText: "Enter the location",
                ),
                verticalSizedBox(context: context, size: 20),
                buildCrudTextFormField(
                  inputType: TextInputType.number,
                  context: context,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter the quantity in kg';
                    }
                    return null;
                  },
                  controller: _quantityController,
                  isObscureText: false,
                  prefixIcon: Icon(Icons.add_box_sharp),
                  hintText: "Enter the quantity in kg",
                ),
                verticalSizedBox(context: context, size: 20),
                DropdownButton<Time>(
                  hint: Text("Select time"),
                  value: selectedTime,
                  onChanged: (Time Value) {
                    setState(() {
                      selectedTime = Value;
                    });
                  },
                  items: times.map((Time user) {
                    return DropdownMenuItem<Time>(
                      value: user,
                      child: Row(
                        children: <Widget>[
                          Text(
                            user.name,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                verticalSizedBox(context: context, size: 20),
                DropdownButton<Day>(
                  hint: Text("Select day"),
                  value: selectedDay,
                  onChanged: (Day Value) {
                    setState(() {
                      selectedDay = Value;
                    });
                  },
                  items: day.map((Day user) {
                    return DropdownMenuItem<Day>(
                      value: user,
                      child: Row(
                        children: <Widget>[
                          Text(
                            user.name,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                verticalSizedBox(context: context, size: 20),
                buildMaterialButton(
                    context: context,
                    color: Colors.deepPurple,
                    text: "Send",
                    width: 200,
                    callback: () {
                      _send(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
