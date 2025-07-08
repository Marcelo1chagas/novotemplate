// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class Events2Struct extends FFFirebaseStruct {
  Events2Struct({
    String? price,
    String? category,
    String? title,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _price = price,
        _category = category,
        _title = title,
        _img = img,
        super(firestoreUtilData);

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

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

  static Events2Struct fromMap(Map<String, dynamic> data) => Events2Struct(
        price: data['price'] as String?,
        category: data['category'] as String?,
        title: data['title'] as String?,
        img: data['img'] as String?,
      );

  static Events2Struct? maybeFromMap(dynamic data) =>
      data is Map ? Events2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'category': _category,
        'title': _title,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static Events2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Events2Struct(
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'Events2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Events2Struct &&
        price == other.price &&
        category == other.category &&
        title == other.title &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([price, category, title, img]);
}

Events2Struct createEvents2Struct({
  String? price,
  String? category,
  String? title,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Events2Struct(
      price: price,
      category: category,
      title: title,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Events2Struct? updateEvents2Struct(
  Events2Struct? events2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    events2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEvents2StructData(
  Map<String, dynamic> firestoreData,
  Events2Struct? events2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (events2 == null) {
    return;
  }
  if (events2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && events2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final events2Data = getEvents2FirestoreData(events2, forFieldValue);
  final nestedData = events2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = events2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEvents2FirestoreData(
  Events2Struct? events2, [
  bool forFieldValue = false,
]) {
  if (events2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(events2.toMap());

  // Add any Firestore field values
  events2.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEvents2ListFirestoreData(
  List<Events2Struct>? events2s,
) =>
    events2s?.map((e) => getEvents2FirestoreData(e, true)).toList() ?? [];
