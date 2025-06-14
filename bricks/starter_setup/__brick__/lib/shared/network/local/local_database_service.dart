// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/foundation.dart';

// import '../../../models/event_stats.dart';
// import '../../../models/user_event.dart';
// import '../../models/isar_event_stats.dart';
// import '../../models/isar_user_event.dart';
// import '../../../models/mappers/guest_mapper.dart';
// // import '../../models/isar_user_event.dart';
// // import '../../models/isar_user_event.g.dart';

// class LocalDatabaseService {
//   late Isar isar;

//   // Initialize the database
//   Future<void> init() async {
//     final dir = await getApplicationDocumentsDirectory();
//     isar = await Isar.open(
//       [IsarUserEventSchema, IsarEventStatsSchema, IsarGuestSchema],
//       directory: dir.path,
//     );
//   }

//   // Save a list of UserEvents
//   Future<void> saveUserEvents(List<UserEvent> events) async {
//     await isar.writeTxn(() async {
//       await isar.isarUserEvents.clear(); // Clear existing data
//       await isar.isarUserEvents
//           .putAll(events.map((e) => e.toIsarUserEvent()).toList());
//     });
//   }

//   // Save a single UserEvent
//   Future<void> saveUserEvent(UserEvent event) async {
//     await isar.writeTxn(() async {
//       await isar.isarUserEvents.put(event.toIsarUserEvent());
//     });
//   }

//   // Retrieve all UserEvents
//   Future<List<UserEvent>> getUserEvents() async {
//     final isarEvents = await isar.isarUserEvents.where().findAll();
//     return isarEvents.map((e) => e.toUserEvent()).toList();
//   }

//   // Save EventStats linked to UserEvent
//   Future<void> saveEventStats(String eventCode, EventStats stats) async {
//     await isar.writeTxn(() async {
//       // Find the corresponding UserEvent
//       final userEvent =
//           await isar.isarUserEvents.filter().codeEqualTo(eventCode).findFirst();

//       if (userEvent != null) {
//         // Convert to Isar model and link it
//         final isarStats = stats.toIsarEventStats();
//         await isar.isarEventStats.put(isarStats);
//         userEvent.eventStats.value = isarStats;
//         await isar.isarUserEvents.put(userEvent);
//         await userEvent.eventStats.save();
//       }
//     });
//   }

//   // Retrieve EventStats by eventCode using the link
//   Future<EventStats?> getEventStats(String eventCode) async {
//     // Find the corresponding UserEvent
//     final userEvent =
//         await isar.isarUserEvents.filter().codeEqualTo(eventCode).findFirst();

//     if (userEvent != null) {
//       // Load the linked EventStats
//       await userEvent.eventStats.load();
//       return userEvent.eventStats.value?.toEventStats();
//     }
//     return null;
//   }

//   // Update specific EventStats fields
//   Future<void> updateEventStats(String eventCode,
//       {int? totalCheckedInAttendees}) async {
//     await isar.writeTxn(() async {
//       final userEvent =
//           await isar.isarUserEvents.filter().codeEqualTo(eventCode).findFirst();

//       if (userEvent != null) {
//         await userEvent.eventStats.load();
//         final stats = userEvent.eventStats.value;

//         if (stats != null) {
//           if (totalCheckedInAttendees != null) {
//             stats.totalCheckedInAttendees = totalCheckedInAttendees;
//           }
//           await isar.isarEventStats.put(stats);
//         }
//       }
//     });
//   }

//   // Add this new method to clear all data
//   Future<void> clearDatabase() async {
//     await isar.writeTxn(() async {
//       debugPrint('Clearing local database...');
//       // Clear all collections
//       await isar.isarUserEvents.clear();
//       await isar.isarEventStats.clear();
//       await isar.isarGuests.clear();
//       debugPrint('Local database cleared successfully');
//     });
//   }

//   // Save guests for an event
//   Future<void> saveEventGuests(String eventCode, List<Guest> guests) async {
//     await isar.writeTxn(() async {
//       final userEvent =
//           await isar.isarUserEvents.filter().codeEqualTo(eventCode).findFirst();
//       if (userEvent != null) {
//         // First, convert and save all guests (including related tickets) to get their IDs
//         for (final guest in guests) {
//           final isarGuest = guest.toIsarGuest();
//           await isar.isarGuests.put(isarGuest);

//           // Handle related tickets if they exist
//           if (guest.relatedTickets != null) {
//             // Convert and save related tickets
//             final relatedIsarGuests = guest.relatedTickets!
//                 .map((related) => related.toIsarGuest())
//                 .toList();

//             // Save related tickets first
//             await isar.isarGuests.putAll(relatedIsarGuests);

//             // Clear existing links and add new ones
//             // await isarGuest.relatedTickets.clear();
//             isarGuest.relatedTickets.addAll(relatedIsarGuests);
//             await isarGuest.relatedTickets.save();
//           }

//           // Add guest to event's guest list
//           userEvent.guests.add(isarGuest);
//         }

//         // Save the event's guest list links
//         await userEvent.guests.save();
//       }
//     });
//   }

//   // Get guests for an event
//   Future<List<Guest>> getEventGuests(String eventCode) async {
//     final userEvent =
//         await isar.isarUserEvents.filter().codeEqualTo(eventCode).findFirst();
//     if (userEvent == null) return [];

//     await userEvent.guests.load();
//     return userEvent.guests.map((isarGuest) {
//       isarGuest.relatedTickets.load();
//       return isarGuest.toGuest(eventName: userEvent.name);
//     }).toList();
//   }

//   // Update guest check-in status
//   Future<Guest?> updateGuestCheckInStatus(
//       String attendeeCode, bool checkedIn) async {
//     return await isar.writeTxn(() async {
//       final isarGuest = await isar.isarGuests
//           .filter()
//           .attendeeCodeEqualTo(attendeeCode)
//           .findFirst();
//       if (isarGuest != null) {
//         isarGuest.checkedIn = checkedIn;
//         isarGuest.checkedInAt = checkedIn ? DateTime.now() : null;
//         await isar.isarGuests.put(isarGuest);

//         // Get the event to construct the full Guest object
//         final userEvent = await isar.isarGuests
//             .filter()
//             .attendeeCodeEqualTo(attendeeCode)
//             .findFirst();

//         if (userEvent != null) {
//           return Guest(
//             eventName: isarGuest.eventName,
//             couponUsed: isarGuest.couponUsed,
//             attendeeName: isarGuest.attendeeName,
//             attendeeEmail: isarGuest.attendeeEmail,
//             attendeeCode: isarGuest.attendeeCode,
//             attendeeTier: isarGuest.attendeeTier,
//             couponCode: isarGuest.couponCode,
//             checkedIn: isarGuest.checkedIn,
//             purchasedAt: isarGuest.purchasedAt,
//             checkedInAt: isarGuest.checkedInAt,
//           );
//         }
//       }
//       return null;
//     });
//   }

//   // Get a single guest by attendee code
//   Future<Guest?> getGuest(String attendeeCode) async {
//     final isarGuest = await isar.isarGuests
//         .filter()
//         .attendeeCodeEqualTo(attendeeCode)
//         .findFirst();
//     if (isarGuest == null) return null;

//     final userEvent = await isar.isarUserEvents
//         .filter()
//         .guests((q) => q.attendeeCodeEqualTo(attendeeCode))
//         .findFirst();
//     if (userEvent == null) return null;

//     await isarGuest.relatedTickets.load();
//     return isarGuest.toGuest(eventName: userEvent.name);
//   }
// }
