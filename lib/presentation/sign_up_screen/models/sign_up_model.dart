import 'package:cloud_firestore/cloud_firestore.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel {}

class UserModel {
  final String uId;
  final String username;
  final String email;
  final String phone;
  final String userImg;
  final String password;
  final String userDeviceToken;
  final String country;
  final String userAddress;
  final String street;
  final bool isAdmin;
  final bool isActive;
  final dynamic createdOn;
  final String city;
  final String? about;
  final String? createdAt;
  final String? lastActivated;
  final String? puchToken;
  final String? online;

  UserModel({
    required this.uId,
    required this.password,
    required this.username,
    required this.email,
    required this.phone,
    required this.userImg,
    required this.userDeviceToken,
    required this.country,
    required this.userAddress,
    required this.street,
    required this.isAdmin,
    required this.isActive,
    required this.createdOn,
    required this.city,
    this.about,
    this.createdAt,
    this.lastActivated,
    this.puchToken,
    this.online,
  });

  // Serialize the UserModel instance to a JSON map
  Map<String, dynamic> toMap() {
    return {
      'uId': uId,
      'username': username,
      'email': email,
      'phone': phone,
      'userImg': userImg,
      'userDeviceToken': userDeviceToken,
      'country': country,
      'userAddress': userAddress,
      'street': street,
      'isAdmin': isAdmin,
      'isActive': isActive,
      'createdOn': createdOn,
      'city': city,
      'password': password,
         'about': about,
      
      'createdAt': createdAt,
      'lastActivated': lastActivated,
      'puchToken': puchToken,
      'online': online,

    };
  }

  factory UserModel.fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      uId: snapshot['uId'],
      username: snapshot['username'],
      email: snapshot['email'],
      phone: snapshot['phone'],
      userImg: snapshot['userImg'],
      userDeviceToken: snapshot['userDeviceToken'],
      country: snapshot['country'],
      userAddress: snapshot['userAddress'],
      street: snapshot['street'],
      isAdmin: snapshot['isAdmin'],
      isActive: snapshot['isActive'],
      createdOn: snapshot['createdOn'],
      city: snapshot['city'],
      password: snapshot['password'],
        
      createdAt: snapshot['createdAt'], 
     lastActivated: snapshot['lastActivated'],
    puchToken: snapshot['puchToken'],
    online: snapshot['online'],

    );
  }
}

// Create a UserModel instance from a JSON map


