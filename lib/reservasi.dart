import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:spitek/home.dart';

class Reservasi extends StatefulWidget {
  @override
  _ReservasiState createState() => _ReservasiState();
}

class _ReservasiState extends State<Reservasi> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    'Pinjam Ruangan',
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
                left: 40,
                top: 120, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Nama Lengkap',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 150, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 338,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(
                          255, 253, 254, 255), // Warna latar belakang box
                      hintText: 'Masukkan Nama Lengkap',
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
                            15), // Bentuk box menjadi melengkung
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:
                          Color.fromARGB(255, 16, 15, 15), // Warna teks input
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 220, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'NIM',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 250, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 338,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(
                          255, 253, 254, 255), // Warna latar belakang box
                      hintText: 'Masukkan NIM',
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
                            15), // Bentuk box menjadi melengkung
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:
                          Color.fromARGB(255, 16, 15, 15), // Warna teks input
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 320, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Organisasi/Lembaga',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 350, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 338,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(
                          255, 253, 254, 255), // Warna latar belakang box
                      hintText: 'Masukkan Organisasi/Lembaga',
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
                            15), // Bentuk box menjadi melengkung
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:
                          Color.fromARGB(255, 16, 15, 15), // Warna teks input
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 420, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Unit Ruangan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 450, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 338,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(
                          255, 253, 254, 255), // Warna latar belakang box
                      hintText: 'Masukkan Unit Ruangan',
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
                            15), // Bentuk box menjadi melengkung
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:
                          Color.fromARGB(255, 16, 15, 15), // Warna teks input
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 520, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Tanggal Pinjam',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              // Tanggal Pinjam
              Positioned(
                left: 15,
                top: 550, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 155,
                  height: 48,
                  child: GestureDetector(
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate:
                            DateTime.now(), // Initial date of the calendar
                        firstDate: DateTime(
                            2000), // Earliest date that can be selected
                        lastDate:
                            DateTime(2100), // Latest date that can be selected
                      );

                      if (selectedDate != null) {
                        setState(() {
                          // Here, you can update the value of the text field with the selected date
                          _dateController.text =
                              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                        });
                      }
                    },
                    child: AbsorbPointer(
                      // This prevents the default keyboard input from appearing
                      child: TextField(
                        controller:
                            _dateController, // Add a controller to the TextField
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 253, 254, 255),
                          hintText: 'Tanggal Pinjam',
                          hintStyle: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(
                                255, 16, 15, 15), // Warna teks placeholder
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 20), // Padding dalam box
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
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
                    ),
                  ),
                ),
              ),

              // Tanggal kembali
              Positioned(
                left: 230,
                top: 520, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Tanggal Kembali',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 550, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 155,
                  height: 48,
                  child: GestureDetector(
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        initialDate:
                            DateTime.now(), // Initial date of the calendar
                        firstDate: DateTime(
                            2000), // Earliest date that can be selected
                        lastDate:
                            DateTime(2100), // Latest date that can be selected
                      );

                      if (selectedDate != null) {
                        setState(() {
                          // Here, you can update the value of the text field with the selected date
                          _dateController.text =
                              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                        });
                      }
                    },
                    child: AbsorbPointer(
                      // This prevents the default keyboard input from appearing
                      child: TextField(
                        controller:
                            _dateController, // Add a controller to the TextField
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 253, 254, 255),
                          hintText: 'Tanggal Kembali',
                          hintStyle: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(
                                255, 16, 15, 15), // Warna teks placeholder
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 20), // Padding dalam box
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
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
                    ),
                  ),
                ),
              ),

              // Surat Permohonan
              Positioned(
                left: 40,
                top: 620, // Adjust the position as needed
                child: Container(
                  child: Text(
                    'Surat Permohonan',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 650, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 338,
                  height: 48,
                  child: GestureDetector(
                    onTap: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();
                      if (result != null) {
                        PlatformFile file = result.files.first;
                        // You can now use `file` for further processing
                        print("Picked file: ${file.name}");
                      }
                    },
                    child: Stack(
                      children: [
                        AbsorbPointer(
                          // Prevents the default keyboard from showing
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 253, 254,
                                  255), // Warna latar belakang box
                              hintText: 'Upload File',
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
                                      50), // Padding dalam box untuk gambar
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Bentuk box melengkung
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1, // Warna border ketika fokus
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
                        ),
                        Positioned(
                          left: 290, // Atur posisi gambar sesuai kebutuhan
                          top: 13, // Atur posisi gambar sesuai kebutuhan
                          child: Image.asset(
                            'assets/upload.png', // Path gambar yang ingin ditampilkan
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // button kirim
              Positioned(
                left: 260,
                top: 715, // Atur posisi sesuai kebutuhan
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 15.8, 2),
                  width: 90,
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
                      'Kirim',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color.fromARGB(
                            255, 16, 15, 15), // Warna teks tombol
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
