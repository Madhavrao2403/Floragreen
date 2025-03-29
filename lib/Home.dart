import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedCategory = "All"; // Track the selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Container with text and icons
          Container(
            width: 400,
            height: 80,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(height: 50), // Added space of height 50
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Flora Green",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add logic for search icon
                          },
                          icon: Icon(Icons.search, size: 24),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add logic for cart icon
                          },
                          icon: Icon(Icons.shopping_cart, size: 24),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF4CAF50), Color(0xFF388E3C)],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'images/photo1.png',
                                width: 350,
                                height: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 24,
                          left: 5,
                          child: Container(
                            width: 56,
                            height: 32,
                            child: Center(
                              child: Text(
                                '20%',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'off',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'on your first',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'purchase',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 350,
                    height: 36,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildCategoryText("All"),
                        buildCategoryText("Outdoor"),
                        buildCategoryText("Indoor"),
                        buildCategoryText("Office Plants"),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 350,
                    height: 290,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          child: Image.asset(
                            'images/plantbuy1.jpg',
                            width: 350,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Red Rose',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Rs. 300',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white, // Adjust the color as needed
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5.0,
              spreadRadius: 2.0,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                // Add logic for your custom icon button
              },
              icon: Image.asset('images/h.png', width: 24, height: 24),
            ),
            SizedBox(width: 8), // Add spacing between icons
            IconButton(
              onPressed: () {
                // Add logic for your custom icon button
              },
              icon: Image.asset('images/s.png', width: 20, height: 20),
            ),
            SizedBox(width: 8), // Add spacing between icons
            IconButton(
              onPressed: () {
                // Add logic for your custom icon button
              },
              icon: Image.asset('images/b.png', width: 20, height: 20),
            ),
            SizedBox(width: 8), // Add spacing between icons
            IconButton(
              onPressed: () {
                // Add logic for your custom icon button
              },
              icon: Image.asset('images/p.png', width: 20, height: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryText(String category) {
    bool isSelected = selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF8BC34A), Color(0xFF4CAF50)],
                )
              : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          category,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
