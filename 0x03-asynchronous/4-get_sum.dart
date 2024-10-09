import 'dart:convert';
import '4-util.dart';

Future<dynamic> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double total = 0;
    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = double.parse(jsonDecode(priceData).toString());
      total += price;
    }

    return total;
  } catch (error) {
    int errorCode = -1;
    return errorCode;
  }
}
