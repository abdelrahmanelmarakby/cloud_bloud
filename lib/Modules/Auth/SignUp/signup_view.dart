import 'package:cloud_bloud/Widgets/txt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glass/glass.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1527358043728-909898958b29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=1000&q=100"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * .05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Txt(
                    title: "SignUp",
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                AutofillGroup(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Txt(
                              title: "User information",
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "User name",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  //controller: ,
                                  autofillHints: [AutofillHints.username],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "example"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "Password",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  //controller: ,
                                  autofillHints: [AutofillHints.password],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "example"),
                                  autocorrect: true,
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "email",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  //controller: ,
                                  autofillHints: [AutofillHints.email],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "example@email.com"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Align(
                                child: Txt(
                                  title: "phone number",
                                  size: 14,
                                  color: Colors.white,
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                              Container(
                                child: TextFormField(
                                  //controller: ,
                                  autofillHints: [
                                    AutofillHints.telephoneNumber
                                  ],
                                  decoration: InputDecoration(
                                      alignLabelWithHint: true,
                                      hintText: "example"),
                                  autocorrect: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).asGlass(
                      frosted: true,
                      tintColor: Colors.white,
                      clipBorderRadius: BorderRadius.circular(12),
                      blurX: 80,
                      blurY: 20,
                      tileMode: TileMode.repeated),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Txt(
                            title: "Donating Information",
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Address",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                //controller: ,
                                autofillHints: [AutofillHints.addressCity],
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    hintText: "example"),
                                autocorrect: true,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Age",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                //controller: ,
                                autofillHints: [AutofillHints.birthday],
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    hintText: "example"),
                                autocorrect: true,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              child: Txt(
                                title: "Blood Type",
                                size: 14,
                                color: Colors.white,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Container(
                              child: TextFormField(
                                //controller: ,

                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    hintText: "example"),
                                autocorrect: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ).asGlass(
                    frosted: true,
                    tintColor: Colors.white,
                    clipBorderRadius: BorderRadius.circular(12),
                    blurX: 30,
                    blurY: 30,
                    tileMode: TileMode.mirror),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
