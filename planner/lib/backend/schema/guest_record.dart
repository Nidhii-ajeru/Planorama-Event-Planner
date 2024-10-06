import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuestRecord extends FirestoreRecord {
  GuestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "guest_name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "guest_phone" field.
  String? _guestPhone;
  String get guestPhone => _guestPhone ?? '';
  bool hasGuestPhone() => _guestPhone != null;

  // "accepted" field.
  bool? _accepted;
  bool get accepted => _accepted ?? false;
  bool hasAccepted() => _accepted != null;

  // "user_ref_guest" field.
  DocumentReference? _userRefGuest;
  DocumentReference? get userRefGuest => _userRefGuest;
  bool hasUserRefGuest() => _userRefGuest != null;

  void _initializeFields() {
    _guestName = snapshotData['guest_name'] as String?;
    _guestPhone = snapshotData['guest_phone'] as String?;
    _accepted = snapshotData['accepted'] as bool?;
    _userRefGuest = snapshotData['user_ref_guest'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guest');

  static Stream<GuestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuestRecord.fromSnapshot(s));

  static Future<GuestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuestRecord.fromSnapshot(s));

  static GuestRecord fromSnapshot(DocumentSnapshot snapshot) => GuestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuestRecordData({
  String? guestName,
  String? guestPhone,
  bool? accepted,
  DocumentReference? userRefGuest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'guest_name': guestName,
      'guest_phone': guestPhone,
      'accepted': accepted,
      'user_ref_guest': userRefGuest,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuestRecordDocumentEquality implements Equality<GuestRecord> {
  const GuestRecordDocumentEquality();

  @override
  bool equals(GuestRecord? e1, GuestRecord? e2) {
    return e1?.guestName == e2?.guestName &&
        e1?.guestPhone == e2?.guestPhone &&
        e1?.accepted == e2?.accepted &&
        e1?.userRefGuest == e2?.userRefGuest;
  }

  @override
  int hash(GuestRecord? e) => const ListEquality()
      .hash([e?.guestName, e?.guestPhone, e?.accepted, e?.userRefGuest]);

  @override
  bool isValidKey(Object? o) => o is GuestRecord;
}
