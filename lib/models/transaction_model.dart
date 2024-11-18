class TransactionModel {
  final String title, date, price;
  final bool isWithdrawal;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.price,
    required this.isWithdrawal,
  });
}
