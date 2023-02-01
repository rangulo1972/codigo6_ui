import 'package:codigo6_ui/widgets/item_recomendation2_widget.dart';
import 'package:flutter/material.dart';
import 'package:codigo6_ui/widgets/item_category_widget.dart';
import 'package:codigo6_ui/widgets/item_recomendation_widget.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9FBFC),
      body: Stack(children: [
        SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                //* Para hacer que todos los widgets empiecen al inicio
                crossAxisAlignment: CrossAxisAlignment.start,
                //! Columna principal del scaffold
                children: [
                  //* Inicio Parte superior
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        //!expanded para evitar que cuando se tenga texto largo no afecte al ícono de la campana
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16.0,
                                  color: Color(0xff349DfD).withOpacity(0.5),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(
                                      color:
                                          Color(0xff2B333F).withOpacity(0.5)),
                                ),
                              ],
                            ),
                            const Text(
                              "Purbalingga, Jawa Tengah",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xff2B333F),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Stack(
                          children: [
                            const Icon(
                              Icons.notifications,
                              size: 24,
                              color: Color(0xffc6c6c6),
                            ),
                            Positioned(
                              top: 3,
                              right: 2,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.7,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //* fin parte superior
                  const SizedBox(
                    height: 24.0,
                  ),
                  //* Inicio Parte del buscador
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 12,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Search",
                        suffixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  //* Fin parte del buscador
                  const SizedBox(
                    height: 24.0,
                  ),
                  //* Inicio de Category
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //* fin de Category
                  const SizedBox(
                    height: 14,
                  ),
                  //* inicio de los iconos estilo ListView
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemCategoryWidget(
                          icon: "home",
                          text: "House",
                          isSelected: true,
                        ),
                        ItemCategoryWidget(
                          icon: "city",
                          text: "Hotel",
                          isSelected: false,
                        ),
                        ItemCategoryWidget(
                          icon: "house",
                          text: "Aparment",
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                  //* fin de los iconos estilo ListView
                  const SizedBox(
                    height: 24,
                  ),
                  //* inicio de text Recomendation
                  const Text(
                    "Recomendation",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //* fin de text Recomendation
                  const SizedBox(
                    height: 24,
                  ),
                  //* inicio de las imágenes de los ListView Horizontal
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemRecomendationWidget(),
                        ItemRecomendationWidget(),
                        ItemRecomendationWidget(),
                      ],
                    ),
                  ),
                  //* fin de las imágenes de los ListView Horizontal
                  //*-------------------------------
                  const SizedBox(
                    height: 24,
                  ),
                  //* inicio de text Recomendation
                  const Text(
                    "Recomendation",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //* fin de text Recomendation
                  const SizedBox(
                    height: 24,
                  ),
                  //* fin ---------------------------------
                  ItemRecomendation2Widget(),
                  ItemRecomendation2Widget(),
                  ItemRecomendation2Widget(),
                  ItemRecomendation2Widget(),
                  //! Uso del degradient en una imagen de internet
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.pexels.com/photos/1390403/pexels-photo-1390403.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                      ),
                    ),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ]),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Deserunt non aliqua esse anim non sint esse anim sunt proident velit adipisicing nostrud. Cupidatat nostrud sunt reprehenderit elit fugiat consequat consectetur. Aliquip quis in nostrud est id mollit. Ad in anim deserunt excepteur dolor aute.",
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Information"),
                            )
                          ]),
                    ]),
                  ),

                  const SizedBox(
                    height: 300,
                  ),
                ],
                //!Columna principal del scaffold
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                  Icon(Icons.home),
                ],
              )),
        ),
      ]),
    );
  }
}
