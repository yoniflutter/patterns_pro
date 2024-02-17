import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:pattern_pro/screens/register.dart";
import "package:pattern_pro/screens/upload.dart";
import "package:pattern_pro/widgets/button.dart";
import "package:pattern_pro/widgets/icon_buttons.dart";
import "package:pattern_pro/widgets/text_input.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffD3D3D3), Color(0xff48DBFB)],
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(70.dp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 70.dp),
                  child: Text(
                    "Login To Continue",
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
                      icon: Icon(Icons.lock_outline_rounded)),
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
                      text: "Login",
                    ),
                  ),
                ),
                Divider(
                  height: 10.dp,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20.dp,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 35.dp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      SizedBox(
                        width: 3.dp,
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()))
                        },
                        child: const Text(
                          'Register',
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
                      text: "Continue with google",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.pushReplacement(
                        context,
                        (MaterialPageRoute(
                            builder: (context) => const Upload())))
                  },
                  child: const IconButtons(
                    asset: "assets/icons/facebook.png",
                    text: "Continue with facebook",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
