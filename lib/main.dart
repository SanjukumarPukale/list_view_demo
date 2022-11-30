import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:list_view_demo/add_screen.dart';
import 'package:list_view_demo/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final List employeeList1 = [];

final List<Map> employeeList = [
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
   {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  },
  {
    'name': 'Sanjukumar Pukale',
    'email': 'sanju@abc.com',
    'age': '25',
    'designation': 'App Developer'
  }

];
var json = jsonEncode(employeeList);
List<Employee> emp = EmployeeFromJson(json);

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddScreen(),),);
              },
              child: Icon(Icons.add)),
          ),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ListView Demo App'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: emp.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        emp.removeAt(index);
                      });
                      
                    },
                    child: Icon(Icons.delete)),
                  leading: Text('${index+1}'),
                  title: Text(emp[index].name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(emp[index].email),
                      Text(emp[index].age),
                      Text(emp[index].designation)
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            );
          },
          ),
      )
        
    );
  }
}
