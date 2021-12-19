import 'dart:math';

import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

class ColorValues {
  static const int NAVIGATION_DRAWER_BG_COLOUR = 0XFFF7F7F9;
  static const int PINK_COLOUR = 0XFFFFE8D7;
  static const int DARK_PINK_COLOUR = 0XFFFF7B1C;
  static const int EMPTY_BG_COLOR = 0xffDFE1E2;
  static const int COACH_TEXT_COLOR_SPORTS = 0xff862918;

  static const int BOTTOAMBAR_ADD_BG_COLOUR = 0XFF3C79DB;
  static const int HOME_TEXT_COLOUR = 0XFF606062;
  static const int HOME_BG_COLOUR = 0XFFf7f7f8;
  static const int BUTTON_TEXT_GRAY = 0xFF97a3b2;
  static const int BUTTON_TEXT_BLUE = 0xFF5185e8;
  static const int BUTTON_LOGIN_BG = 0xFFf8f9fb;
  static const int BUTTON_PENDING = 0xFFF4B89E;
  //static const int GREY__COLOR_DIVIDER = 0xFFF2F2F2;
  static const int GREY__COLOR_DIVIDER = 0xFFDEDEDE;
//  static const int BLUE_COLOR = 0xFF3B79E0;
  static const int BLUE_COLOR = 0xFF4684EB;
  static const int BLUE_COLOR_BOTTOMBAR = 0xFF4684EB;
  static const int HEADING_COLOR = 0xFFC1E3FC;
  static const int HEADING_COLOR_EDUCATION = 0xFF151515;
  static const int SCREEN_BG_COLOR = 0xFFFAFAFA;
  static const int GREY_TEXT_COLOR = 0xFF404040;
  static const int ORANGE_COLOR = 0xFFFF9900;
  static const int GREY__COLOR = 0xFF9a9c9c;
  static const int LIGHT_GREY_TEXT_COLOR = 0xFFE9E9EC;
  static const int RADIO_BLACK = 0xFF151515;
  static const int GRAY_HEADER_PRESSO_VIEW = 0xffCACACA;
  static const int LIGHT_GRAY_BG = 0xffF8F9F8;
  static const int OPPORTUNITY_GROUP_SELECTION_GRP = 0xffF0F0F0;
  static const int GRAY_BG = 0xffF8F8F8;
  static Color ERROR_COLOR = Colors.red;

  static const int DEVIDER_COLOR = 0xffE9E9EC;
  static const int DARK_GREY = 0xffDEDEDE;
  static const int BORDER_COLOR = 0xffDEDEDE;
  static const int BG_CIRCLE_COLOR = 0xffA0A0A0;
  static const int WHITE = 0xffffffff;
  static const int RED = 0xffFD0000;
  static const int SELECTION_GRAY = 0xffF0F0F0;
  static const int SEARCH_CATEGORY_BOX_BG = 0xffC1E3FC;
  static const int SEARCH_CATEGORY_BOX_BG_SELCTED = 0xff4684EB;

  static const int singin_bg_text_color = 0xffF3F7FC;
  static const int singin_bg_color = 0xffF7F7F7;
  static const int singin_dimmer_bg_color = 0xff001231;
  static const int DARK_RANKING_COLOUR = 0XFFFD6900;

  static const int confetti1 = 0xffFDBF00;
  static const int confetti2 = 0xffFFAAB5;
  static const int confetti3 = 0xffFF435B;
  static const int confetti4 = 0xff76D4E7;
  static const int confetti5 = 0xffCA75F5;
  static const int confetti6 = 0xff6A7FCB;
  static const int confetti7 = 0xffDD95C1;

  static const int BUTTON_GREEN = 0xFF37C37E;
  static const int BUTTON_ACTIVE = 0xFFF3D9B6E;

  static const int coach_text_color = 0xFFD0D8E5;
  static const int coach_bg_color = 0xFF001231;

  static const int circle1 = 0xffFF8800;
  static const int circle2 = 0xff4684EB;
  static const int circle3 = 0xff85D6F0;
  static const int circle4 = 0xffEB5757;
 // static const int circle5 = 0xff4684EB;
  static const int circle5 = 0xffFDC675;
  static const int circle6 = 0xff87C6DA;
  static const int circle7 = 0xffD0C0FD;
  static const int ORANGE_TEXT_COLOR = 0xFFF2994A;
  static const int ORANGE_TEXT_COLOR_VIEW = 0xFFFDF8805;
  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }
}
