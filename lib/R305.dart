import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Ruangan.dart';

class R305 extends StatefulWidget {
  @override
  _R305State createState() => _R305State();
}

class _R305State extends State<R305> {
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
                              Ruangan()), // Replace with your target page
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
                    'Detail Ruangan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 140,
                child: Container(
                  width: 370,
                  height: 206,
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

              //line
              // Positioned(
              //   left: 30, // Atur posisi horizontal garis
              //   top: 370, // Atur posisi vertikal garis
              //   child: Container(
              //     width: 350, // Atur panjang garis
              //     height: 1.5, // Ketebalan garis
              //     color: Colors.black, // Warna garis
              //   ),
              // ),

              Positioned(
                left: 20,
                top: 390, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Deksripsi',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                top: 420, // Adjust the position as needed
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Text(
                    'Ruang Kelas Standar ini dapat menampung hingga 30 siswa dan dirancang untuk sesi pembelajaran formal sperti perkuliahan, pelatihan, atau workshop. Dengan pencahayaan yang baik dan ventilasi yang nyaman, ruang ini mendukung linkgungan belajar yang kondusif.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                top: 555, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Lokasi Ruangan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                top: 585, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Ruang 3.05',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                top: 605, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Lantai 3,Fakultas Sains dan Teknologi',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 20,
                top: 640, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Fasilitas Ruangan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              // kotak pertama
              Positioned(
                left: 20,
                top: 675,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Ruangan()),
                    // );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEC868),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 1,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 680,
                child: Image.asset(
                  'assets/solar_tv-broken.png', // Ganti dengan path gambar Anda
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
              ),

              //kotak kedua
              Positioned(
                left: 95,
                top: 675,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Ruangan()),
                    // );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEC868),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 1,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 102,
                top: 683,
                child: Image.asset(
                  'assets/icon-park-outline_sound-one.png', // Ganti dengan path gambar Anda
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
              ),

              //kotak ketiga
              Positioned(
                left: 180,
                top: 675,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Ruangan()),
                    // );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEC868),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 1,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 188,
                top: 685,
                child: Image.asset(
                  'assets/hugeicons_smart-ac.png', // Ganti dengan path gambar Anda
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
              ),

              //kotak keempat
              Positioned(
                left: 260,
                top: 675,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Ruangan()),
                    // );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEC868),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 1,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 269,
                top: 683,
                child: Image.asset(
                  'assets/material-symbols_wifi.png', // Ganti dengan path gambar Anda
                  width: 33,
                  height: 33,
                  fit: BoxFit.contain,
                ),
              ),

              //kotak kelima
              Positioned(
                left: 340,
                top: 675,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ruangan()),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEC868),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(1, 4),
                          blurRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 1,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 348,
                top: 683,
                child: Image.asset(
                  'assets/solar_chair-broken.png', // Ganti dengan path gambar Anda
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),
              ),

              Positioned(
                left: 1,
                top: 750, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 380,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Home()),
                      // );
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
                      'Reservasi',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color.fromARGB(
                            255, 16, 15, 15), // Warna teks tombol
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}
