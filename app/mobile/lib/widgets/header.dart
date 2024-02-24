import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "👋 Hi Tai Tran,",
                style: GoogleFonts.inter(
                  color: Colors.white.withOpacity(0.75),
                  fontSize: 16,
                ),
              ),
              Text(
                "Good Evening",
                style: GoogleFonts.inter(
                  color: Colors.white.withOpacity(0.75),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox.shrink()),
          IconButton(
            onPressed: () {
              print("notification");
            },
            icon: Icon(Icons.notifications_active_sharp, size: 30),
          ),
          SizedBox(width: 16),
          InkWell(
            onTap: () {
              print("Xin chao");
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://scontent.fdad3-4.fna.fbcdn.net/v/t39.30808-6/373307243_1345793939340541_427509642796239786_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeGCX-sAzThIQ1rc7CYrDDfFNAr4S2sDswA0CvhLawOzAOgXeY2IxeAka1ZFFeMazkDKQv08hkL6Me2HdzaGGZQT&_nc_ohc=BM8NEvgwGM4AX9g9zUK&_nc_ht=scontent.fdad3-4.fna&oh=00_AfAmLqgXaB0NI1Q8_uBFP_pVryqhGgDch4cd_zeM_yDdnQ&oe=65DF4A42"),
            ),
          ),
        ],
      ),
    );
  }
}
