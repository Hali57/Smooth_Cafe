import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // For form validation
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')),
        backgroundColor: Color(0xFFF5E0C3),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      labelText: 'Email Address',
                      hintText: 'Enter your email',
                    ),
                    validator: (value) {
                      // Email validation (optional)
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _email = val!),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: const Icon(Icons.visibility_off),
                      // Optional: Password visibility toggle
                    ),
                    obscureText: true, // Hide password input
                    validator: (value) {
                      // Password validation (optional)
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _password = val!),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            // Handle login logic here (e.g., call an API)
                            // print('Email: $_email, Password: $_password');
                            Navigator.pushReplacementNamed(context, '/home');
                          }
                        },
                        child: Text('Login',),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
