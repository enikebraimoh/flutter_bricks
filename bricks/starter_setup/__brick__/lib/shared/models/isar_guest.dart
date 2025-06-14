import 'package:isar/isar.dart';
part 'isar_guest.g.dart';

@Collection()
class IsarGuest {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String attendeeCode;
  late String attendeeName;
  late String eventName;
  late bool couponUsed;
  late String attendeeEmail;
  late String? attendeeTier;
  late String? couponCode;
  late bool checkedIn;

  @Index()
  late DateTime? purchasedAt;

  @Index()
  late DateTime? checkedInAt;

  // For group tickets
  final relatedTickets = IsarLinks<IsarGuest>();
}
