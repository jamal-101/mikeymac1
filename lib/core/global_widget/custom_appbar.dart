// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final Widget? leading;
//   final String? title;
//   final List<Widget>? actions;
//
//   const CustomAppBar({
//     Key? key,
//     this.leading,
//     this.title,
//     this.actions,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white, // Background color
//       elevation: 0, // Remove shadow
//       leading: leading, // Custom leading widget
//       centerTitle: true, // Center title
//       title: Text(
//         title,
//         style: GoogleFonts.manrope( // Use Manrope font
//           fontSize: 18,
//           fontWeight: FontWeight.w600,
//           color: Colors.black,
//         ),
//       ),
//       actions: actions, // Custom actions
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(56.0); // Standard AppBar height
// }
