// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CategoriesStruct extends FFFirebaseStruct {
  CategoriesStruct({
    String? title,
    String? img,
    String? descr,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _img = img,
        _descr = descr,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "descr" field.
  String? _descr;
  String get descr => _descr ?? '';
  set descr(String? val) => _descr = val;

  bool hasDescr() => _descr != null;

  static CategoriesStruct fromMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        title: data['title'] as String?,
        img: data['img'] as String?,
        descr: data['descr'] as String?,
      );

  static CategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'img': _img,
        'descr': _descr,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'descr': serializeParam(
          _descr,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        descr: deserializeParam(
          data['descr'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriesStruct &&
        title == other.title &&
        img == other.img &&
        descr == other.descr;
  }

  @override
  int get hashCode => const ListEquality().hash([title, img, descr]);
}

CategoriesStruct createCategoriesStruct({
  String? title,
  String? img,
  String? descr,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriesStruct(
      title: title,
      img: img,
      descr: descr,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriesStruct? updateCategoriesStruct(
  CategoriesStruct? categories, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categories
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoriesStructData(
  Map<String, dynamic> firestoreData,
  CategoriesStruct? categories,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categories == null) {
    return;
  }
  if (categories.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && categories.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriesData = getCategoriesFirestoreData(categories, forFieldValue);
  final nestedData = categoriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = categories.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriesFirestoreData(
  CategoriesStruct? categories, [
  bool forFieldValue = false,
]) {
  if (categories == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categories.toMap());

  // Add any Firestore field values
  categories.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriesListFirestoreData(
  List<CategoriesStruct>? categoriess,
) =>
    categoriess?.map((e) => getCategoriesFirestoreData(e, true)).toList() ?? [];
