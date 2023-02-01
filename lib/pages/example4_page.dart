import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Example4Page extends StatelessWidget {
  const Example4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          gradient: LinearGradient(colors: [
            Colors.indigo,
            Colors.red,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    "Burger \nQueen",
                    style: GoogleFonts.fredokaOne(
                      color: Colors.white,
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Good Food",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber.withOpacity(0.5),
                    decorationThickness: 1.8,
                    fontSize: 36,
                  ),
                ),
                Text(
                  "Tasty Food *",
                  style: GoogleFonts.fredokaOne(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber.withOpacity(0.5),
                    decorationThickness: 1.8,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 52.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             fit: BoxFit.cover,
    //             image: NetworkImage(
    //                 "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //   // body: Container(
    //   //   width: double.infinity,
    //   //   decoration: BoxDecoration(
    //   //     color: Colors.amber,
    //   //     image: DecorationImage(
    //   //       fit: BoxFit.cover,
    //   //       image: NetworkImage(
    //   //           "https://images.pexels.com/photos/1639556/pexels-photo-1639556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    //   //     ),
    //   //   ),
    //   //   child: Column(
    //   //     children: [
    //   //       Text("Burger"),
    //   //       TextField(),
    //   //     ],
    //   //   ),
    //   // ),
    // );
  }
}
