class Recipient {
  int? id;
  String name;
  String account;
  String bankName;

  Recipient({
    this.id,
    required this.name,
    required this.account,
    required this.bankName,
  });

  // Convert Recipient to Map for database
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'account': account, 'bankName': bankName};
  }

  // Create Recipient from Map
  factory Recipient.fromMap(Map<String, dynamic> map) {
    return Recipient(
      id: map['id'],
      name: map['name'],
      account: map['account'],
      bankName: map['bankName'],
    );
  }
}
