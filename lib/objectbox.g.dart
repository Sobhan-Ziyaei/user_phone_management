// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/user.dart';
import 'models/user_phone.dart';
import 'models/user_sim.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 8720876133369222699),
      name: 'User',
      lastPropertyId: const IdUid(2, 1424578953705027941),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2775276170553381159),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1424578953705027941),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(1, 751949523459344768),
            name: 'phones',
            targetId: const IdUid(2, 2099879679874356396)),
        ModelRelation(
            id: const IdUid(3, 9025680439914693600),
            name: 'sims',
            targetId: const IdUid(3, 8557249298016761533))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 2099879679874356396),
      name: 'UserPhone',
      lastPropertyId: const IdUid(2, 4009019478835516442),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6281712971837724278),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4009019478835516442),
            name: 'ownerId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 3720726435416201982),
            relationTarget: 'User')
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(4, 4527140499173109839),
            name: 'sims',
            targetId: const IdUid(3, 8557249298016761533))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 8557249298016761533),
      name: 'UserSim',
      lastPropertyId: const IdUid(3, 6844645908173467628),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 9186424502715358578),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4415956633486412004),
            name: 'phoneOwnerId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 7368859512936647764),
            relationTarget: 'UserPhone'),
        ModelProperty(
            id: const IdUid(3, 6844645908173467628),
            name: 'userOwnerId',
            type: 11,
            flags: 520,
            indexId: const IdUid(3, 829660583491856506),
            relationTarget: 'User')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 8557249298016761533),
      lastIndexId: const IdUid(3, 829660583491856506),
      lastRelationId: const IdUid(4, 4527140499173109839),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [2533665393080313201],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    User: EntityDefinition<User>(
        model: _entities[0],
        toOneRelations: (User object) => [],
        toManyRelations: (User object) => {
              RelInfo<User>.toMany(1, object.id): object.phones,
              RelInfo<User>.toMany(3, object.id): object.sims
            },
        getId: (User object) => object.id,
        setId: (User object, int id) {
          object.id = id;
        },
        objectToFB: (User object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final object = User(id: idParam, name: nameParam);
          InternalToManyAccess.setRelInfo<User>(
              object.phones, store, RelInfo<User>.toMany(1, object.id));
          InternalToManyAccess.setRelInfo<User>(
              object.sims, store, RelInfo<User>.toMany(3, object.id));
          return object;
        }),
    UserPhone: EntityDefinition<UserPhone>(
        model: _entities[1],
        toOneRelations: (UserPhone object) => [object.owner],
        toManyRelations: (UserPhone object) =>
            {RelInfo<UserPhone>.toMany(4, object.id): object.sims},
        getId: (UserPhone object) => object.id,
        setId: (UserPhone object, int id) {
          object.id = id;
        },
        objectToFB: (UserPhone object, fb.Builder fbb) {
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.owner.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final object = UserPhone(id: idParam);
          object.owner.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0);
          object.owner.attach(store);
          InternalToManyAccess.setRelInfo<UserPhone>(
              object.sims, store, RelInfo<UserPhone>.toMany(4, object.id));
          return object;
        }),
    UserSim: EntityDefinition<UserSim>(
        model: _entities[2],
        toOneRelations: (UserSim object) =>
            [object.phoneOwner, object.userOwner],
        toManyRelations: (UserSim object) => {},
        getId: (UserSim object) => object.id,
        setId: (UserSim object, int id) {
          object.id = id;
        },
        objectToFB: (UserSim object, fb.Builder fbb) {
          fbb.startTable(4);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.phoneOwner.targetId);
          fbb.addInt64(2, object.userOwner.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final object = UserSim(id: idParam);
          object.phoneOwner.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0);
          object.phoneOwner.attach(store);
          object.userOwner.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.userOwner.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [User] entity fields to define ObjectBox queries.
class User_ {
  /// see [User.id]
  static final id = QueryIntegerProperty<User>(_entities[0].properties[0]);

  /// see [User.name]
  static final name = QueryStringProperty<User>(_entities[0].properties[1]);

  /// see [User.phones]
  static final phones =
      QueryRelationToMany<User, UserPhone>(_entities[0].relations[0]);

  /// see [User.sims]
  static final sims =
      QueryRelationToMany<User, UserSim>(_entities[0].relations[1]);
}

/// [UserPhone] entity fields to define ObjectBox queries.
class UserPhone_ {
  /// see [UserPhone.id]
  static final id = QueryIntegerProperty<UserPhone>(_entities[1].properties[0]);

  /// see [UserPhone.owner]
  static final owner =
      QueryRelationToOne<UserPhone, User>(_entities[1].properties[1]);

  /// see [UserPhone.sims]
  static final sims =
      QueryRelationToMany<UserPhone, UserSim>(_entities[1].relations[0]);
}

/// [UserSim] entity fields to define ObjectBox queries.
class UserSim_ {
  /// see [UserSim.id]
  static final id = QueryIntegerProperty<UserSim>(_entities[2].properties[0]);

  /// see [UserSim.phoneOwner]
  static final phoneOwner =
      QueryRelationToOne<UserSim, UserPhone>(_entities[2].properties[1]);

  /// see [UserSim.userOwner]
  static final userOwner =
      QueryRelationToOne<UserSim, User>(_entities[2].properties[2]);
}
