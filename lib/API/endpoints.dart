// ignore_for_file: non_constant_identifier_names

String getUserDetails(String id) {
  String base_url = 'https://api-acadque.herokuapp.com/api/v1/$id';
  return base_url;
}
