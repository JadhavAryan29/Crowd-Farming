class Feed {
  final String app;
  final String imageUrl;
  final String postUrl;
  final String timePosted;
  final String description;
  final String likes;
  final String comments;
  final String shared;

  Feed({
    required this.app,
    required this.imageUrl,
    required this.postUrl,
    required this.timePosted,
    required this.description,
    required this.likes,
    required this.comments,
    required this.shared,
  });
}

List<Feed> feed = [
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/animallove.png',
    timePosted: '2 hour ago',
    likes: '108',
    comments: '20',
    shared: '25',
    description:
        'Human and Animal Bond because the universal language of LOVE is spoken by Heart',
  ),
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/happy.png',
    timePosted: '18 hour ago',
    likes: '128',
    comments: '28',
    shared: '20',
    description: 'Happy Faces',
  ),
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/motherlove.png',
    timePosted: '1 Day ago',
    likes: '158',
    comments: '30',
    shared: '60',
    description: "There is no other love like a Mother's Love for her child",
  ),
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/vaccination.png',
    timePosted: '1 Day ago',
    likes: '108',
    comments: '10',
    shared: '10',
    description:
        "Let's get some vaccine into his system and start him on a lifetime unnecessary medical treatments",
  ),
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/breeding.png',
    timePosted: '2 Day ago',
    likes: '98',
    comments: '08',
    shared: '12',
    description:
        'The species is temporary it has no "eternal life" it either dies or is converted by modification into other forms',
  ),
  Feed(
    app: 'CrowdFarming',
    imageUrl: 'assets/farm.png',
    postUrl: 'assets/feed/hygine.png',
    timePosted: '3 Day ago',
    likes: '158',
    comments: '30',
    shared: '60',
    description: 'Four-legged friends need the best care"',
  ),
];
