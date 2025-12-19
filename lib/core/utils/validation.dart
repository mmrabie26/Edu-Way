class Validation {
  static final RegExp fullNameValidForm = RegExp(r'^.{6,}$');

  static final RegExp emailValidForm = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp passwordValidForm = RegExp(r'^[a-zA-Z0-9]{6,}$');
}
