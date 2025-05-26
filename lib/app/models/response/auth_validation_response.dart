class AuthValidationResponse {
    final int? idCliente;
    final String? nombres;
    final String? apellidoPaterno;
    final String? email;

    AuthValidationResponse({
        this.idCliente,
        this.nombres,
        this.apellidoPaterno,
        this.email,
    });

    factory AuthValidationResponse.fromJson(Map<String, dynamic> json) => AuthValidationResponse(
        idCliente: json["id_cliente"],
        nombres: json["nombres"],
        apellidoPaterno: json["apellido_paterno"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id_cliente": idCliente,
        "nombres": nombres,
        "apellido_paterno": apellidoPaterno,
        "email": email,
    };
}