import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'albums_record.g.dart';

abstract class AlbumsRecord
    implements Built<AlbumsRecord, AlbumsRecordBuilder> {
  static Serializer<AlbumsRecord> get serializer => _$albumsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  DocumentReference get user;

  @nullable
  String get name;

  @nullable
  DocumentReference get shared;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AlbumsRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('albums');

  static Stream<AlbumsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AlbumsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AlbumsRecord._();
  factory AlbumsRecord([void Function(AlbumsRecordBuilder) updates]) =
      _$AlbumsRecord;

  static AlbumsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAlbumsRecordData({
  DateTime createdTime,
  DocumentReference user,
  String name,
  DocumentReference shared,
}) =>
    serializers.toFirestore(
        AlbumsRecord.serializer,
        AlbumsRecord((a) => a
          ..createdTime = createdTime
          ..user = user
          ..name = name
          ..shared = shared));
