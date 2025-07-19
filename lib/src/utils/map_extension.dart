extension MapExtension<K, V> on Map<K, V> {
  Iterable<(K key, V value)> get iterable => entries.map((e) => (e.key, e.value));
}
