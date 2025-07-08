// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CollectionsStruct extends FFFirebaseStruct {
  CollectionsStruct({
    String? title,
    String? descr,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _descr = descr,
        _img = img,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "descr" field.
  String? _descr;
  String get descr => _descr ?? '';
  set descr(String? val) => _descr = val;

  bool hasDescr() => _descr != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static CollectionsStruct fromMap(Map<String, dynamic> data) =>
      CollectionsStruct(
        title: data['title'] as String?,
        descr: data['descr'] as String?,
        img: data['img'] as String?,
      );

  static CollectionsStruct? maybeFromMap(dynamic data) => data is Map
      ? CollectionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'descr': _descr,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'descr': serializeParam(
          _descr,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static CollectionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CollectionsStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        descr: deserializeParam(
          data['descr'],
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
  String toString() => 'CollectionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CollectionsStruct &&
        title == other.title &&
        descr == other.descr &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([title, descr, img]);
}

CollectionsStruct createCollectionsStruct({
  String? title,
  String? descr,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CollectionsStruct(
      title: title,
      descr: descr,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CollectionsStruct? updateCollectionsStruct(
  CollectionsStruct? collections, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    collections
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCollectionsStructData(
  Map<String, dynamic> firestoreData,
  CollectionsStruct? collections,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (collections == null) {
    return;
  }
  if (collections.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && collections.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final collectionsData =
      getCollectionsFirestoreData(collections, forFieldValue);
  final nestedData =
      collectionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = collections.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCollectionsFirestoreData(
  CollectionsStruct? collections, [
  bool forFieldValue = false,
]) {
  if (collections == null) {
    return {};
  }
  final firestoreData = mapToFirestore(collections.toMap());

  // Add any Firestore field values
  collections.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCollectionsListFirestoreData(
  List<CollectionsStruct>? collectionss,
) =>
    collectionss?.map((e) => getCollectionsFirestoreData(e, true)).toList() ??
    [];
