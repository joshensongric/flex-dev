// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagesRecord> _$imagesRecordSerializer =
    new _$ImagesRecordSerializer();

class _$ImagesRecordSerializer implements StructuredSerializer<ImagesRecord> {
  @override
  final Iterable<Type> types = const [ImagesRecord, _$ImagesRecord];
  @override
  final String wireName = 'ImagesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ImagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageList;
    if (value != null) {
      result
        ..add('image_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ImagesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_list':
          result.imageList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ImagesRecord extends ImagesRecord {
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> user;
  @override
  final String uid;
  @override
  final String image;
  @override
  final BuiltList<String> imageList;
  @override
  final DocumentReference<Object> reference;

  factory _$ImagesRecord([void Function(ImagesRecordBuilder) updates]) =>
      (new ImagesRecordBuilder()..update(updates)).build();

  _$ImagesRecord._(
      {this.createdTime,
      this.user,
      this.uid,
      this.image,
      this.imageList,
      this.reference})
      : super._();

  @override
  ImagesRecord rebuild(void Function(ImagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesRecordBuilder toBuilder() => new ImagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagesRecord &&
        createdTime == other.createdTime &&
        user == other.user &&
        uid == other.uid &&
        image == other.image &&
        imageList == other.imageList &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, createdTime.hashCode), user.hashCode),
                    uid.hashCode),
                image.hashCode),
            imageList.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImagesRecord')
          ..add('createdTime', createdTime)
          ..add('user', user)
          ..add('uid', uid)
          ..add('image', image)
          ..add('imageList', imageList)
          ..add('reference', reference))
        .toString();
  }
}

class ImagesRecordBuilder
    implements Builder<ImagesRecord, ImagesRecordBuilder> {
  _$ImagesRecord _$v;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  ListBuilder<String> _imageList;
  ListBuilder<String> get imageList =>
      _$this._imageList ??= new ListBuilder<String>();
  set imageList(ListBuilder<String> imageList) => _$this._imageList = imageList;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ImagesRecordBuilder() {
    ImagesRecord._initializeBuilder(this);
  }

  ImagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _user = $v.user;
      _uid = $v.uid;
      _image = $v.image;
      _imageList = $v.imageList?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagesRecord;
  }

  @override
  void update(void Function(ImagesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImagesRecord build() {
    _$ImagesRecord _$result;
    try {
      _$result = _$v ??
          new _$ImagesRecord._(
              createdTime: createdTime,
              user: user,
              uid: uid,
              image: image,
              imageList: _imageList?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imageList';
        _imageList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImagesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
