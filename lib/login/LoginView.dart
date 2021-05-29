import 'package:cloud_bloud/SignUp/signup_view.dart';
import 'package:cloud_bloud/Widgets/txt_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .1,
              ),
              Center(
                  child: Hero(
                tag: "logo",
                child: Image.asset(
                  'assets/appLogo.png',
                  height: Get.height * .1,
                ),
              )),
              SizedBox(
                height: Get.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Txt(
                    title: "Welcome 👋",
                    size: 22,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => SignUpView()),
                    child: Txt(
                      title: "SignUp",
                      size: 20,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
              Txt(
                title: "plz sign in to continue",
                size: 14,
                color: Colors.grey,
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              TxtForm(
                title: "Email",
                hint: "Example@email.com",
                icon: Icon(Icons.alternate_email),
                /* onSaved: () {},
                  validator: () {}*/
              ),
              SizedBox(
                height: 16,
              ),
              TxtForm(
                title: "password",
                hint: "********",
                obscure: true,
                icon: Icon(Icons.lock_outlined),
                /* onSaved: () {},
                  validator: () {}*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Txt extends StatelessWidget {
  const Txt({
    Key? key,
    required this.title,
    this.color = Colors.black,
    this.size = 18,
  }) : super(key: key);
  final String title;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.cairo(color: color, fontSize: size),
    );
  }
}
