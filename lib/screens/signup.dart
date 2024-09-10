import 'package:bazzar/providers/provider.dart';
import 'package:bazzar/screens/welcomescreen.dart';
import 'package:bazzar/widgets/Textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool Obscuretext = true;
  bool remeberme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  decoration: TextDecoration.underline),
            ),
            Textfield(
              title: "Full Name",
              type: TextInputType.text,
              onchanged: (value) {
                Provider.of<Providermodel>(context, listen: false).username =
                    value;
              },
            ),
            Textfield(
              title: "Email",
              type: TextInputType.emailAddress,
              onchanged: (value) {
                Provider.of<Providermodel>(context, listen: false).email =
                    value;
              },
            ),
            Textfield(
              title: "Mobile Number",
              type: TextInputType.phone,
              onchanged: (value) {
                Provider.of<Providermodel>(context, listen: false)
                    .mobilenumber = int.parse(value);
              },
            ),
            Textfield(
              title: "Image url",
              type: TextInputType.text,
              onchanged: (value) {
                Provider.of<Providermodel>(context, listen: false).Image =
                    value;
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: Obscuretext,
                obscuringCharacter: "*",
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 242, 235, 235),
                  label: Text(
                    "Passowrd",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          Obscuretext = !Obscuretext;
                        });
                      },
                      icon: Obscuretext
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                    value: remeberme,
                    onChanged: (value) {
                      setState(() {
                        remeberme = value!;
                      });
                    }),
                const Text.rich(
                  TextSpan(
                    text: 'I Agree with',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms&Services ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: 'of RowMark',
                      ),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Welcomescreen();
                }));
              },
              color: Colors.black,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
