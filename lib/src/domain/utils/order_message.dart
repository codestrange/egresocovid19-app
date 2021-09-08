import 'package:egresocovid19/src/domain/enums/enums.dart';

class OrderMessage {
  static const String name = 'NAME';
  static const String orders = 'ORDERS';
  static const String phone = 'PHONE';
  static const String address = 'ADDRESS';
  static const String note = 'NOTE';
  static const String businessKey = 'BUSINESS_KEY';

  final Map<String, String> _val = {};

  void add(String key, String value) {
    _val[key] = value;
  }

  bool _has(String key) {
    return _val.containsKey(key) && _val[key]!.isNotEmpty;
  }

  String generate(Courier messager) {
    final StringBuffer _buffer = StringBuffer();

    _buffer.write(
        'Hola! Mi nombre es ${bold(_val[name]!, messager)}. Estoy interesado en:\n\n');

    _buffer.write('${_val[orders]}\n');

    _buffer.write('\n');

    if (_has(phone)) {
      _buffer.write('Teléfono: ${_val[phone]}\n');
    }

    if (_has(address)) {
      _buffer.write('Dirección: ${_val[address]}\n');
    }

    if (_has(note)) {
      _buffer.write('Nota: ${_val[note]}\n');
    }

    _buffer.write('\n');

    _buffer
        .write('Enviado con ❤️ desde https://mesirve.app/${_val[businessKey]}');

    return _buffer.toString();
  }

  static String bold(Object value, Courier messager) {
    switch (messager) {
      case Courier.Telegram:
        return '**$value**';
      case Courier.Whatsapp:
        return '*$value*';
    }
  }
}
