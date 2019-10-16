import 'dart:convert';

User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromJson(jsonData);
}

String userToJson(User data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class User {

  String userId;
  String firstName;
  String lastName;
  String email;
  String mobileNumber;
  String password;
  String imageUrl;

  User({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.mobileNumber,
    this.imageUrl,
  });


  factory User.fromJson(Map<String, dynamic> json) => new User(
    userId: json["userId"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    mobileNumber: json["mobileNumber"]
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
  };
}


CustomerLoginResult customerLoginResultFromJson(String str, String userId) {
  final jsonData = json.decode(str);
  return CustomerLoginResult.fromJson(jsonData, userId);
}

String customerLoginResultToJson(CustomerLoginResult data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class CustomerLoginResult {
  String message;
  String statusCode;
  String token;
  String userID;

  CustomerLoginResult({this.message, this.statusCode, this.token, this.userID});

  factory CustomerLoginResult.fromJson(Map<String, dynamic> json, String userId) {
    return CustomerLoginResult(
      message: json['CustomerLoginResult']['Message'].toString(),
      statusCode: json['CustomerLoginResult']['StatusCode'].toString(),
      token: json['CustomerLoginResult']['Token'].toString(),
      userID: userId,
    );
  }


  Map<String, dynamic> toJson() => {
    "Message": message,
    "StatusCode": statusCode,
    "Token": token,
  };

}


GetCustomerProfileResult getCustomerProfileResult(String str) {
  final jsonData = json.decode(str);
  print("getCustomerProfileResult() called");
  print("jsonData: $jsonData");
  return GetCustomerProfileResult.fromJson(jsonData);
}

String getCustomerProfileResultToJson(GetCustomerProfileResult data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class GetCustomerProfileResult {
  String message;
  String statusCode;
  Result result;

  GetCustomerProfileResult({this.message, this.statusCode, this.result});

  factory GetCustomerProfileResult.fromJson(Map<String, dynamic> json) {

    print("GetCustomerProfileResult.fromJson() called");

    print(json['GetCustomerProfileResult']["Message"].toString());
    print(json['GetCustomerProfileResult']["StatusCode"].toString());
    print(json['GetCustomerProfileResult']["Result"]);

    return GetCustomerProfileResult(
        message: json['GetCustomerProfileResult']["Message"].toString(),
        statusCode: json['GetCustomerProfileResult']["StatusCode"].toString(),
        result: Result.fromJson(json['GetCustomerProfileResult']["Result"])
    );
  }

  Map<String, dynamic> toJson() => {
    "Message": message,
    "StatusCode": statusCode,
    "Result": result,
  };

}

Result result(String str) {
  final jsonData = json.decode(str);
  return Result.fromJson(jsonData);
}

String resultToJson(Result data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Result {

  String firstName;
  String lastName;
  String imageUrl;
  String mobileNumber;

  Result({
    this.firstName,
    this.lastName,
    this.imageUrl,
    this.mobileNumber,
  });

  factory Result.fromJson(Map<String, dynamic> json) {

    print("Result.fromJson() called");

    print(json["FirstName"].toString());
    print(json["LastName"].toString());
    print(json["MobileNumber"].toString());
    print(json["ImageUrl"]);

    return Result(
        firstName: json["FirstName"],
        lastName: json["LastName"],
        imageUrl: json["ImageUrl"] ?? '',
        mobileNumber: json["MobileNumber"]
    );
  }

  Map<String, dynamic> toJson() => {
    "FirstName": firstName,
    "LastName": lastName,
    "ImageUrl": imageUrl ?? '',
    "MobileNumber": mobileNumber,
  };
}