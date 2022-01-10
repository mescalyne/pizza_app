// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_compain_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMarketingCompaignFragmentVars>
    _$gMarketingCompaignFragmentVarsSerializer =
    new _$GMarketingCompaignFragmentVarsSerializer();

class _$GMarketingCompaignFragmentVarsSerializer
    implements StructuredSerializer<GMarketingCompaignFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GMarketingCompaignFragmentVars,
    _$GMarketingCompaignFragmentVars
  ];
  @override
  final String wireName = 'GMarketingCompaignFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarketingCompaignFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMarketingCompaignFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMarketingCompaignFragmentVarsBuilder().build();
  }
}

class _$GMarketingCompaignFragmentVars extends GMarketingCompaignFragmentVars {
  factory _$GMarketingCompaignFragmentVars(
          [void Function(GMarketingCompaignFragmentVarsBuilder)? updates]) =>
      (new GMarketingCompaignFragmentVarsBuilder()..update(updates)).build();

  _$GMarketingCompaignFragmentVars._() : super._();

  @override
  GMarketingCompaignFragmentVars rebuild(
          void Function(GMarketingCompaignFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarketingCompaignFragmentVarsBuilder toBuilder() =>
      new GMarketingCompaignFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarketingCompaignFragmentVars;
  }

  @override
  int get hashCode {
    return 669244749;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GMarketingCompaignFragmentVars')
        .toString();
  }
}

class GMarketingCompaignFragmentVarsBuilder
    implements
        Builder<GMarketingCompaignFragmentVars,
            GMarketingCompaignFragmentVarsBuilder> {
  _$GMarketingCompaignFragmentVars? _$v;

  GMarketingCompaignFragmentVarsBuilder();

  @override
  void replace(GMarketingCompaignFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarketingCompaignFragmentVars;
  }

  @override
  void update(void Function(GMarketingCompaignFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMarketingCompaignFragmentVars build() {
    final _$result = _$v ?? new _$GMarketingCompaignFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
