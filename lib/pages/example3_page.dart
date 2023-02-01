import 'package:flutter/material.dart';
import 'package:codigo6_ui/widgets/circle_widget.dart';

class Example3Page extends StatelessWidget {
  const Example3Page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        //* inicio de fondo
        //! creamos otro stack para que  los children no se vean afectados por el text que se pone fuera de ellos
        Stack(
          children: [
            Positioned(
              top: 20,
              left: 40,
              child: CircleWidget(),
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
