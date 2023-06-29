import 'package:flutter/material.dart';
import 'package:makla/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return notificationItem();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationItem() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFF56210), // Border color
          width: 1.0,
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  "https://media-cdn.tripadvisor.com/media/photo-s/1b/6b/33/12/getlstd-property-photo.jpg",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Restaurant Eleven",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color(0xFFF56210), // Border color
            thickness: 2,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'This is a long text that may span multiple lines in Flutter.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              InkWell(
                child: const Text(
                  'View',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF56210), // Border color
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  // Handle the onTap event
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
