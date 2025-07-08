// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrganizatorsStruct extends FFFirebaseStruct {
  OrganizatorsStruct({
    String? title,
    String? followers,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _followers = followers,
        _img = img,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "followers" field.
  String? _followers;
  String get followers => _followers ?? '';
  set followers(String? val) => _followers = val;

  bool hasFollowers() => _followers != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static OrganizatorsStruct fromMap(Map<String, dynamic> data) =>
      OrganizatorsStruct(
        title: data['title'] as String?,
        followers: data['followers'] as String?,
        img: data['img'] as String?,
      );

  static OrganizatorsStruct? maybeFromMap(dynamic data) => data is Map
      ? OrganizatorsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'followers': _followers,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'followers': serializeParam(
          _followers,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrganizatorsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrganizatorsStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        followers: deserializeParam(
          data['followers'],
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
  String toString() => 'OrganizatorsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrganizatorsStruct &&
        title == other.title &&
        followers == other.followers &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([title, followers, img]);
}

OrganizatorsStruct createOrganizatorsStruct({
  String? title,
  String? followers,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrganizatorsStruct(
      title: title,
      followers: followers,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrganizatorsStruct? updateOrganizatorsStruct(
  OrganizatorsStruct? organizators, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    organizators
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrganizatorsStructData(
  Map<String, dynamic> firestoreData,
  OrganizatorsStruct? organizators,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (organizators == null) {
    return;
  }
  if (organizators.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && organizators.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final organizatorsData =
      getOrganizatorsFirestoreData(organizators, forFieldValue);
  final nestedData =
      organizatorsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = organizators.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrganizatorsFirestoreData(
  OrganizatorsStruct? organizators, [
  bool forFieldValue = false,
]) {
  if (organizators == null) {
    return {};
  }
  final firestoreData = mapToFirestore(organizators.toMap());

  // Add any Firestore field values
  organizators.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrganizatorsListFirestoreData(
  List<OrganizatorsStruct>? organizatorss,
) =>
    organizatorss?.map((e) => getOrganizatorsFirestoreData(e, true)).toList() ??
    [];
