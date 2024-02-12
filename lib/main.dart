import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/data/categories_data.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/settings/popup.dart';
import 'package:meals_app/settings/settings_list.dart';
import 'package:meals_app/settings/styled_list.dart';

void main() {
  runApp(const MyApp());
}

var customTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: customTheme,
      // home: Scaffold(
      //   body: BackgroundContainer(
      //     title: 'Settings',
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(16.0),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children: [
      //               CircleAvatar(
      //                 backgroundColor: Colors.grey,
      //                 maxRadius: 30.0,
      //               ),
      //               const SizedBox(width: 10),
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   StyledText(
      //                     'Priya Shan',
      //                     fontSize: 22,
      //                   ),
      //                   StyledText(
      //                     'Life is what you make it',
      //                     color: Color.fromRGBO(109, 79, 80, 1),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //         SettingsList(
      //           title: 'Account',
      //           subtitle: 'Permissions...',
      //           icon: Icons.person,
      //         ),
      //         SettingsList(
      //           title: 'Notification',
      //           subtitle: 'Vibration...',
      //           icon: Icons.notifications,
      //         ),
      //         SettingsList(
      //           title: 'Storage and Data',
      //           subtitle: 'auto download...',
      //           icon: Icons.data_saver_off_outlined,
      //         ),
      //         // Add more settings list items as needed
      //       ],
      //     ),
      //   ),
      // ),
      home: CategoriesScreen(),
      theme: customTheme,
    );
  }
}

// class BackgroundContainer extends StatelessWidget {
//   const BackgroundContainer({
//     Key? key,
//     required this.title,
//     required this.child,
//   }) : super(key: key);
//
//   final String title;
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     Color color1 = const Color.fromRGBO(185, 33, 124, 1);
//     Color color2 = const Color.fromRGBO(191, 48, 168, 1);
//     Color color4 = const Color.fromRGBO(77, 98, 172, 1);
//
//     return CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           expandedHeight: 150.0,
//           flexibleSpace: FlexibleSpaceBar(
//             title: StyledText(
//               title,
//               color: Colors.white,
//             ),
//             centerTitle: true,
//             background: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [color1, color2, color4],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SliverFillRemaining(
//           hasScrollBody: true,
//           child: Container(
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12.0),
//                 topRight: Radius.circular(12.0),
//               ),
//               color: Color.fromRGBO(255, 255, 255, 0.817),
//             ),
//             child: child,
//           ),
//         ),
//       ],
//     );
//   }
// }
