import 'package:flutter/material.dart';
import '../model/model.dart';
import '../utils/color.dart';

class Members extends StatefulWidget {
  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  late List<Member> members;

  @override
  void initState() {
    super.initState();
    // Initialize members list with dummy data
    members = List.generate(
      20,
      (index) => Member(name: 'Yashika', country: 'India'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: members.length,
      itemBuilder: (BuildContext context, int index) {
        final member = members[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 5),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("assets/images/person.png"),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        member.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        member.country,
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        member.isSelected = !member.isSelected;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 30),
                      backgroundColor:
                          member.isSelected ? secondaryColor : greyColor,
                      foregroundColor: whiteColor,
                    ),
                    child: Text(
                      member.isSelected ? 'Add' : 'Following',
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
