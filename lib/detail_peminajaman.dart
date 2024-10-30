import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kalender.dart';

class Dpem extends StatefulWidget {
  @override
  _DpemState createState() => _DpemState();
}

class _DpemState extends State<Dpem> {
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
                              Kalender()), // Replace with your target page
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
                    'Detail Jadwal Peminjaman',
                    style: GoogleFonts.getFont(
                      'Rubik',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 110, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Januari',
                    style: GoogleFonts.getFont(
                      'Rubik',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              // kotak pertama
              Positioned(
                left: 25,
                top: 140,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '29',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Jan',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Aula Saintek',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
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
                top: 240,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '29',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Jan',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Aula Saintek',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                left: 30,
                top: 340, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Februari',
                    style: GoogleFonts.getFont(
                      'Rubik',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              // kotak ketiga
              Positioned(
                left: 25,
                top: 370,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '10',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Feb',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R 3.03',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // kotak keempat
              Positioned(
                left: 25,
                top: 465,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '11',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Feb',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Aula Saintek',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // kotak kelima
              Positioned(
                left: 25,
                top: 560,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '11',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Feb',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R 3.02',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // kotak kelima
              Positioned(
                left: 25,
                top: 655,
                child: Container(
                  width: 360,
                  height: 85,
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
                        left: 10,
                        top: 9,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Ruangan()),
                            // );
                          },
                          child: Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: Color(0xFFABC270),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Color(0x40000000),
                              //     offset: Offset(1, 4),
                              //     blurRadius: 0,
                              //   ),
                              // ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19,
                                  top: 10,
                                  child: Container(
                                    child: Text(
                                      '15',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 19,
                                  top: 35,
                                  child: Container(
                                    child: Text(
                                      'Feb',
                                      style: GoogleFonts.getFont(
                                        'Rubik',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 18, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Acara',
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
                        left: 270,
                        top: 38, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'R 3.05',
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
                        left: 100,
                        top: 53, // Adjust the position as needed
                        child: Container(
                          child: Text(
                            'Nama Organisasi',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 0, 0, 0),
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
