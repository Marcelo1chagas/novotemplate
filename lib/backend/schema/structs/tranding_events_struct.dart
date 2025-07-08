// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TrandingEventsStruct extends FFFirebaseStruct {
  TrandingEventsStruct({
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

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static TrandingEventsStruct fromMap(Map<String, dynamic> data) =>
      TrandingEventsStruct(
        price: data['Price'] as String?,
        category: data['Category'] as String?,
        title: data['Title'] as String?,
        img: data['img'] as String?,
      );

  static TrandingEventsStruct? maybeFromMap(dynamic data) => data is Map
      ? TrandingEventsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Price': _price,
        'Category': _category,
        'Title': _title,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Price': serializeParam(
          _price,
          ParamType.String,
        ),
        'Category': serializeParam(
          _category,
          ParamType.String,
        ),
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrandingEventsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrandingEventsStruct(
        price: deserializeParam(
          data['Price'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['Category'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['Title'],
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
  String toString() => 'TrandingEventsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrandingEventsStruct &&
        price == other.price &&
        category == other.category &&
        title == other.title &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([price, category, title, img]);
}

TrandingEventsStruct createTrandingEventsStruct({
  String? price,
  String? category,
  String? title,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrandingEventsStruct(
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

TrandingEventsStruct? updateTrandingEventsStruct(
  TrandingEventsStruct? trandingEvents, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trandingEvents
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrandingEventsStructData(
  Map<String, dynamic> firestoreData,
  TrandingEventsStruct? trandingEvents,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trandingEvents == null) {
    return;
  }
  if (trandingEvents.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trandingEvents.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trandingEventsData =
      getTrandingEventsFirestoreData(trandingEvents, forFieldValue);
  final nestedData =
      trandingEventsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trandingEvents.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrandingEventsFirestoreData(
  TrandingEventsStruct? trandingEvents, [
  bool forFieldValue = false,
]) {
  if (trandingEvents == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trandingEvents.toMap());

  // Add any Firestore field values
  trandingEvents.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrandingEventsListFirestoreData(
  List<TrandingEventsStruct>? trandingEventss,
) =>
    trandingEventss
        ?.map((e) => getTrandingEventsFirestoreData(e, true))
        .toList() ??
    [];
