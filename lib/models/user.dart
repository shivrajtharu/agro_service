class User {
  final String Name;
  final String Address;
  final int start;
  final int end;

  const User({
    required this.Name,
    required this.Address,
    required this.start,
    required this.end,
  });

  User copy({
    String? Name,
    String? Address,
    int? date,
  }) =>
      User(
        Name: Name ?? this.Name,
        Address: Address ?? this.Address,
        start: date ?? this.start,
        end: date ?? this.end,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              Name == other.Name &&
              Address == other.Address &&
              start == other.start &&
              end == other.end;

  @override
  int get hashCode => Name.hashCode ^ Address.hashCode ^ start.hashCode ^ end.hashCode;
}