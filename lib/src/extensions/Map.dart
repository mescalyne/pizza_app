
extension MapExtension<K, V> on Map<K, V> {
  Map<V, K> get inverse =>
      Map.fromEntries(entries.map((e) => MapEntry(e.value, e.key)));
}
