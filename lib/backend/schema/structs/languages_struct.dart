// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LanguagesStruct extends FFFirebaseStruct {
  LanguagesStruct({
    String? title,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _image = image,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static LanguagesStruct fromMap(Map<String, dynamic> data) => LanguagesStruct(
        title: data['title'] as String?,
        image: data['image'] as String?,
      );

  static LanguagesStruct? maybeFromMap(dynamic data) => data is Map
      ? LanguagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static LanguagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LanguagesStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LanguagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LanguagesStruct &&
        title == other.title &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([title, image]);
}

LanguagesStruct createLanguagesStruct({
  String? title,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LanguagesStruct(
      title: title,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LanguagesStruct? updateLanguagesStruct(
  LanguagesStruct? languages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    languages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLanguagesStructData(
  Map<String, dynamic> firestoreData,
  LanguagesStruct? languages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (languages == null) {
    return;
  }
  if (languages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && languages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final languagesData = getLanguagesFirestoreData(languages, forFieldValue);
  final nestedData = languagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = languages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLanguagesFirestoreData(
  LanguagesStruct? languages, [
  bool forFieldValue = false,
]) {
  if (languages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(languages.toMap());

  // Add any Firestore field values
  languages.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLanguagesListFirestoreData(
  List<LanguagesStruct>? languagess,
) =>
    languagess?.map((e) => getLanguagesFirestoreData(e, true)).toList() ?? [];
