import 'dart:math';
import 'package:flutter/material.dart';

class Home6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double diagonal = sqrt(pow(height, 2) + pow(width, 2));
    return Scaffold(
      floatingActionButton: _bottomCustoms(),
      body: Container(
        //** inicio del fondo de pantalla */
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://images.pexels.com/photos/2343469/pexels-photo-2343469.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: diagonal * 0.055,
              left: diagonal * 0.040,
              bottom: diagonal * 0.065),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //** ---- inicio del icono superior */
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: diagonal * 0.040,
                    width: diagonal * 0.040,
                    decoration: BoxDecoration(
                      color: Color(0xffececec),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.arrow_back_ios),
                  )
                ],
              ),
              //** ---- fin del icono superior */
              //**----------------------------- */
              //** ---- inicio del icono inferior */
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff919193),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //** ---- fin del icono inferior */
            ],
          ),
        ),
      ),
    );
  }

  //**---- creamos la relación de botones  */
  Widget _bottomCustoms() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffececec),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.bathtub,
            color: Color(0xff349eff),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffececec),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.king_bed_rounded,
            color: Color(0xff349eff),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: const Color(0xffececec),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.chair,
            color: Color(0xff349eff),
          ),
        ),
      ],
    );
  }
}
