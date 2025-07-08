import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosBrasilRecord extends FirestoreRecord {
  EventosBrasilRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomedoevento" field.
  String? _nomedoevento;
  String get nomedoevento => _nomedoevento ?? '';
  bool hasNomedoevento() => _nomedoevento != null;

  // "datadoevento" field.
  String? _datadoevento;
  String get datadoevento => _datadoevento ?? '';
  bool hasDatadoevento() => _datadoevento != null;

  // "localdoevento" field.
  String? _localdoevento;
  String get localdoevento => _localdoevento ?? '';
  bool hasLocaldoevento() => _localdoevento != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "ingressosdisponiveis" field.
  int? _ingressosdisponiveis;
  int get ingressosdisponiveis => _ingressosdisponiveis ?? 0;
  bool hasIngressosdisponiveis() => _ingressosdisponiveis != null;

  // "sobreoEVENTO" field.
  String? _sobreoEVENTO;
  String get sobreoEVENTO => _sobreoEVENTO ?? '';
  bool hasSobreoEVENTO() => _sobreoEVENTO != null;

  // "image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  void _initializeFields() {
    _nomedoevento = snapshotData['nomedoevento'] as String?;
    _datadoevento = snapshotData['datadoevento'] as String?;
    _localdoevento = snapshotData['localdoevento'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _image = snapshotData['image'] as String?;
    _rating = castToType<int>(snapshotData['rating']);
    _ratings = getDataList(snapshotData['ratings']);
    _ingressosdisponiveis =
        castToType<int>(snapshotData['ingressosdisponiveis']);
    _sobreoEVENTO = snapshotData['sobreoEVENTO'] as String?;
    _image2 = snapshotData['image2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EventosBrasil');

  static Stream<EventosBrasilRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosBrasilRecord.fromSnapshot(s));

  static Future<EventosBrasilRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosBrasilRecord.fromSnapshot(s));

  static EventosBrasilRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosBrasilRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosBrasilRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosBrasilRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosBrasilRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosBrasilRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosBrasilRecordData({
  String? nomedoevento,
  String? datadoevento,
  String? localdoevento,
  String? cidade,
  String? image,
  int? rating,
  int? ingressosdisponiveis,
  String? sobreoEVENTO,
  String? image2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomedoevento': nomedoevento,
      'datadoevento': datadoevento,
      'localdoevento': localdoevento,
      'cidade': cidade,
      'image': image,
      'rating': rating,
      'ingressosdisponiveis': ingressosdisponiveis,
      'sobreoEVENTO': sobreoEVENTO,
      'image2': image2,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosBrasilRecordDocumentEquality
    implements Equality<EventosBrasilRecord> {
  const EventosBrasilRecordDocumentEquality();

  @override
  bool equals(EventosBrasilRecord? e1, EventosBrasilRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomedoevento == e2?.nomedoevento &&
        e1?.datadoevento == e2?.datadoevento &&
        e1?.localdoevento == e2?.localdoevento &&
        e1?.cidade == e2?.cidade &&
        e1?.image == e2?.image &&
        e1?.rating == e2?.rating &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        e1?.ingressosdisponiveis == e2?.ingressosdisponiveis &&
        e1?.sobreoEVENTO == e2?.sobreoEVENTO &&
        e1?.image2 == e2?.image2;
  }

  @override
  int hash(EventosBrasilRecord? e) => const ListEquality().hash([
        e?.nomedoevento,
        e?.datadoevento,
        e?.localdoevento,
        e?.cidade,
        e?.image,
        e?.rating,
        e?.ratings,
        e?.ingressosdisponiveis,
        e?.sobreoEVENTO,
        e?.image2
      ]);

  @override
  bool isValidKey(Object? o) => o is EventosBrasilRecord;
}
