class UsersModel {
  String? uid;
  String? email;
  String? firstNmae;
  String? secondName;

  UsersModel({this.uid, this.email, this.firstNmae, this.secondName});

  //receiving data from server

  factory UsersModel.fromMap(map) {
    return UsersModel(
      uid: map['uid'],
      email: map['email'],
      firstNmae: map['firstName'],
      secondName: map['secondName'],
    );
  }
//sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstNmae,
      'secondName': secondName
    };
  }
}
