import 'package:getxstatemanage/statemanage/data/response/status.dart';

class apiResponse<T>{
  Status? status;
  T? data;
  String? message;

  apiResponse(this.data,this.message,this.status);

  apiResponse.loading() : status = Status.LOADING;
  apiResponse.completed(this.data) : status = Status.COMPLETED;
  apiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString(){
    return "status: $status, data: $data, message: $message";
  }
}