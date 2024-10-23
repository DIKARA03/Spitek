import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reservasi.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenHeight =
                constraints.maxHeight; // Mendapatkan tinggi layar

            return Stack(
              children: [
                Positioned.fill(
                  top: 0,
                  bottom: screenHeight / 1.2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFABC270),
                      borderRadius: BorderRadius.only(
                        bottomRight:
                            Radius.circular(20), // Atur radius sesuai kebutuhan
                        bottomLeft:
                            Radius.circular(20), // Atur radius sesuai kebutuhan
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: screenHeight / 1,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 253, 254),
                      borderRadius: BorderRadius.only(
                        topRight:
                            Radius.circular(30), // Atur radius sesuai kebutuhan
                        topLeft:
                            Radius.circular(30), // Atur radius sesuai kebutuhan
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 335,
                  top: 65,
                  child: Image.asset(
                    'assets/user (1).png', // Ganti dengan path gambar Anda
                    width: 40,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 60, // Atur posisi sesuai kebutuhan
                  child: Container(
                    margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                    width: 290,
                    height: 50,
                    child: Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(
                                255, 253, 254, 255), // Warna latar belakang box
                            hintText: 'Cari',
                            hintStyle: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromARGB(
                                  255, 16, 15, 15), // Warna teks placeholder
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 14,
                                horizontal:
                                    50), // Padding dalam box, diatur agar ada ruang untuk gambar
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
                                color: Color.fromARGB(255, 16, 15,
                                    15), // Warna border ketika fokus
                              ),
                            ),
                          ),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color.fromARGB(
                                255, 16, 15, 15), // Warna teks input
                          ),
                        ),
                        Positioned(
                          left: 250, // Atur posisi gambar sesuai kebutuhan
                          top: 13, // Atur posisi gambar sesuai kebutuhan
                          child: Image.asset(
                            'assets/search.png', // Path gambar yang ingin ditampilkan
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // kotak pertama
                Positioned(
                  left: 25,
                  top: 160,
                  child: Container(
                    width: 105,
                    height: 101,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        // Gambar di dalam container yang bisa dipindahkan
                        Positioned(
                          left: 20,
                          top: 15,
                          child: Image.asset(
                            'assets/exit.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 75, // Adjust the position as needed
                          child: Container(
                            child: Text(
                              'Ruangan',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
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
                  left: 150,
                  top: 160,
                  child: Container(
                    width: 105,
                    height: 101,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        // Gambar di dalam container yang bisa dipindahkan
                        Positioned(
                          left: 20,
                          top: 15,
                          child: Image.asset(
                            'assets/exit.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 75, // Adjust the position as needed
                          child: Container(
                            child: Text(
                              'Kalender',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // kotak ketiga
                Positioned(
                  left: 275,
                  top: 160,
                  child: GestureDetector(
                    onTap: () {
                      // Handle the tap event here, e.g., navigate to another page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Reservasi()), // Change this to the desired page
                      );
                    },
                    child: Container(
                      width: 105,
                      height: 101,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(1, 4),
                            blurRadius: 0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          // Gambar di dalam container yang bisa dipindahkan
                          Positioned(
                            left: 20,
                            top: 15,
                            child: Image.asset(
                              'assets/exit.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                              width: 65,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 23,
                            top: 75, // Adjust the position as needed
                            child: Container(
                              child: Text(
                                'Reservasi',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
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

                // line
                Positioned(
                  left: 25, // Atur posisi horizontal garis
                  top: 300, // Atur posisi vertikal garis
                  child: Container(
                    width: 350, // Atur panjang garis
                    height: 1.5, // Ketebalan garis
                    color: Colors.black, // Warna garis
                  ),
                ),

                // kotak keempat
                Positioned(
                  left: 25,
                  top: 323,
                  child: Container(
                    width: 349,
                    height: 101,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    // child: Stack(
                    //   children: <Widget>[
                    //     // Gambar di dalam container yang bisa dipindahkan
                    //     Positioned(
                    //       left: 20,
                    //       top: 15,
                    //       child: Image.asset(
                    //         'assets/exit.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                    //         width: 65,
                    //         height: 65,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     Positioned(
                    //       left: 23,
                    //       top: 75, // Adjust the position as needed
                    //       child: Container(
                    //         child: Text(
                    //           'Reservasi',
                    //           style: GoogleFonts.getFont(
                    //             'Inter',
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 13,
                    //             color: Color.fromARGB(255, 0, 0, 0),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),

                // kotak kelima
                Positioned(
                  left: 25,
                  top: 440,
                  child: Container(
                    width: 349,
                    height: 101,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    // child: Stack(
                    //   children: <Widget>[
                    //     // Gambar di dalam container yang bisa dipindahkan
                    //     Positioned(
                    //       left: 20,
                    //       top: 15,
                    //       child: Image.asset(
                    //         'assets/exit.png', // Pastikan path gambar sesuai dengan lokasi gambar Anda
                    //         width: 65,
                    //         height: 65,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     Positioned(
                    //       left: 23,
                    //       top: 75, // Adjust the position as needed
                    //       child: Container(
                    //         child: Text(
                    //           'Reservasi',
                    //           style: GoogleFonts.getFont(
                    //             'Inter',
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 13,
                    //             color: Color.fromARGB(255, 0, 0, 0),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
