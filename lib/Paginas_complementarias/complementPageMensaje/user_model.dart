class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Usuario 1',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Usuario 2',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Usuario 3',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Usuario 4',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Usuario 5',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Usuario 6',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Usuario 7',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Usuario 8',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Usuario 9',
  imageUrl: 'assets/images/usuario.jpg',
  isOnline: false,
);
