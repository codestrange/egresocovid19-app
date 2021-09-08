enum CacheBehavior {
  withoutCache, // Use only internet
  firstCache, // First local cache if exists, else internet
  lastCache, // First internet and if error is raise use cache if exists
  onlyCache, // Use only cache if exists
}
