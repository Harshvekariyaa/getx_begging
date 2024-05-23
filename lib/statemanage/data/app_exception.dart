class appException implements Exception{
  final _message;
  final _prefix;
  appException([this._message,this._prefix]);

  String toString(){
    return "$_prefix, $_message ";
  }
}

class InternetException extends appException{
  InternetException([String? msg]) : super(msg,"No Internet");
}
class RequestTimeOut extends appException{
  RequestTimeOut([String? msg]) : super(msg,"Request time out.");
}
class ServerException extends appException{
  ServerException([String? msg]) : super(msg,"Server problem");
}
class InvalidUrlException extends appException{
  InvalidUrlException([String? msg]) : super(msg,"Invalid Url...");
}
class FetchDataException extends appException{
  FetchDataException([String? msg]) : super(msg,"Some problem during fetching data");
}