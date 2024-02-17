import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:pattern_pro/widgets/icon_buttons.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.symmetric(horizontal: 25.dp),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 200.dp, top: 70.dp),
                  child: Text(
                    'Upload Chart',
                    style: TextStyle(fontSize: 24.dp, fontWeight: FontWeight.w700),
                  ),
                ),
                const IconButtons(
                  asset: 'assets/icons/upload.png',
                  text: "Insert Image",
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    height: 100.dp,
                    color: Colors.black,
                  )),
                  SizedBox(
                    width: 5.dp,
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 5.dp,
                  ),
                  Expanded(
                      child: Divider(
                    height: 100.dp,
                    color: Colors.black,
                  )),
                ]),
                const IconButtons(
                  asset: 'assets/icons/scan.png',
                  text: "Scan Now",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
