import 'package:flutter/material.dart';
import 'homepage.dart';
import 'logging .dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Data Manager ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid:false,
      debugShowCheckedModeBanner:false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(

          children: <Widget>[
            SizedBox(
              height:MediaQuery.of(context).size.height*.15,
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Set limit and analayze the data usages.',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,

                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            SizedBox(
              height: 30,

            ),
            Container(
              child: Text("Please let is know who you are!",
                textAlign:TextAlign.center,
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {

                    print(nameController.text);
                    print(passwordController.text);
                 Navigator.push(context,MaterialPageRoute(builder:(BuildContext context )=>HomeScreen()));
                  }
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign out',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                     myHomePage();
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}