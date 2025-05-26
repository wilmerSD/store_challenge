class RegisterUserResponse {
    final String? message;

    RegisterUserResponse({
        this.message,
    });

    factory RegisterUserResponse.fromJson(Map<String, dynamic> json) => RegisterUserResponse(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}