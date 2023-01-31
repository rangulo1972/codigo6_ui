import 'package:flutter/material.dart';

class ItemRecomendation2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://images.pexels.com/photos/323775/pexels-photo-323775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              height: 76,
              width: 64,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Padanaran House",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      5,
                      (index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          )),
                  Text("5.0"),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.black45,
                    size: 14,
                  ),
                  Text(
                    "Padamara, Jawa Tengah",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.1,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
