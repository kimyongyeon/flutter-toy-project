import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  /**
   * 플러터에서 버튼 만드는 방법
   * 1. TextButton
   * 2. ElevatedButton
   * 3. OutlinedButton
   * 4. InkWell : 모든 위젯을 버튼으로 만들 수 있다.
   */
  _buildFollowButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        // 컨테이너 내부 Text 위젯 정렬시 사용
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  _buildMessageButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: const Text(
          "Message",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
