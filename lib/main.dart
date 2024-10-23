import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
          ),
          Positioned(
            left: 60,
            top: 280, // Adjust the position as needed
            child: Container(
              child: Text(
                'Layanan Peminjaman Ruangan',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 330, // Adjust the position as needed
            child: Container(
              child: Text(
                'Masukkan Username',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 360, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 360,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(
                      255, 253, 254, 255), // Warna latar belakang box
                  hintText: 'Username',
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(
                        255, 16, 15, 15), // Warna teks placeholder
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 14, horizontal: 20), // Padding dalam box
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Bentuk box menjadi melengkung
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 200, 200,
                          200), // Warna border ketika tidak fokus
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 16, 15, 15), // Warna border ketika fokus
                    ),
                  ),
                ),
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromARGB(255, 16, 15, 15), // Warna teks input
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 440, // Adjust the position as needed
            child: Container(
              child: Text(
                'Masukkan Password',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 470, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 360,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(
                      255, 253, 254, 255), // Warna latar belakang box
                  hintText: 'Password',
                  hintStyle: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromARGB(
                        255, 16, 15, 15), // Warna teks placeholder
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 14, horizontal: 20), // Padding dalam box
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Bentuk box menjadi melengkung
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 200, 200,
                          200), // Warna border ketika tidak fokus
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color.fromARGB(
                          255, 16, 15, 15), // Warna border ketika fokus
                    ),
                  ),
                ),
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromARGB(255, 16, 15, 15), // Warna teks input
                ),
              ),
            ),
          ),
          Positioned(
            left: 250,
            top: 530, // Adjust the position as needed
            child: Container(
              child: Text(
                'Lupa Kata Sandi ?',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xFF213E60),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 570, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 360,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFFFEC868), // Warna latar belakang tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Bentuk tombol menjadi lingkaran
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 14), // Sesuaikan ukuran vertikal tombol
                ),
                child: Text(
                  'Masuk',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color.fromARGB(255, 16, 15, 15), // Warna teks tombol
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
