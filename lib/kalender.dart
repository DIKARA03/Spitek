import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'detail_peminajaman.dart';
import 'home.dart';

class Kalender extends StatefulWidget {
  @override
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
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
              left: 70,
              top: 65,
              child: Container(
                child: Text(
                  'Kalender',
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
              top: 120, // Atur sesuai kebutuhan untuk posisi kalender
              right: 20,
              child: TableCalendar(
                locale: "en_US",
                rowHeight: 45,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 23, // Atur ukuran font
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Atur warna teks
                  ),
                  leftChevronMargin:
                      EdgeInsets.only(left: 5), // Mengatur margin kiri
                  rightChevronMargin:
                      EdgeInsets.only(right: 5), // Mengatur margin kanan
                  leftChevronPadding:
                      EdgeInsets.symmetric(horizontal: 4), // Padding panah kiri
                  rightChevronPadding: EdgeInsets.symmetric(
                      horizontal: 4), // Padding panah kanan
                  // Ikon panah bawaan tanpa mengganti ikon secara eksplisit
                ),
                calendarStyle: CalendarStyle(
                  defaultTextStyle: TextStyle(
                    fontWeight:
                        FontWeight.bold, // Membuat angka tanggal menjadi tebal
                  ),
                  weekendTextStyle: TextStyle(
                    fontWeight: FontWeight
                        .bold, // Membuat angka tanggal akhir pekan menjadi tebal
                    color: Colors
                        .red, // Atur warna angka akhir pekan jika diinginkan
                  ),
                  selectedTextStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF000000),
                    // Warna angka tanggal yang dipilih
                  ),
                  selectedDecoration: BoxDecoration(
                    color: Color(
                        0xFFFEC868), // Warna latar belakang tanggal yang dipilih
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10), // Radius kotak
                  ),
                ),
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
            Positioned(
              left: 30,
              top: 440, // Adjust the position as needed
              child: Container(
                child: Text(
                  'Jadwal Peminjaman',
                  style: GoogleFonts.getFont(
                    'Rubik',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 340,
              top: 440, // Adjust the position as needed
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Dpem()), // Ganti dengan halaman tujuan
                  );
                },
                child: Container(
                  child: Text(
                    'Lihat',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF808080),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),

            // kotak pertama
            Positioned(
              left: 25,
              top: 480,
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

            // kotak ketiga
            Positioned(
              left: 25,
              top: 575,
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

            // kotak kedua
            Positioned(
              left: 25,
              top: 675,
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
                      left: 280,
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
          ],
        ),
      ),
    );
  }
}
