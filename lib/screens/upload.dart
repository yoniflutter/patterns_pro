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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.dp),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 200.dp),
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
    );
  }
}
