// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoStruct extends BaseStruct {
  ProdutoStruct({
    int? id,
    String? name,
    String? description,
    double? value,
    int? stockLevel,
    int? categoryId,
    PhotoStruct? photo,
  })  : _id = id,
        _name = name,
        _description = description,
        _value = value,
        _stockLevel = stockLevel,
        _categoryId = categoryId,
        _photo = photo;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "stock_level" field.
  int? _stockLevel;
  int get stockLevel => _stockLevel ?? 0;
  set stockLevel(int? val) => _stockLevel = val;

  void incrementStockLevel(int amount) => stockLevel = stockLevel + amount;

  bool hasStockLevel() => _stockLevel != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  // "photo" field.
  PhotoStruct? _photo;
  PhotoStruct get photo => _photo ?? PhotoStruct();
  set photo(PhotoStruct? val) => _photo = val;

  void updatePhoto(Function(PhotoStruct) updateFn) {
    updateFn(_photo ??= PhotoStruct());
  }

  bool hasPhoto() => _photo != null;

  static ProdutoStruct fromMap(Map<String, dynamic> data) => ProdutoStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        value: castToType<double>(data['value']),
        stockLevel: castToType<int>(data['stock_level']),
        categoryId: castToType<int>(data['category_id']),
        photo: data['photo'] is PhotoStruct
            ? data['photo']
            : PhotoStruct.maybeFromMap(data['photo']),
      );

  static ProdutoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'value': _value,
        'stock_level': _stockLevel,
        'category_id': _categoryId,
        'photo': _photo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
        'stock_level': serializeParam(
          _stockLevel,
          ParamType.int,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProdutoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
        stockLevel: deserializeParam(
          data['stock_level'],
          ParamType.int,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
        photo: deserializeStructParam(
          data['photo'],
          ParamType.DataStruct,
          false,
          structBuilder: PhotoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProdutoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutoStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        value == other.value &&
        stockLevel == other.stockLevel &&
        categoryId == other.categoryId &&
        photo == other.photo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, description, value, stockLevel, categoryId, photo]);
}

ProdutoStruct createProdutoStruct({
  int? id,
  String? name,
  String? description,
  double? value,
  int? stockLevel,
  int? categoryId,
  PhotoStruct? photo,
}) =>
    ProdutoStruct(
      id: id,
      name: name,
      description: description,
      value: value,
      stockLevel: stockLevel,
      categoryId: categoryId,
      photo: photo ?? PhotoStruct(),
    );
