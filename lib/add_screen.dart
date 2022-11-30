import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:list_view_demo/main.dart';

class AddScreen extends StatelessWidget {
  AddScreen({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final ageController =  TextEditingController();
  final emailController = TextEditingController();
  final desgnationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Person New Person Details'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                    hintText: 'Enter Age',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: desgnationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Designation',
                    hintText: 'Enter Designation',
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('SUBMIT'),
                onPressed: () {
                  employeeList1.add({
                    'name': nameController.text.toString(),
                    'email': emailController.text.toString(),
                    'age': ageController.text.toString(),
                    'designation': desgnationController.text.toString()
                  });
                  Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => MyHomePage(),
                ),
                (Route<dynamic> route) => false,
              );
                },
              )
            ],
          ),
        ));
  }
}
