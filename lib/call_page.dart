import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String callID;
  final String userName;
  final String userID;

  const CallPage({
    super.key,
    required this.callID,
    required this.userName,
    required this.userID,
  });

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 286600884,
      appSign:
          '44040baccf98452f9faf52e94e1a72ef083ba64f8fb3c48a962e7020ceb1c632',
      callID: callID,
      userID: userID,
      userName: userName,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
