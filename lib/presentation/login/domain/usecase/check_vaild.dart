class CheckValidUseCase {
  bool call({required String mobileNumber, required String password}) {
    if (mobileNumber.isEmpty ||
        password.isEmpty ||
        mobileNumber.length < 1 ||
        password.length < 1 ||
        mobileNumber == "" ||
        password == "") {
      return false;
    }
    return true;
  }
}
