import 'package:flutter/material.dart';

void showResultAlert(
  BuildContext context,
  String titleOrName,
  String emailOrMessage,
  String passwordOrDetails,
) {
  bool isError = titleOrName == 'Peringatan!';

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent, // Supaya latar belakang transparan
        elevation: 0, // Menghilangkan bayangan bawaan AlertDialog
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: const Color(0xffFFF7E8),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 3, color: Colors.black),
            // Box Shadow kustom berhasil dipasang di sini!
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 3),
                spreadRadius: 0.1,
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isError ? titleOrName : 'Data Registrasi Berhasil',
                style: TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: isError ? Colors.red[700] : Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              isError
                  ? Text(
                      emailOrMessage,
                      style: const TextStyle(
                        fontFamily: 'PlusJakartaSans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama: $titleOrName',
                          style: const TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Email: $emailOrMessage',
                          style: const TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Password: $passwordOrDetails',
                          style: const TextStyle(
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}