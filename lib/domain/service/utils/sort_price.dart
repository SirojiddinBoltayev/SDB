library sort_price;

String sortPrice(num number, [bool decimals = true]) {
  if (number % 1 == 0) number = number.toDouble();

  String fullNumber = '';

  String numberString = number.toString();
  String intNumber = numberString.split('.')[0];
  String decimal = numberString.split('.')[1];

  switch (intNumber.length) {
    case 2:
      fullNumber = subString(intNumber, 0, 1) + subString(intNumber, 1);
      break;
    case 3:
      fullNumber = subString(intNumber, 0, 2) + subString(intNumber, 2);
      break;

    case 4:
      fullNumber = '${subString(intNumber, 0, 1)},${subString(intNumber, 1)}';

      break;

    case 5:
      fullNumber = '${subString(intNumber, 0, 2)},${subString(intNumber, 2)}';

      break;

    case 6:
      fullNumber = '${subString(intNumber, 0, 3)},${subString(intNumber, 3)}';

      break;

    case 7:
      fullNumber = '${subString(intNumber, 0, 1)},${subString(intNumber, 1, 4)},${subString(intNumber, 4)}';

      break;

    case 8:
      fullNumber = '${subString(intNumber, 0, 2)},${subString(intNumber, 2, 5)},${subString(intNumber, 5)}';

      break;

    case 9:
      fullNumber = '${subString(intNumber, 0, 3)},${subString(intNumber, 3, 6)},${subString(intNumber, 6)}';

      break;

    case 10:
      fullNumber = '${subString(intNumber, 0, 1)},${subString(intNumber, 1, 4)},${subString(intNumber, 4, 7)},${subString(intNumber, 7)}';

      break;

    case 11:
      fullNumber = '${subString(intNumber, 0, 2)},${subString(intNumber, 2, 5)},${subString(intNumber, 5, 8)},${subString(intNumber, 8)}';

      break;

    case 12:
      fullNumber = '${subString(intNumber, 0, 3)},${subString(intNumber, 3, 6)},${subString(intNumber, 6, 9)},${subString(intNumber, 9)}';

      break;

    default:
      fullNumber = intNumber;
  }

  if (decimals) fullNumber = '$fullNumber.$decimal';

  return fullNumber;
}

String subString(String number, [int? start, int? end]) =>
    number.substring(start!, end);