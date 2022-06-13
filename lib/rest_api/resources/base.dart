import 'package:intl/intl.dart';
import 'package:timezone/standalone.dart' as tz;
import 'package:timezone/timezone.dart';

enum ActionPayment { PAY, DEBIT, USE, EXTEND }
enum BookingStatus { NEW, CONFIRMED, CHECKIN, CHECKOUT, CANCEL, NOT_COME }
enum CustomerSetConditionName {
  TOTAL_PAID,
  LAST_VISITED,
  USED_SERVICE,
  BIRTHDAY,
  BUY_PACKAGE,
  NEW_CUSTOMER,
  AGE_CUSTOMER,
  GENDER,
  NOT_USE_SERVICE
}
enum DiscountUnit { MONEY, PERCENT }
enum InvoiceDetailObjectType {
  SERVICE,
  PRODUCT,
  PACKAGE,
  EXTRA,
  BUY_CASH_CARD,
  RECHARGE_CASH_CARD
}
enum InvoiceModelType { USE, PAY }
enum LoyaltyHistoryType {
  IMPORT,
  EXPORT,
  PAYMENT_INVOICE_EXPORT,
  PAYMENT_INVOICE_IMPORT,
  REF_OF_CUSTOMER,
  DEBT_PAY
}
enum PackageModelType { DEFAULT, FLEXIBLE }
enum PaymentMethod {
  CASH,
  BANK_TRANSFER,
  SWIPE_CARD,
  OTHER,
  DEBIT,
  CASH_CARD,
  LOYALTY,
}
enum PaymentStatus { PAID, UNPAID }
enum PrepayStatus { DEPOSITED, NOT_DEPOSITED }
enum PromotionConditionCode { BECOME_REF_OF_SOMEONE, REF_BY_OTHER }
enum ProductStatusCode { READY, OUTSTOCK, STOP }
enum Sex { MALE, FEMALE }
enum Status { ENABLE, DISABLED, DELETED }
enum StatusCashbookTransaction { ENABLE, DELETED }
enum Types { WORKER, MANAGEMENT }
enum TypeCashbookTransactionCategory { INCOME, OUTCOME }
enum TypeStaff { MAIN, SECONDARY }
enum TransactionAction { INCOME, OUTCOME }
enum WarehouseStatusNameValues { OUTSTOCK, READY, GOINGOUTOFSTOCK }
enum WarehouseTransactionType { USE, SELL }

String enumToString(Object o) => o.toString().split('.').last;

T? enumFromString<T>(String? key, List<T?> values) {
  return values.where((v) => key == enumToString(v!)).isEmpty
      ? null
      : values.where((v) => key == enumToString(v!)).first;
}

String timeToString(DateTime date) {
  DateTime _detroitTime;
  var detroit = tz.getLocation('Asia/Ho_Chi_Minh');
  DateTime localTime = DateTime.now();
  final detroitTime = new TZDateTime.from(localTime, detroit);
  DateTime vnTime = DateTime(detroitTime.year, detroitTime.month,
      detroitTime.day, detroitTime.hour, detroitTime.minute);

  if (localTime.difference(vnTime).inHours > 0) {
    int hour = int.parse(detroitTime.timeZoneName) -
        localTime.difference(vnTime).inHours;

    _detroitTime =
        new tz.TZDateTime.from(date.subtract(Duration(hours: hour)), detroit);
    _detroitTime = DateTime.parse(_detroitTime.toString().split('+')[0]);
    return Uri.encodeQueryComponent('${_detroitTime.toIso8601String()}Z');
  } else {
    _detroitTime = date;
    return Uri.encodeQueryComponent('${_detroitTime.toIso8601String()}');
  }
}

String getStartDay(DateTime date) {
  var dateSub = new DateTime(date.year, date.month, date.day, 0, 0, 0, 0);
  return timeToString(dateSub);
}

String getEndDay(DateTime date) {
  var dateSub =
      new DateTime(date.year, date.month, date.day, 23, 59, 59, 999).toUtc();
  return timeToString(dateSub);
}

formatMoney(double value, {bool isDecimal = false}) {
  if (value == 0) {
    return 0;
  }
  if (isDecimal) {
    return NumberFormat("###,###,###.##", "en_us").format(value);
  }
  return NumberFormat("###,###,###", "en_us").format(value);
}

extension StringExtension on String {
  String capitalize() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.capitalize())
      .join(' ');
}
