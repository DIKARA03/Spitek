import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'R305.dart';

class Ruangan extends StatefulWidget {
  @override
  _RuanganState createState() => _RuanganState();
}

class _RuanganState extends State<Ruangan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(children: [
              Container(
                decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              ),
              Positioned(
                left: 25,
                top: 65,
                child: GestureDetector(
                  onTap: () {
                    // Navigates to a new page when the image is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home()), // Replace with your target page
                    );
                  },
                  child: Image.asset(
                    'assets/back.png', // Ganti dengan path gambar Anda
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 65, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Ruangan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              // kotak pertama
              Positioned(
                left: 25,
                top: 120,
                child: Container(
                  width: 360,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        top: 12,
                        child: Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          clipBehavior: Clip
                              .hardEdge, // Memastikan gambar mengikuti border radius
                          child: Image.asset(
                            'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti 'assets/image.png' dengan path gambar Anda
                            fit: BoxFit
                                .cover, // Mengatur gambar agar memenuhi seluruh kotak
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R. 305',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Lantai 3 Fakultas Sains dan',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Teknologi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 90, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Tidak Tersedia',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 310,
                        top: 90, // Adjust the position as needed
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      R305()), // Ganti dengan halaman tujuan
                            );
                          },
                          child: Container(
                            child: Text(
                              'Lihat',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF808080),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // kotak kedua
              Positioned(
                left: 25,
                top: 260,
                child: Container(
                  width: 360,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        top: 12,
                        child: Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          clipBehavior: Clip
                              .hardEdge, // Memastikan gambar mengikuti border radius
                          child: Image.asset(
                            'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti 'assets/image.png' dengan path gambar Anda
                            fit: BoxFit
                                .cover, // Mengatur gambar agar memenuhi seluruh kotak
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Aula Saintek',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Lantai 3 Fakultas Sains dan',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Teknologi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 90, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Tidak Tersedia',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 310,
                        top: 90, // Adjust the position as needed
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           ForgetPass()), // Ganti dengan halaman tujuan
                            // );
                          },
                          child: Container(
                            child: Text(
                              'Lihat',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF808080),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //kotak ketiga
              Positioned(
                left: 25,
                top: 400,
                child: Container(
                  width: 360,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        top: 12,
                        child: Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          clipBehavior: Clip
                              .hardEdge, // Memastikan gambar mengikuti border radius
                          child: Image.asset(
                            'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti 'assets/image.png' dengan path gambar Anda
                            fit: BoxFit
                                .cover, // Mengatur gambar agar memenuhi seluruh kotak
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R. 301',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Lantai 3 Fakultas Sains dan',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Teknologi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 90, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Tidak Tersedia',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 310,
                        top: 90, // Adjust the position as needed
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           ForgetPass()), // Ganti dengan halaman tujuan
                            // );
                          },
                          child: Container(
                            child: Text(
                              'Lihat',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF808080),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //kotak keempat
              Positioned(
                left: 25,
                top: 540,
                child: Container(
                  width: 360,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        top: 12,
                        child: Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          clipBehavior: Clip
                              .hardEdge, // Memastikan gambar mengikuti border radius
                          child: Image.asset(
                            'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti 'assets/image.png' dengan path gambar Anda
                            fit: BoxFit
                                .cover, // Mengatur gambar agar memenuhi seluruh kotak
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R. 302',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Lantai 3 Fakultas Sains dan',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Teknologi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 90, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Tidak Tersedia',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 310,
                        top: 90, // Adjust the position as needed
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           ForgetPass()), // Ganti dengan halaman tujuan
                            // );
                          },
                          child: Container(
                            child: Text(
                              'Lihat',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF808080),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //kotak kelima
              Positioned(
                left: 25,
                top: 680,
                child: Container(
                  width: 360,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 15,
                        top: 12,
                        child: Container(
                          width: 115,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 0.2,
                            ),
                          ),
                          clipBehavior: Clip
                              .hardEdge, // Memastikan gambar mengikuti border radius
                          child: Image.asset(
                            'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti 'assets/image.png' dengan path gambar Anda
                            fit: BoxFit
                                .cover, // Mengatur gambar agar memenuhi seluruh kotak
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R. 303',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Lantai 3 Fakultas Sains dan',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Teknologi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 90, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Tidak Tersedia',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 310,
                        top: 90, // Adjust the position as needed
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) =>
                            //           ForgetPass()), // Ganti dengan halaman tujuan
                            // );
                          },
                          child: Container(
                            child: Text(
                              'Lihat',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF808080),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
