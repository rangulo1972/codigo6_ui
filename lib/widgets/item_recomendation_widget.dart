import 'package:flutter/material.dart';

class ItemRecomendationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(
        right: 12,
        bottom: 16.0,
        top: 4.0,
      ),
      //color: Colors.blue,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 12,
              offset: const Offset(4, 4)),
        ],
      ),
      constraints: BoxConstraints(maxWidth: width * 0.6),
      child: Column(
        children: [
          //*imagen principal
          Container(
            width: width * 0.6,
            height: height * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          //*fin imagen principal
          const SizedBox(
            height: 14,
          ),
          //* inicio Texto debajo de imagen
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  "MinimaList House",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.amber,
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          //* fin Texto debajo de imagen
          //* inicio de descripción de costo y ubicación
          Row(children: [
            Expanded(
              child: Column(
                //! Para que los hijos del Row empiecen al inicio
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        "\$734",
                        style: TextStyle(
                          color: Color(0xff349DFD),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "\/Month",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.black45,
                        size: 14,
                      ),
                      Expanded(
                        child: Text(
                          "Padamara, Jawa Tengah",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.1,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.bookmark_rounded,
                color: Color(0xff89909A),
              ),
            ),
          ]),
          //* fin de descripción de costo y ubicación
        ],
      ),
    );
  }
}
