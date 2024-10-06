import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VenuesRecord extends FirestoreRecord {
  VenuesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "amenities" field.
  List<String>? _amenities;
  List<String> get amenities => _amenities ?? const [];
  bool hasAmenities() => _amenities != null;

  // "venue_name" field.
  String? _venueName;
  String get venueName => _venueName ?? '';
  bool hasVenueName() => _venueName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "availableSlots" field.
  List<DateTime>? _availableSlots;
  List<DateTime> get availableSlots => _availableSlots ?? const [];
  bool hasAvailableSlots() => _availableSlots != null;

  // "bookedSlots" field.
  List<DateTime>? _bookedSlots;
  List<DateTime> get bookedSlots => _bookedSlots ?? const [];
  bool hasBookedSlots() => _bookedSlots != null;

  // "venue_email" field.
  String? _venueEmail;
  String get venueEmail => _venueEmail ?? '';
  bool hasVenueEmail() => _venueEmail != null;

  void _initializeFields() {
    _images = getDataList(snapshotData['images']);
    _type = snapshotData['type'] as String?;
    _amenities = getDataList(snapshotData['amenities']);
    _venueName = snapshotData['venue_name'] as String?;
    _description = snapshotData['Description'] as String?;
    _address = snapshotData['Address'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _availableSlots = getDataList(snapshotData['availableSlots']);
    _bookedSlots = getDataList(snapshotData['bookedSlots']);
    _venueEmail = snapshotData['venue_email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venues');

  static Stream<VenuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VenuesRecord.fromSnapshot(s));

  static Future<VenuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VenuesRecord.fromSnapshot(s));

  static VenuesRecord fromSnapshot(DocumentSnapshot snapshot) => VenuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VenuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VenuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VenuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VenuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVenuesRecordData({
  String? type,
  String? venueName,
  String? description,
  String? address,
  double? price,
  String? venueEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'venue_name': venueName,
      'Description': description,
      'Address': address,
      'price': price,
      'venue_email': venueEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class VenuesRecordDocumentEquality implements Equality<VenuesRecord> {
  const VenuesRecordDocumentEquality();

  @override
  bool equals(VenuesRecord? e1, VenuesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.images, e2?.images) &&
        e1?.type == e2?.type &&
        listEquality.equals(e1?.amenities, e2?.amenities) &&
        e1?.venueName == e2?.venueName &&
        e1?.description == e2?.description &&
        e1?.address == e2?.address &&
        e1?.price == e2?.price &&
        listEquality.equals(e1?.availableSlots, e2?.availableSlots) &&
        listEquality.equals(e1?.bookedSlots, e2?.bookedSlots) &&
        e1?.venueEmail == e2?.venueEmail;
  }

  @override
  int hash(VenuesRecord? e) => const ListEquality().hash([
        e?.images,
        e?.type,
        e?.amenities,
        e?.venueName,
        e?.description,
        e?.address,
        e?.price,
        e?.availableSlots,
        e?.bookedSlots,
        e?.venueEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is VenuesRecord;
}
