import 'package:flutter/material.dart';
import 'package:codigo6_ui/widgets/circle_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Example3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //! para tener referencia respecto a al altura de la pantalla de presentación
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        //* inicio de fondo
        //! creamos otro stack para que  los children no se vean afectados por el text que se pone fuera de ellos
        Stack(
          children: [
            Positioned(
              top: -height * 0.28,
              left: -height * 0.05,
              child: CircleWidget(
                radius: height * 0.2,
                color: const Color(0xff35969D),
              ),
            ),
            Positioned(
              top: -height * 0.30,
              right: -height * 0.17,
              child: CircleWidget(
                radius: height * 0.28,
                color: const Color(0xff8AEC9E),
              ),
            ),
            // Positioned(
            //   top: 20,
            //   right: 40,
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       shape: BoxShape.circle,
            //     ),
            //   ),
            // ),
          ],
        ),
        //* fin de fondo
        //* inicio formulario
        SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.20,
                ),
                Text(
                  "reisup",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff3EA2A8),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "you have goals.",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff2E303E),
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.9,
                  ),
                ),
                Text(
                  "Invest to achive them.",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff2E303E),
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.9,
                  ),
                ),
                SizedBox(
                  height: height * .03,
                ),
                TextField(
                  cursorColor: Color(0xff3EA2A8),
                  decoration: InputDecoration(
                    hintText: "Email*",
                    hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3ea2a8).withOpacity(0.50),
                        width: 2.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3ea2a8).withOpacity(0.50),
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .04,
                ),
                TextField(
                  cursorColor: Color(0xff3EA2A8),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3ea2a8).withOpacity(0.50),
                        width: 2.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3ea2a8).withOpacity(0.50),
                        width: 2.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                //* inicio de button Log in
                SizedBox(
                  width: double.infinity,
                  height: 52.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Log in"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff2e303e),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                //* fin de button Log in
                SizedBox(
                  height: height * 0.04,
                ),
                //* inicio de button Sign up
                SizedBox(
                  width: double.infinity,
                  height: 52.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3EA2A8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                //* fin de button Sign up
                SizedBox(
                  height: height * .04,
                ),
                //* inicio de texto debajo del button Sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot username or password?",
                      style: GoogleFonts.montserrat(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .03,
                ),
                Center(
                  child: Text(
                    "By proceding you also agree to the Terms of Service and Privacy Policy",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: Color(0xff2E303E).withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
        //* fin de formulario
      ]),
    );
  }
}
