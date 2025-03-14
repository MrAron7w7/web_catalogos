import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isHoverd = false;
  String item = "Inicio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //APPBAR
            Row(
              children: [
                Text(
                  "CatalogoWeb",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 45),
                _buildNavItem("Inicio"),
                SizedBox(width: 20),
                _buildNavItem("Catálogo"),
                SizedBox(width: 20),
                _buildNavItem("Contactos"),
                Spacer(),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Buscar tu producto",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0XFF2563EB),
                          width: 3,
                        ),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String Title) {
    return InkWell(
      focusColor: Colors.white,
      hoverColor: Colors.white,
      onTap: () {},
      child: MouseRegion(
        onEnter:
            (event) => setState(() {
              item = Title;
            }),
        onExit:
            (event) => setState(() {
              item = Title;
            }),
        child: Text(
          Title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: item == Title ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
