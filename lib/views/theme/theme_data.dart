import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'theme.dart';

const double defaultMargin = 24.0;
const double defaultRadius = 18.0;

const Color kPrimaryColor = Color(0xff0EBBCB);
const Color kSecondaryColor = Color(0xffFFFCFC);
const Color kThirdColor = Color(0xFF98D7E8);
const Color kBlackColor = Color(0xff36414C);

TextStyle blackTextStyleInter = GoogleFonts.inter(
  color: kBlackColor,
);
TextStyle blueTextStyleInter = GoogleFonts.inter(
  color: kPrimaryColor,
);
TextStyle blueThirdTextStyleInter = GoogleFonts.inter(
  color: kThirdColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
