import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 47, 0, 255),
                centerTitle: true,
                title: const Text(
                  "Login App",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Text(
                      "Bem-vindo!",
                      style: TextStyle(
                          fontSize: 36, 
                          color: Color.fromARGB(255, 47, 0, 255)
                          ),
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10,),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Forgot Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 47, 0, 255),
                    ),
                    ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 47, 0, 255)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                          side: BorderSide(color: Color.fromARGB(255, 47, 0, 255)),
                          ) 
                        )),
                      onPressed: () {}, 
                      child: const Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ) 
                      ),
                      const SizedBox(height: 10,),
                      const Text.rich(
                        TextSpan(
                          text: 'Does not have account? ',
                            children: <TextSpan>[
                            TextSpan(text: 'Create Account',
                            style: TextStyle(
                              fontSize: 16, 
                            color: Color.fromARGB(255, 47, 0, 255)),
                            )
                          ]
                        ),
                      ),
                  ],
                ),
              ),
            )));
  }
}
