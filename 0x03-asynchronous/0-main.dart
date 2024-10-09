import '0-util.dart';

Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print(count);
  } catch (error) {
    print('Error fetching user count: $error');
  }
}
