import 'dart:math';
import 'package:flutter/material.dart';

class Example5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double diagonal = sqrt(pow(height, 2) + pow(width, 2));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                //** inicio de Details */
                ListTile(
                  leading: const Icon(Icons.arrow_back_ios),
                  title: Row(children: [
                    SizedBox(width: width * 0.20),
                    const Text("Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                  ]),
                ),
                //**---- fin de Details */
                const SizedBox(height: 10),
                //**----- inicio de imagen central de la casa */
                Container(
                  width: double.infinity,
                  height: diagonal * .30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                ),
                //**----- fin de imagen central de la casa */
                SizedBox(height: diagonal * 0.024),
                //**--- inicio de Minimal House */
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Minimal House",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                ...List.generate(
                                    5,
                                    (index) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 14,
                                        )),
                                const SizedBox(width: 8),
                                const Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ]),
                      Column(children: [
                        Row(
                          children: const [
                            Text(
                              "\$734",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "\/Month",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ]),
                    ]),
                //** ---- fin de Minimal House */
                SizedBox(height: diagonal * 0.02),
                //** --- inicio de descripciones de la casa */
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  //** ---- inicio de primer container */
                  Container(
                    child: Row(children: [
                      Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: const Color(0xffeeeeee),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.king_bed_rounded,
                            color: Color(0xff349eff),
                          )),
                      SizedBox(width: diagonal * 0.02),
                      Column(children: const [
                        Text(
                          "Bedroom",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "5 Rooms",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                      ]),
                    ]),
                  ),
                  //** ---- fin de primer container */
                  SizedBox(width: diagonal * 0.10),
                  //**----- inicio de segundo container */
                  Container(
                    child: Row(children: [
                      Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: const Color(0xffeeeeee),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.bathtub,
                            color: Color(0xff349eff),
                          )),
                      SizedBox(width: diagonal * 0.02),
                      Column(children: const [
                        Text(
                          "Bathroom",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "3 Rooms",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                      ]),
                    ]),
                  ),
                  //**---- fin de segundo container */
                ]),
                //** ---- fin de descripciones de la casa */
                SizedBox(height: diagonal * 0.015),
                //** ----- inicio de Description --- */
                Row(children: const [
                  Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
                //** ----- fin de Description --- */
                SizedBox(height: diagonal * 0.015),
                //** ----- inicio de párrafo --- */
                Row(children: const [
                  Expanded(
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "Est occaecat enim culpa irure nulla elit ullamco magna sunt. Ullamco laborum occaecat sint ad velit eu ad fugiat fugiat. Ipsum tempor reprehenderit nostrud elit ad culpa ut. Id adipisicing id velit ad qui proident ex nisi. Quis incididunt culpa enim elit enim. Pariatur non duis magna eu excepteur proident irure minim commodo non cillum. Enim quis adipisicing ad velit ipsum exercitation elit esse aliqua veniam ipsum.",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ]),
                //** ----- fin de Description --- */
                SizedBox(height: diagonal * 0.025),
                //** --- inicio de Text Galery */
                Row(children: const [
                  Text(
                    "Galery",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
                //**--- fin de Text Galery  */
                SizedBox(height: diagonal * 0.010),
                //** ---- inicio de imagenes de Galery */
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/6032416/pexels-photo-6032416.jpeg")),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg")),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg")),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      Container(
                        height: 74,
                        width: 74,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/1454806/pexels-photo-1454806.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ]),
                //** ---- fin de imagenes de Galery */
                SizedBox(height: diagonal * 0.020),
                //**---- inicio de button */
                SizedBox(
                    width: double.infinity,
                    height: 52.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff349dfd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    )),
                //** ---- fin de button */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
