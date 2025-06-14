// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user_event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarUserEventCollection on Isar {
  IsarCollection<IsarUserEvent> get isarUserEvents => this.collection();
}

const IsarUserEventSchema = CollectionSchema(
  name: r'IsarUserEvent',
  id: 2603245580991481694,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'deactivated': PropertySchema(
      id: 2,
      name: r'deactivated',
      type: IsarType.bool,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'eventEndDateAndTimeAt': PropertySchema(
      id: 4,
      name: r'eventEndDateAndTimeAt',
      type: IsarType.dateTime,
    ),
    r'eventStartDateAndTimeAt': PropertySchema(
      id: 5,
      name: r'eventStartDateAndTimeAt',
      type: IsarType.dateTime,
    ),
    r'image': PropertySchema(
      id: 6,
      name: r'image',
      type: IsarType.string,
    ),
    r'isPast': PropertySchema(
      id: 7,
      name: r'isPast',
      type: IsarType.bool,
    ),
    r'isUpcoming': PropertySchema(
      id: 8,
      name: r'isUpcoming',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _isarUserEventEstimateSize,
  serialize: _isarUserEventSerialize,
  deserialize: _isarUserEventDeserialize,
  deserializeProp: _isarUserEventDeserializeProp,
  idName: r'id',
  indexes: {
    r'code': IndexSchema(
      id: 329780482934683790,
      name: r'code',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'code',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'eventStats': LinkSchema(
      id: -7160549260267770179,
      name: r'eventStats',
      target: r'IsarEventStats',
      single: true,
    ),
    r'guests': LinkSchema(
      id: -7693224439575561356,
      name: r'guests',
      target: r'IsarGuest',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _isarUserEventGetId,
  getLinks: _isarUserEventGetLinks,
  attach: _isarUserEventAttach,
  version: '3.1.0+1',
);

int _isarUserEventEstimateSize(
  IsarUserEvent object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.code.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _isarUserEventSerialize(
  IsarUserEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeBool(offsets[2], object.deactivated);
  writer.writeString(offsets[3], object.description);
  writer.writeDateTime(offsets[4], object.eventEndDateAndTimeAt);
  writer.writeDateTime(offsets[5], object.eventStartDateAndTimeAt);
  writer.writeString(offsets[6], object.image);
  writer.writeBool(offsets[7], object.isPast);
  writer.writeBool(offsets[8], object.isUpcoming);
  writer.writeString(offsets[9], object.name);
}

IsarUserEvent _isarUserEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUserEvent();
  object.code = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.deactivated = reader.readBool(offsets[2]);
  object.description = reader.readStringOrNull(offsets[3]);
  object.eventEndDateAndTimeAt = reader.readDateTimeOrNull(offsets[4]);
  object.eventStartDateAndTimeAt = reader.readDateTimeOrNull(offsets[5]);
  object.id = id;
  object.image = reader.readStringOrNull(offsets[6]);
  object.isPast = reader.readBoolOrNull(offsets[7]);
  object.isUpcoming = reader.readBoolOrNull(offsets[8]);
  object.name = reader.readString(offsets[9]);
  return object;
}

P _isarUserEventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarUserEventGetId(IsarUserEvent object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarUserEventGetLinks(IsarUserEvent object) {
  return [object.eventStats, object.guests];
}

void _isarUserEventAttach(
    IsarCollection<dynamic> col, Id id, IsarUserEvent object) {
  object.id = id;
  object.eventStats
      .attach(col, col.isar.collection<IsarEventStats>(), r'eventStats', id);
  object.guests.attach(col, col.isar.collection<IsarGuest>(), r'guests', id);
}

extension IsarUserEventByIndex on IsarCollection<IsarUserEvent> {
  Future<IsarUserEvent?> getByCode(String code) {
    return getByIndex(r'code', [code]);
  }

  IsarUserEvent? getByCodeSync(String code) {
    return getByIndexSync(r'code', [code]);
  }

  Future<bool> deleteByCode(String code) {
    return deleteByIndex(r'code', [code]);
  }

  bool deleteByCodeSync(String code) {
    return deleteByIndexSync(r'code', [code]);
  }

  Future<List<IsarUserEvent?>> getAllByCode(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return getAllByIndex(r'code', values);
  }

  List<IsarUserEvent?> getAllByCodeSync(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'code', values);
  }

  Future<int> deleteAllByCode(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'code', values);
  }

  int deleteAllByCodeSync(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'code', values);
  }

  Future<Id> putByCode(IsarUserEvent object) {
    return putByIndex(r'code', object);
  }

  Id putByCodeSync(IsarUserEvent object, {bool saveLinks = true}) {
    return putByIndexSync(r'code', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCode(List<IsarUserEvent> objects) {
    return putAllByIndex(r'code', objects);
  }

  List<Id> putAllByCodeSync(List<IsarUserEvent> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'code', objects, saveLinks: saveLinks);
  }
}

extension IsarUserEventQueryWhereSort
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QWhere> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarUserEventQueryWhere
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QWhereClause> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> idBetween(
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

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> codeEqualTo(
      String code) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'code',
        value: [code],
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterWhereClause> codeNotEqualTo(
      String code) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [],
              upper: [code],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [code],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [code],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [],
              upper: [code],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarUserEventQueryFilter
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QFilterCondition> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> codeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> codeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      deactivatedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deactivated',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventEndDateAndTimeAt',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventEndDateAndTimeAt',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventEndDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventEndDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventEndDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventEndDateAndTimeAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventEndDateAndTimeAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventStartDateAndTimeAt',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventStartDateAndTimeAt',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventStartDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventStartDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventStartDateAndTimeAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStartDateAndTimeAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventStartDateAndTimeAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
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

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isPastIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isPast',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isPastIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isPast',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isPastEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPast',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isUpcomingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isUpcoming',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isUpcomingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isUpcoming',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      isUpcomingEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isUpcoming',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension IsarUserEventQueryObject
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QFilterCondition> {}

extension IsarUserEventQueryLinks
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QFilterCondition> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> eventStats(
      FilterQuery<IsarEventStats> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'eventStats');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      eventStatsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'eventStats', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition> guests(
      FilterQuery<IsarGuest> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'guests');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'guests', length, true, length, true);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'guests', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'guests', 0, false, 999999, true);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'guests', 0, true, length, include);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'guests', length, include, 999999, true);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterFilterCondition>
      guestsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'guests', lower, includeLower, upper, includeUpper);
    });
  }
}

extension IsarUserEventQuerySortBy
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QSortBy> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByDeactivated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deactivated', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByDeactivatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deactivated', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByEventEndDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDateAndTimeAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByEventEndDateAndTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDateAndTimeAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByEventStartDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDateAndTimeAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByEventStartDateAndTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDateAndTimeAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByIsPast() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPast', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByIsPastDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPast', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByIsUpcoming() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUpcoming', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      sortByIsUpcomingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUpcoming', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsarUserEventQuerySortThenBy
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QSortThenBy> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByDeactivated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deactivated', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByDeactivatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deactivated', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByEventEndDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDateAndTimeAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByEventEndDateAndTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventEndDateAndTimeAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByEventStartDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDateAndTimeAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByEventStartDateAndTimeAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventStartDateAndTimeAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByIsPast() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPast', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByIsPastDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPast', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByIsUpcoming() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUpcoming', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy>
      thenByIsUpcomingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUpcoming', Sort.desc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsarUserEventQueryWhereDistinct
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> {
  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct>
      distinctByDeactivated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deactivated');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct>
      distinctByEventEndDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventEndDateAndTimeAt');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct>
      distinctByEventStartDateAndTimeAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventStartDateAndTimeAt');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByIsPast() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPast');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByIsUpcoming() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isUpcoming');
    });
  }

  QueryBuilder<IsarUserEvent, IsarUserEvent, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension IsarUserEventQueryProperty
    on QueryBuilder<IsarUserEvent, IsarUserEvent, QQueryProperty> {
  QueryBuilder<IsarUserEvent, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarUserEvent, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<IsarUserEvent, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarUserEvent, bool, QQueryOperations> deactivatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deactivated');
    });
  }

  QueryBuilder<IsarUserEvent, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<IsarUserEvent, DateTime?, QQueryOperations>
      eventEndDateAndTimeAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventEndDateAndTimeAt');
    });
  }

  QueryBuilder<IsarUserEvent, DateTime?, QQueryOperations>
      eventStartDateAndTimeAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventStartDateAndTimeAt');
    });
  }

  QueryBuilder<IsarUserEvent, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<IsarUserEvent, bool?, QQueryOperations> isPastProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPast');
    });
  }

  QueryBuilder<IsarUserEvent, bool?, QQueryOperations> isUpcomingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isUpcoming');
    });
  }

  QueryBuilder<IsarUserEvent, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
