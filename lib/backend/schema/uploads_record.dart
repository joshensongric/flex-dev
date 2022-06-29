import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'uploads_record.g.dart';

abstract class UploadsRecord
    implements Built<UploadsRecord, UploadsRecordBuilder> {
  static Serializer<UploadsRecord> get serializer => _$uploadsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  DocumentReference get user;

  @nullable
  String get name;

  @nullable
  String get image;

  @nullable
  BuiltList<String> get images;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UploadsRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..images = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('uploads');

  static Stream<UploadsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UploadsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UploadsRecord._();
  factory UploadsRecord([void Function(UploadsRecordBuilder) updates]) =
      _$UploadsRecord;

  static UploadsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUploadsRecordData({
  DateTime createdTime,
  DocumentReference user,
  String name,
  String image,
}) =>
    serializers.toFirestore(
        UploadsRecord.serializer,
        UploadsRecord((u) => u
          ..createdTime = createdTime
          ..user = user
          ..name = name
          ..image = image
          ..images = null));
