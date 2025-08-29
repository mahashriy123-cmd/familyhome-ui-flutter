import '../models/users.dart';
import '../models/room.dart';

const user currentUser = user(
  firstName: "Mahmoud",
  lastName: "Ashriy",
  imageURL:
  "images/m.jpg",

);
const List <user> allUser =[
user(firstName: "Maged",
  lastName: "Mohamed",
imageURL:"https://images.unsplash.com/flagged/photo-1563693704951-5a78fc150317?q=80&w=773&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
),
user(firstName: "Mohamed",
lastName: "Maged",
imageURL:"https://images.unsplash.com/photo-1755001266339-06922afc7cc2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
),
user(firstName: "Mahmoud",
lastName: "Mohamed",
imageURL:"https://images.unsplash.com/photo-1742201473141-07daabc7a327?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
),
user(firstName: "Mahmoud",
lastName: "Maged",
imageURL:"https://images.unsplash.com/photo-1755097441290-408c244d0c8f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
),
  user(firstName: "Mahmoud",
      lastName: "farouk",
      imageURL:"https://images.unsplash.com/photo-1753689243063-0cf0cf073707?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  user(firstName: "Ali",
      lastName: "farouk",
      imageURL:"https://images.unsplash.com/photo-1754951433192-cf5d42c3d3c9?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  user(firstName: "Mahmoud",
      lastName: "Ali",
      imageURL:"https://plus.unsplash.com/premium_photo-1703711334620-263078f1292f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  user(firstName: "Ahmed",
      lastName: "Ashriy",
      imageURL:"https://plus.unsplash.com/premium_photo-1722209791020-5add5301206e?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  user(firstName: "Mahmoud",
      lastName: "Ahmed",
      imageURL:"https://images.unsplash.com/photo-1755324132725-ac63b25d7a46?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
  user(firstName: "Ahmed",
      lastName: "Ali",
      imageURL:"https://plus.unsplash.com/premium_photo-1755617893484-e34cf4aaba3b?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ),
];
final List <Room> roomList = [
  Room(club: "crew", name: "the crew",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "Squad", name: "Crazy Squad",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "besties", name: "besties forever",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "vibes", name: "Vibes only",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "memory", name: "memory makers",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "Family", name: "Family",
 speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
  fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
  others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "The best", name: "The best Family",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "life", name: "life",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "house", name: "The best house",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),
  Room(club: "love", name: "The love",
    speakers:  (List <user>.from(allUser)..shuffle()).getRange(0,4).toList(),
    fllowedBySpeakers : (List <user>.from(allUser)..shuffle()),
    others : (List <user>.from(allUser)..shuffle()),),

];

