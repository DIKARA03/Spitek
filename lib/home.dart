import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reservasi.dart';
import 'kalender.dart';
import 'ruangan.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Daftar halaman untuk setiap ikon di BottomNavigationBar
  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];

  // Update halaman saat ikon ditekan
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _pages[
            _selectedIndex], // Tampilkan halaman berdasarkan ikon yang dipilih
        bottomNavigationBar: Container(
          height: 100, // Atur tinggi BottomNavigationBar sesuai kebutuhan
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            iconSize: 30, // Atur ukuran ikon sesuai kebutuhan
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history_rounded),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.black, // Warna ikon saat dipilih
            unselectedItemColor: Colors.black, // Warna ikon saat tidak dipilih
          ),
        ),
      ),
    );
  }
}

// Buat halaman untuk setiap ikon navigasi bawah
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned.fill(
          top: 0,
          bottom: screenHeight / 1.36,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFABC270),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
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
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
          ),
        ),
        Positioned(
          left: 3,
          top: 70,
          child: Container(
            margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
            width: 370,
            height: 45,
            child: Stack(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 253, 254, 255),
                    hintText: 'Cari',
                    hintStyle: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 16, 15, 15),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 50),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 200, 200, 200),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 16, 15, 15),
                      ),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color.fromARGB(255, 16, 15, 15),
                  ),
                ),
                Positioned(
                  left: 330,
                  top: 10,
                  child: Image.asset(
                    'assets/search.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Kotak pertama
        Positioned(
          left: 40,
          top: 160,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ruangan()),
              );
            },
            child: Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFFFEC868),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(1, 4),
                    blurRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          left: 51,
          top: 170,
          child: Image.asset(
            'assets/door.png',
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 45,
          top: 230,
          child: Container(
            child: Text(
              'Ruangan',
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),

        // Kotak kedua
        Positioned(
          left: 170,
          top: 160,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kalender()),
              );
            },
            child: Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFFFEC868),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(1, 4),
                    blurRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          left: 185,
          top: 175,
          child: Image.asset(
            'assets/calendar.png',
            width: 35,
            height: 35,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 175,
          top: 230,
          child: Container(
            child: Text(
              'Kalender',
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),

        // Kotak ketiga
        Positioned(
          left: 300,
          top: 160,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reservasi()),
              );
            },
            child: Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: Color(0xFFFEC868),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(1, 4),
                    blurRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Positioned(
          left: 315,
          top: 175,
          child: Image.asset(
            'assets/reservation.png',
            width: 35,
            height: 35,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 305,
          top: 230,
          child: Container(
            child: Text(
              'Reservasi',
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
          left: 30,
          top: 300,
          child: Container(
            child: Text(
              'Jadwal Hari ini-17 Februari 2024',
              style: GoogleFonts.getFont(
                'Rubik',
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),

        Positioned(
          left: 35,
          top: 350,
          child: Container(
            child: Text(
              '17',
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
          left: 37,
          top: 375,
          child: Container(
            child: Text(
              'Feb',
              style: GoogleFonts.getFont(
                'Rubik',
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),

        // kotak pertama
        Positioned(
          left: 110,
          top: 340,
          child: Container(
            width: 290,
            height: 82,
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
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                        color: Color(0x80FEC868),
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
                            left: 18,
                            top: 12,
                            child: Container(
                              child: Text(
                                'Aula',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 28,
                            child: Container(
                              child: Text(
                                'Saintek',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
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
                  left: 85,
                  top: 16, // Adjust the position as needed
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
                  left: 210,
                  top: 33, // Adjust the position as needed
                  child: Container(
                    child: Text(
                      '08.00 - 09.00',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 85,
                  top: 50, // Adjust the position as needed
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
          left: 110,
          top: 435,
          child: Container(
            width: 290,
            height: 82,
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
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                        color: Color(0x80FEC868),
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
                            left: 18,
                            top: 12,
                            child: Container(
                              child: Text(
                                'Aula',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 28,
                            child: Container(
                              child: Text(
                                'Saintek',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
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
                  left: 85,
                  top: 16, // Adjust the position as needed
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
                  left: 210,
                  top: 33, // Adjust the position as needed
                  child: Container(
                    child: Text(
                      '08.00 - 09.00',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 85,
                  top: 50, // Adjust the position as needed
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

        // kotak ketiga
        Positioned(
          left: 110,
          top: 530,
          child: Container(
            width: 290,
            height: 82,
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
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                        color: Color(0x80FEC868),
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
                            left: 18,
                            top: 12,
                            child: Container(
                              child: Text(
                                'Aula',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 28,
                            child: Container(
                              child: Text(
                                'Saintek',
                                style: GoogleFonts.getFont(
                                  'Rubik',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
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
                  left: 85,
                  top: 16, // Adjust the position as needed
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
                  left: 210,
                  top: 33, // Adjust the position as needed
                  child: Container(
                    child: Text(
                      '08.00 - 09.00',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 85,
                  top: 50, // Adjust the position as needed
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
        // // Line
        // Positioned(
        //   left: 25,
        //   top: 300,
        //   child: Container(
        //     width: 350,
        //     height: 1.5,
        //     color: Colors.black,
        //   ),
        // ),
      ],
    );
  }
}

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Kalender',
        style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 25,
            top: 65,
            child: GestureDetector(
              onTap: () {
                // Navigasi ke halaman Home saat gambar ditekan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
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
            left: 150,
            top: 140,
            child: Container(
              width: 140, // Lebar dan tinggi harus sama untuk membuatnya bulat
              height: 140,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                shape: BoxShape.circle, // Mengubah bentuk menjadi bulat
                border: Border.all(
                  color: Colors.black,
                  width: 0.2,
                ),
              ),
              clipBehavior:
                  Clip.hardEdge, // Memastikan gambar mengikuti border radius
              child: Image.asset(
                'assets/dda053863f3b684bb4b60d3390211a88.jpeg', // Ganti dengan path gambar Anda
                fit:
                    BoxFit.cover, // Mengatur gambar agar memenuhi seluruh kotak
              ),
            ),
          ),
          Positioned(
            left: 180,
            top: 290, // Adjust the position as needed
            child: Container(
              child: Text(
                'Tani Surya',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 175,
            top: 310, // Adjust the position as needed
            child: Container(
              child: Text(
                '1217050039',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
