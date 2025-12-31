import 'package:coffee_house/screens/scanner_screen.dart';
import 'package:flutter/material.dart';

class ScanActionButton extends StatelessWidget {
  const ScanActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 65,
      child: FloatingActionButton(
        backgroundColor: const Color(0xFFDE111F),
        elevation: 4,
        shape: const CircleBorder(),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ScannerScreen()),
          );

          if (result != null) {
            print('Scanned: $result');
          }
        },
        child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 35),
      ),
    );
  }
}
