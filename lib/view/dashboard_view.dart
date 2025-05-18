import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // softer background
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Circle with denim & devilish colors
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey[900], // dark denim-ish background
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 12,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.indigo[700], // denim blue
                      ),
                    ),
                    Positioned(
                      right: 12,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red[700], // devil red accent
                      ),
                    ),
                    Positioned(
                      top: 5,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.black87,
                        child: Icon(
                          Icons
                              .local_fire_department, // fire icon for devil theme
                          color: Colors.red[400],
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 36),

              Text(
                'Denim & Devils',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[900],
                  letterSpacing: 1.2,
                ),
              ),

              SizedBox(height: 10),

              Text(
                'Wear your attitude.\nStay bold with Denim & Devils.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey[700],
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 44),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigation handle
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    elevation: 5,
                    shadowColor: Colors.redAccent,
                  ),
                  child: Text(
                    'Explore Collection',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
