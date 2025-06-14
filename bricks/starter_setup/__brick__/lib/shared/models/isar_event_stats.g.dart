// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_event_stats.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarEventStatsCollection on Isar {
  IsarCollection<IsarEventStats> get isarEventStats => this.collection();
}

const IsarEventStatsSchema = CollectionSchema(
  name: r'IsarEventStats',
  id: 4440632915245743162,
  properties: {
    r'currencyBaseTotalRevenuesJson': PropertySchema(
      id: 0,
      name: r'currencyBaseTotalRevenuesJson',
      type: IsarType.string,
    ),
    r'ticketTiers': PropertySchema(
      id: 1,
      name: r'ticketTiers',
      type: IsarType.objectList,
      target: r'IsarTicketTier',
    ),
    r'totalCheckedInAttendees': PropertySchema(
      id: 2,
      name: r'totalCheckedInAttendees',
      type: IsarType.long,
    ),
    r'totalNotCheckedInAttendees': PropertySchema(
      id: 3,
      name: r'totalNotCheckedInAttendees',
      type: IsarType.long,
    ),
    r'totalTicketAvailable': PropertySchema(
      id: 4,
      name: r'totalTicketAvailable',
      type: IsarType.long,
    ),
    r'totalTicketSold': PropertySchema(
      id: 5,
      name: r'totalTicketSold',
      type: IsarType.long,
    )
  },
  estimateSize: _isarEventStatsEstimateSize,
  serialize: _isarEventStatsSerialize,
  deserialize: _isarEventStatsDeserialize,
  deserializeProp: _isarEventStatsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'IsarTicketTier': IsarTicketTierSchema},
  getId: _isarEventStatsGetId,
  getLinks: _isarEventStatsGetLinks,
  attach: _isarEventStatsAttach,
  version: '3.1.0+1',
);

int _isarEventStatsEstimateSize(
  IsarEventStats object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.currencyBaseTotalRevenuesJson.length * 3;
  bytesCount += 3 + object.ticketTiers.length * 3;
  {
    final offsets = allOffsets[IsarTicketTier]!;
    for (var i = 0; i < object.ticketTiers.length; i++) {
      final value = object.ticketTiers[i];
      bytesCount +=
          IsarTicketTierSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarEventStatsSerialize(
  IsarEventStats object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.currencyBaseTotalRevenuesJson);
  writer.writeObjectList<IsarTicketTier>(
    offsets[1],
    allOffsets,
    IsarTicketTierSchema.serialize,
    object.ticketTiers,
  );
  writer.writeLong(offsets[2], object.totalCheckedInAttendees);
  writer.writeLong(offsets[3], object.totalNotCheckedInAttendees);
  writer.writeLong(offsets[4], object.totalTicketAvailable);
  writer.writeLong(offsets[5], object.totalTicketSold);
}

IsarEventStats _isarEventStatsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarEventStats();
  object.currencyBaseTotalRevenuesJson = reader.readString(offsets[0]);
  object.id = id;
  object.ticketTiers = reader.readObjectList<IsarTicketTier>(
        offsets[1],
        IsarTicketTierSchema.deserialize,
        allOffsets,
        IsarTicketTier(),
      ) ??
      [];
  object.totalCheckedInAttendees = reader.readLong(offsets[2]);
  object.totalNotCheckedInAttendees = reader.readLong(offsets[3]);
  object.totalTicketAvailable = reader.readLong(offsets[4]);
  object.totalTicketSold = reader.readLong(offsets[5]);
  return object;
}

P _isarEventStatsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectList<IsarTicketTier>(
            offset,
            IsarTicketTierSchema.deserialize,
            allOffsets,
            IsarTicketTier(),
          ) ??
          []) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarEventStatsGetId(IsarEventStats object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarEventStatsGetLinks(IsarEventStats object) {
  return [];
}

void _isarEventStatsAttach(
    IsarCollection<dynamic> col, Id id, IsarEventStats object) {
  object.id = id;
}

extension IsarEventStatsQueryWhereSort
    on QueryBuilder<IsarEventStats, IsarEventStats, QWhere> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarEventStatsQueryWhere
    on QueryBuilder<IsarEventStats, IsarEventStats, QWhereClause> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterWhereClause> idBetween(
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
}

extension IsarEventStatsQueryFilter
    on QueryBuilder<IsarEventStats, IsarEventStats, QFilterCondition> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencyBaseTotalRevenuesJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencyBaseTotalRevenuesJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencyBaseTotalRevenuesJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyBaseTotalRevenuesJson',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      currencyBaseTotalRevenuesJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencyBaseTotalRevenuesJson',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketTiers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalCheckedInAttendeesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalCheckedInAttendeesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalCheckedInAttendeesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalCheckedInAttendeesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCheckedInAttendees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalNotCheckedInAttendeesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalNotCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalNotCheckedInAttendeesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalNotCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalNotCheckedInAttendeesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalNotCheckedInAttendees',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalNotCheckedInAttendeesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalNotCheckedInAttendees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketAvailableEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTicketAvailable',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketAvailableGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTicketAvailable',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketAvailableLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTicketAvailable',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketAvailableBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTicketAvailable',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketSoldEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTicketSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketSoldGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTicketSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketSoldLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTicketSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      totalTicketSoldBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTicketSold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarEventStatsQueryObject
    on QueryBuilder<IsarEventStats, IsarEventStats, QFilterCondition> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterFilterCondition>
      ticketTiersElement(FilterQuery<IsarTicketTier> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ticketTiers');
    });
  }
}

extension IsarEventStatsQueryLinks
    on QueryBuilder<IsarEventStats, IsarEventStats, QFilterCondition> {}

extension IsarEventStatsQuerySortBy
    on QueryBuilder<IsarEventStats, IsarEventStats, QSortBy> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByCurrencyBaseTotalRevenuesJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyBaseTotalRevenuesJson', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByCurrencyBaseTotalRevenuesJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyBaseTotalRevenuesJson', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCheckedInAttendees', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalCheckedInAttendeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCheckedInAttendees', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalNotCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalNotCheckedInAttendees', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalNotCheckedInAttendeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalNotCheckedInAttendees', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalTicketAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketAvailable', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalTicketAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketAvailable', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalTicketSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketSold', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      sortByTotalTicketSoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketSold', Sort.desc);
    });
  }
}

extension IsarEventStatsQuerySortThenBy
    on QueryBuilder<IsarEventStats, IsarEventStats, QSortThenBy> {
  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByCurrencyBaseTotalRevenuesJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyBaseTotalRevenuesJson', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByCurrencyBaseTotalRevenuesJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyBaseTotalRevenuesJson', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCheckedInAttendees', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalCheckedInAttendeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCheckedInAttendees', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalNotCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalNotCheckedInAttendees', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalNotCheckedInAttendeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalNotCheckedInAttendees', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalTicketAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketAvailable', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalTicketAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketAvailable', Sort.desc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalTicketSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketSold', Sort.asc);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QAfterSortBy>
      thenByTotalTicketSoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketSold', Sort.desc);
    });
  }
}

extension IsarEventStatsQueryWhereDistinct
    on QueryBuilder<IsarEventStats, IsarEventStats, QDistinct> {
  QueryBuilder<IsarEventStats, IsarEventStats, QDistinct>
      distinctByCurrencyBaseTotalRevenuesJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencyBaseTotalRevenuesJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QDistinct>
      distinctByTotalCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCheckedInAttendees');
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QDistinct>
      distinctByTotalNotCheckedInAttendees() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalNotCheckedInAttendees');
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QDistinct>
      distinctByTotalTicketAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTicketAvailable');
    });
  }

  QueryBuilder<IsarEventStats, IsarEventStats, QDistinct>
      distinctByTotalTicketSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTicketSold');
    });
  }
}

extension IsarEventStatsQueryProperty
    on QueryBuilder<IsarEventStats, IsarEventStats, QQueryProperty> {
  QueryBuilder<IsarEventStats, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarEventStats, String, QQueryOperations>
      currencyBaseTotalRevenuesJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencyBaseTotalRevenuesJson');
    });
  }

  QueryBuilder<IsarEventStats, List<IsarTicketTier>, QQueryOperations>
      ticketTiersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ticketTiers');
    });
  }

  QueryBuilder<IsarEventStats, int, QQueryOperations>
      totalCheckedInAttendeesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCheckedInAttendees');
    });
  }

  QueryBuilder<IsarEventStats, int, QQueryOperations>
      totalNotCheckedInAttendeesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalNotCheckedInAttendees');
    });
  }

  QueryBuilder<IsarEventStats, int, QQueryOperations>
      totalTicketAvailableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTicketAvailable');
    });
  }

  QueryBuilder<IsarEventStats, int, QQueryOperations>
      totalTicketSoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTicketSold');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarTicketTierSchema = Schema(
  name: r'IsarTicketTier',
  id: 547720527271511323,
  properties: {
    r'ticketName': PropertySchema(
      id: 0,
      name: r'ticketName',
      type: IsarType.string,
    ),
    r'totalQuantity': PropertySchema(
      id: 1,
      name: r'totalQuantity',
      type: IsarType.long,
    )
  },
  estimateSize: _isarTicketTierEstimateSize,
  serialize: _isarTicketTierSerialize,
  deserialize: _isarTicketTierDeserialize,
  deserializeProp: _isarTicketTierDeserializeProp,
);

int _isarTicketTierEstimateSize(
  IsarTicketTier object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ticketName.length * 3;
  return bytesCount;
}

void _isarTicketTierSerialize(
  IsarTicketTier object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.ticketName);
  writer.writeLong(offsets[1], object.totalQuantity);
}

IsarTicketTier _isarTicketTierDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarTicketTier();
  object.ticketName = reader.readString(offsets[0]);
  object.totalQuantity = reader.readLong(offsets[1]);
  return object;
}

P _isarTicketTierDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarTicketTierQueryFilter
    on QueryBuilder<IsarTicketTier, IsarTicketTier, QFilterCondition> {
  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ticketName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ticketName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ticketName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      ticketNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ticketName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      totalQuantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      totalQuantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      totalQuantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalQuantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicketTier, IsarTicketTier, QAfterFilterCondition>
      totalQuantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarTicketTierQueryObject
    on QueryBuilder<IsarTicketTier, IsarTicketTier, QFilterCondition> {}
