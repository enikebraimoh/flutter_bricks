class DeviceInfo {
  final String id;
  final String name;
  final String alias;
  final bool isHost;

  DeviceInfo({
    required this.id,
    required this.name,
    required this.alias,
    this.isHost = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'alias': alias,
        'isHost': isHost,
      };

  factory DeviceInfo.fromJson(Map<String, dynamic> json) => DeviceInfo(
        id: json['id'],
        name: json['name'],
        alias: json['alias'],
        isHost: json['isHost'] ?? false,
      );
}
