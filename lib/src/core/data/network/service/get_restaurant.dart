import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class GetRestaurantApi {
  Future<GGetRestaurantData?> getRestaurant(int id);
  Future<GGetRestaurantByLocationQueryData> getRestaurantByLocation(
      double latitude, double longitude);
  Future<GGetRestaurantsQueryData> getRestaurants(int? cityId);
}

@Injectable(as: GetRestaurantApi)
class GetRestaurantApiImpl extends GetRestaurantApi {
  final GraphQLClient _client;

  GetRestaurantApiImpl(this._client);

  @override
  Future<GGetRestaurantData?> getRestaurant(int id) async {
    final vars = GGetRestaurantVars((restaurantVars) {
      restaurantVars.id = id;
    });
    final req = GGetRestaurantReq(
      (restaurantVars) => restaurantVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getRestaurant', result.data.toString());

    if (result.data != null) return GGetRestaurantData.fromJson(result.data!);
  }

  @override
  Future<GGetRestaurantByLocationQueryData> getRestaurantByLocation(
      double latitude, double longitude) async {
    final vars = GGetRestaurantByLocationQueryVars((locationVars) {
      locationVars.latitude = latitude; 
      locationVars.longitude = longitude;
    });
    final req = GGetRestaurantByLocationQueryReq(
      (restarauntVars) => restarauntVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    Logger.logger(
        'Coordinates', latitude.toString() + ' ' + longitude.toString());

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getRestaurantByLocation', result.data.toString());

    return GGetRestaurantByLocationQueryData.fromJson(result.data!)!;
  }

  @override
  Future<GGetRestaurantsQueryData> getRestaurants(int? cityId) async {
    final vars = GGetRestaurantsQueryVars(
      (restaurantVars) {
        restaurantVars.city_id = cityId;
      },
    );
    final req = GGetRestaurantsQueryReq(
      (restaurantVars) => restaurantVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(
      QueryOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getRestaurants', result.data.toString());

    return GGetRestaurantsQueryData.fromJson(result.data!)!;
  }
}
