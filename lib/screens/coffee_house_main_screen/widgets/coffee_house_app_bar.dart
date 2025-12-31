import 'package:flutter/material.dart';

class CoffeeHouseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoffeeHouseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Բարև, ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'CodifyPix',
                              style: TextStyle(
                                color: Color(0xFFB70005),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '300 Միավոր',
                    style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/codify_pix_logo.png',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover, // or BoxFit.contain
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
