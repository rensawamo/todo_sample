// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDoState {
  List<ToDo> get todosList => throw _privateConstructorUsedError;
  TextEditingController get todoController =>
      throw _privateConstructorUsedError;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDoStateCopyWith<ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res, ToDoState>;
  @useResult
  $Res call({List<ToDo> todosList, TextEditingController todoController});
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res, $Val extends ToDoState>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todosList = null,
    Object? todoController = null,
  }) {
    return _then(_value.copyWith(
      todosList: null == todosList
          ? _value.todosList
          : todosList // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      todoController: null == todoController
          ? _value.todoController
          : todoController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoStateImplCopyWith<$Res>
    implements $ToDoStateCopyWith<$Res> {
  factory _$$ToDoStateImplCopyWith(
          _$ToDoStateImpl value, $Res Function(_$ToDoStateImpl) then) =
      __$$ToDoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ToDo> todosList, TextEditingController todoController});
}

/// @nodoc
class __$$ToDoStateImplCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res, _$ToDoStateImpl>
    implements _$$ToDoStateImplCopyWith<$Res> {
  __$$ToDoStateImplCopyWithImpl(
      _$ToDoStateImpl _value, $Res Function(_$ToDoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todosList = null,
    Object? todoController = null,
  }) {
    return _then(_$ToDoStateImpl(
      todosList: null == todosList
          ? _value._todosList
          : todosList // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      todoController: null == todoController
          ? _value.todoController
          : todoController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$ToDoStateImpl implements _ToDoState {
  const _$ToDoStateImpl(
      {required final List<ToDo> todosList, required this.todoController})
      : _todosList = todosList;

  final List<ToDo> _todosList;
  @override
  List<ToDo> get todosList {
    if (_todosList is EqualUnmodifiableListView) return _todosList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todosList);
  }

  @override
  final TextEditingController todoController;

  @override
  String toString() {
    return 'ToDoState(todosList: $todosList, todoController: $todoController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoStateImpl &&
            const DeepCollectionEquality()
                .equals(other._todosList, _todosList) &&
            (identical(other.todoController, todoController) ||
                other.todoController == todoController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todosList), todoController);

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      __$$ToDoStateImplCopyWithImpl<_$ToDoStateImpl>(this, _$identity);
}

abstract class _ToDoState implements ToDoState {
  const factory _ToDoState(
      {required final List<ToDo> todosList,
      required final TextEditingController todoController}) = _$ToDoStateImpl;

  @override
  List<ToDo> get todosList;
  @override
  TextEditingController get todoController;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
