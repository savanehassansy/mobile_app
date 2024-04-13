import 'package:flutter/material.dart';
import 'package:food_app/app/module/sign_in/views/sign_in_view.dart';
import 'package:food_app/common/helpers.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children:[
          Text("data"),
        ])
      ),
    );
  }
}

//ElevatedButton(onPressed: push(context, SignUpView()), child: Text("se conneter"))
