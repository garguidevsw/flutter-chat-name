import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const CustomButton({
    Key key,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: this.onPress,
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              this.text,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
