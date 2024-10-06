import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "venue_id" field.
  int? _venueId;
  int get venueId => _venueId ?? 0;
  bool hasVenueId() => _venueId != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "venue_ref" field.
  DocumentReference? _venueRef;
  DocumentReference? get venueRef => _venueRef;
  bool hasVenueRef() => _venueRef != null;

  // "venue_name" field.
  String? _venueName;
  String get venueName => _venueName ?? '';
  bool hasVenueName() => _venueName != null;

  // "venue_image" field.
  String? _venueImage;
  String get venueImage => _venueImage ?? '';
  bool hasVenueImage() => _venueImage != null;

  // "venue_desc" field.
  String? _venueDesc;
  String get venueDesc => _venueDesc ?? '';
  bool hasVenueDesc() => _venueDesc != null;

  // "venue_email" field.
  String? _venueEmail;
  String get venueEmail => _venueEmail ?? '';
  bool hasVenueEmail() => _venueEmail != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "stime" field.
  String? _stime;
  String get stime => _stime ?? '';
  bool hasStime() => _stime != null;

  // "etime" field.
  String? _etime;
  String get etime => _etime ?? '';
  bool hasEtime() => _etime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _venueId = castToType<int>(snapshotData['venue_id']);
    _price = castToType<double>(snapshotData['price']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _venueRef = snapshotData['venue_ref'] as DocumentReference?;
    _venueName = snapshotData['venue_name'] as String?;
    _venueImage = snapshotData['venue_image'] as String?;
    _venueDesc = snapshotData['venue_desc'] as String?;
    _venueEmail = snapshotData['venue_email'] as String?;
    _status = snapshotData['status'] as bool?;
    _date = snapshotData['date'] as String?;
    _stime = snapshotData['stime'] as String?;
    _etime = snapshotData['etime'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  int? venueId,
  double? price,
  DocumentReference? userRef,
  DocumentReference? venueRef,
  String? venueName,
  String? venueImage,
  String? venueDesc,
  String? venueEmail,
  bool? status,
  String? date,
  String? stime,
  String? etime,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'venue_id': venueId,
      'price': price,
      'user_ref': userRef,
      'venue_ref': venueRef,
      'venue_name': venueName,
      'venue_image': venueImage,
      'venue_desc': venueDesc,
      'venue_email': venueEmail,
      'status': status,
      'date': date,
      'stime': stime,
      'etime': etime,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.venueId == e2?.venueId &&
        e1?.price == e2?.price &&
        e1?.userRef == e2?.userRef &&
        e1?.venueRef == e2?.venueRef &&
        e1?.venueName == e2?.venueName &&
        e1?.venueImage == e2?.venueImage &&
        e1?.venueDesc == e2?.venueDesc &&
        e1?.venueEmail == e2?.venueEmail &&
        e1?.status == e2?.status &&
        e1?.date == e2?.date &&
        e1?.stime == e2?.stime &&
        e1?.etime == e2?.etime &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.venueId,
        e?.price,
        e?.userRef,
        e?.venueRef,
        e?.venueName,
        e?.venueImage,
        e?.venueDesc,
        e?.venueEmail,
        e?.status,
        e?.date,
        e?.stime,
        e?.etime,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
