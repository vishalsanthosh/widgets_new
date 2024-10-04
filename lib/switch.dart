import 'package:flutter/material.dart';

class SwitchKey extends StatefulWidget {
  const SwitchKey({super.key});

  @override
  State<SwitchKey> createState() => _SwitchKeyState();
}

class _SwitchKeyState extends State<SwitchKey> {
  bool _switchValue = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _switchValue? 'Switch is ON':'Switch is OFF',
        
            ),
            Center(
              child: Switch(value: _switchValue, onChanged: (bool newValue){
                setState(() {
                  _switchValue = newValue;
                });
              }),
            )
          ],
        ),
      ),
    );
  }
}