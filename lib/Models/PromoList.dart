class PromoList {
  final int id;
  final String title;
  final String subtitle;
  final String date;
  final String image;

  PromoList({
    required this.id,
    required this.title,
    required this.date,
    required this.image,
    required this.subtitle,
  });
}

List<PromoList> demoPromoList = [
  PromoList(
      id: 1,
      title: 'chair',
      subtitle: '50%',
      date: '24 May 2021',
      image: 'assets/images/1.jpg'),
  PromoList(
      id: 2,
      title: 'jewerly',
      subtitle: '40%',
      date: '24 May 2021',
      image: 'assets/images/2.jpg'),
  PromoList(
      id: 3,
      title: 'plate',
      subtitle: '80%',
      date: '23 May 2021',
      image: 'assets/images/3.jpg'),
];
