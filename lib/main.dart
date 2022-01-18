import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page LOGIN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  var passwordVisible = true;
  var TextController = TextEditingController();
  var NameController = TextEditingController();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var PhoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: TextController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: "Text Filed",
                          labelStyle: TextStyle(fontSize: 30),
                          hintText: "Enter Text",
                          hintStyle: TextStyle(fontSize: 20)),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: NameController,
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(fontSize: 30),
                          hintText: "Enter Name",
                          hintStyle: TextStyle(fontSize: 20),
                          icon: Icon(Icons.person_add_outlined)),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: EmailController,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 30),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(Icons.mark_email_read)),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: PasswordController,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 30),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(fontSize: 20),
                          //  icon: Icon(Icon)
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          )),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'password must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: PhoneController,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixText: "+213  ",
                          labelText: "Phone Number",
                          labelStyle: TextStyle(fontSize: 30),
                          hintText: "Enter Phone Number",
                          hintStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          )),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Phone Number must not be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          // you say catch formKey get me setate deylhom ou dir 3lih validet
                          print(TextController.text);
                          print(NameController.text);
                          print(EmailController.text);
                          print(PasswordController.text);
                          print(PhoneController.text);
                        }
                        // print(TextController.text);
                        // print(NameController.text);
                        // print(EmailController.text);
                        // print(PasswordController.text);
                        // print(PhoneController.text);
                      },
                      child:
                          Text('LOGIN', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account ?  '),
                      TextButton(
                        onPressed: () {},
                        child: Text('Register Now '),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
