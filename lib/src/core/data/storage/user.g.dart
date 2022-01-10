// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GeolocationStatusAdapter extends TypeAdapter<GeolocationStatus> {
  @override
  final int typeId = 1;

  @override
  GeolocationStatus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeolocationStatus(
      fields[0] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, GeolocationStatus obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeolocationStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TokenPayloadAdapter extends TypeAdapter<TokenPayload> {
  @override
  final int typeId = 0;

  @override
  TokenPayload read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenPayload(
      fields[0] as String?,
      fields[1] as String?,
      fields[2] as int?,
      fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TokenPayload obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.refreshToken)
      ..writeByte(2)
      ..write(obj.expiresTime)
      ..writeByte(3)
      ..write(obj.tokenType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenPayloadAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
