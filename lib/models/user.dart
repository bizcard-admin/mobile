import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? displayName;
  final String? designation;
  final String? gender;
  final DateTime? dateOfBirth;
  final String? companyName;
  final String? companyWebsite;
  final Map? address;
  final String? picture;
  final String? phoneNumber;
  final String? email;
  final bool emailVerified;
  final String? additionalEmail;
  final String? additionalPhoneNumber;
  final String? whatsappNumber;
  final String? telegramNumber;
  final String? provider;
  final String? providerId;
  final String registrationStatus;
  final String locale;
  final String countryCode;
  final String dateFormat;
  final String defaultCurrency;
  final DateTime notificationsRead;
  final int notificationsCount;
  final List integrations;
  final DateTime lastLogin;
  final DateTime created;
  final DateTime updated;
  final DateTime? deleted;

  const User({
    this.firstName,
    this.lastName,
    this.displayName,
    this.designation,
    this.gender,
    this.dateOfBirth,
    this.companyName,
    this.companyWebsite,
    this.address,
    this.picture,
    this.phoneNumber,
    this.email,
    required this.emailVerified,
    this.additionalEmail,
    this.additionalPhoneNumber,
    this.whatsappNumber,
    this.telegramNumber,
    this.provider,
    this.providerId,
    required this.registrationStatus,
    required this.locale,
    required this.countryCode,
    required this.dateFormat,
    required this.defaultCurrency,
    required this.notificationsRead,
    required this.notificationsCount,
    required this.integrations,
    required this.lastLogin,
    required this.created,
    required this.updated,
    this.deleted,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayName: json['displayName'] as String?,
      designation: json['designation'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] != null
          ? DateTime.parse(json['dateOfBirth'] as String)
          : null,
      companyName: json['companyName'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
      address: json['address'] as Map?,
      picture: json['picture'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool,
      additionalEmail: json['additionalEmail'] as String?,
      additionalPhoneNumber: json['additionalPhoneNumber'] as String?,
      whatsappNumber: json['whatsappNumber'] as String?,
      telegramNumber: json['telegramNumber'] as String?,
      provider: json['provider'] as String?,
      providerId: json['providerId'] as String?,
      registrationStatus: json['registrationStatus'] as String,
      locale: json['locale'] as String,
      countryCode: json['countryCode'] as String,
      dateFormat: json['dateFormat'] as String,
      defaultCurrency: json['defaultCurrency'] as String,
      notificationsRead: DateTime.parse(json['notificationsRead'] as String),
      notificationsCount: json['notificationsCount'] as int,
      integrations: List.from(json['integrations'] as List),
      lastLogin: DateTime.parse(json['lastLogin'] as String),
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      deleted: json['deleted'] != null
          ? DateTime.parse(json['deleted'] as String)
          : null,
    );
  }
  
  @override
  List<Object?> get props => throw UnimplementedError();

  

}
