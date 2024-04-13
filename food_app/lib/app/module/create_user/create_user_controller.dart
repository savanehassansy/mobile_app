

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateUserController extends GetxController{

  final TextEditingController  emailController = TextEditingController();
  final TextEditingController  passwordController = TextEditingController();

  void createEmploy() async {
    final url = Uri.parse("https://reqres.in/api/register");

    // Convertir l'objet Employ en JSON


    try {
      Map newData = {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      };
      // Effectuer la requête POST
      final response = await http.post(
        url,
        body: jsonEncode(newData),
      );
      print(response.statusCode);

      var data = jsonDecode(response.body);
      print(data);
      // Vérifier le statut de la réponse
      if (response.statusCode == 200) {
       // print(response.body);
        print("Employ créé avec succès!");
        print(response.body);
        Get.snackbar('création réussi','Félicitations');

      } else {
        Get.snackbar('création échoué',data["error"]);
        print(
            "Erreur lors de la création de l'employé. Statut : ${response.statusCode}");

      }
    } catch (e) {
      print("Exeption lors de la requête POST : $e");
      Get.snackbar('Exeption',e.toString());
    }
  }
}