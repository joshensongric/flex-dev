// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UploadsRecord> _$uploadsRecordSerializer =
    new _$UploadsRecordSerializer();

class _$UploadsRecordSerializer implements StructuredSerializer<UploadsRecord> {
  @override
  final Iterable<Type> types = const [UploadsRecord, _$UploadsRecord];
  @override
  final String wireName = 'UploadsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UploadsRecord object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.images;
    if (value != null) {
      result
        ..add('images')
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
  UploadsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UploadsRecordBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
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

class _$UploadsRecord extends UploadsRecord {
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> user;
  @override
  final String name;
  @override
  final String image;
  @override
  final BuiltList<String> images;
  @override
  final DocumentReference<Object> reference;

  factory _$UploadsRecord([void Function(UploadsRecordBuilder) updates]) =>
      (new UploadsRecordBuilder()..update(updates)).build();

  _$UploadsRecord._(
      {this.createdTime,
      this.user,
      this.name,
      this.image,
      this.images,
      this.reference})
      : super._();

  @override
  UploadsRecord rebuild(void Function(UploadsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadsRecordBuilder toBuilder() => new UploadsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadsRecord &&
        createdTime == other.createdTime &&
        user == other.user &&
        name == other.name &&
        image == other.image &&
        images == other.images &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, createdTime.hashCode), user.hashCode),
                    name.hashCode),
                image.hashCode),
            images.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UploadsRecord')
          ..add('createdTime', createdTime)
          ..add('user', user)
          ..add('name', name)
          ..add('image', image)
          ..add('images', images)
          ..add('reference', reference))
        .toString();
  }
}

class UploadsRecordBuilder
    implements Builder<UploadsRecord, UploadsRecordBuilder> {
  _$UploadsRecord _$v;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UploadsRecordBuilder() {
    UploadsRecord._initializeBuilder(this);
  }

  UploadsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _user = $v.user;
      _name = $v.name;
      _image = $v.image;
      _images = $v.images?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadsRecord;
  }

  @override
  void update(void Function(UploadsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UploadsRecord build() {
    _$UploadsRecord _$result;
    try {
      _$result = _$v ??
          new _$UploadsRecord._(
              createdTime: createdTime,
              user: user,
              name: name,
              image: image,
              images: _images?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UploadsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
