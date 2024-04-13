import 'package:flutter/material.dart';
import 'package:food_app/app/data/api.dart';
import 'package:food_app/app/data/model.dart';
import 'package:food_app/app/module/home/controllers/home_controller.dart';
import 'package:food_app/app/module/profil/profil_controller.dart';
import 'package:food_app/common/helpers.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../profil/profil_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FutureBuilder(
                future: ApiService().fetchUser(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return Container(
                          child: ListView.builder(
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                User? employ = snapshot.data?[index];
                                print(employ);
                                return ListTile(
                                  leading: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: employ!.avatar != null
                                          ? Image.network(employ.avatar!)
                                          : CircularProgressIndicator()),
                                  title: Text(employ.first_name!),
                                  subtitle: Text(employ.last_name!),
                                  trailing:
                                      const Icon(Icons.arrow_forward_outlined),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfilView(employ.id)));
                                  },
                                );
                              }));
                    } else if (snapshot.hasError) {
                      // Gestion des erreurs ici
                      return Text("Erreur: ${snapshot.error}");
                    } else {
                      // La future a terminé, mais n'a retourné aucune donnée
                      return Text("Aucune donnée disponible");
                    }
                  } else {
                    // La future n'a pas encore terminé
                    return Center(child: Text("Chargement en cours..."));
                  }
                },
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                controller.create();
              },
              backgroundColor: const Color(0xff18A9FB),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
