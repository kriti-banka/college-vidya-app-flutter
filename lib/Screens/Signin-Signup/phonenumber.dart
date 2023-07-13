import 'package:flutter/material.dart';

List<Map<String, dynamic>> countries = [
  // {"name": "United States", "code": "+1", "flag": "assets/flags/us_flag.png"},
  // {"name": "United Kingdom", "code": "+44", "flag": "assets/flags/uk_flag.png"},
  // Add more countries here
];


class PhoneNumberTextField extends StatefulWidget {
  @override
  _PhoneNumberTextFieldState createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  String selectedCountryCode = countries[0]['code']; // Default country code

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _showCountryPicker,
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Image.asset(
              countries[0]['flag'], // Default flag
              width: 32,
              height: 24,
            ),
          ),
        ),
        SizedBox(width: 8.0),
        Text(selectedCountryCode),
        SizedBox(width: 8.0),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Phone Number',
            ),
          ),
        ),
      ],
    );
  }

  void _showCountryPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Country'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: countries.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    countries[index]['flag'],
                    width: 32,
                    height: 24,
                  ),
                  title: Text(countries[index]['name']),
                  onTap: () {
                    setState(() {
                      selectedCountryCode = countries[index]['code'];
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}

