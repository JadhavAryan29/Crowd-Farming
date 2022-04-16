class TransactionHistory {
  final String name;
  final String image;
  final String date;
  final String amount;

  TransactionHistory({
    required this.name,
    required this.image,
    required this.date,
    required this.amount,
  });
}

List<TransactionHistory> transactions = [
  TransactionHistory(
    name: 'Cow',
    image: 'assets/cow.png',
    date: '15th Aug 2021',
    amount: '+25,000'
  ),
   TransactionHistory(
    name: 'Buffalo',
    image: 'assets/yak.png',
    date: '28th Jul 2021',
    amount: '-30,000'
  ),
   TransactionHistory(
    name: 'Goat',
    image: 'assets/goat.png',
    date: '02nd Jul 2021',
    amount: '+10,000'
  ),
   TransactionHistory(
    name: 'Honey Bee',
    image: 'assets/bee.png',
    date: '18th Apr 2021',
    amount: '+10,000'
  ),
  TransactionHistory(
    name: 'Pig',
    image: 'assets/pig.png',
    date: '27th Nov 2020',
    amount: '-10,000'
  ),
  TransactionHistory(
    name: 'Poultry',
    image: 'assets/hen.png',
    date: '29th Oct 2021',
    amount: '-10,000'
  ),
  
];
