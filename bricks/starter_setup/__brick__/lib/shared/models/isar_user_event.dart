import 'package:isar/isar.dart';
import 'isar_event_stats.dart';
import 'isar_guest.dart';
part 'isar_user_event.g.dart';

@Collection()
class IsarUserEvent {
  Id id = Isar.autoIncrement;
  @Index(unique: true)
  late String code;
  late String name;
  late String? description;
  late DateTime? eventStartDateAndTimeAt;
  late DateTime? eventEndDateAndTimeAt;
  late bool? isUpcoming;
  late bool? isPast;
  late String? image;
  late bool deactivated;
  late DateTime createdAt;

  final eventStats = IsarLink<IsarEventStats>();

  // Direct list of guests
  final guests = IsarLinks<IsarGuest>();
}
