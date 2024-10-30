import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';
import 'ForgetPass.dart';
import 'Splash1.dart';
import 'Splash2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash1(), // Set Splash1 as the initial page
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isObscured = true;

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
            left: 25,
            top: 65,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Login()), // Replace with your target page
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
            left: 35,
            top: 118, // Adjust the position as needed
            child: Container(
              child: Text(
                'Selamat Datang',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 35,
            top: 150, // Adjust the position as needed
            child: Container(
              child: Text(
                'Masukkan detail akunmu menggunakan',
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
            left: 35,
            top: 165, // Adjust the position as needed
            child: Container(
              child: Text(
                'akun SALAM ',
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
            left: 40,
            top: 270, // Adjust the position as needed
            child: Container(
              child: Text(
                'Username',
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
            top: 300, // Atur posisi sesuai kebutuhan
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
            top: 380, // Adjust the position as needed
            child: Container(
              child: Text(
                'Password',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),

          // Password Textfield
          // Positioned(
          //   left: 10,
          //   top: 470, // Atur posisi sesuai kebutuhan
          //   child: Container(
          //     margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
          //     width: 360,
          //     height: 50,
          //     child: TextField(
          //       decoration: InputDecoration(
          //         filled: true,
          //         fillColor: Color.fromARGB(
          //             255, 253, 254, 255), // Warna latar belakang box
          //         hintText: 'Password',
          //         hintStyle: GoogleFonts.getFont(
          //           'Poppins',
          //           fontWeight: FontWeight.w400,
          //           fontSize: 16,
          //           color: Color.fromARGB(
          //               255, 16, 15, 15), // Warna teks placeholder
          //         ),
          //         contentPadding: EdgeInsets.symmetric(
          //             vertical: 14, horizontal: 20), // Padding dalam box
          //         border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(
          //               20), // Bentuk box menjadi melengkung
          //         ),
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(20),
          //           borderSide: BorderSide(
          //             color: Color.fromARGB(255, 200, 200,
          //                 200), // Warna border ketika tidak fokus
          //           ),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(20),
          //           borderSide: BorderSide(
          //             color: Color.fromARGB(
          //                 255, 16, 15, 15), // Warna border ketika fokus
          //           ),
          //         ),
          //       ),
          //       style: GoogleFonts.getFont(
          //         'Poppins',
          //         fontWeight: FontWeight.w600,
          //         fontSize: 18,
          //         color: Color.fromARGB(255, 16, 15, 15), // Warna teks input
          //       ),
          //     ),
          //   ),
          // ),

          Positioned(
            left: 10,
            top: 410,
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 360,
              height: 50,
              child: Stack(
                children: [
                  TextField(
                    obscureText:
                        _isObscured, // Gunakan kondisi untuk menyembunyikan atau menampilkan password
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 253, 254, 255),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 16, 15, 15),
                      ),
                      // contentPadding: EdgeInsets.symmetric(
                      //   vertical: 14,
                      //   horizontal: 50,
                      // ),
                      contentPadding: EdgeInsets.fromLTRB(20, 16, 0,
                          16), // Mengatur jarak horizontal dan vertikal untuk placeholder
                      alignLabelWithHint:
                          true, // Menjaga placeholder tetap sejajar vertikal
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
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
                    left: 300,
                    top: 13,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isObscured =
                              !_isObscured; // Ubah kondisi untuk menampilkan atau menyembunyikan password
                        });
                      },
                      child: Image.asset(
                        _isObscured
                            ? 'assets/hide.png'
                            : 'assets/view.png', // Ganti ikon sesuai kondisi
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Forget Password
          Positioned(
            left: 250,
            top: 470, // Adjust the position as needed
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ForgetPass()), // Ganti dengan halaman tujuan
                );
              },
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
          ),

          Positioned(
            left: 5,
            top: 510, // Atur posisi sesuai kebutuhan
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
              width: 360,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splash2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFFFEC868), // Warna latar belakang tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15), // Bentuk tombol menjadi lingkaran
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
