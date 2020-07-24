import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // Simulate network request for a username
    // Waits until the code below to finish then caryons
    // If it is not async func it excecutes the code while delay is ongoing
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'yoshi';
    });

    String bio = await Future.delayed(Duration(seconds: 3), (){
      return 'vegan, musician & collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    // code caries even if getData is async
    print('hello world');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
