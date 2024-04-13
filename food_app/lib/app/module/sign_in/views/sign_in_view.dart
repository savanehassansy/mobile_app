import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInCOntroller> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4038ff),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Text("logo"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Carline",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Commençons maintenant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      width: 250,
                      child: Text(
                        "inscrivez-vous ou connectez-vous pour découvrir tout ce qui est automibile",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Color(0xff9792ff),
                            letterSpacing: 2),
                      ),
                    ),
                   const SizedBox(
                      height: 20,
                    ),
                    SizedBox(

                        height: 300,
                        child: Image.asset("assets/img/s.png",fit: BoxFit.cover,alignment: Alignment.topLeft,)),
                    const SizedBox(
                      height: 30,
                    ),

                  ],
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[ ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Color(0xff4038ff),
                          minimumSize: const Size(327, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                        ),
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        )

                      ),
                      child: const Text("Se connecter"),
                      onPressed: () {
                        controller.sign_in();
                      },
                    ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff4038ff),
                            onPrimary: Colors.white,
                            minimumSize: const Size(327, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              side: BorderSide(
                                color: Color(0xff9792ff) ,width: 1
                              )
                            ),
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          elevation: 0,


                        ),
                        child: const Text("S'inscrire"),
                        onPressed: () {
                          controller.sign_in();
                        },
                      ),
                    ]),

              ],
            ),

          ),
        ));
  }
}
