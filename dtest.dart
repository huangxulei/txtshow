class Person {
  final String name;
  final String avatarUrl;

  Person({required this.name, required this.avatarUrl});
}

void main() {
  var dummyPersonList = List<Person>.generate(20, (i) {
    return Person(
      name: 'John Doe',
      avatarUrl: 'http://somewebsite.com/dummy_avatar.jpg',
    );
  });

  print(dummyPersonList);
}
