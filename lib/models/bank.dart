class Bank {
  int? id;
  String name;
  String code;
  String logo; // Asset path

  Bank({this.id, required this.name, required this.code, required this.logo});

  // Convert Bank to Map for database
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'code': code, 'logo': logo};
  }

  // Create Bank from Map
  factory Bank.fromMap(Map<String, dynamic> map) {
    return Bank(
      id: map['id'],
      name: map['name'],
      code: map['code'],
      logo: map['logo'],
    );
  }
}
