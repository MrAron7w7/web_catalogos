import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.kazuma});

  final String kazuma;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 400,
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Expanded(
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(kazuma),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Content
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Stars
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        for (var i = 0; i < 5; i++)
                          Icon(Icons.star, color: Color(0xff2563EB), size: 20),
                      ],
                    ),

                    SizedBox(height: 10),
                    // Title
                    Text(
                      'Zapatillas Urbanas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 5),

                    // description
                    Text(
                      'Zapatillas cómodas para uso diario con suela antideslizante y materiales',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color(0xff949FAF),
                      ),
                    ),

                    Spacer(),

                    // dollars and button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // dollars
                        Row(
                          children: [
                            Text(
                              '\$76.4915',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '\$89.99',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff949FAF),
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Color(0xff949FAF),
                              ),
                            ),
                          ],
                        ),

                        // button

                        // button
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Color(0xff2563EB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Agregar',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
