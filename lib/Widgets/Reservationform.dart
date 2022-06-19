import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:woski_garnek/Auth/screens/authentication_screen.dart';

class ReservationForm extends StatefulWidget {
  const ReservationForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReservationFormState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _ReservationFormState extends State<ReservationForm> {
  int _currentValue = 3;
  // bool _validateEmail(String value) {
  //   // If empty value, the isEmail function throw a error.
  //   // So I changed this function with try and catch.
  //   try {
  //     EmailValidator.validate(value, translator: null, label: 'Email');
  //   } catch (e) {
  //     return true;
  //   }
  //
  //   return false;
  // }

  // bool _validatePassword(String value) {
  //   if (value.length < 8) {
  //     return true;
  //   }
  //
  //   return false;
  // }

  // void submit() {
  //   // First validate form.
  //     _formKey.currentState?.save(); // Save our form now.
  //
  //     print('Printing the login data.');
  //     print('Email: ${_data.email}');
  //     print('Password: ${_data.password}');
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: TextFormField(
            style: const TextStyle(
                fontSize: 10,
                fontFamily: 'Malgun',
                fontWeight: FontWeight.normal,
                color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            // Use email input type for emails.
            decoration: const InputDecoration(
                hintText: 'Jan Kowalski', labelText: 'Imię i nazwisko'),
            validator: (value) {
              var validator = Validator(
                validators: [
                  RequiredValidator(),
                  EmailValidator(),
                ],
              );

              return validator.validate(
                context: context,
                label: 'Imię i nazwisko',
                value: value,
              );
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: TextFormField(
            style: const TextStyle(
                fontSize: 10,
                fontFamily: 'Malgun',
                fontWeight: FontWeight.normal,
                color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            // Use email input type for emails.
            decoration: const InputDecoration(
                hintText: 'foo@gmail.com', labelText: 'E-mail'),
            validator: (value) {
              var validator = Validator(
                validators: [
                  RequiredValidator(),
                  EmailValidator(),
                ],
              );

              return validator.validate(
                context: context,
                label: 'Imię i nazwisko',
                value: value,
              );
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: TextFormField(
            style: const TextStyle(
                fontSize: 10,
                fontFamily: 'Malgun',
                fontWeight: FontWeight.normal,
                color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            // Use email input type for emails.
            decoration: const InputDecoration(
                hintText: 'Prosimy o kartę wegetariańską', labelText: 'Życzenia specjalne?'),
            validator: (value) {
              var validator = Validator(
                validators: [
                  RequiredValidator(),
                  EmailValidator(),
                ],
              );

              return validator.validate(
                context: context,
                label: 'Imię i nazwisko',
                value: value,
              );
            },
          ),
        ),
        Text('Ile gości? : $_currentValue'),
        NumberPicker(
          value: _currentValue,
          minValue: 0,
          maxValue: 10,
          onChanged: (value) => setState(() => _currentValue = value),
        ),

        const AuthenticationScreen(),
        //
        // const Spacer(),
      ],
    );
  }
}
