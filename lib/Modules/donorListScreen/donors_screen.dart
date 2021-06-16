import 'package:cloud_bloud/Modules/donorListScreen/donors_controller.dart';
import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts.dart';
import '../donorListScreen/donors_model.dart';

class DonorsScreen extends GetView<DonorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: controller.getDonors(selectedBloodType, selectedLocation),
        builder: (BuildContext context, AsyncSnapshot<List<Donors>> snapshot) {
          List<Donors>? data = snapshot.data;
          print(data);
          if (snapshot.hasData)
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      data!.length,
                      (index) => Container(
                            width: Get.width,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Txt(
                                        title: "Name : " + data[index].name,
                                        isBold: true,
                                        size: 18,
                                        color: accentColor,
                                      ),
                                      GestureDetector(
                                        onTap: () => controller
                                            .callNumber(data[index].phone),
                                        child: Txt(
                                          title: "phone : " + data[index].phone,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => controller
                                            .launchMailto(data[index].email),
                                        child: Txt(
                                            title:
                                                "Email : " + data[index].email),
                                      ),
                                      Txt(
                                          title: "location : " +
                                              data[index].address),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            );
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}
