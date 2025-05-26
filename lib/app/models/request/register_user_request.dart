class RegisterUserRequest {
    final String? nombres;
    final String? apellidoPaterno;
    final String? apellidoMaterno;
    final String? celular;
    final String? email;
    final String? direccion;
    final String? codigoPostal;
    final String? password;

    RegisterUserRequest({
        this.nombres,
        this.apellidoPaterno,
        this.apellidoMaterno,
        this.celular,
        this.email,
        this.direccion,
        this.codigoPostal,
        this.password,
    });

    factory RegisterUserRequest.fromJson(Map<String, dynamic> json) => RegisterUserRequest(
        nombres: json["nombres"],
        apellidoPaterno: json["apellido_paterno"],
        apellidoMaterno: json["apellido_materno"],
        celular: json["celular"],
        email: json["email"],
        direccion: json["direccion"],
        codigoPostal: json["codigo_postal"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "nombres": nombres,
        "apellido_paterno": apellidoPaterno,
        "apellido_materno": apellidoMaterno,
        "celular": celular,
        "email": email,
        "direccion": direccion,
        "codigo_postal": codigoPostal,
        "password": password,
    };
}