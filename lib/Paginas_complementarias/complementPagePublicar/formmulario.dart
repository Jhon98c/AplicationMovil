/*import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Paginas_complementarias/complementPagePublicar/myMultiSelectionFormField.dart';
import 'package:flutter_app/Paginas_complementarias/complementPagePublicar/mySwitchFormField.dart';
import 'package:flutter_app/Paginas_complementarias/complementPagePublicar/myToggleButtonsFormField.dart';

class MyAppddd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App - Signup Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Signup Form'),
    );
  }
}


enum Interest {
  Sports,
  Tech,
  Games,
  Mentoring,
  Art,
  Travel,
  Music,
  Reading,
  Cooking,
  Blogging
}

class SignupUser {
  String name;
  bool ethicsAgreement;
  Gender gender;
  List<Interest> interests;
  
  
  SignupUser({
    this.ethicsAgreement = false,
    this.name,
    this.gender,
    List<Interest> interests,
  }) {
    this.interests = interests ?? [];
  }

  
  Map<String, dynamic> toJson() => {
        'name': name,
        'ethicsAgreement': ethicsAgreement,
        'gender': gender.toString(),
        'interests': interests.toString(),
      };
}

enum Gender {
  Male,
  Female,
  Other,
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  final GlobalKey _formKey = GlobalKey();
  final _formResult = SignupUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publicar proyecto'),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
                inputFormatters: [LengthLimitingTextInputFormatter(30)],
                initialValue: _formResult.name,
                validator: (userName) {
                  if (userName.isEmpty) {
                    return 'Name is required';
                  }
                  if (userName.length < 3) {
                    return 'Name is too short';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                autofocus: true,
                onSaved: (userName) {
                  _formResult.name = userName;
                },
              ),
              SizedBox(height: 8.0),
              MySwitchFormField(
                  decoration: InputDecoration(
                    labelText: 'Ethics agreement',
                    hintText: null,
                  ),
                  initialValue: _formResult.ethicsAgreement,
                  validator: (userHasAgreedWithEthics) =>
                      userHasAgreedWithEthics == false
                          ? 'Please agree with ethics'
                          : null,
                  onSaved: (userHasAgreedWithEthics) {
                    _formResult.ethicsAgreement = userHasAgreedWithEthics;
                  },
                ),
                SizedBox(height: 8.0),
              MyToggleButtonsFormField<Gender>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                ),
                initialValue: _formResult.gender,
                items: Gender.values,
                itemBuilder: (BuildContext context, Gender genderItem) =>
                    Text(describeEnum(genderItem)),
                selectedItemBuilder: (BuildContext context, Gender genderItem) =>
                    Text(describeEnum(genderItem)),
                validator: (gender) =>
                    gender == null ? 'Gender is required' : null,
                onSaved: (gender) {
                  _formResult.gender = gender;
                },
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              SizedBox(height: 8.0),
              MyMultiSelectionFormField<Interest>(
                decoration: InputDecoration(
                  labelText: 'Interests',
                ),
                hint: Text('Select more interests'),
                isDense: true,
                options: Interest.values,
                titleBuilder: (interest) => Text(describeEnum(interest)),
                chipLabelBuilder: (interest) => Text(describeEnum(interest)),
                initialValues: _formResult.interests,
                validator: (interests) => interests.length < 3
                    ? 'Please select at least 3 interests'
                    : null,
                onSaved: (interests) {
                  _formResult.interests = interests;
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _submitForm,
        tooltip: 'Save',
        child: Icon(
          Icons.check,
          size: 36.0,
        ),
      ),
    );
  }

  void _submitForm() {
    final FormState form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print('New user saved with signup data:\n');
      print(_formResult.toJson());
    }
  }
}
*/
