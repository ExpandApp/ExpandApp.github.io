import 'package:intl/intl.dart';

extension StringExtension on String {
  bool isEmailValid() {
    final RegExp regex = RegExp(
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$");
    return regex.hasMatch(this);
  }
}

extension NumberExtension on num {
  String formattedMoney() {
    return NumberFormat('R\$###,##0.00', 'pt-BR').format(this);
  }
}

extension DateStringExtension on String {
  DateTime formattedDateTm(String date) {
    var replaceAll = date.replaceAll('/', '');
    var mm = replaceAll.substring(1, 2);
    var yyyy = replaceAll.substring(5, 4);
    var dd = replaceAll.substring(2);
    var dttm = yyyy + mm + dd + 'T' + '000000';
    return DateTime.parse(dttm);
  }
}

extension DateTimeExtension on DateTime {
  String formattedDate() {
    return DateFormat('dd/MM/yyyy HH:mm', 'pt-BR').format(this.toLocal());
  }

  String formattedDateMenber() {
    return DateFormat('MMMM / yyy', 'pt-BR').format(this.toLocal());
  }

  String formattedDateCalendar() {
    return DateFormat('dd/MM/yyyy', 'pt-BR').format(this.toLocal());
  }

  String formattedDateRequest() {
    return DateFormat('dd MMMM  yyy', 'pt-BR').format(this.toLocal());
  }

  String formattedMessageDate() {
    //final difference = this.difference(DateTime.now()).inDays;
    final difference = DateTime.now().difference(this.toLocal()).inDays;
    if (difference == 0) {
      if (this.toLocal().day != DateTime.now().day) {
        return 'Ontem';
      } else {
        return DateFormat('HH:mm', 'pt-BR').format(this.toLocal());
      }
    } else if (difference == 1) {
      return 'Ontem';
    } else if (difference <= 7) {
      return DateFormat('EEEE', 'pt-BR').format(this.toLocal());
    } else {
      return DateFormat('dd/MM/yyyy', 'pt-BR').format(this.toLocal());
    }
  }

  String formattedChatDate() {
    final difference = this.difference(DateTime.now()).inDays;

    if (difference == 0) {
      return DateFormat('HH:mm', 'pt-BR').format(this.toLocal());
    } else if (difference == 1) {
      return 'Ontem';
    } else if (difference <= 7) {
      return DateFormat('EEEE', 'pt-BR').format(this.toLocal());
    } else {
      return DateFormat('E, dd/MM/yy', 'pt-BR').format(this.toLocal());
    }
  }
}
