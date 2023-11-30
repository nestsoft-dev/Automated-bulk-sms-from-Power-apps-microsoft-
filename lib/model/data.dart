// /// data : {"status":"success","message":"Message Sent","message_id":"2c28277c-729b-41b9-be79-a1d470a098b4","cost":2.49,"currency":"NGN","gateway_used":"direct-refund"}
//
// class Data {
//   Data({
//       Data data,}){
//     _data = data;
// }
//
//   Data.fromJson(dynamic json) {
//     _data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//   Data _data;
// Data copyWith({  Data data,
// }) => Data(  data: data ?? _data,
// );
//   Data get data => _data;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_data != null) {
//       map['data'] = _data.toJson();
//     }
//     return map;
//   }
//
// }
//
// /// status : "success"
// /// message : "Message Sent"
// /// message_id : "2c28277c-729b-41b9-be79-a1d470a098b4"
// /// cost : 2.49
// /// currency : "NGN"
// /// gateway_used : "direct-refund"
//
// class Data {
//   Data({
//       String status,
//       String message,
//       String messageId,
//       num cost,
//       String currency,
//       String gatewayUsed,}){
//     _status = status;
//     _message = message;
//     _messageId = messageId;
//     _cost = cost;
//     _currency = currency;
//     _gatewayUsed = gatewayUsed;
// }
//
//   Data.fromJson(dynamic json) {
//     _status = json['status'];
//     _message = json['message'];
//     _messageId = json['message_id'];
//     _cost = json['cost'];
//     _currency = json['currency'];
//     _gatewayUsed = json['gateway_used'];
//   }
//   String _status;
//   String _message;
//   String _messageId;
//   num _cost;
//   String _currency;
//   String _gatewayUsed;
// Data copyWith({  String status,
//   String message,
//   String messageId,
//   num cost,
//   String currency,
//   String gatewayUsed,
// }) => Data(  status: status ?? _status,
//   message: message ?? _message,
//   messageId: messageId ?? _messageId,
//   cost: cost ?? _cost,
//   currency: currency ?? _currency,
//   gatewayUsed: gatewayUsed ?? _gatewayUsed,
// );
//   String get status => _status;
//   String get message => _message;
//   String get messageId => _messageId;
//   num get cost => _cost;
//   String get currency => _currency;
//   String get gatewayUsed => _gatewayUsed;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['status'] = _status;
//     map['message'] = _message;
//     map['message_id'] = _messageId;
//     map['cost'] = _cost;
//     map['currency'] = _currency;
//     map['gateway_used'] = _gatewayUsed;
//     return map;
//   }
//
// }