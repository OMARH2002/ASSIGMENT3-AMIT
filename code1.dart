//MEMBERS

class Member {
  String id;
  String name;
  int age;
  String membershipType;

  Member({required this.id, required this.name, required this.age, required this.membershipType});

  void displayDetails() {
    print('ID: $id, Name: $name, Age: $age, Membership Type: $membershipType');
  }
}

//TRAINER

class Trainer {
  String id;
  String name;
  String specialty;

  Trainer({required this.id, required this.name, required this.specialty});

  void displayDetails() {
    print('ID: $id, Name: $name, Specialty: $specialty');
  }
}
class Equipment {
  String id;
  String name;
  String condition;

  Equipment({required this.id, required this.name, required this.condition});

  void displayDetails() {
    print('ID: $id, Name: $name, Condition: $condition');
  }
}

//MEMBERSHIP
class Membership {
  String id;
  String type;
  double price;
  int durationInMonths;

  Membership({required this.id, required this.type, required this.price, required this.durationInMonths});

  void displayDetails() {
    print('ID: $id, Type: $type, Price: \$${price.toStringAsFixed(2)}, Duration: $durationInMonths months');
  }
}

//GYM MANAGER
class GymManager {
  List<Member> members = [];
  List<Trainer> trainers = [];
  List<Equipment> equipmentList = [];

  void addMember(Member member) {
    members.add(member);
    print('Member ${member.name} added successfully!');
  }

  void addTrainer(Trainer trainer) {
    trainers.add(trainer);
    print('Trainer ${trainer.name} added successfully!');
  }

  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
    print('Equipment ${equipment.name} added successfully!');
  }

  void displayAllMembers() {
    print('--- Members ---');
    for (var member in members) {
      member.displayDetails();
    }
  }

  void displayAllTrainers() {
    print('--- Trainers ---');
    for (var trainer in trainers) {
      trainer.displayDetails();
    }
  }

  void displayAllEquipment() {
    print('--- Equipment ---');
    for (var equipment in equipmentList) {
      equipment.displayDetails();
    }
  }
}

void main() {
  // Create a gym manager
  GymManager gymManager = GymManager();

  // Add members
  gymManager.addMember(Member(id: 'M001', name: 'John Doe', age: 25, membershipType: 'Premium'));
  gymManager.addMember(Member(id: 'M002', name: 'Jane Smith', age: 30, membershipType: 'Basic'));

  // Add trainers
  gymManager.addTrainer(Trainer(id: 'T001', name: 'Alice', specialty: 'Weight Training'));
  gymManager.addTrainer(Trainer(id: 'T002', name: 'Bob', specialty: 'Yoga'));

  // Add equipment
  gymManager.addEquipment(Equipment(id: 'E001', name: 'Treadmill', condition: 'Good'));
  gymManager.addEquipment(Equipment(id: 'E002', name: 'Dumbbells', condition: 'Excellent'));

  // Display details
  gymManager.displayAllMembers();
  gymManager.displayAllTrainers();
  gymManager.displayAllEquipment();
}

