import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:pattern_pro/screens/login.dart";
import "package:pattern_pro/screens/upload.dart";
import "package:pattern_pro/widgets/button.dart";
import "package:pattern_pro/widgets/icon_buttons.dart";
import "package:pattern_pro/widgets/text_input.dart";

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(40.dp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 70.dp),
                child: Text(
                  "Signup To Continue",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.dp),
                child: const TextInput(
                  hint: "Email or username",
                  isPassword: false,
                  icon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 10.dp,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 35.dp),
                child: const TextInput(
                  hint: "Password",
                  isPassword: true,
                  icon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.dp),
                child: InkWell(
                  onTap: () => {
                    Navigator.pushReplacement(
                        context,
                        (MaterialPageRoute(
                            builder: (context) => const Upload())))
                  },
                  child: const Button(
                    text: "Signup",
                  ),
                ),
              ),
              Divider(
                height: 10.dp,
              ),
              SizedBox(
                height: 20.dp,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 35.dp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?'),
                    SizedBox(
                      width: 3.dp,
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()))
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.dp),
                child: InkWell(
                  onTap: () => {
                    Navigator.pushReplacement(
                        context,
                        (MaterialPageRoute(
                            builder: (context) => const Upload())))
                  },
                  child: const IconButtons(
                    asset: "assets/icons/google.png",
                    text: "Signup with google",
                  ),
                ),
              ),
              InkWell(
                onTap: () => {
                  Navigator.pushReplacement(context,
                      (MaterialPageRoute(builder: (context) => const Upload())))
                },
                child: const IconButtons(
                  asset: "assets/icons/facebook.png",
                  text: "Signup with facebook",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
