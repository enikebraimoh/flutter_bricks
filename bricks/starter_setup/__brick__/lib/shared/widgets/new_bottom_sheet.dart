// // Show bottom sheet with field details
// import 'package:flutter/material.dart';

// void _showFieldDetailsBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     builder: (context) => DraggableScrollableSheet(
//       initialChildSize: 0.5,
//       minChildSize: 0.3,
//       maxChildSize: 0.9,
//       builder: (context, scrollController) => Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: Column(
//           children: [
//             // Handle bar
//             Container(
//               margin: const EdgeInsets.only(top: 10, bottom: 10),
//               width: 40,
//               height: 4,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(2),
//               ),
//             ),

//             // Field details
//             Expanded(
//               child: SingleChildScrollView(
//                 controller: scrollController,
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         field.name,
//                         style: const TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         'Field ID: ${field.id}',
//                         style: TextStyle(
//                           color: Colors.grey[600],
//                           fontSize: 16,
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       const Divider(),
//                       const SizedBox(height: 16),
//                       const Text(
//                         'Field Details',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       _buildDetailRow(
//                         'Legal Land Description',
//                         field.legalLandDescription ?? 'Not specified',
//                       ),
//                       _buildDetailRow(
//                         'Grower',
//                         field.grower ?? 'Not specified',
//                       ),
//                       _buildDetailRow(
//                         'Planting Date',
//                         field.plantingDate != null
//                             ? '${field.plantingDate!.day}/${field.plantingDate!.month}/${field.plantingDate!.year}'
//                             : 'Not specified',
//                       ),
//                       _buildDetailRow(
//                         'Projected Flower Date',
//                         field.projectedFlowerDate != null
//                             ? '${field.projectedFlowerDate!.day}/${field.projectedFlowerDate!.month}/${field.projectedFlowerDate!.year}'
//                             : 'Not specified',
//                       ),
//                       const SizedBox(height: 16),
//                       const Divider(),
//                       const SizedBox(height: 16),
//                       const Text(
//                         'Field Pins',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       if (field.fieldPins.isEmpty)
//                         const Text('No pins added to this field yet.')
//                       else
//                         ListView.builder(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemCount: field.fieldPins.length,
//                           itemBuilder: (context, index) {
//                             final pin = field.fieldPins[index];
//                             return ListTile(
//                               leading: Icon(
//                                 _getPinIcon(pin.type),
//                                 color: _getPinColor(pin.type),
//                               ),
//                               title: Text('Pin ${index + 1}'),
//                               subtitle: Text('Type: ${pin.type}'),
//                             );
//                           },
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// // Helper method to build detail rows
// Widget _buildDetailRow(String label, String value) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 4.0),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: 120,
//           child: Text(
//             label,
//             style: const TextStyle(
//               fontWeight: FontWeight.w500,
//               color: Colors.grey,
//             ),
//           ),
//         ),
//         Expanded(
//           child: Text(
//             value,
//             style: const TextStyle(fontWeight: FontWeight.w500),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// // Helper method to get pin icon based on type
// IconData _getPinIcon(String pinType) {
//   switch (pinType.toLowerCase()) {
//     case 'shelter':
//       return Icons.home;
//     case 'entry':
//       return Icons.directions;
//     case 'hazard':
//       return Icons.warning;
//     case 'beehive':
//       return Icons.hive;
//     default:
//       return Icons.place;
//   }
// }

// // Helper method to get pin color based on type
// Color _getPinColor(String pinType) {
//   switch (pinType.toLowerCase()) {
//     case 'shelter':
//       return Colors.blue;
//     case 'entry':
//       return Colors.green;
//     case 'hazard':
//       return Colors.red;
//     case 'beehive':
//       return Colors.amber;
//     default:
//       return Colors.grey;
//   }
// }
