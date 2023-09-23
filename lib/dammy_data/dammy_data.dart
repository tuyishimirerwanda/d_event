import '../model/event_model.dart';

class DummyData {
  final String imageUrl;

  DummyData({
    required this.imageUrl,
  });
}

List<DummyData> dummyDataSliderList = [
  DummyData(imageUrl: 'images/event2.jpg'),
  DummyData(imageUrl: 'images/event3.webp'),
  DummyData(imageUrl: 'images/event4.jpg'),
  DummyData(imageUrl: 'images/event5.jpg'),

  // Add more dummy data as needed
];

class DummyCardsData {
  final String imageUrl;

  DummyCardsData({
    required this.imageUrl,
  });
}

List<DummyCardsData> dummyDataCardsList = [
  DummyCardsData(imageUrl: 'images/event2.jpg'),
  DummyCardsData(imageUrl: 'images/event3.webp'),
  DummyCardsData(imageUrl: 'images/event4.jpg'),
  DummyCardsData(imageUrl: 'images/event5.jpg'),
  // Add more dummy data as needed
];

final List<Event> dummyEventData = [
  Event(
    title: 'Glow Party Extravaganza',
    dayAndDate: 'Monday, September 12, 2023',
    time: '2:00 PM',
    status: 'Open',
    imageUrl: 'images/event1.jpg',
    doorOpen: '1:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 100),
      Category(name: 'VIP', price: 5000, seats: 200),
      Category(name: 'VVIP', price: 10000, seats: 400),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here. This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Beach Bash Bonanza',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event2.jpg', // Replace with your image asset path
    doorOpen: '3:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Neon Nights Dance',
    dayAndDate: 'Monday, September 12, 2023',
    time: '2:00 PM',
    status: 'Open',
    imageUrl: 'images/event3.webp', // Replace with your image asset path
    doorOpen: '11:00 AM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Casino Royale Soiree',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event4.jpg', // Replace with your image asset path
    doorOpen: '4:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Retro Disco Fever',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event5.jpg', // Replace with your image asset path
    doorOpen: '4:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Glow Party Extravaganza',
    dayAndDate: 'Monday, September 12, 2023',
    time: '2:00 PM',
    status: 'Open',
    imageUrl: 'images/event1.jpg', // Replace with your image asset path
    doorOpen: '12:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Beach Bash Bonanza',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event2.jpg', // Replace with your image asset path
    doorOpen: '1:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Neon Nights Dance',
    dayAndDate: 'Monday, September 12, 2023',
    time: '2:00 PM',
    status: 'Open',
    imageUrl: 'images/event3.webp', // Replace with your image asset path
    doorOpen: '1:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Casino Royale Soiree',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event4.jpg', // Replace with your image asset path
    doorOpen: '1:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  Event(
    title: 'Retro Disco Fever',
    dayAndDate: 'Wednesday, September 14, 2023',
    time: '6:00 PM',
    status: 'Closed',
    imageUrl: 'images/event5.jpg', // Replace with your image asset path
    doorOpen: '1:00 PM',
    end: '1:00 AM',
    location: 'KN 3 Ave, Kigali  (KCEV)',
    categories: [
      Category(name: 'REGURAL', price: 3000, seats: 10),
      Category(name: 'VIP', price: 5000, seats: 10),
      Category(name: 'VVIP', price: 10000, seats: 10),
    ],
    description:
        'This is a long event description. It can contain multiple lines of text describing the event in detail. You can add as much content as needed here.',
  ),
  // Add more dummy data as needed
];
