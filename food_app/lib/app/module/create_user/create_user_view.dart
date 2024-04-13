
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/app/module/create_user/create_user_controller.dart';
import 'package:get/get.dart';

class CreateUserView extends GetView<CreateUserController>{
  const CreateUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("créer")
        ,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 20,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Entrer un nom'),
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Entrer le salaire'),
                    controller: controller.passwordController,
                  ),


                  ElevatedButton(onPressed: controller.createEmploy, child: Text("Enregistrer"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}