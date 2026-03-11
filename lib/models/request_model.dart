class RequestModel {
  final String name;
  final String location;
  final String emergencyType;
  final String description;

  RequestModel({
    required this.name,
    required this.location,
    required this.emergencyType,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "location": location,
      "emergencyType": emergencyType,
      "description": description
    };
  }
}