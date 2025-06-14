import 'package:isar/isar.dart';

import 'isar_user_event.dart';
part 'isar_event_stats.g.dart';

@Collection()
class IsarEventStats {
  Id id = Isar.autoIncrement;
  late int totalTicketSold;
  late int totalTicketAvailable;
  late int totalCheckedInAttendees;
  late int totalNotCheckedInAttendees;
  late String currencyBaseTotalRevenuesJson;
  late List<IsarTicketTier> ticketTiers;
}

@Embedded()
class IsarTicketTier {
  late String ticketName;
  late int totalQuantity;
}
