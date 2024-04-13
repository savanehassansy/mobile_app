import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/app/module/profil/profil_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../data/model.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView(this.id, {Key? key}) : super(key: key);
  final int? id;

  @override
  Widget build(BuildContext context) {

    ProfilController controller = Get.put(ProfilController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Profil",
            style: TextStyle(fontFamily: 'poppins', fontSize: 25),
          ),
        ),
        body: FutureBuilder(
            future: controller.getUser(id),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                User elements = snapshot.data;
                return Scaffold(
                  body: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 15)),
                      Image.network(
                        elements.avatar!,
                        width: 200,
                        height: 200,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Text((elements.first_name!)),
                      Text((elements.last_name!)),
                      Text((elements.email!)),
                    ],
                  ),
                );
              }
              else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
