class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final parkType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeText,
    this.ratingCount,
    this.ratingStar,
  });
}

enum parkType { discount, popular }

var parks = [
  Park(
    title: 'Angga',
    image: 'assets/images/park_1.png',
    distance: '1.3km',
    price: '\$/5hr',
    type: parkType.discount,
    typeText: 'Off 55%',
  ),
  Park(
    title: 'Masa Mart',
    image: 'assets/images/park_2.png',
    distance: '1.9km',
    price: '\$/5hr',
    type: parkType.popular,
    typeText: 'Popular',
  ),
  Park(
    title: 'Senayan Park',
    image: 'assets/images/park_3.png',
    distance: '2.5km',
    price: '\$/5hr',
    type: parkType.popular,
    typeText: 'Popular',
  ),
];

var freshLot = [
  Park(
    title: 'Senayan',
    image: 'assets/images/senayan.png',
    distance: "5.3km",
    price: "\$1/hr",
    ratingStar: 4,
    ratingCount: 14593,
  ),
  Park(
    title: 'Kota Baru',
    image: 'assets/images/kota_baru.png',
    distance: "7.4km",
    price: "\$1/hr",
    ratingStar: 5,
    ratingCount: 4355,
  ),
  Park(
    title: 'Senayan',
    image: 'assets/images/senayan2.png',
    distance: "5.3km",
    price: "\$1/hr",
    ratingStar: 4,
    ratingCount: 14593,
  ),
];
