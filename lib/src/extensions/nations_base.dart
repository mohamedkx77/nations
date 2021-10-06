import 'package:flutter/material.dart';
import 'package:nations/nations.dart';

extension NationsBaseExt on NationsBase {
  /// * text direction
  bool get isRTL => isRtlLocale(Nations.locale);
  bool get isLTR => !isRTL;
  TextDirection get direction => isRTL ? TextDirection.rtl : TextDirection.ltr;
  TextDirection get reverseDirection =>
      isRTL ? TextDirection.ltr : TextDirection.ltr;
}
