import 'package:flutter/material.dart';
// ==========================================
// আলাদা করা কাস্টম অ্যাপবার উইজেট
// ==========================================
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      // স্বয়ংক্রিয় ব্যাক বাটন রিমুভ করার জন্য (প্রয়োজনে রাখতে পারো)
      automaticallyImplyLeading: false, 
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'images/profile.png',//োমার প্রজেক্টের ইমেজের পাথ এখানে দাও
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  // যদি লোকাল ইমেজ না থাকে, সাময়িকভাবে NetworkImage ব্যবহার করতে পারো:
                  // errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 40),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "Hello World1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  // নোটিফিকেশন বাটনে ক্লিক করলে কী হবে
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                onPressed: () {
                  // সেটিংস বাটনে ক্লিক করলে কী হবে
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}