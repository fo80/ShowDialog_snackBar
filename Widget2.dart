import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepage/HOME.dart';

class Widget2 extends StatefulWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: AlertDialog(
                          title: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "هل أنت متأكد من أنك تريد تسجيل الخروج؟",
                                style: TextStyle(color: Colors.black),
                              )),
                          actions: [
                            TextButton(
                                onPressed: ()

                                    // async
                                    {
                                  // await FirebaseAuth.instance
                                  //     .signOut();
                                  // Navigator.of(context)
                                  //     .pushReplacementNamed(
                                  //     "loginsick");
                                  final snackBar = SnackBar(elevation: 100,

                                    behavior: SnackBarBehavior.floating,


                                    duration: Duration(seconds: 5),
                                    action: SnackBarAction(
                                      textColor: Colors.black,
                                      label: 'ok',
                                      disabledTextColor: Colors.red,
                                      onPressed: () {},
                                    ),
                                    content: Text(
                                        "تـمّ تـسـجـيـل الـخـروج بـنـجـاح"),
                                    backgroundColor: Colors.green,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                  Navigator.of(context).pop();
                                },
                                child: Text("نعم",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 20))),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("لا",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 20))),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Click!"))),
    );
  }
}
