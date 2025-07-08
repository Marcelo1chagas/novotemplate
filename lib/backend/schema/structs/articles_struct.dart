// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ArticlesStruct extends FFFirebaseStruct {
  ArticlesStruct({
    String? title,
    String? description,
    DateTime? date,
    String? tag,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _date = date,
        _tag = tag,
        _img = img,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;

  bool hasTag() => _tag != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static ArticlesStruct fromMap(Map<String, dynamic> data) => ArticlesStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        date: data['date'] as DateTime?,
        tag: data['tag'] as String?,
        img: data['img'] as String?,
      );

  static ArticlesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ArticlesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'date': _date,
        'tag': _tag,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static ArticlesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArticlesStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ArticlesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ArticlesStruct &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        tag == other.tag &&
        img == other.img;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, date, tag, img]);
}

ArticlesStruct createArticlesStruct({
  String? title,
  String? description,
  DateTime? date,
  String? tag,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ArticlesStruct(
      title: title,
      description: description,
      date: date,
      tag: tag,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ArticlesStruct? updateArticlesStruct(
  ArticlesStruct? articles, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    articles
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addArticlesStructData(
  Map<String, dynamic> firestoreData,
  ArticlesStruct? articles,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (articles == null) {
    return;
  }
  if (articles.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && articles.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final articlesData = getArticlesFirestoreData(articles, forFieldValue);
  final nestedData = articlesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = articles.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getArticlesFirestoreData(
  ArticlesStruct? articles, [
  bool forFieldValue = false,
]) {
  if (articles == null) {
    return {};
  }
  final firestoreData = mapToFirestore(articles.toMap());

  // Add any Firestore field values
  articles.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getArticlesListFirestoreData(
  List<ArticlesStruct>? articless,
) =>
    articless?.map((e) => getArticlesFirestoreData(e, true)).toList() ?? [];
