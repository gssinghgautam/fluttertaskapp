import 'package:flutter/material.dart';
import 'package:fluttertaskapp/domain/model/user.dart';
import 'package:fluttertaskapp/presentation/widgets/app_bar_widget.dart';

class UserDetails extends StatelessWidget {
  final User user;

  const UserDetails({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: '${user.username}'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Center(
              child: FadeInImage.assetNetwork(
                image: user.profile!,
                width: 300.0,
                height: 300.0,
                fit: BoxFit.cover,
                placeholder: 'assets/images/avatar.jpeg',
              ),
            ),
            const SizedBox(height: 24.0),
            const Divider(
              height: 1.0,
              thickness: 1.5,
              color: Colors.black,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Email : ${user.email}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Phone : ${user.phone}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24.0),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 8.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
              ),
              child: Text(
                'Location',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              'Street : ${user.street}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Suite : ${user.suite}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8.0),
            Text(
              'City : ${user.city}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Zipcode : ${user.zipcode}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
