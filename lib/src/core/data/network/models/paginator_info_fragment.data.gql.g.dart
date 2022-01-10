// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginator_info_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPaginatorInfoFragmentData> _$gPaginatorInfoFragmentDataSerializer =
    new _$GPaginatorInfoFragmentDataSerializer();

class _$GPaginatorInfoFragmentDataSerializer
    implements StructuredSerializer<GPaginatorInfoFragmentData> {
  @override
  final Iterable<Type> types = const [
    GPaginatorInfoFragmentData,
    _$GPaginatorInfoFragmentData
  ];
  @override
  final String wireName = 'GPaginatorInfoFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPaginatorInfoFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'currentPage',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(int)),
      'hasMorePages',
      serializers.serialize(object.hasMorePages,
          specifiedType: const FullType(bool)),
      'lastPage',
      serializers.serialize(object.lastPage,
          specifiedType: const FullType(int)),
      'perPage',
      serializers.serialize(object.perPage, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.firstItem;
    if (value != null) {
      result
        ..add('firstItem')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastItem;
    if (value != null) {
      result
        ..add('lastItem')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GPaginatorInfoFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPaginatorInfoFragmentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'firstItem':
          result.firstItem = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasMorePages':
          result.hasMorePages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'lastItem':
          result.lastItem = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GPaginatorInfoFragmentData extends GPaginatorInfoFragmentData {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int currentPage;
  @override
  final int? firstItem;
  @override
  final bool hasMorePages;
  @override
  final int? lastItem;
  @override
  final int lastPage;
  @override
  final int perPage;
  @override
  final int total;

  factory _$GPaginatorInfoFragmentData(
          [void Function(GPaginatorInfoFragmentDataBuilder)? updates]) =>
      (new GPaginatorInfoFragmentDataBuilder()..update(updates)).build();

  _$GPaginatorInfoFragmentData._(
      {required this.G__typename,
      required this.count,
      required this.currentPage,
      this.firstItem,
      required this.hasMorePages,
      this.lastItem,
      required this.lastPage,
      required this.perPage,
      required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPaginatorInfoFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, 'GPaginatorInfoFragmentData', 'count');
    BuiltValueNullFieldError.checkNotNull(
        currentPage, 'GPaginatorInfoFragmentData', 'currentPage');
    BuiltValueNullFieldError.checkNotNull(
        hasMorePages, 'GPaginatorInfoFragmentData', 'hasMorePages');
    BuiltValueNullFieldError.checkNotNull(
        lastPage, 'GPaginatorInfoFragmentData', 'lastPage');
    BuiltValueNullFieldError.checkNotNull(
        perPage, 'GPaginatorInfoFragmentData', 'perPage');
    BuiltValueNullFieldError.checkNotNull(
        total, 'GPaginatorInfoFragmentData', 'total');
  }

  @override
  GPaginatorInfoFragmentData rebuild(
          void Function(GPaginatorInfoFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPaginatorInfoFragmentDataBuilder toBuilder() =>
      new GPaginatorInfoFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPaginatorInfoFragmentData &&
        G__typename == other.G__typename &&
        count == other.count &&
        currentPage == other.currentPage &&
        firstItem == other.firstItem &&
        hasMorePages == other.hasMorePages &&
        lastItem == other.lastItem &&
        lastPage == other.lastPage &&
        perPage == other.perPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, G__typename.hashCode),
                                    count.hashCode),
                                currentPage.hashCode),
                            firstItem.hashCode),
                        hasMorePages.hashCode),
                    lastItem.hashCode),
                lastPage.hashCode),
            perPage.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPaginatorInfoFragmentData')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('currentPage', currentPage)
          ..add('firstItem', firstItem)
          ..add('hasMorePages', hasMorePages)
          ..add('lastItem', lastItem)
          ..add('lastPage', lastPage)
          ..add('perPage', perPage)
          ..add('total', total))
        .toString();
  }
}

class GPaginatorInfoFragmentDataBuilder
    implements
        Builder<GPaginatorInfoFragmentData, GPaginatorInfoFragmentDataBuilder> {
  _$GPaginatorInfoFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _firstItem;
  int? get firstItem => _$this._firstItem;
  set firstItem(int? firstItem) => _$this._firstItem = firstItem;

  bool? _hasMorePages;
  bool? get hasMorePages => _$this._hasMorePages;
  set hasMorePages(bool? hasMorePages) => _$this._hasMorePages = hasMorePages;

  int? _lastItem;
  int? get lastItem => _$this._lastItem;
  set lastItem(int? lastItem) => _$this._lastItem = lastItem;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  GPaginatorInfoFragmentDataBuilder() {
    GPaginatorInfoFragmentData._initializeBuilder(this);
  }

  GPaginatorInfoFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _currentPage = $v.currentPage;
      _firstItem = $v.firstItem;
      _hasMorePages = $v.hasMorePages;
      _lastItem = $v.lastItem;
      _lastPage = $v.lastPage;
      _perPage = $v.perPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPaginatorInfoFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPaginatorInfoFragmentData;
  }

  @override
  void update(void Function(GPaginatorInfoFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPaginatorInfoFragmentData build() {
    final _$result = _$v ??
        new _$GPaginatorInfoFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GPaginatorInfoFragmentData', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'GPaginatorInfoFragmentData', 'count'),
            currentPage: BuiltValueNullFieldError.checkNotNull(
                currentPage, 'GPaginatorInfoFragmentData', 'currentPage'),
            firstItem: firstItem,
            hasMorePages: BuiltValueNullFieldError.checkNotNull(
                hasMorePages, 'GPaginatorInfoFragmentData', 'hasMorePages'),
            lastItem: lastItem,
            lastPage: BuiltValueNullFieldError.checkNotNull(
                lastPage, 'GPaginatorInfoFragmentData', 'lastPage'),
            perPage: BuiltValueNullFieldError.checkNotNull(
                perPage, 'GPaginatorInfoFragmentData', 'perPage'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, 'GPaginatorInfoFragmentData', 'total'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
