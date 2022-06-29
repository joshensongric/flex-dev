// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlbumsRecord> _$albumsRecordSerializer =
    new _$AlbumsRecordSerializer();

class _$AlbumsRecordSerializer implements StructuredSerializer<AlbumsRecord> {
  @override
  final Iterable<Type> types = const [AlbumsRecord, _$AlbumsRecord];
  @override
  final String wireName = 'AlbumsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AlbumsRecord object,
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
    value = object.shared;
    if (value != null) {
      result
        ..add('shared')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  AlbumsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlbumsRecordBuilder();

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
        case 'shared':
          result.shared = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$AlbumsRecord extends AlbumsRecord {
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> user;
  @override
  final String name;
  @override
  final DocumentReference<Object> shared;
  @override
  final DocumentReference<Object> reference;

  factory _$AlbumsRecord([void Function(AlbumsRecordBuilder) updates]) =>
      (new AlbumsRecordBuilder()..update(updates)).build();

  _$AlbumsRecord._(
      {this.createdTime, this.user, this.name, this.shared, this.reference})
      : super._();

  @override
  AlbumsRecord rebuild(void Function(AlbumsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumsRecordBuilder toBuilder() => new AlbumsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumsRecord &&
        createdTime == other.createdTime &&
        user == other.user &&
        name == other.name &&
        shared == other.shared &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, createdTime.hashCode), user.hashCode),
                name.hashCode),
            shared.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlbumsRecord')
          ..add('createdTime', createdTime)
          ..add('user', user)
          ..add('name', name)
          ..add('shared', shared)
          ..add('reference', reference))
        .toString();
  }
}

class AlbumsRecordBuilder
    implements Builder<AlbumsRecord, AlbumsRecordBuilder> {
  _$AlbumsRecord _$v;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _shared;
  DocumentReference<Object> get shared => _$this._shared;
  set shared(DocumentReference<Object> shared) => _$this._shared = shared;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AlbumsRecordBuilder() {
    AlbumsRecord._initializeBuilder(this);
  }

  AlbumsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _user = $v.user;
      _name = $v.name;
      _shared = $v.shared;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumsRecord;
  }

  @override
  void update(void Function(AlbumsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlbumsRecord build() {
    final _$result = _$v ??
        new _$AlbumsRecord._(
            createdTime: createdTime,
            user: user,
            name: name,
            shared: shared,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
