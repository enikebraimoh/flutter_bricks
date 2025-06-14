// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_guest.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarGuestCollection on Isar {
  IsarCollection<IsarGuest> get isarGuests => this.collection();
}

const IsarGuestSchema = CollectionSchema(
  name: r'IsarGuest',
  id: 7260345236396452970,
  properties: {
    r'attendeeCode': PropertySchema(
      id: 0,
      name: r'attendeeCode',
      type: IsarType.string,
    ),
    r'attendeeEmail': PropertySchema(
      id: 1,
      name: r'attendeeEmail',
      type: IsarType.string,
    ),
    r'attendeeName': PropertySchema(
      id: 2,
      name: r'attendeeName',
      type: IsarType.string,
    ),
    r'attendeeTier': PropertySchema(
      id: 3,
      name: r'attendeeTier',
      type: IsarType.string,
    ),
    r'checkedIn': PropertySchema(
      id: 4,
      name: r'checkedIn',
      type: IsarType.bool,
    ),
    r'checkedInAt': PropertySchema(
      id: 5,
      name: r'checkedInAt',
      type: IsarType.dateTime,
    ),
    r'couponCode': PropertySchema(
      id: 6,
      name: r'couponCode',
      type: IsarType.string,
    ),
    r'couponUsed': PropertySchema(
      id: 7,
      name: r'couponUsed',
      type: IsarType.bool,
    ),
    r'eventName': PropertySchema(
      id: 8,
      name: r'eventName',
      type: IsarType.string,
    ),
    r'purchasedAt': PropertySchema(
      id: 9,
      name: r'purchasedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _isarGuestEstimateSize,
  serialize: _isarGuestSerialize,
  deserialize: _isarGuestDeserialize,
  deserializeProp: _isarGuestDeserializeProp,
  idName: r'id',
  indexes: {
    r'attendeeCode': IndexSchema(
      id: 4301650905582867331,
      name: r'attendeeCode',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'attendeeCode',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'purchasedAt': IndexSchema(
      id: -5555655174384307330,
      name: r'purchasedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'purchasedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'checkedInAt': IndexSchema(
      id: -2171679599773299162,
      name: r'checkedInAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'checkedInAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'relatedTickets': LinkSchema(
      id: 403602362014929396,
      name: r'relatedTickets',
      target: r'IsarGuest',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _isarGuestGetId,
  getLinks: _isarGuestGetLinks,
  attach: _isarGuestAttach,
  version: '3.1.0+1',
);

int _isarGuestEstimateSize(
  IsarGuest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.attendeeCode.length * 3;
  bytesCount += 3 + object.attendeeEmail.length * 3;
  bytesCount += 3 + object.attendeeName.length * 3;
  {
    final value = object.attendeeTier;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.couponCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventName.length * 3;
  return bytesCount;
}

void _isarGuestSerialize(
  IsarGuest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.attendeeCode);
  writer.writeString(offsets[1], object.attendeeEmail);
  writer.writeString(offsets[2], object.attendeeName);
  writer.writeString(offsets[3], object.attendeeTier);
  writer.writeBool(offsets[4], object.checkedIn);
  writer.writeDateTime(offsets[5], object.checkedInAt);
  writer.writeString(offsets[6], object.couponCode);
  writer.writeBool(offsets[7], object.couponUsed);
  writer.writeString(offsets[8], object.eventName);
  writer.writeDateTime(offsets[9], object.purchasedAt);
}

IsarGuest _isarGuestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarGuest();
  object.attendeeCode = reader.readString(offsets[0]);
  object.attendeeEmail = reader.readString(offsets[1]);
  object.attendeeName = reader.readString(offsets[2]);
  object.attendeeTier = reader.readStringOrNull(offsets[3]);
  object.checkedIn = reader.readBool(offsets[4]);
  object.checkedInAt = reader.readDateTimeOrNull(offsets[5]);
  object.couponCode = reader.readStringOrNull(offsets[6]);
  object.couponUsed = reader.readBool(offsets[7]);
  object.eventName = reader.readString(offsets[8]);
  object.id = id;
  object.purchasedAt = reader.readDateTimeOrNull(offsets[9]);
  return object;
}

P _isarGuestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarGuestGetId(IsarGuest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarGuestGetLinks(IsarGuest object) {
  return [object.relatedTickets];
}

void _isarGuestAttach(IsarCollection<dynamic> col, Id id, IsarGuest object) {
  object.id = id;
  object.relatedTickets
      .attach(col, col.isar.collection<IsarGuest>(), r'relatedTickets', id);
}

extension IsarGuestByIndex on IsarCollection<IsarGuest> {
  Future<IsarGuest?> getByAttendeeCode(String attendeeCode) {
    return getByIndex(r'attendeeCode', [attendeeCode]);
  }

  IsarGuest? getByAttendeeCodeSync(String attendeeCode) {
    return getByIndexSync(r'attendeeCode', [attendeeCode]);
  }

  Future<bool> deleteByAttendeeCode(String attendeeCode) {
    return deleteByIndex(r'attendeeCode', [attendeeCode]);
  }

  bool deleteByAttendeeCodeSync(String attendeeCode) {
    return deleteByIndexSync(r'attendeeCode', [attendeeCode]);
  }

  Future<List<IsarGuest?>> getAllByAttendeeCode(
      List<String> attendeeCodeValues) {
    final values = attendeeCodeValues.map((e) => [e]).toList();
    return getAllByIndex(r'attendeeCode', values);
  }

  List<IsarGuest?> getAllByAttendeeCodeSync(List<String> attendeeCodeValues) {
    final values = attendeeCodeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'attendeeCode', values);
  }

  Future<int> deleteAllByAttendeeCode(List<String> attendeeCodeValues) {
    final values = attendeeCodeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'attendeeCode', values);
  }

  int deleteAllByAttendeeCodeSync(List<String> attendeeCodeValues) {
    final values = attendeeCodeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'attendeeCode', values);
  }

  Future<Id> putByAttendeeCode(IsarGuest object) {
    return putByIndex(r'attendeeCode', object);
  }

  Id putByAttendeeCodeSync(IsarGuest object, {bool saveLinks = true}) {
    return putByIndexSync(r'attendeeCode', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByAttendeeCode(List<IsarGuest> objects) {
    return putAllByIndex(r'attendeeCode', objects);
  }

  List<Id> putAllByAttendeeCodeSync(List<IsarGuest> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'attendeeCode', objects, saveLinks: saveLinks);
  }
}

extension IsarGuestQueryWhereSort
    on QueryBuilder<IsarGuest, IsarGuest, QWhere> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhere> anyPurchasedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'purchasedAt'),
      );
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhere> anyCheckedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'checkedInAt'),
      );
    });
  }
}

extension IsarGuestQueryWhere
    on QueryBuilder<IsarGuest, IsarGuest, QWhereClause> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> attendeeCodeEqualTo(
      String attendeeCode) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'attendeeCode',
        value: [attendeeCode],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> attendeeCodeNotEqualTo(
      String attendeeCode) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attendeeCode',
              lower: [],
              upper: [attendeeCode],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attendeeCode',
              lower: [attendeeCode],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attendeeCode',
              lower: [attendeeCode],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'attendeeCode',
              lower: [],
              upper: [attendeeCode],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'purchasedAt',
        value: [null],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'purchasedAt',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtEqualTo(
      DateTime? purchasedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'purchasedAt',
        value: [purchasedAt],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtNotEqualTo(
      DateTime? purchasedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'purchasedAt',
              lower: [],
              upper: [purchasedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'purchasedAt',
              lower: [purchasedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'purchasedAt',
              lower: [purchasedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'purchasedAt',
              lower: [],
              upper: [purchasedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtGreaterThan(
    DateTime? purchasedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'purchasedAt',
        lower: [purchasedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtLessThan(
    DateTime? purchasedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'purchasedAt',
        lower: [],
        upper: [purchasedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> purchasedAtBetween(
    DateTime? lowerPurchasedAt,
    DateTime? upperPurchasedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'purchasedAt',
        lower: [lowerPurchasedAt],
        includeLower: includeLower,
        upper: [upperPurchasedAt],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'checkedInAt',
        value: [null],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedInAt',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtEqualTo(
      DateTime? checkedInAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'checkedInAt',
        value: [checkedInAt],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtNotEqualTo(
      DateTime? checkedInAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedInAt',
              lower: [],
              upper: [checkedInAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedInAt',
              lower: [checkedInAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedInAt',
              lower: [checkedInAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'checkedInAt',
              lower: [],
              upper: [checkedInAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtGreaterThan(
    DateTime? checkedInAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedInAt',
        lower: [checkedInAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtLessThan(
    DateTime? checkedInAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedInAt',
        lower: [],
        upper: [checkedInAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterWhereClause> checkedInAtBetween(
    DateTime? lowerCheckedInAt,
    DateTime? upperCheckedInAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'checkedInAt',
        lower: [lowerCheckedInAt],
        includeLower: includeLower,
        upper: [upperCheckedInAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarGuestQueryFilter
    on QueryBuilder<IsarGuest, IsarGuest, QFilterCondition> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attendeeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attendeeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attendeeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attendeeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attendeeEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attendeeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attendeeEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attendeeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attendeeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attendeeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attendeeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attendeeName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'attendeeTier',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'attendeeTier',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeTierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeTierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attendeeTier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'attendeeTier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> attendeeTierMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'attendeeTier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attendeeTier',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      attendeeTierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'attendeeTier',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> checkedInEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkedIn',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      checkedInAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checkedInAt',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      checkedInAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checkedInAt',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> checkedInAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      checkedInAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checkedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> checkedInAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checkedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> checkedInAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checkedInAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'couponCode',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      couponCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'couponCode',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      couponCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'couponCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      couponCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'couponCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'couponCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      couponCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      couponCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'couponCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> couponUsedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'couponUsed',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      eventNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> eventNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      eventNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      purchasedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'purchasedAt',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      purchasedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'purchasedAt',
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> purchasedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchasedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      purchasedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchasedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> purchasedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchasedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> purchasedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchasedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarGuestQueryObject
    on QueryBuilder<IsarGuest, IsarGuest, QFilterCondition> {}

extension IsarGuestQueryLinks
    on QueryBuilder<IsarGuest, IsarGuest, QFilterCondition> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition> relatedTickets(
      FilterQuery<IsarGuest> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'relatedTickets');
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'relatedTickets', length, true, length, true);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'relatedTickets', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'relatedTickets', 0, false, 999999, true);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'relatedTickets', 0, true, length, include);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'relatedTickets', length, include, 999999, true);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterFilterCondition>
      relatedTicketsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'relatedTickets', lower, includeLower, upper, includeUpper);
    });
  }
}

extension IsarGuestQuerySortBy on QueryBuilder<IsarGuest, IsarGuest, QSortBy> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeCode', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeCode', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeName', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeName', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeTier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeTier', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByAttendeeTierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeTier', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCheckedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIn', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCheckedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIn', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCheckedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedInAt', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCheckedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedInAt', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCouponUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponUsed', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByCouponUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponUsed', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByPurchasedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> sortByPurchasedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasedAt', Sort.desc);
    });
  }
}

extension IsarGuestQuerySortThenBy
    on QueryBuilder<IsarGuest, IsarGuest, QSortThenBy> {
  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeCode', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeCode', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeName', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeName', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeTier() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeTier', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByAttendeeTierDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attendeeTier', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCheckedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIn', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCheckedInDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedIn', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCheckedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedInAt', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCheckedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkedInAt', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCouponCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCouponCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponCode', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCouponUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponUsed', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByCouponUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'couponUsed', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByPurchasedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QAfterSortBy> thenByPurchasedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchasedAt', Sort.desc);
    });
  }
}

extension IsarGuestQueryWhereDistinct
    on QueryBuilder<IsarGuest, IsarGuest, QDistinct> {
  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByAttendeeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attendeeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByAttendeeEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attendeeEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByAttendeeName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attendeeName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByAttendeeTier(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attendeeTier', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByCheckedIn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkedIn');
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByCheckedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkedInAt');
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByCouponCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByCouponUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'couponUsed');
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByEventName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarGuest, IsarGuest, QDistinct> distinctByPurchasedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchasedAt');
    });
  }
}

extension IsarGuestQueryProperty
    on QueryBuilder<IsarGuest, IsarGuest, QQueryProperty> {
  QueryBuilder<IsarGuest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarGuest, String, QQueryOperations> attendeeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attendeeCode');
    });
  }

  QueryBuilder<IsarGuest, String, QQueryOperations> attendeeEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attendeeEmail');
    });
  }

  QueryBuilder<IsarGuest, String, QQueryOperations> attendeeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attendeeName');
    });
  }

  QueryBuilder<IsarGuest, String?, QQueryOperations> attendeeTierProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attendeeTier');
    });
  }

  QueryBuilder<IsarGuest, bool, QQueryOperations> checkedInProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkedIn');
    });
  }

  QueryBuilder<IsarGuest, DateTime?, QQueryOperations> checkedInAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkedInAt');
    });
  }

  QueryBuilder<IsarGuest, String?, QQueryOperations> couponCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponCode');
    });
  }

  QueryBuilder<IsarGuest, bool, QQueryOperations> couponUsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'couponUsed');
    });
  }

  QueryBuilder<IsarGuest, String, QQueryOperations> eventNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventName');
    });
  }

  QueryBuilder<IsarGuest, DateTime?, QQueryOperations> purchasedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchasedAt');
    });
  }
}
