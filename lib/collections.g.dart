// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetModuleCollection on Isar {
  IsarCollection<Module> get modules => this.collection();
}

const ModuleSchema = CollectionSchema(
  name: r'Module',
  id: -2335926089013615123,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'subModule': PropertySchema(
      id: 1,
      name: r'subModule',
      type: IsarType.objectList,
      target: r'sub_module',
    )
  },
  estimateSize: _moduleEstimateSize,
  serialize: _moduleSerialize,
  deserialize: _moduleDeserialize,
  deserializeProp: _moduleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'sub_module': Sub_moduleSchema,
    r'qck_reply': Qck_replySchema,
    r'question_translation': Question_translationSchema
  },
  getId: _moduleGetId,
  getLinks: _moduleGetLinks,
  attach: _moduleAttach,
  version: '3.1.7',
);

int _moduleEstimateSize(
  Module object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  {
    final list = object.subModule;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[sub_module]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              Sub_moduleSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _moduleSerialize(
  Module object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeObjectList<sub_module>(
    offsets[1],
    allOffsets,
    Sub_moduleSchema.serialize,
    object.subModule,
  );
}

Module _moduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Module();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  object.subModule = reader.readObjectList<sub_module>(
    offsets[1],
    Sub_moduleSchema.deserialize,
    allOffsets,
    sub_module(),
  );
  return object;
}

P _moduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectList<sub_module>(
        offset,
        Sub_moduleSchema.deserialize,
        allOffsets,
        sub_module(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _moduleGetId(Module object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _moduleGetLinks(Module object) {
  return [];
}

void _moduleAttach(IsarCollection<dynamic> col, Id id, Module object) {
  object.id = id;
}

extension ModuleQueryWhereSort on QueryBuilder<Module, Module, QWhere> {
  QueryBuilder<Module, Module, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModuleQueryWhere on QueryBuilder<Module, Module, QWhereClause> {
  QueryBuilder<Module, Module, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Module, Module, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Module, Module, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Module, Module, QAfterWhereClause> idBetween(
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

extension ModuleQueryFilter on QueryBuilder<Module, Module, QFilterCondition> {
  QueryBuilder<Module, Module, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Module, Module, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subModule',
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subModule',
      ));
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition>
      subModuleLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subModule',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ModuleQueryObject on QueryBuilder<Module, Module, QFilterCondition> {
  QueryBuilder<Module, Module, QAfterFilterCondition> subModuleElement(
      FilterQuery<sub_module> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'subModule');
    });
  }
}

extension ModuleQueryLinks on QueryBuilder<Module, Module, QFilterCondition> {}

extension ModuleQuerySortBy on QueryBuilder<Module, Module, QSortBy> {
  QueryBuilder<Module, Module, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Module, Module, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ModuleQuerySortThenBy on QueryBuilder<Module, Module, QSortThenBy> {
  QueryBuilder<Module, Module, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Module, Module, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Module, Module, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Module, Module, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ModuleQueryWhereDistinct on QueryBuilder<Module, Module, QDistinct> {
  QueryBuilder<Module, Module, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension ModuleQueryProperty on QueryBuilder<Module, Module, QQueryProperty> {
  QueryBuilder<Module, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Module, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Module, List<sub_module>?, QQueryOperations>
      subModuleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subModule');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const Sub_moduleSchema = Schema(
  name: r'sub_module',
  id: -7912524891567801966,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'qckReply': PropertySchema(
      id: 1,
      name: r'qckReply',
      type: IsarType.object,
      target: r'qck_reply',
    ),
    r'questionTranslation': PropertySchema(
      id: 2,
      name: r'questionTranslation',
      type: IsarType.object,
      target: r'question_translation',
    )
  },
  estimateSize: _sub_moduleEstimateSize,
  serialize: _sub_moduleSerialize,
  deserialize: _sub_moduleDeserialize,
  deserializeProp: _sub_moduleDeserializeProp,
);

int _sub_moduleEstimateSize(
  sub_module object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.qckReply;
    if (value != null) {
      bytesCount += 3 +
          Qck_replySchema.estimateSize(
              value, allOffsets[qck_reply]!, allOffsets);
    }
  }
  {
    final value = object.questionTranslation;
    if (value != null) {
      bytesCount += 3 +
          Question_translationSchema.estimateSize(
              value, allOffsets[question_translation]!, allOffsets);
    }
  }
  return bytesCount;
}

void _sub_moduleSerialize(
  sub_module object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeObject<qck_reply>(
    offsets[1],
    allOffsets,
    Qck_replySchema.serialize,
    object.qckReply,
  );
  writer.writeObject<question_translation>(
    offsets[2],
    allOffsets,
    Question_translationSchema.serialize,
    object.questionTranslation,
  );
}

sub_module _sub_moduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = sub_module();
  object.name = reader.readString(offsets[0]);
  object.qckReply = reader.readObjectOrNull<qck_reply>(
    offsets[1],
    Qck_replySchema.deserialize,
    allOffsets,
  );
  object.questionTranslation = reader.readObjectOrNull<question_translation>(
    offsets[2],
    Question_translationSchema.deserialize,
    allOffsets,
  );
  return object;
}

P _sub_moduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<qck_reply>(
        offset,
        Qck_replySchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<question_translation>(
        offset,
        Question_translationSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension sub_moduleQueryFilter
    on QueryBuilder<sub_module, sub_module, QFilterCondition> {
  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> qckReplyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qckReply',
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition>
      qckReplyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qckReply',
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition>
      questionTranslationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'questionTranslation',
      ));
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition>
      questionTranslationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'questionTranslation',
      ));
    });
  }
}

extension sub_moduleQueryObject
    on QueryBuilder<sub_module, sub_module, QFilterCondition> {
  QueryBuilder<sub_module, sub_module, QAfterFilterCondition> qckReply(
      FilterQuery<qck_reply> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'qckReply');
    });
  }

  QueryBuilder<sub_module, sub_module, QAfterFilterCondition>
      questionTranslation(FilterQuery<question_translation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'questionTranslation');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const Qck_replySchema = Schema(
  name: r'qck_reply',
  id: -6393423936691336410,
  properties: {
    r'cebuano_replies': PropertySchema(
      id: 0,
      name: r'cebuano_replies',
      type: IsarType.stringList,
    ),
    r'english_replies': PropertySchema(
      id: 1,
      name: r'english_replies',
      type: IsarType.stringList,
    ),
    r'tagalog_replies': PropertySchema(
      id: 2,
      name: r'tagalog_replies',
      type: IsarType.stringList,
    )
  },
  estimateSize: _qck_replyEstimateSize,
  serialize: _qck_replySerialize,
  deserialize: _qck_replyDeserialize,
  deserializeProp: _qck_replyDeserializeProp,
);

int _qck_replyEstimateSize(
  qck_reply object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.cebuano_replies;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.english_replies;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.tagalog_replies;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _qck_replySerialize(
  qck_reply object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.cebuano_replies);
  writer.writeStringList(offsets[1], object.english_replies);
  writer.writeStringList(offsets[2], object.tagalog_replies);
}

qck_reply _qck_replyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = qck_reply();
  object.cebuano_replies = reader.readStringList(offsets[0]);
  object.english_replies = reader.readStringList(offsets[1]);
  object.tagalog_replies = reader.readStringList(offsets[2]);
  return object;
}

P _qck_replyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension qck_replyQueryFilter
    on QueryBuilder<qck_reply, qck_reply, QFilterCondition> {
  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cebuano_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cebuano_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cebuano_replies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cebuano_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cebuano_replies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cebuano_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cebuano_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      cebuano_repliesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cebuano_replies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'english_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'english_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'english_replies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'english_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'english_replies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'english_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      english_repliesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'english_replies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tagalog_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tagalog_replies',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagalog_replies',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagalog_replies',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagalog_replies',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagalog_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagalog_replies',
        value: '',
      ));
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<qck_reply, qck_reply, QAfterFilterCondition>
      tagalog_repliesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tagalog_replies',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension qck_replyQueryObject
    on QueryBuilder<qck_reply, qck_reply, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const Question_translationSchema = Schema(
  name: r'question_translation',
  id: 2363353964717419720,
  properties: {
    r'cebuano_response': PropertySchema(
      id: 0,
      name: r'cebuano_response',
      type: IsarType.string,
    ),
    r'english_response': PropertySchema(
      id: 1,
      name: r'english_response',
      type: IsarType.string,
    ),
    r'tagalog_response': PropertySchema(
      id: 2,
      name: r'tagalog_response',
      type: IsarType.string,
    )
  },
  estimateSize: _question_translationEstimateSize,
  serialize: _question_translationSerialize,
  deserialize: _question_translationDeserialize,
  deserializeProp: _question_translationDeserializeProp,
);

int _question_translationEstimateSize(
  question_translation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cebuano_response;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.english_response;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tagalog_response;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _question_translationSerialize(
  question_translation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cebuano_response);
  writer.writeString(offsets[1], object.english_response);
  writer.writeString(offsets[2], object.tagalog_response);
}

question_translation _question_translationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = question_translation();
  object.cebuano_response = reader.readStringOrNull(offsets[0]);
  object.english_response = reader.readStringOrNull(offsets[1]);
  object.tagalog_response = reader.readStringOrNull(offsets[2]);
  return object;
}

P _question_translationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension question_translationQueryFilter on QueryBuilder<question_translation,
    question_translation, QFilterCondition> {
  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cebuano_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cebuano_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cebuano_response',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      cebuano_responseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cebuano_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      cebuano_responseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cebuano_response',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cebuano_response',
        value: '',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> cebuano_responseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cebuano_response',
        value: '',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'english_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'english_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'english_response',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      english_responseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'english_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      english_responseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'english_response',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'english_response',
        value: '',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> english_responseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'english_response',
        value: '',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tagalog_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tagalog_response',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tagalog_response',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      tagalog_responseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tagalog_response',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
          QAfterFilterCondition>
      tagalog_responseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tagalog_response',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tagalog_response',
        value: '',
      ));
    });
  }

  QueryBuilder<question_translation, question_translation,
      QAfterFilterCondition> tagalog_responseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tagalog_response',
        value: '',
      ));
    });
  }
}

extension question_translationQueryObject on QueryBuilder<question_translation,
    question_translation, QFilterCondition> {}
