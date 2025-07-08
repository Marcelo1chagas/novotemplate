// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends FFFirebaseStruct {
  TicketStruct({
    String? title,
    String? price,
    String? description,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _price = price,
        _description = description,
        _quantity = quantity,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        title: data['title'] as String?,
        price: data['price'] as String?,
        description: data['description'] as String?,
        quantity: castToType<int>(data['quantity']),
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'price': _price,
        'description': _description,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        title == other.title &&
        price == other.price &&
        description == other.description &&
        quantity == other.quantity;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, price, description, quantity]);
}

TicketStruct createTicketStruct({
  String? title,
  String? price,
  String? description,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TicketStruct(
      title: title,
      price: price,
      description: description,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TicketStruct? updateTicketStruct(
  TicketStruct? ticket, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ticket
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTicketStructData(
  Map<String, dynamic> firestoreData,
  TicketStruct? ticket,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ticket == null) {
    return;
  }
  if (ticket.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ticket.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ticketData = getTicketFirestoreData(ticket, forFieldValue);
  final nestedData = ticketData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ticket.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTicketFirestoreData(
  TicketStruct? ticket, [
  bool forFieldValue = false,
]) {
  if (ticket == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ticket.toMap());

  // Add any Firestore field values
  ticket.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTicketListFirestoreData(
  List<TicketStruct>? tickets,
) =>
    tickets?.map((e) => getTicketFirestoreData(e, true)).toList() ?? [];
