// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  final T selectedValue;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String labelText;
  final String? Function(T?) validator;

  const CustomDropdownFormField({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    required this.labelText,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: selectedValue,
      onChanged: onChanged,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString()),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF151624).withOpacity(0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide(
            color: selectedValue == null
                ? Colors.transparent
                : const Color.fromRGBO(44, 185, 176, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: Color.fromRGBO(44, 185, 176, 1),
          ),
        ),
      ),
      validator: validator,
    );
  }
}

class CustomDropdownFormFieldEditProfile<T> extends StatelessWidget {
  final T selectedValue;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String labelText;
  final String? Function(T?) validator;
  final Icon pIcon;

  const CustomDropdownFormFieldEditProfile({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.onChanged,
    required this.labelText,
    required this.validator,
    required this.pIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: selectedValue,
      onChanged: onChanged,
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(item.toString()),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: labelText,
        icon: pIcon,
      ),
      validator: validator,
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomDropdownFormField<T> extends StatelessWidget {
//   final T selectedValue;
//   final List<T> items;
//   final ValueChanged<T?> onChanged;
//   final String labelText;
//   final String? Function(T?) validator;

//   const CustomDropdownFormField({
//     Key? key,
//     required this.selectedValue,
//     required this.items,
//     required this.onChanged,
//     required this.labelText,
//     required this.validator,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<T>(
//       itemBuilder: (BuildContext context) {
//         return [
//           PopupMenuItem<T>(
//             child: Column(
//               children: [
//                 TextFormField(
//                   onChanged: (query) {
//                     // You can filter items based on the query here.
//                   },
//                   decoration: InputDecoration(
//                     hintText: 'Search',
//                     prefixIcon: Icon(Icons.search),
//                   ),
//                 ),
//                 Divider(),
//               ],
//             ),
//           ),
//           for (T item in items)
//             PopupMenuItem<T>(
//               value: item,
//               child: Text(item.toString()),
//             ),
//         ];
//       },
//       onSelected: (T value) {
//         onChanged(value);
//       },
//       child: InputDecorator(
//         decoration: InputDecoration(
//           labelText: labelText,
//           labelStyle: GoogleFonts.inter(
//             fontSize: 16.0,
//             color: const Color(0xFF151624).withOpacity(0.5),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: BorderSide(
//               color: selectedValue == null
//                   ? Colors.transparent
//                   : const Color.fromRGBO(44, 185, 176, 1),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: const BorderSide(
//               color: Color.fromRGBO(44, 185, 176, 1),
//             ),
//           ),
//         ),
//         child: Text(
//           selectedValue.toString(),
//           style: GoogleFonts.inter(
//             fontSize: 18.0,
//             color: const Color(0xFF151624),
//           ),
//         ),
//       ),
//     );
//   }
// }

