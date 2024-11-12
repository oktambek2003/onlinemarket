

class onlineShopPricingCalculator {
  static double calculatorTotalPrice(double productPrice, String location) {
    double taxRite = getTaxforLacation(location);
    double taxAmount = productPrice * taxRite;
    double shippingCost = getshippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCast(double ProductPrice, String location) {
    double shippingCost = getshippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRite = getTaxforLacation(location);
    double taxAmount = productPrice * taxRite;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxforLacation(String location) {
    return 0.10; // Bu soliq foizi
  }

  static double getshippingCost(String location) {
    return 5.00;
  }
}
