class Transaction {
  int? id;
  String type;
  int amount;
  String name;
  String time;
  String date;
  String status;
  String icon;

  Transaction({
    this.id,
    required this.type,
    required this.amount,
    required this.name,
    required this.time,
    required this.date,
    required this.status,
    required this.icon,
  });

  // Convert Transaction to Map for database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'amount': amount,
      'name': name,
      'time': time,
      'date': date,
      'status': status,
      'icon': icon,
    };
  }

  // Create Transaction from Map
  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'],
      type: map['type'],
      amount: map['amount'],
      name: map['name'],
      time: map['time'],
      date: map['date'],
      status: map['status'],
      icon: map['icon'],
    );
  }
}
