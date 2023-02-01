import 'package:flutter/material.dart';
import 'package:codigo6_ui/widgets/circle_widget.dart';

class Example3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //! para tener referencia respecto a al altura de la pantalla de presentación
    double height = MediaQuery.of(context).size.height;
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
        Text("Hola mundo"),
        //* fin de formulario
      ]),
    );
  }
}
