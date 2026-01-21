import '../models/transaction.dart';
import '../models/bank.dart';
import '../models/recipient.dart';

class DatabaseHelper {
  // Mock data for transactions
  Future<List<Transaction>> getTransactions() async {
    return [
      Transaction(
        id: 1,
        type: 'transfer',
        amount: 50000,
        name: 'Transfer ke Budi',
        time: '14:30',
        date: '2023-10-01',
        status: 'success',
        icon: 'arrow_upward',
      ),
      Transaction(
        id: 2,
        type: 'receive',
        amount: 100000,
        name: 'Top Up dari Bank',
        time: '10:15',
        date: '2023-10-02',
        status: 'success',
        icon: 'arrow_downward',
      ),
      Transaction(
        id: 3,
        type: 'payment',
        amount: 25000,
        name: 'Pembayaran Listrik',
        time: '08:45',
        date: '2023-10-03',
        status: 'success',
        icon: 'bolt',
      ),
    ];
  }

  // Mock data for banks
  Future<List<Bank>> getBanks() async {
    return [
      Bank(
        id: 1,
        name: 'Bank Central Asia',
        code: 'BCA',
        logo: 'assets/bca.png',
      ),
      Bank(
        id: 2,
        name: 'Bank Mandiri',
        code: 'MANDIRI',
        logo: 'assets/mandiri.png',
      ),
      Bank(
        id: 3,
        name: 'Bank Negara Indonesia',
        code: 'BNI',
        logo: 'assets/bni.png',
      ),
      Bank(
        id: 4,
        name: 'Bank Rakyat Indonesia',
        code: 'BRI',
        logo: 'assets/bri.png',
      ),
    ];
  }

  // Mock data for recipients
  Future<List<Recipient>> getRecipients() async {
    return [
      Recipient(
        id: 1,
        name: 'Budi Santoso',
        account: '1234567890 - BCA',
        bankName: 'Bank Central Asia',
      ),
      Recipient(
        id: 2,
        name: 'Siti Aminah',
        account: '0987654321 - MANDIRI',
        bankName: 'Bank Mandiri',
      ),
    ];
  }
}
