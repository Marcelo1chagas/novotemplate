import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/walkthrough/home1/home1_widget.dart';
import '/walkthrough/home2/home2_widget.dart';

// Focus widget keys for this walkthrough
final column5dh1w0ip = GlobalKey();
final textW3qrlg55 = GlobalKey();

/// Home
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: column5dh1w0ip,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => Home1Widget(),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textW3qrlg55,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => Home2Widget(),
          ),
        ],
      ),
    ];
