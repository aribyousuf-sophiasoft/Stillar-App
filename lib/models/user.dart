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


class ErrorException
{
  String Details;
  String Error;

  ErrorException({this.Details, this.Error});

  factory ErrorException.fromJson(Map<String, dynamic> json) {
    return ErrorException(
      Details: json['Details'].toString(),
      Error: json['Error'].toString(),
    );
  }


  Map<String, dynamic> toJson() => {
    "Details": Details,
    "Error": Error,
  };
}

class CustomerSignUpResult {
  String message;
  String statusCode;

  CustomerSignUpResult({this.message, this.statusCode});

  factory CustomerSignUpResult.fromJson(Map<String, dynamic> json) {
    return CustomerSignUpResult(
      message: json['CustomerSignUpResult']['Message'].toString(),
      statusCode: json['CustomerSignUpResult']['StatusCode'].toString(),
    );
  }


  Map<String, dynamic> toJson() => {
    "Message": message,
    "StatusCode": statusCode,
  };

}


GetCustomerProfileResult getCustomerProfileResult(String str) {
  final jsonData = json.decode(str);
  return GetCustomerProfileResult.fromJson(jsonData);
}

String getCustomerProfileResultToJson(GetCustomerProfileResult data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}


class GetAllListsResult {
  String message;
  String statusCode;
  List<listResult> result;

  GetAllListsResult({this.message, this.statusCode, this.result});

  factory GetAllListsResult.fromJson(Map<String, dynamic> json) {



    var list = _getUserList(json['GetAllListsResult']["Result"]);



    return GetAllListsResult(
        message: json['GetAllListsResult']["Message"].toString(),
        statusCode: json['GetAllListsResult']["StatusCode"].toString(),
        result: list
    );
  }

  Map<String, dynamic> toJson() => {
    "Message": message,
    "StatusCode": statusCode,
    "Result": result,
  };

}


class GetCustomerProfileResult {
  String message;
  String statusCode;
  Result result;

  GetCustomerProfileResult({this.message, this.statusCode, this.result});

  factory GetCustomerProfileResult.fromJson(Map<String, dynamic> json) {


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



List<listResult> ListResult(List<dynamic> Json) {
  return _getUserList(Json);
}


String ListResultToJson(List<listResult> data) {
  return  jsonEncode(data.map((e) => e.toJson()).toList());
}





class listResult {

  int ListID;
  String ListName;
  listResult({
    this.ListID,
    this.ListName,
  });

  factory listResult.fromJson(Map<String, dynamic> json) {

    return listResult(
        ListID: json["ListID"],
        ListName: json["ListName"]
    );
  }

  Map<String, dynamic> toJson() => {
    "ListID": ListID,
    "ListName": ListName,
  };

}


List<listResult> _getUserList(List<dynamic> Json)  {

  List<listResult> _lists = Json.map((i)=>listResult.fromJson(i)).toList();
  return _lists;
}



class Result {

  String firstName;
  String lastName;
  String imageUrl;
  String MobileNumber;
  bool otpAuthenticated;
  String EmailAddress;

  Result({
    this.firstName,
    this.lastName,
    this.imageUrl,
    this.MobileNumber,
    this.otpAuthenticated,
    this.EmailAddress
  });

  factory Result.fromJson(Map<String, dynamic> json) {


    return Result(
        firstName: json["FirstName"],
        lastName: json["LastName"],
        imageUrl: json["ImageUrl"] ?? '',
        MobileNumber: json["MobileNumber"],
        EmailAddress: json["EmailAddress"],
        otpAuthenticated:json["OtpAuthenticated"]??false
    );
  }

  Map<String, dynamic> toJson() => {
    "FirstName": firstName,
    "LastName": lastName,
    "ImageUrl": imageUrl ?? '',
    "MobileNumber": MobileNumber,
    "EmailAddress": EmailAddress,
    "OtpAuthenticated":otpAuthenticated??false
  };
}