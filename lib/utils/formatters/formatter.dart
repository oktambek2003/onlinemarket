
import 'package:intl/intl.dart';

class onlineShopFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyy').format(date);
  }

  static String formatCurrery(double amount) {
    return NumberFormat.currency(locale: "uz-UZS", symbol: "\{so'm}")
        .format(amount);
  }

  String formatPhoneNumber(String phoneNumber) {
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Telefon raqam uzunligini tekshirish
    if (phoneNumber.length == 12 && phoneNumber.startsWith("998")) {
      return "+${phoneNumber.substring(0, 3)} (${phoneNumber.substring(3, 5)}) ${phoneNumber.substring(5, 8)}-${phoneNumber.substring(8, 10)}-${phoneNumber.substring(10)}";
    } else if (phoneNumber.length == 9) {
      return "+998 (${phoneNumber.substring(0, 2)}) ${phoneNumber.substring(2, 5)}-${phoneNumber.substring(5, 7)}-${phoneNumber.substring(7)}";
    } else {
      return "Xato: Telefon raqam formati noto‘g‘ri.";
    }
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitalOnly = phoneNumber.replaceAll(RegExp(r'r\D'), '');
    String countryCode = '+${digitalOnly.substring(0, 2)}';
    digitalOnly = digitalOnly.substring(2);
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');
    int i = 0;
    while (i < digitalOnly.length) {
      int grouplength = 2;
      if (i == 0 && countryCode == "+1") {
        grouplength = 3;
      }
      int end = i + grouplength;
      formattedNumber.write(digitalOnly.substring(i, end));

      if (end < digitalOnly.length) {
        formattedNumber.write(" ");
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
