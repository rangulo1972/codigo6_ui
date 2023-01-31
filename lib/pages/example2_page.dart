import 'package:codigo6_ui/widgets/item_category_widget.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Example2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9FBFC),
      body: SafeArea(
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
                                  color: Color(0xff2B333F).withOpacity(0.5)),
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
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //* fin de Category
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
            ],
            //!Columna principal del scaffold
          ),
        ),
      ),
    );
  }
}
