import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userId = Random().nextInt(9999);

class CallPage extends StatelessWidget {
  final String callID;
  final String userName;

  const CallPage({
    super.key,
    required this.callID,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 286600884,
      appSign:
          '44040baccf98452f9faf52e94e1a72ef083ba64f8fb3c48a962e7020ceb1c632',
      callID: callID,
      userID: userId.toString(),
      userName: userName,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
