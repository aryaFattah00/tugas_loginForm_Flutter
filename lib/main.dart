import 'package:flutter/material.dart';
import 'package:tugas/alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF1DBC3)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovered = false;
  bool _isPressed = false;
  bool _obscurePassword = true;

  // Controller untuk mengambil inputan dari TextField
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 320,
          height: 400,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Kotak besar (di bawah)
              Positioned(
                top: 50,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF7E8),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 3),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Text(
                        maxLines: 2,
                        'Buat Akun Terlebih Dahulu Untuk Menjelajahi Fitur Lainnya',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13.5,
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Input Nama
                      Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.5),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _nameController,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outlined,
                              color: Colors.black,
                            ),
                            hintText: 'Masukkan Nama Anda',
                            hintStyle: TextStyle(
                              color: Color(0xff848484),
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.w700,
                              height: 3,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Input Email
                      Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.5),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _emailController,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                            hintText: 'Masukkan Email Anda',
                            hintStyle: TextStyle(
                              color: Color(0xff848484),
                              fontSize: 12,
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.w700,
                              height: 3,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Input Password
                      Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.5),
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock_outlined,
                              color: Colors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Colors.black,
                              ),
                            ),
                            hintText: 'Masukkan Password Anda',
                            hintStyle: const TextStyle(
                              color: Color(0xff848484),
                              fontSize: 12,
                              fontFamily: 'PlusJakartaSans',
                              fontWeight: FontWeight.w700,
                              height: 3,
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Tombol Submit
                      Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onEnter: (_) => setState(() => _isHovered = true),
                            onExit: (_) => setState(() => _isHovered = false),
                            child: GestureDetector(
                              onTapDown: (_) =>
                                  setState(() => _isPressed = true),
                              onTapUp: (_) =>
                                  setState(() => _isPressed = false),
                              onTapCancel: () =>
                                  setState(() => _isPressed = false),
                              onTap: () {
                                if (_nameController.text.trim().isEmpty ||
                                    _emailController.text.trim().isEmpty ||
                                    _passwordController.text.trim().isEmpty) {
                                  // Jika ada yang kosong, panggil alert peringatan
                                  showResultAlert(
                                    context,
                                    'Peringatan!', // Nama diganti jadi pesan peringatan
                                    'Data masih ada yang kosong.',
                                    'Mohon isi semua kolom terlebih dahulu.',
                                  );
                                } else {
                                  showResultAlert(
                                    context,
                                    _nameController.text,
                                    _emailController.text,
                                    _passwordController.text,
                                  );
                                }
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.easeInOutCubic,
                                transform: Matrix4.translationValues(
                                  0,
                                  _isPressed ? 1.5 : (_isHovered ? -1.4 : 0),
                                  1,
                                ),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCFF00),
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Submit',
                                      style: TextStyle(
                                        fontFamily: 'PlusJakartaSans',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        height: -0.2,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 21,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: 110,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                      'assets/images/a.jpg',
                      fit: BoxFit.cover,
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
