import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widget/answer_section.dart';
import 'package:perplexity_clone/widget/side_bar.dart';
import 'package:perplexity_clone/widget/source_section.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          SizedBox(
            width: 100,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    //source
                    SourcesSection(),
                    SizedBox(
                      height: 24.0,
                    ),
                    //answer section
                    AnswerSection(),
                  ],
                ),
              ),
            ),
          ),
          //Images section
          Placeholder(
            strokeWidth: 0,
            color: AppColors.background,
          ),
        ],
      ),
    );
  }
}
