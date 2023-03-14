import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'th'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? thText = '',
  }) =>
      [enText, thText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // passwordchangeMainp
  {
    '3vtm41x0': {
      'en': 'Change Password',
      'th': '',
    },
    'yosvtpou': {
      'en': 'Current Password',
      'th': '',
    },
    'drzve56e': {
      'en': 'Enter Current Password',
      'th': '',
    },
    '5ypn36th': {
      'en': 'New Password',
      'th': '',
    },
    'pnmvhzfa': {
      'en': 'Enter New Password',
      'th': '',
    },
    'xv322341': {
      'en': 'Field is required',
      'th': '',
    },
    'hmahgo3m': {
      'en': 'Invalidpassword format',
      'th': '',
    },
    'd92fsyf5': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'tawrybu9': {
      'en': '8-20 characters long     ',
      'th': '',
    },
    'tfkxhak9': {
      'en': 'At least 1 Number (1,2...)     ',
      'th': '',
    },
    'h52m3kfz': {
      'en': '1 Lower case character      ',
      'th': '',
    },
    'zfhz0210': {
      'en': '1 Upper case character    ',
      'th': '',
    },
    'ghv87msa': {
      'en': 'At least 1 symbol (\$,%...)          ',
      'th': '',
    },
    'af0hnrud': {
      'en': 'Confirm New Password',
      'th': '',
    },
    '9nn4z9do': {
      'en': 'Confirm New Password',
      'th': '',
    },
    'blxrhiin': {
      'en': 'Update',
      'th': '',
    },
    'vnx0h3sl': {
      'en': 'cancel',
      'th': '',
    },
    'e3jh4vt7': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    '5nhxt8xj': {
      'en': '| Disclaimer',
      'th': '',
    },
    '2yy404uw': {
      'en': 'Change Password',
      'th': '',
    },
    'jk4iz2gw': {
      'en': 'Current Password',
      'th': '',
    },
    'jxcow5id': {
      'en': 'Enter Current Password',
      'th': '',
    },
    '8me4asq7': {
      'en': 'New Password',
      'th': '',
    },
    'h7a9hely': {
      'en': 'Enter New Password',
      'th': '',
    },
    'zwzphl36': {
      'en': 'Field is required',
      'th': '',
    },
    'd2id75i1': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'lbnbo1dv': {
      'en': '8-20 characters long     ',
      'th': '',
    },
    'ycqmtp0g': {
      'en': 'At least 1 Number (1,2...)     ',
      'th': '',
    },
    'hsr9g51y': {
      'en': '1 Lower case character      ',
      'th': '',
    },
    'e7uk9bhn': {
      'en': '1 Upper case character    ',
      'th': '',
    },
    '8aecvu5o': {
      'en': 'At least 1 symbol (\$,%...)          ',
      'th': '',
    },
    'ug4a96oh': {
      'en': 'Confirm New Password',
      'th': '',
    },
    '2f55jbq8': {
      'en': 'Confirm New Password',
      'th': '',
    },
    'gjpfd9tr': {
      'en': 'Update',
      'th': '',
    },
    '325z4h9h': {
      'en': 'cancel',
      'th': '',
    },
    'gq66x7qh': {
      'en': 'Home',
      'th': '',
    },
  },
  // forgotpasswordMain
  {
    '2z97hcjp': {
      'en': 'Forgot / Reset Password',
      'th': '',
    },
    'r2geqlhf': {
      'en':
          'Please enter your companyemail below and we will send you password reset instructions.',
      'th': '',
    },
    'lyjqtrfs': {
      'en': 'Email Address',
      'th': '',
    },
    'gpx3lmbg': {
      'en': 'Email Address',
      'th': '',
    },
    'pv7t90kz': {
      'en': 'Field is required',
      'th': '',
    },
    'vgckagvv': {
      'en': 'Invalid email',
      'th': '',
    },
    'ekyhthv9': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'm9hsnux4': {
      'en': 'The email was not found in our records',
      'th': '',
    },
    'xfiudprq': {
      'en': 'Submit',
      'th': '',
    },
    'q7aew6v6': {
      'en': 'Cancel',
      'th': '',
    },
    'qali1xvd': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'q0uihqdg': {
      'en': '| Disclaimer',
      'th': '',
    },
    'yh20d4r8': {
      'en': 'Forgot / Reset Password ',
      'th': '',
    },
    '2s9xwjeq': {
      'en':
          'Please enter your company email below and we will send you password reset instructions.',
      'th': '',
    },
    'fe6k2jpx': {
      'en': 'Email Address',
      'th': '',
    },
    '2qbs48vt': {
      'en': 'Enter Email',
      'th': '',
    },
    'fhk5qk14': {
      'en': 'Field is required',
      'th': '',
    },
    's0a5qqnw': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'gcmu6qb2': {
      'en': 'The email was not found in our records',
      'th': '',
    },
    '0s2smi4i': {
      'en': 'Submit',
      'th': '',
    },
    'n3h4v4kc': {
      'en': 'Cancel',
      'th': '',
    },
    '31wvazy8': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    'jg7wh2r2': {
      'en': '| Disclaimer',
      'th': '',
    },
    '88d2o4o4': {
      'en': 'Home',
      'th': '',
    },
  },
  // loginpagMain
  {
    'xq5lhypa': {
      'en': 'Agent Login ',
      'th': '',
    },
    'jx1fiuc0': {
      'en': 'Enter username or email',
      'th': '',
    },
    'hn9575sc': {
      'en': 'Username or Email',
      'th': '',
    },
    'zbx74zun': {
      'en': 'Password',
      'th': '',
    },
    'h61yqm5k': {
      'en': 'Password',
      'th': '',
    },
    'y3e9tlpk': {
      'en': 'Forgot password?',
      'th': '',
    },
    '1bw9el12': {
      'en': 'Login',
      'th': '',
    },
    '6eumv7db': {
      'en': 'New Agency / Entity? Register',
      'th': '',
    },
    'r5bkxzfn': {
      'en': 'Field is required',
      'th': '',
    },
    'gj5mfpzl': {
      'en': 'Enter valid email id or username',
      'th': '',
    },
    'qxt0klqe': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'l73y3rx0': {
      'en': 'Field is required',
      'th': '',
    },
    'sf2i0rbi': {
      'en': 'invalid password',
      'th': '',
    },
    'ab9ex7zj': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'v4rzn0w1': {
      'en': 'Business Login ',
      'th': '',
    },
    'npp0oua2': {
      'en': 'Enter username or email',
      'th': '',
    },
    'b1p2xdcw': {
      'en': 'Username or email',
      'th': '',
    },
    's0wl61df': {
      'en': 'Password',
      'th': '',
    },
    'qaxf1tpu': {
      'en': 'Password',
      'th': '',
    },
    'yivpmu0o': {
      'en': 'Forgot password?',
      'th': '',
    },
    'zwqvreuz': {
      'en': 'Login',
      'th': '',
    },
    'us4cvjd7': {
      'en': 'Field is required',
      'th': '',
    },
    'rqptwfxx': {
      'en': 'Enter valid email id or username',
      'th': '',
    },
    'ik7rh9cx': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'cywpci5f': {
      'en': 'Field is required',
      'th': '',
    },
    '446ojtc2': {
      'en': 'Invalid password',
      'th': '',
    },
    'j59uspzg': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'cewu8jt2': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'm43tk6gp': {
      'en': '| Disclaimer',
      'th': '',
    },
    'xk0znvcr': {
      'en': 'R E S P O N S I B L E   A C T I O N S ',
      'th': '',
    },
    'j2a3kug3': {
      'en': 'S U S T A I N A B L E   F U T U R E',
      'th': '',
    },
    'b4jcit9j': {
      'en': 'Agent Login ',
      'th': '',
    },
    'hjpes3vb': {
      'en': 'Enter username or email',
      'th': '',
    },
    'af0xwzuv': {
      'en': 'Username or email',
      'th': '',
    },
    '8l22o2ec': {
      'en': 'Password',
      'th': '',
    },
    'w5rues42': {
      'en': 'password',
      'th': '',
    },
    '97xb95sn': {
      'en': 'Forgot password?',
      'th': '',
    },
    'ier7sk9z': {
      'en': 'Login',
      'th': '',
    },
    'j3btcwoy': {
      'en': 'New agent? Register',
      'th': '',
    },
    'ikshx7he': {
      'en': 'Field is required',
      'th': '',
    },
    '88nklp6c': {
      'en': 'Invalid mail',
      'th': '',
    },
    'tm6j8xso': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'x4iqgbuc': {
      'en': 'Field is required',
      'th': '',
    },
    '7tzwg54f': {
      'en': 'invalid password',
      'th': '',
    },
    'npo9trp4': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'soay6a64': {
      'en': 'Business Login ',
      'th': '',
    },
    'o2sas3st': {
      'en': 'Enter username or email',
      'th': '',
    },
    '3ygo8v5y': {
      'en': 'Username or email',
      'th': '',
    },
    'eunjm660': {
      'en': 'Password',
      'th': '',
    },
    '7hbnu5da': {
      'en': 'password',
      'th': '',
    },
    'whu7kffc': {
      'en': 'Forgot password?',
      'th': '',
    },
    'kr682ff1': {
      'en': 'Login',
      'th': '',
    },
    'tp8iei4u': {
      'en': 'Field is required',
      'th': '',
    },
    'teqvh6gd': {
      'en': 'invalid email',
      'th': '',
    },
    '31hi79qa': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'ewjm02b7': {
      'en': 'Field is required',
      'th': '',
    },
    '16uuv3wu': {
      'en': 'invalid password',
      'th': '',
    },
    '9ll1jev1': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '8vba1v2s': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    '1ey9gtav': {
      'en': '| Disclaimer',
      'th': '',
    },
    'rbioubft': {
      'en': 'Home',
      'th': '',
    },
  },
  // registersucessfulMain
  {
    'k904suvl': {
      'en': 'Register',
      'th': '',
    },
    '4fd9fsv1': {
      'en': 'Yay!',
      'th': '',
    },
    'lt1c23em': {
      'en': 'Registration Complete',
      'th': '',
    },
    'mj589ams': {
      'en': 'Thank You For Registering!',
      'th': '',
    },
    'ugkse0l7': {
      'en':
          'Your registration has been submitted successfully. Please regularly check both the Authorized Signatory and Finance Manager email inbox (including “Junk” and “Spam” mail folder) for your registration status.',
      'th': '',
    },
    'cpty3trf': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    '29i27ybt': {
      'en': '| Disclaimer',
      'th': '',
    },
    'gt018dr0': {
      'en': 'Home',
      'th': '',
    },
  },
  // QueueMain
  {
    'bdtwxvxy': {
      'en': 'Dashboard / ',
      'th': '',
    },
    '7w4g4z2i': {
      'en': 'Queue / ',
      'th': '',
    },
    'jgf0lc0e': {
      'en': 'Confirmed Bookings',
      'th': '',
    },
    'zhp83mpu': {
      'en': 'All Confirmed Bookings ',
      'th': '',
    },
    'aphqal7v': {
      'en': '(4)',
      'th': '',
    },
    'k7aaui5y': {
      'en': 'Certificate Number',
      'th': '',
    },
    '0d7z9ya7': {
      'en': 'Certificate Number',
      'th': '',
    },
    '6pml3zwv': {
      'en': 'Lead Traveler',
      'th': '',
    },
    '2ryf2xtp': {
      'en': 'Lead Traveler',
      'th': '',
    },
    '1c2msf9g': {
      'en': 'Booking Agent',
      'th': '',
    },
    '6t79240h': {
      'en': 'Booking Agent',
      'th': '',
    },
    'x3rmpo5u': {
      'en': 'Certificate No.',
      'th': '',
    },
    'tak707nn': {
      'en': 'Plan',
      'th': '',
    },
    '8eaqddtc': {
      'en': 'Booking Status',
      'th': '',
    },
    '6c3fr5dq': {
      'en': 'Lead Traveler',
      'th': '',
    },
    'ilbokm2g': {
      'en': 'City',
      'th': '',
    },
    '5kihdfud': {
      'en': 'Date',
      'th': '',
    },
    '617w8the': {
      'en': 'Premium',
      'th': '',
    },
    'sjtjcwbl': {
      'en': 'Booking Agent',
      'th': '',
    },
    '2gajpsol': {
      'en': 'Booking Date',
      'th': '',
    },
    'skt5k7d4': {
      'en': 'Origin: ',
      'th': '',
    },
    '56kwbcoe': {
      'en': 'Destination: ',
      'th': '',
    },
    'gdlik9hk': {
      'en': 'Departure: ',
      'th': '',
    },
    '385o6gqb': {
      'en': 'Return: ',
      'th': '',
    },
    '9szir075': {
      'en': 'Home',
      'th': '',
    },
  },
  // issuePolicyTravelMain
  {
    '2l60pqiw': {
      'en': 'Dashboard ',
      'th': '',
    },
    '8030z8dt': {
      'en': 'Dashboard ',
      'th': '',
    },
    'cqff94na': {
      'en': '/ Issue Policy',
      'th': '',
    },
    'g0oqy8gk': {
      'en': 'Step 1/5. Search',
      'th': '',
    },
    '33jrp8fg': {
      'en': 'Travel Details',
      'th': '',
    },
    '6rnzr63s': {
      'en': 'Journey Type',
      'th': '',
    },
    'ctdqnhz3': {
      'en': 'One Way',
      'th': '',
    },
    'ib23zmm4': {
      'en': 'Round Trip',
      'th': '',
    },
    '59ax6d49': {
      'en': 'Destination Type',
      'th': '',
    },
    '5scjjqvn': {
      'en': 'City',
      'th': '',
    },
    'eqt1ylgi': {
      'en': 'Country',
      'th': '',
    },
    '5mz37r9a': {
      'en': 'From',
      'th': '',
    },
    '007zcrxy': {
      'en': 'Option 1',
      'th': '',
    },
    'wsri3zy0': {
      'en': '2',
      'th': '',
    },
    '8srrcnn0': {
      'en': '3',
      'th': '',
    },
    'aoi7x3yi': {
      'en': '4',
      'th': '',
    },
    'pxcjqlq6': {
      'en': '--select...',
      'th': '',
    },
    '91k7fum3': {
      'en': 'Going To',
      'th': '',
    },
    '525a4108': {
      'en': 'Option 1',
      'th': '',
    },
    'o7re4vh4': {
      'en': '2',
      'th': '',
    },
    'egesl8d4': {
      'en': '3',
      'th': '',
    },
    'ay25srht': {
      'en': '4',
      'th': '',
    },
    'tnvsne4e': {
      'en': '--select...',
      'th': '',
    },
    'hgwy56r2': {
      'en': 'Daparture Date',
      'th': '',
    },
    'wtmks8zv': {
      'en': 'Return Date',
      'th': '',
    },
    '33ozxrtl': {
      'en': 'Number of Pax',
      'th': '',
    },
    '1l57lquj': {
      'en': 'Policy for',
      'th': '',
    },
    'pwm6se8i': {
      'en': 'Option 1',
      'th': '',
    },
    'xwyzul8d': {
      'en': '2',
      'th': '',
    },
    'rat7hse8': {
      'en': '3',
      'th': '',
    },
    'v52ldb66': {
      'en': '4',
      'th': '',
    },
    'zyge7pdh': {
      'en': '--select...',
      'th': '',
    },
    'w9rok0af': {
      'en': 'Adult(19-55 Years)',
      'th': '',
    },
    'pxxediz2': {
      'en': 'Option 1',
      'th': '',
    },
    'mrpjqy2r': {
      'en': '2',
      'th': '',
    },
    'beod29v4': {
      'en': '3',
      'th': '',
    },
    's8inisqc': {
      'en': '4',
      'th': '',
    },
    'v77u0soj': {
      'en': '--select...',
      'th': '',
    },
    'sf28pet5': {
      'en': 'Child (2-21 Years)',
      'th': '',
    },
    '5lu7mlul': {
      'en': 'Option 1',
      'th': '',
    },
    'nnfuchp6': {
      'en': '2',
      'th': '',
    },
    'ct3mzt00': {
      'en': '3',
      'th': '',
    },
    '3u67zaqe': {
      'en': '4',
      'th': '',
    },
    'lui94fcy': {
      'en': '--select...',
      'th': '',
    },
    'at989cm3': {
      'en': 'Infants (1 Months - 2 Years)',
      'th': '',
    },
    'y4mthl30': {
      'en': 'Option 1',
      'th': '',
    },
    'b3qjfkhf': {
      'en': '2',
      'th': '',
    },
    'icrd39nm': {
      'en': '3',
      'th': '',
    },
    'r33h6yde': {
      'en': '4',
      'th': '',
    },
    'pkqwrl1x': {
      'en': '--select...',
      'th': '',
    },
    '99bdse5q': {
      'en': 'Proceed',
      'th': '',
    },
    'vnx9m89o': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'ly8uot7n': {
      'en': 'Step 2/5. Search',
      'th': '',
    },
    '9r77saii': {
      'en': 'Plan Type',
      'th': '',
    },
    'yj8jiamk': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    '3kuu44qa': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    'eee3y59m': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    '47gdzc1u': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    'e8u77zql': {
      'en': 'Individual',
      'th': '',
    },
    'e5q3eqex': {
      'en': 'MYR',
      'th': '',
    },
    'aogz7gbn': {
      'en': '67.00',
      'th': '',
    },
    '4an0c9uh': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    '5rhsnde1': {
      'en': '+ More Details',
      'th': '',
    },
    'e225h3kp': {
      'en': 'MYR',
      'th': '',
    },
    'itvo1wht': {
      'en': '45.00',
      'th': '',
    },
    'gmwo1n7q': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Gold Plan)',
      'th': '',
    },
    'ph6kd590': {
      'en': '+ More Details',
      'th': '',
    },
    'jf0pdgxg': {
      'en': 'MYR',
      'th': '',
    },
    'zpwv1lls': {
      'en': '25.00',
      'th': '',
    },
    'mlbtwyen': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Silver Plan)',
      'th': '',
    },
    'zk4bs0zi': {
      'en': '+ More Details',
      'th': '',
    },
    'hi5dcbo7': {
      'en': 'Adventure Plans',
      'th': '',
    },
    'c7xvslpr': {
      'en': 'MYR',
      'th': '',
    },
    'v7gdd6uf': {
      'en': '67.00',
      'th': '',
    },
    'dnjd395s': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'bzeo0due': {
      'en': '+ More Details',
      'th': '',
    },
    '0rqw2316': {
      'en': 'Important:',
      'th': '',
    },
    'z9flj8mn': {
      'en': ' By clicking on proceed I \nagree and accept the',
      'th': '',
    },
    'zxngc02l': {
      'en': ' Disclaimer',
      'th': '',
    },
    'zqenvz91': {
      'en': 'Proceed',
      'th': '',
    },
    'ap4pxuyg': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'st28jrme': {
      'en': 'Step 3/5. Traveler Info',
      'th': '',
    },
    'fkkc5psb': {
      'en': 'Travel Details',
      'th': '',
    },
    '9heats3o': {
      'en': 'Adult 1',
      'th': '',
    },
    '8uoflxiy': {
      'en': 'Last Name',
      'th': '',
    },
    'doama2t8': {
      'en': 'First Name',
      'th': '',
    },
    'ftlf4l6n': {
      'en': 'Gender',
      'th': '',
    },
    '2y0u13aw': {
      'en': 'Option 1',
      'th': '',
    },
    '6jmoxmhh': {
      'en': 'Please select...',
      'th': '',
    },
    'y6z3q1je': {
      'en': 'Nationality',
      'th': '',
    },
    '7oc6pxde': {
      'en': 'Option 1',
      'th': '',
    },
    '5ltndt0w': {
      'en': 'Please select...',
      'th': '',
    },
    'htpsw33r': {
      'en': 'NRIC / Passport',
      'th': '',
    },
    'foncw6bu': {
      'en': 'Mobile Number',
      'th': '',
    },
    'uh21ca5t': {
      'en': 'Email Address',
      'th': '',
    },
    'ssm63et6': {
      'en': 'Date of Birth',
      'th': '',
    },
    'jiaqbqc4': {
      'en': 'Apply for All Passengers',
      'th': '',
    },
    'kuccb6z6': {
      'en': 'Mailing Address',
      'th': '',
    },
    '3dfa8dtc': {
      'en': 'Address Line',
      'th': '',
    },
    '4insbrr9': {
      'en': 'Postal Code',
      'th': '',
    },
    'zm1couwo': {
      'en': 'Country',
      'th': '',
    },
    'vqpfytcj': {
      'en': 'Option 1',
      'th': '',
    },
    'iiezvz8h': {
      'en': 'Please select...',
      'th': '',
    },
    'd6qy3xhz': {
      'en': 'State',
      'th': '',
    },
    'igd7kygo': {
      'en': 'Option 1',
      'th': '',
    },
    'nten9h8p': {
      'en': 'Please select...',
      'th': '',
    },
    'hfh8bvey': {
      'en': 'Add Nominees ',
      'th': '',
    },
    'tcnmyu17': {
      'en': '(Optional)',
      'th': '',
    },
    '7u1ykx87': {
      'en': 'First Name',
      'th': '',
    },
    '73ttjztc': {
      'en': 'Last Name',
      'th': '',
    },
    'iwikhkxe': {
      'en': 'Gender',
      'th': '',
    },
    'chee3ggr': {
      'en': 'Option 1',
      'th': '',
    },
    '0zyrx89w': {
      'en': 'Please select...',
      'th': '',
    },
    'ote5fvup': {
      'en': 'Mobile Number',
      'th': '',
    },
    '08c4zdgs': {
      'en': 'Email Address',
      'th': '',
    },
    'j1u73zsy': {
      'en': 'Address Line',
      'th': '',
    },
    'zswm1is8': {
      'en': 'Country',
      'th': '',
    },
    'o9lhtysb': {
      'en': 'Option 1',
      'th': '',
    },
    '615kbo1v': {
      'en': 'Please select...',
      'th': '',
    },
    'jdiuejn4': {
      'en': 'State',
      'th': '',
    },
    'hm2t510y': {
      'en': 'Option 1',
      'th': '',
    },
    'xezup34z': {
      'en': 'Please select...',
      'th': '',
    },
    'htv44om8': {
      'en': 'Postal Code',
      'th': '',
    },
    'zkcgl2rm': {
      'en': 'Relationship',
      'th': '',
    },
    'cw5lk2iu': {
      'en': '+ Add Another Nominee',
      'th': '',
    },
    'guvvxrd4': {
      'en': 'Proceed',
      'th': '',
    },
    'jkths00k': {
      'en': 'Back',
      'th': '',
    },
    'pc3n4z5t': {
      'en': 'Step 4/5. Confirmation',
      'th': '',
    },
    '1bscdvzx': {
      'en': 'Traveler Details (1)',
      'th': '',
    },
    'l1r9ivg2': {
      'en': 'Consent by Customer',
      'th': '',
    },
    'e1l8xbvf': {
      'en':
          'I as the insured/data subject and/or travel agency give consent on my behalf or on behalf of insured/data subject to give the personal information to Tune Insurance Public Company Limited (Tune Protect Thailand\' or \'Company\') for collecting, using and processing the personal information for marketing purposes or offering the products and services or marketing activities in the future. I have read and understand the privacy policy which found in https://www.tuneprotect.co.th/th/privacy-policy',
      'th': '',
    },
    'xkyowe96': {
      'en': 'Yes',
      'th': '',
    },
    'sntyiiag': {
      'en': 'No',
      'th': '',
    },
    '3tadfdyu': {
      'en': 'Current Balance: ',
      'th': '',
    },
    '4d5qpf5g': {
      'en': 'MYR 766.00',
      'th': '',
    },
    '1iqamsmh': {
      'en': 'Amount to Be Paid: ',
      'th': '',
    },
    'icd1ftg1': {
      'en': 'MYR 766.00',
      'th': '',
    },
    'mri3bbfa': {
      'en': 'Save Quotation',
      'th': '',
    },
    'tceb5ati': {
      'en': 'Confirm',
      'th': '',
    },
    'xljju6pi': {
      'en': 'Back',
      'th': '',
    },
    'qvr83fmo': {
      'en': 'Step 5/5. Policy',
      'th': '',
    },
    'kbh9yxgp': {
      'en': 'Yay!',
      'th': '',
    },
    'pcqj8gl7': {
      'en': 'Policy Successfully Issued!',
      'th': '',
    },
    'qyv0568n': {
      'en': 'Insurance Voucher',
      'th': '',
    },
    'trhp7amv': {
      'en': 'Trip Type',
      'th': '',
    },
    '7zagyui0': {
      'en': 'Journey',
      'th': '',
    },
    'g07ydtl6': {
      'en': 'Round Trip',
      'th': '',
    },
    '3ur64wbp': {
      'en': 'KUL-CGK-KUL',
      'th': '',
    },
    'h3rvytw2': {
      'en': 'Departure Date',
      'th': '',
    },
    'hcdqmuwv': {
      'en': 'Return Date',
      'th': '',
    },
    'zjamfpz2': {
      'en': '??-??-????',
      'th': '',
    },
    '98ju2p50': {
      'en': '??-??-??',
      'th': '',
    },
    'lnhh4xps': {
      'en': 'Policy Details',
      'th': '',
    },
    'cnahxxd7': {
      'en': 'Download',
      'th': '',
    },
    'nyeie6a6': {
      'en': 'Plan:',
      'th': '',
    },
    '622t6hna': {
      'en': 'Round Trip',
      'th': '',
    },
    'w5pr61v9': {
      'en': 'Cerificate Number',
      'th': '',
    },
    'llvr6ceq': {
      'en': 'TC - 23 - 0000013',
      'th': '',
    },
    'kgaujx5f': {
      'en': 'Traveler Details',
      'th': '',
    },
    '75aqczr4': {
      'en': '1.',
      'th': '',
    },
    'cw4yxgnt': {
      'en': 'Yusuf Khan ',
      'th': '',
    },
    'o3efnt4k': {
      'en': 'Adult',
      'th': '',
    },
    'd238dpll': {
      'en': 'Issue Another Policy',
      'th': '',
    },
    'rf8mjsv1': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'ezszvdsf': {
      'en': 'Home',
      'th': '',
    },
  },
  // ApprovalMain
  {
    'owty3ivq': {
      'en': 'Dashboard',
      'th': '',
    },
    's2s68y9i': {
      'en': ' / Registrations Approval',
      'th': '',
    },
    'h1uxh98r': {
      'en': 'New Registrations Approval',
      'th': '',
    },
    'rdvz3dh9': {
      'en': 'New Agency Registrations (6)',
      'th': '',
    },
    'ht6rwn29': {
      'en': 'Search',
      'th': '',
    },
    'cu5k8ok7': {
      'en': 'Company',
      'th': '',
    },
    'zqm0pliz': {
      'en': 'Country',
      'th': '',
    },
    'mvf2mivw': {
      'en': 'Authorized Signatory',
      'th': '',
    },
    '4oyy02hb': {
      'en': 'Finance Manager',
      'th': '',
    },
    'arxruwuh': {
      'en': 'Registered Date',
      'th': '',
    },
    '5491ydma': {
      'en': 'Showing 1 to 6 of 6 entries',
      'th': '',
    },
    'j7703skh': {
      'en': 'Prev',
      'th': '',
    },
    'lo1jw65s': {
      'en': '1',
      'th': '',
    },
    'mspla5vh': {
      'en': 'Next',
      'th': '',
    },
    'd4p5dtk0': {
      'en': 'New Reseller Registrations (0)',
      'th': '',
    },
    'tv7rf53z': {
      'en': 'Credit Top-up Requests (0)',
      'th': '',
    },
    '1icbo3xv': {
      'en': 'Home',
      'th': '',
    },
  },
  // dashboardMain
  {
    'okz25dwm': {
      'en': 'Welcome Back, ',
      'th': '',
    },
    'u06hnwtl': {
      'en': '<name>!',
      'th': '',
    },
    'oud1pyol': {
      'en': 'You last logged in on <??/??/????>',
      'th': '',
    },
    '39d0revi': {
      'en': 'Services',
      'th': '',
    },
    'y5rmhd4x': {
      'en': 'Policies',
      'th': '',
    },
    'c3zomgaj': {
      'en': 'Today : ',
      'th': '',
    },
    '3ba13hnm': {
      'en': 'Confirmed:',
      'th': '',
    },
    '04g76w8z': {
      'en': ' 15',
      'th': '',
    },
    'wja9qmad': {
      'en': 'Cancelled: ',
      'th': '',
    },
    '91pqse2i': {
      'en': 'Your Revenue',
      'th': '',
    },
    '2htmr116': {
      'en': '100K',
      'th': '',
    },
    'opltisrz': {
      'en': '75K',
      'th': '',
    },
    'jq2tu0az': {
      'en': '50K',
      'th': '',
    },
    '9rfqka00': {
      'en': '25K',
      'th': '',
    },
    '74d7yx6l': {
      'en': '0',
      'th': '',
    },
    'tmzdjluq': {
      'en': '1D',
      'th': '',
    },
    'jacey0co': {
      'en': '3D',
      'th': '',
    },
    'yvl51836': {
      'en': '1W',
      'th': '',
    },
    'p9cyaqi6': {
      'en': '1M',
      'th': '',
    },
    'wf0ys2um': {
      'en': '3M',
      'th': '',
    },
    '4824lkec': {
      'en': '6M',
      'th': '',
    },
    '73rpfuym': {
      'en': 'Queue',
      'th': '',
    },
    'mqgpv268': {
      'en': 'Refresh',
      'th': '',
    },
    'tg8ihhk4': {
      'en': 'Cancellations:',
      'th': '',
    },
    'f81xoyvf': {
      'en': '(Last month)',
      'th': '',
    },
    'acdutaax': {
      'en': '?',
      'th': '',
    },
    'w95uz99s': {
      'en': 'Saved \nQuotations:',
      'th': '',
    },
    'wsvso5ey': {
      'en': '?',
      'th': '',
    },
    'tkdv4mtd': {
      'en': 'Notifications For You (<?>)',
      'th': '',
    },
    'itirzbdz': {
      'en': 'Information For You',
      'th': '',
    },
    '63f83oo0': {
      'en': 'Premium At-A-Glance (PDF)',
      'th': '',
    },
    '9izw6ve6': {
      'en': 'Schedule of Benefits At-A-Glance',
      'th': '',
    },
    'aw6mrt3w': {
      'en': 'COVID Travel Pass (PDF)',
      'th': '',
    },
    'key2n0vf': {
      'en': 'Travel Comprehensive (PDF)',
      'th': '',
    },
    'hif5ehvo': {
      'en': 'Travel Outbound Lite (PDF)',
      'th': '',
    },
    '5omoa5rc': {
      'en': 'Travel Inbound Lite (PDF)',
      'th': '',
    },
    'k1ki8f8l': {
      'en': 'FAQ',
      'th': '',
    },
    '1t9l827y': {
      'en': 'Home',
      'th': '',
    },
  },
  // signup1Main
  {
    'zno290a1': {
      'en': 'Register',
      'th': '',
    },
    'tke40rqk': {
      'en': '*Mandatory Field',
      'th': '',
    },
    'uhkkfvs8': {
      'en': '*All user email addresses must be unique',
      'th': '',
    },
    'sf6zcxe8': {
      'en': 'Country of Registered Office',
      'th': '',
    },
    '2anulo3h': {
      'en': '*',
      'th': '',
    },
    'q684i865': {
      'en': ':',
      'th': '',
    },
    '3ol3nepl': {
      'en': 'Malaysia',
      'th': '',
    },
    '6xputhbs': {
      'en': 'Thailand',
      'th': '',
    },
    '81ci458f': {
      'en': 'Sinagpore',
      'th': '',
    },
    '9d3x77h5': {
      'en': '-- Select --',
      'th': '',
    },
    'npzde7xd': {
      'en': 'Company Name',
      'th': '',
    },
    'ht2veox2': {
      'en': '*',
      'th': '',
    },
    'alqa81hn': {
      'en': ':',
      'th': '',
    },
    'oj6fyc0a': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'p81dsdh9': {
      'en': 'Company Address',
      'th': '',
    },
    'vh1r4r1b': {
      'en': '*',
      'th': '',
    },
    'ua6p52da': {
      'en': ':',
      'th': '',
    },
    't8u84pkl': {
      'en': 'enter address',
      'th': '',
    },
    'magbn3pp': {
      'en': 'Contact Person',
      'th': '',
    },
    '2fvklco9': {
      'en': '*',
      'th': '',
    },
    '4mleva9i': {
      'en': ':',
      'th': '',
    },
    'n5xb72iw': {
      'en': ' Name',
      'th': '',
    },
    'v2grk0x5': {
      'en': 'Email of Contact Person',
      'th': '',
    },
    'm61drtl1': {
      'en': '*',
      'th': '',
    },
    'fujve1dl': {
      'en': ':',
      'th': '',
    },
    'rsoiq489': {
      'en': 'Email address',
      'th': '',
    },
    'mgxz4w58': {
      'en': 'Phone of Contact Person',
      'th': '',
    },
    'ik84rlh9': {
      'en': '*',
      'th': '',
    },
    '96nc4iux': {
      'en': ':',
      'th': '',
    },
    'r46vv189': {
      'en': 'Phone number',
      'th': '',
    },
    'yra3er2d': {
      'en': 'Please give ',
      'th': '',
    },
    'qm1my7nh': {
      'en': 'NDA ',
      'th': '',
    },
    'emze7u3l': {
      'en': 'Consent here',
      'th': '',
    },
    'yqktnhtr': {
      'en': 'Clear',
      'th': '',
    },
    'r8b7lsr5': {
      'en': 'Submit',
      'th': '',
    },
    'n4ytos3q': {
      'en': 'Enter valid username',
      'th': '',
    },
    '019kjj6p': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '9tjx2hk9': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'jhvfmgux': {
      'en': 'Enter valid name',
      'th': '',
    },
    'pd4tdsbn': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'oarymcrk': {
      'en': 'field required',
      'th': '',
    },
    'lrjlydfu': {
      'en': 'Enter valid Email',
      'th': '',
    },
    '1lmme2pk': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'rq33ihez': {
      'en': 'field required',
      'th': '',
    },
    'kvrjh3hv': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'bb0fu3nj': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'e5r6i3x1': {
      'en': '| Disclaimer',
      'th': '',
    },
    'n1kogx9r': {
      'en': 'Register',
      'th': '',
    },
    '4kjmd2mp': {
      'en': '*Mandatory Field',
      'th': '',
    },
    'n8w0q5pw': {
      'en': '*All user email addresses must be unique',
      'th': '',
    },
    '7f43yuno': {
      'en': 'Country of Registered Office',
      'th': '',
    },
    'osp8sxpw': {
      'en': '*',
      'th': '',
    },
    '13y55119': {
      'en': ':',
      'th': '',
    },
    'crvgiyzw': {
      'en': 'Option 1',
      'th': '',
    },
    '6fpzz5us': {
      'en': '2',
      'th': '',
    },
    'ivqanecj': {
      'en': '3',
      'th': '',
    },
    'rk7j9xwu': {
      'en': '4',
      'th': '',
    },
    '2zycmuik': {
      'en': '-- Select --',
      'th': '',
    },
    'echdxpyn': {
      'en': 'Company Name',
      'th': '',
    },
    'ogb99msu': {
      'en': '*',
      'th': '',
    },
    '5492hozx': {
      'en': ':',
      'th': '',
    },
    'xqj4k1jl': {
      'en': '[Some hint text...]',
      'th': '',
    },
    '4tm0ijq6': {
      'en': 'Company Address',
      'th': '',
    },
    'cuoylgdc': {
      'en': '*',
      'th': '',
    },
    'i600bzxk': {
      'en': ':',
      'th': '',
    },
    'rxrz2dl7': {
      'en': 'enter address',
      'th': '',
    },
    'tnxtbbj7': {
      'en': 'Contact Person',
      'th': '',
    },
    'j1yijh3f': {
      'en': '*',
      'th': '',
    },
    '9mfn8woz': {
      'en': ':',
      'th': '',
    },
    'npxm8a1n': {
      'en': ' Name',
      'th': '',
    },
    'gjhqa8b8': {
      'en': 'Email of Contact Person',
      'th': '',
    },
    'h0m7yhal': {
      'en': '*',
      'th': '',
    },
    '8v8v5wgg': {
      'en': ':',
      'th': '',
    },
    'zyzai1mw': {
      'en': 'Email address',
      'th': '',
    },
    'c966qtpv': {
      'en': 'Phone of Contact Person',
      'th': '',
    },
    '086uk2qh': {
      'en': '*',
      'th': '',
    },
    'ham8zn4f': {
      'en': ':',
      'th': '',
    },
    'fbm36zne': {
      'en': 'Phone number',
      'th': '',
    },
    '8qiqh1iy': {
      'en': 'Please give ',
      'th': '',
    },
    'i1poya8y': {
      'en': 'NDA ',
      'th': '',
    },
    '00q3f0r0': {
      'en': 'Consent here',
      'th': '',
    },
    'wo0vs8up': {
      'en': 'Clear',
      'th': '',
    },
    '4vf7vpe4': {
      'en': 'Submit',
      'th': '',
    },
    '9a8fs5zd': {
      'en': 'enter valid name',
      'th': '',
    },
    '3z59ddkf': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'bz65h58c': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'awqu40hs': {
      'en': 'venter valid name',
      'th': '',
    },
    '9khpnfyx': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '3iwvh65s': {
      'en': 'enter valid name',
      'th': '',
    },
    'tn6hsv20': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '65rc0uzv': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'n2agacxm': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    'mjohc0oj': {
      'en': '| Disclaimer',
      'th': '',
    },
    '2kdcrkzv': {
      'en': 'Home',
      'th': '',
    },
  },
  // SearchBookingMain
  {
    'xlq8x3vt': {
      'en': 'Dashboard',
      'th': '',
    },
    '1z54zkzp': {
      'en': '/ General Search',
      'th': '',
    },
    '5nlqi2u9': {
      'en': 'Search Results (5)',
      'th': '',
    },
    'ptcuhjy0': {
      'en': 'Certificate No.',
      'th': '',
    },
    '494cn4fh': {
      'en': 'Plan',
      'th': '',
    },
    '5swffhbe': {
      'en': 'Booking Status',
      'th': '',
    },
    'cw2hszbm': {
      'en': 'Lead Traveler',
      'th': '',
    },
    'ovqia3ul': {
      'en': 'City',
      'th': '',
    },
    'lxdatd14': {
      'en': 'Date',
      'th': '',
    },
    'kqir95l6': {
      'en': 'Premium',
      'th': '',
    },
    'f0ox5cfz': {
      'en': 'Booking Agent',
      'th': '',
    },
    '9mmlwite': {
      'en': 'Booking Date',
      'th': '',
    },
    'h9382sr4': {
      'en': 'Hello World',
      'th': '',
    },
    'xhi4jarr': {
      'en': 'Origin : ',
      'th': '',
    },
    '6uqwjj0v': {
      'en': 'Destination : ',
      'th': '',
    },
    '83cwdjn1': {
      'en': 'Departure: ',
      'th': '',
    },
    'ptfpbpid': {
      'en': 'Return:',
      'th': '',
    },
    '0sy728l2': {
      'en': 'Home',
      'th': '',
    },
  },
  // test111
  {
    '53sxwcqe': {
      'en': 'Agent Login ',
      'th': '',
    },
    'risj5poo': {
      'en': 'Enter username or email',
      'th': '',
    },
    '34vsg1bo': {
      'en': 'Username or Email',
      'th': '',
    },
    'zunqoo4w': {
      'en': 'Enter valid email id or username',
      'th': '',
    },
    'obzet4gy': {
      'en': 'Password',
      'th': '',
    },
    'tfip0nkq': {
      'en': 'Password',
      'th': '',
    },
    'obx2fm3z': {
      'en': 'Forgot password?',
      'th': '',
    },
    'rvhqc6ge': {
      'en': 'Login',
      'th': '',
    },
    'fn8ksbvu': {
      'en': 'New agent? Register',
      'th': '',
    },
    '3suuvmdd': {
      'en': 'Error Email',
      'th': '',
    },
    'zi6jsjq8': {
      'en': 'Please enter valid email Id',
      'th': '',
    },
    'anncyrsh': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '84fhjx5v': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'sdidncya': {
      'en': 'Business Login ',
      'th': '',
    },
    '09sim7fr': {
      'en': 'Enter username or email',
      'th': '',
    },
    'lluf8z6k': {
      'en': 'Username or email',
      'th': '',
    },
    '8h3r5a14': {
      'en': 'Enter valid email id or username',
      'th': '',
    },
    '7othe84s': {
      'en': 'Password',
      'th': '',
    },
    'mqlzzj1q': {
      'en': 'Password',
      'th': '',
    },
    'fbau9zrk': {
      'en': 'Forgot password?',
      'th': '',
    },
    's5kxb688': {
      'en': 'Login',
      'th': '',
    },
    'fk7n3a2w': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'n065huz7': {
      'en': '| Disclaimer',
      'th': '',
    },
    'pahivcaf': {
      'en': 'Home',
      'th': '',
    },
  },
  // UsersMain
  {
    'cfnrg09v': {
      'en': 'Dashboard',
      'th': '',
    },
    'fmu4m6tn': {
      'en': ' / All Users',
      'th': '',
    },
    'ota1nzeb': {
      'en': 'All Users (6)',
      'th': '',
    },
    '3dp0zv5w': {
      'en': 'Search',
      'th': '',
    },
    '12bq28v7': {
      'en': '+ Add New User',
      'th': '',
    },
    'awfnyiyj': {
      'en': 'Username',
      'th': '',
    },
    'kklqxkgr': {
      'en': 'First Name',
      'th': '',
    },
    'k30al59d': {
      'en': 'Email',
      'th': '',
    },
    'vtjmi37r': {
      'en': 'Company',
      'th': '',
    },
    'x6yp9v4f': {
      'en': 'Edit Column 4',
      'th': '',
    },
    'a6wir9z6': {
      'en': 'Country',
      'th': '',
    },
    'w8ot8wzf': {
      'en': 'Edit Column 5',
      'th': '',
    },
    '3vlb5r7t': {
      'en': 'Organisation Role',
      'th': '',
    },
    'uwtz84sr': {
      'en': 'Edit Column 6',
      'th': '',
    },
    'a0t6gln7': {
      'en': 'User Role',
      'th': '',
    },
    'des2pswe': {
      'en': 'Edit Column 7',
      'th': '',
    },
    '68hnk4ci': {
      'en': 'Is Active?',
      'th': '',
    },
    'nlya9ye1': {
      'en': 'Edit Column 8',
      'th': '',
    },
    'excrhhph': {
      'en': 'Prev',
      'th': '',
    },
    '528u6tn3': {
      'en': '1',
      'th': '',
    },
    'v7ja54kz': {
      'en': 'Next',
      'th': '',
    },
    'rw5zi4si': {
      'en': 'Dashboard',
      'th': '',
    },
    '6ctko5sf': {
      'en': ' / Create User',
      'th': '',
    },
    'r10e3fif': {
      'en': 'Home',
      'th': '',
    },
  },
  // reloginMain
  {
    '79vukmva': {
      'en': 'Forgot / Reset Password ',
      'th': '',
    },
    'rqjqzqk8': {
      'en': 'The password reset instructions have been sent to your email.',
      'th': '',
    },
    'yvepxx43': {
      'en': 'Please',
      'th': '',
    },
    'hqos3102': {
      'en': ' relogin here ',
      'th': '',
    },
    '9i5i7dci': {
      'en': 'with your new password.',
      'th': '',
    },
    'qyareind': {
      'en': 'A note about spam filters',
      'th': '',
    },
    'qz1iunav': {
      'en':
          'If you do not receive this mail, please check the spam or junk mail folder.',
      'th': '',
    },
    '93ro3xx7': {
      'en': 'Back to login',
      'th': '',
    },
    '8is53q0x': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    '0htw2o6x': {
      'en': '| Disclaimer',
      'th': '',
    },
    'x9bs7uly': {
      'en': 'Home',
      'th': '',
    },
  },
  // dashboardS
  {
    'scx6hcdx': {
      'en': 'Welcome Back, ',
      'th': '',
    },
    'pbo2ndk7': {
      'en': '<name>!',
      'th': '',
    },
    'isbnmrpe': {
      'en': 'You last logged in on ',
      'th': '',
    },
    'fakph5on': {
      'en': '??/??/????',
      'th': '',
    },
    '743ot3ip': {
      'en': 'Congratulations..!',
      'th': '',
    },
    'tllzztir': {
      'en': '#25  ',
      'th': '',
    },
    's9h6vozj': {
      'en': 'in 1,506',
      'th': '',
    },
    '9lvgvk4a': {
      'en': 'Services',
      'th': '',
    },
    'w3v34y7f': {
      'en': 'Policies',
      'th': '',
    },
    'z72wkony': {
      'en': 'Today: ?',
      'th': '',
    },
    'z70sf98w': {
      'en': 'Confirmed: ?',
      'th': '',
    },
    'vfkcsx31': {
      'en': 'Cancelled: ?',
      'th': '',
    },
    '8hy6kdtj': {
      'en': 'Your Revenue',
      'th': '',
    },
    '3hbmi0te': {
      'en': 'Target',
      'th': '',
    },
    '0r4saqbw': {
      'en': 'Revenue',
      'th': '',
    },
    '2pgm5z2b': {
      'en': '100K',
      'th': '',
    },
    'yc9x0mc3': {
      'en': '75K',
      'th': '',
    },
    'wiu5rl17': {
      'en': '50K',
      'th': '',
    },
    'hewsfgo5': {
      'en': '25K',
      'th': '',
    },
    'ekf8hbdr': {
      'en': '0',
      'th': '',
    },
    'zm1iyf5a': {
      'en': '1D',
      'th': '',
    },
    '7at86t3g': {
      'en': '3D',
      'th': '',
    },
    'caa60mv2': {
      'en': '1W',
      'th': '',
    },
    'fc6j9310': {
      'en': '1M',
      'th': '',
    },
    'qafjpaus': {
      'en': '3M',
      'th': '',
    },
    'bdlsw8tx': {
      'en': '6M',
      'th': '',
    },
    'ysb1q6n0': {
      'en': 'Queue',
      'th': '',
    },
    'j9pxxs06': {
      'en': 'Cancellations:',
      'th': '',
    },
    '86zf5hok': {
      'en': '(Last Month)',
      'th': '',
    },
    'q9jkdv67': {
      'en': '??',
      'th': '',
    },
    'cqaau54x': {
      'en': 'Saved\nQuotations:',
      'th': '',
    },
    'myc3t89v': {
      'en': '?',
      'th': '',
    },
    'q0ghyb15': {
      'en': 'Home',
      'th': '',
    },
  },
  // AgencyRegister
  {
    'mytewn64': {
      'en': 'Dashboard / ',
      'th': '',
    },
    'jggnn16v': {
      'en': 'Registrations Approval / ',
      'th': '',
    },
    '2nxupl7r': {
      'en': 'Agency Registration',
      'th': '',
    },
    'kgblu9t6': {
      'en': 'New Agency Registration',
      'th': '',
    },
    'zdyh46ss': {
      'en': 'Please correct the errors and try again.',
      'th': '',
    },
    'gcq42xfr': {
      'en': 'Registration Details',
      'th': '',
    },
    'eky1w0yt': {
      'en': 'Country Of Registered Office',
      'th': '',
    },
    'zc486eku': {
      'en': 'Country Of Registered Office',
      'th': '',
    },
    'se18nzfn': {
      'en': 'Company Name:',
      'th': '',
    },
    'b1gbncyo': {
      'en': 'ABC Company',
      'th': '',
    },
    '8f4q7qgq': {
      'en': 'Company Address',
      'th': '',
    },
    'ncoiy1nn': {
      'en': 'Address Line 1\nAddress Line 2\nAddress Line 3',
      'th': '',
    },
    '8hd2srnm': {
      'en': 'Contact Person',
      'th': '',
    },
    'sqvkl99t': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    'hon4f3k0': {
      'en': 'Email of Contact Person',
      'th': '',
    },
    '5lr7a2a2': {
      'en': 'khan.yusuf@email.com',
      'th': '',
    },
    '1n8x2l9j': {
      'en': 'Phone of Contact Person',
      'th': '',
    },
    'mer2sfxj': {
      'en': 'Phone number',
      'th': '',
    },
    '3hxajfrl': {
      'en': 'Legal Registered Name',
      'th': '',
    },
    'ne9l6kw8': {
      'en': 'Legal name',
      'th': '',
    },
    'tn6sdk3p': {
      'en': 'Email',
      'th': '',
    },
    'mzz6raj8': {
      'en': '',
      'th': '',
    },
    '8k04i2kg': {
      'en': 'Phone',
      'th': '',
    },
    'zxtz3der': {
      'en': '+24 9876543210',
      'th': '',
    },
    '0kv0txmh': {
      'en': 'Fax',
      'th': '',
    },
    'pav2kh0y': {
      'en': '',
      'th': '',
    },
    '9htaidgx': {
      'en': 'Line ID',
      'th': '',
    },
    'qqmbi3ir': {
      'en': '',
      'th': '',
    },
    'sfhrav21': {
      'en': 'Authorized Signatory Name',
      'th': '',
    },
    'yw3wlxvd': {
      'en': 'Authorized Name',
      'th': '',
    },
    '5mcsqqdq': {
      'en': 'Authorized Signatory Email',
      'th': '',
    },
    's9vf02ep': {
      'en': 'Authorized Email',
      'th': '',
    },
    'undgcyr2': {
      'en': 'Finance Manager Name',
      'th': '',
    },
    'o91z4kpy': {
      'en': 'Finance Manager Name',
      'th': '',
    },
    'g9qblpda': {
      'en': 'Finance Manger Email',
      'th': '',
    },
    '787a6n6x': {
      'en': 'Finance Manger Email',
      'th': '',
    },
    '15eu7qjy': {
      'en': 'Billing Department Name',
      'th': '',
    },
    'ct7qto20': {
      'en': 'Billing Department Name',
      'th': '',
    },
    'at0wmdtj': {
      'en': 'Billing Department Email',
      'th': '',
    },
    '5xgsnbqd': {
      'en': 'Billing Department Email',
      'th': '',
    },
    'zr94owao': {
      'en': 'Department Head Name',
      'th': '',
    },
    'phxfahe5': {
      'en': 'Department Head Name',
      'th': '',
    },
    'wrkgyuf9': {
      'en': 'Department Head Email',
      'th': '',
    },
    'fgpxw06q': {
      'en': 'Department Head Email',
      'th': '',
    },
    'bc34zfxg': {
      'en': 'Trade License No.',
      'th': '',
    },
    '09vw29b1': {
      'en': 'Trade License No.',
      'th': '',
    },
    'rciee2rh': {
      'en': 'IATA Code',
      'th': '',
    },
    'obebfo7j': {
      'en': 'IATA Code',
      'th': '',
    },
    '61sjxi6g': {
      'en': 'Bank Name',
      'th': '',
    },
    'ha8916o9': {
      'en': 'Bank Name',
      'th': '',
    },
    'hybkoudu': {
      'en': 'Bank Account No.',
      'th': '',
    },
    'q5svk8wr': {
      'en': 'Bank Account No.',
      'th': '',
    },
    'l7a29xsf': {
      'en': 'Registered Date',
      'th': '',
    },
    'c7iams14': {
      'en': 'Registered Date',
      'th': '',
    },
    'uebh7y3z': {
      'en': 'Approval Details',
      'th': '',
    },
    'p7g1zkco': {
      'en': 'Contract Period Start Date    ',
      'th': '',
    },
    'pzd8cfwj': {
      'en': 'Contract Period End Date    ',
      'th': '',
    },
    'gz4rwsqh': {
      'en': 'Payment Type',
      'th': '',
    },
    'w4ju5ej3': {
      'en': 'Credit term',
      'th': '',
    },
    'uy09hve1': {
      'en': 'Commission (%)',
      'th': '',
    },
    'qtkmixin': {
      'en': '0',
      'th': '',
    },
    'r76d8u5l': {
      'en': 'Override Commission (%)',
      'th': '',
    },
    'mw7u592l': {
      'en': '0',
      'th': '',
    },
    '7k1c9ese': {
      'en': 'Payment Gateway',
      'th': '',
    },
    '56ny89fa': {
      'en': 'Commission (%)',
      'th': '',
    },
    'puij6v8d': {
      'en': '0',
      'th': '',
    },
    'f1xnkdmw': {
      'en': 'Override Commission (%)',
      'th': '',
    },
    'dmoisp8j': {
      'en': '0',
      'th': '',
    },
    'rw8lqcls': {
      'en': 'Credit',
      'th': '',
    },
    'eu4z40li': {
      'en': 'Underwriter',
      'th': '',
    },
    '1kqs14no': {
      'en': 'Credit',
      'th': '',
    },
    'qjt8h8cx': {
      'en': 'TPM',
      'th': '',
    },
    '1y17c6fo': {
      'en': '0',
      'th': '',
    },
    'd4smvkhn': {
      'en': 'Agency Code',
      'th': '',
    },
    '9rooto1l': {
      'en': 'AgencyCode',
      'th': '',
    },
    '5e6qbqs6': {
      'en': 'Pseudo API Code',
      'th': '',
    },
    '2xtl8902': {
      'en': 'Pseudo Api Code',
      'th': '',
    },
    '64yiho0z': {
      'en': 'Debit Note Frequency',
      'th': '',
    },
    'ujryrwxr': {
      'en': '1 Month',
      'th': '',
    },
    'i5vv17z2': {
      'en': '2 Month',
      'th': '',
    },
    'iio8fdmd': {
      'en': 'License Type',
      'th': '',
    },
    '1v85xng3': {
      'en': 'Non-license',
      'th': '',
    },
    'roeumdy3': {
      'en': 'license',
      'th': '',
    },
    'ygtl2vky': {
      'en': 'Sub Group',
      'th': '',
    },
    'r3m43xms': {
      'en': 'NA',
      'th': '',
    },
    'w2t9g44l': {
      'en': 'Decline Reason',
      'th': '',
    },
    '1a8hnsdf': {
      'en': 'Decline Reason',
      'th': '',
    },
    'r5l8bs38': {
      'en': 'Account Manager',
      'th': '',
    },
    'q88nqv0o': {
      'en': 'Account Manager Name',
      'th': '',
    },
    'l6dytlxt': {
      'en': 'Aalaph V Nair',
      'th': '',
    },
    'mx4usemj': {
      'en': 'Email ID',
      'th': '',
    },
    'm53oefef': {
      'en': 'aalaph.nair@tuneprotect.com',
      'th': '',
    },
    '3iyzpoku': {
      'en': 'Contact No.',
      'th': '',
    },
    '7sid22yo': {
      'en': '9876543210',
      'th': '',
    },
    'jucucw43': {
      'en': 'Cancel',
      'th': '',
    },
    'tcf3zt31': {
      'en': 'Decline',
      'th': '',
    },
    'paujd15o': {
      'en': 'Approve',
      'th': '',
    },
    '1i75hvka': {
      'en': 'Home',
      'th': '',
    },
  },
  // issuePolicy1S
  {
    'tzxs4mcx': {
      'en': 'drawe',
      'th': '',
    },
    'weikw1z2': {
      'en': 'Dashboard ',
      'th': '',
    },
    '01gufhwb': {
      'en': '/ Issue Policy',
      'th': '',
    },
    'ftv10kwl': {
      'en': 'Step 1/5. Search',
      'th': '',
    },
    'cjb1hnkj': {
      'en': 'Travel Details',
      'th': '',
    },
    'tfxk9of0': {
      'en': 'Journey Type',
      'th': '',
    },
    'n9889ih1': {
      'en': 'One Way',
      'th': '',
    },
    'wpc0fp93': {
      'en': 'Round Trip',
      'th': '',
    },
    'ecseapd4': {
      'en': 'Destination Type',
      'th': '',
    },
    '62o9zkkb': {
      'en': 'City',
      'th': '',
    },
    'zt1jidt1': {
      'en': 'Country',
      'th': '',
    },
    'o7v7mje0': {
      'en': 'From',
      'th': '',
    },
    'u2mcezlk': {
      'en': 'Option 1',
      'th': '',
    },
    'ikhgvcui': {
      'en': '2',
      'th': '',
    },
    'y8kp89h1': {
      'en': '3',
      'th': '',
    },
    'xx2dycbt': {
      'en': '4',
      'th': '',
    },
    'qylasnzq': {
      'en': '--select...',
      'th': '',
    },
    'tm0io8qr': {
      'en': 'Going To',
      'th': '',
    },
    'yyilxb4h': {
      'en': 'Option 1',
      'th': '',
    },
    'dyosc3qc': {
      'en': '2',
      'th': '',
    },
    '6wkr17ud': {
      'en': '3',
      'th': '',
    },
    'u9y32pdo': {
      'en': '4',
      'th': '',
    },
    '135870oq': {
      'en': '--select...',
      'th': '',
    },
    '8xrnmr9z': {
      'en': 'Daparture Date',
      'th': '',
    },
    '0f72ma88': {
      'en': 'Return Date',
      'th': '',
    },
    'lrkh3wz9': {
      'en': 'Number of Pax',
      'th': '',
    },
    'waib7mbn': {
      'en': 'Policy for',
      'th': '',
    },
    'n4rq1kf6': {
      'en': 'Option 1',
      'th': '',
    },
    'arenrppq': {
      'en': '2',
      'th': '',
    },
    'etgu30rt': {
      'en': '3',
      'th': '',
    },
    'syjt0h1f': {
      'en': '4',
      'th': '',
    },
    'zr6tiztx': {
      'en': '--select...',
      'th': '',
    },
    '32nmn5d7': {
      'en': 'Adult(19-55 Years)',
      'th': '',
    },
    '32zks8uj': {
      'en': 'Option 1',
      'th': '',
    },
    'gw36seaf': {
      'en': '2',
      'th': '',
    },
    'grecflmc': {
      'en': '3',
      'th': '',
    },
    'm8irdje3': {
      'en': '4',
      'th': '',
    },
    '694tqk2h': {
      'en': '--select...',
      'th': '',
    },
    'pc2rshrr': {
      'en': 'Child (2-21 Years)',
      'th': '',
    },
    '23759p17': {
      'en': 'Option 1',
      'th': '',
    },
    '2xaso91y': {
      'en': '2',
      'th': '',
    },
    'rahufqzr': {
      'en': '3',
      'th': '',
    },
    'ihn3ejcb': {
      'en': '4',
      'th': '',
    },
    '53b8m3t5': {
      'en': '--select...',
      'th': '',
    },
    'awjewt9n': {
      'en': 'Infants (1 Months - 2 Years)',
      'th': '',
    },
    'ty7i77kp': {
      'en': 'Option 1',
      'th': '',
    },
    '1q37508t': {
      'en': '2',
      'th': '',
    },
    'ghgfpvj9': {
      'en': '3',
      'th': '',
    },
    'xplmcxr7': {
      'en': '4',
      'th': '',
    },
    '3866fkj3': {
      'en': '--select...',
      'th': '',
    },
    'bx2pc0in': {
      'en': 'Proceed',
      'th': '',
    },
    '08z44sdo': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '19ldd3jn': {
      'en': 'Step 2/5. Search',
      'th': '',
    },
    'wjnh0sc1': {
      'en': 'Plan Type',
      'th': '',
    },
    'rapk3df7': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    'lzco5njo': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    'f2p44x8k': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    't9m862l4': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    'bd14edd9': {
      'en': 'Individual',
      'th': '',
    },
    'no82c02p': {
      'en': 'MYR',
      'th': '',
    },
    'xomiznag': {
      'en': '67.00',
      'th': '',
    },
    'ldhox7ac': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'hb3wgc72': {
      'en': '+ More Details',
      'th': '',
    },
    '7s1es06f': {
      'en': 'MYR',
      'th': '',
    },
    'cv9noqct': {
      'en': '45.00',
      'th': '',
    },
    'tzaclghk': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Gold Plan)',
      'th': '',
    },
    '0oyjfpqa': {
      'en': '+ More Details',
      'th': '',
    },
    '9g3qc6nj': {
      'en': 'MYR',
      'th': '',
    },
    'm8okuh3u': {
      'en': '25.00',
      'th': '',
    },
    'wiiia2gi': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Silver Plan)',
      'th': '',
    },
    'gajtta2d': {
      'en': '+ More Details',
      'th': '',
    },
    'hxn8rrrt': {
      'en': 'Adventure Plans',
      'th': '',
    },
    '59c7kf9f': {
      'en': 'MYR',
      'th': '',
    },
    'n9hk1lyt': {
      'en': '67.00',
      'th': '',
    },
    '3ahq4xcj': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'dj8kyv0p': {
      'en': '+ More Details',
      'th': '',
    },
    'u0cc3ta0': {
      'en': 'Important:',
      'th': '',
    },
    '8ggqjtu5': {
      'en': ' By clicking on proceed I \nagree and accept the',
      'th': '',
    },
    'nvbqrsux': {
      'en': ' Disclaimer',
      'th': '',
    },
    'a263dvlz': {
      'en': 'Proceed',
      'th': '',
    },
    'gpnjkjh8': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'h6711onb': {
      'en': 'Step 3/5. Traveler Info',
      'th': '',
    },
    'k1461kyt': {
      'en': 'Travel Details',
      'th': '',
    },
    'yg7mkump': {
      'en': 'Adult 1',
      'th': '',
    },
    '6ud61jeo': {
      'en': 'Last Name',
      'th': '',
    },
    'oe624k6n': {
      'en': 'First Name',
      'th': '',
    },
    '71iy0bgw': {
      'en': 'Gender',
      'th': '',
    },
    'd0ah93vv': {
      'en': 'Option 1',
      'th': '',
    },
    'jazfp0s0': {
      'en': 'Please select...',
      'th': '',
    },
    '32n56j08': {
      'en': 'Nationality',
      'th': '',
    },
    'xzlclies': {
      'en': 'Option 1',
      'th': '',
    },
    'q1fkcxp1': {
      'en': 'Please select...',
      'th': '',
    },
    'h7ms28ea': {
      'en': 'NRIC / Passport',
      'th': '',
    },
    '0vvpx9ts': {
      'en': 'Mobile Number',
      'th': '',
    },
    '97ceydkk': {
      'en': 'Email Address',
      'th': '',
    },
    '4gx74m78': {
      'en': 'Date of Birth',
      'th': '',
    },
    'arz5cz10': {
      'en': 'Apply for All Passengers',
      'th': '',
    },
    '0je5br6w': {
      'en': 'Mailing Address',
      'th': '',
    },
    'xhg84kog': {
      'en': 'Address Line',
      'th': '',
    },
    'dov8raqu': {
      'en': 'Postal Code',
      'th': '',
    },
    '6jw4mohw': {
      'en': 'Country',
      'th': '',
    },
    'g2t2ayae': {
      'en': 'Option 1',
      'th': '',
    },
    'v3l4q1xx': {
      'en': 'Please select...',
      'th': '',
    },
    'nbswpkrb': {
      'en': 'State',
      'th': '',
    },
    'vms2hh3g': {
      'en': 'Option 1',
      'th': '',
    },
    '77jmnnsf': {
      'en': 'Please select...',
      'th': '',
    },
    'vxhvywng': {
      'en': 'Add Nominees ',
      'th': '',
    },
    'aidl9021': {
      'en': '(Optional)',
      'th': '',
    },
    '8qycsm6m': {
      'en': 'First Name',
      'th': '',
    },
    'eb70s6dt': {
      'en': 'Last Name',
      'th': '',
    },
    'me0l2o09': {
      'en': 'Gender',
      'th': '',
    },
    'utko8uld': {
      'en': 'Option 1',
      'th': '',
    },
    'yidcz15j': {
      'en': 'Please select...',
      'th': '',
    },
    'bcxi017h': {
      'en': 'Mobile Number',
      'th': '',
    },
    '5h8fj2e2': {
      'en': 'Email Address',
      'th': '',
    },
    '4paf2z5i': {
      'en': 'Assress Line',
      'th': '',
    },
    'stbt8wxk': {
      'en': 'Country',
      'th': '',
    },
    'j9t44dz4': {
      'en': 'Option 1',
      'th': '',
    },
    'ozuqa6p3': {
      'en': 'Please select...',
      'th': '',
    },
    '33wowlde': {
      'en': 'State',
      'th': '',
    },
    'tu9jnj9x': {
      'en': 'Option 1',
      'th': '',
    },
    '4t2iffjn': {
      'en': 'Please select...',
      'th': '',
    },
    'kcmod5ch': {
      'en': 'Postal Code',
      'th': '',
    },
    'fdvjp3ym': {
      'en': 'Relationship',
      'th': '',
    },
    'f3joty3u': {
      'en': '+ Add Another Nominee',
      'th': '',
    },
    'c8mvv78f': {
      'en': 'Proceed',
      'th': '',
    },
    'qqrotxcd': {
      'en': 'Back',
      'th': '',
    },
    'f5iz7jb8': {
      'en': 'Step 4/5. Confirmation',
      'th': '',
    },
    'zv2p6ihd': {
      'en': 'Traveler Details (1)',
      'th': '',
    },
    '08zuy77i': {
      'en': 'Consent by Customer',
      'th': '',
    },
    'vhx6lhgg': {
      'en':
          'I as the insured/data subject and/or travel agency give consent on my behalf or on behalf of insured/data subject to give the personal information to Tune Insurance Public Company Limited (Tune Protect Thailand\' or \'Company\') for collecting, using and processing the personal information for marketing purposes or offering the products and services or marketing activities in the future. I have read and understand the privacy policy which found in https://www.tuneprotect.co.th/th/privacy-policy',
      'th': '',
    },
    '08vinpry': {
      'en': 'Yes',
      'th': '',
    },
    'qmi7vyun': {
      'en': 'No',
      'th': '',
    },
    '118kyy57': {
      'en': 'Current Balance: ',
      'th': '',
    },
    'nf65cjuo': {
      'en': 'MYR 766.00',
      'th': '',
    },
    'xv225wi5': {
      'en': 'Amount to Be Paid: ',
      'th': '',
    },
    '2jyx1zx1': {
      'en': 'MYR 766.00',
      'th': '',
    },
    'e0n13fw6': {
      'en': 'Save Quotation',
      'th': '',
    },
    '90c8e8kw': {
      'en': 'Confirm',
      'th': '',
    },
    'mves074m': {
      'en': 'Back',
      'th': '',
    },
    'e64p90wl': {
      'en': 'Step 5/5. Policy',
      'th': '',
    },
    'rl09fau8': {
      'en': 'Yay!',
      'th': '',
    },
    '585sfza3': {
      'en': 'Policy Successfully Issued!',
      'th': '',
    },
    'a6ve7jc2': {
      'en': 'Insurance Voucher',
      'th': '',
    },
    '1c59jowf': {
      'en': 'Trip Type',
      'th': '',
    },
    'y4alf5p4': {
      'en': 'Journey',
      'th': '',
    },
    '45jiq3tt': {
      'en': 'Round Trip',
      'th': '',
    },
    'ohmj8ce1': {
      'en': 'KUL-CGK-KUL',
      'th': '',
    },
    'klnho0b2': {
      'en': 'Departure Date',
      'th': '',
    },
    'rz3lwmmx': {
      'en': 'Return Date',
      'th': '',
    },
    'j2jfzfp3': {
      'en': '??-??-????',
      'th': '',
    },
    'v11nei9e': {
      'en': '??-??-??',
      'th': '',
    },
    'za144ef2': {
      'en': 'Policy Details',
      'th': '',
    },
    '2r7pt917': {
      'en': 'Download',
      'th': '',
    },
    '5zv2zygm': {
      'en': 'Plan:',
      'th': '',
    },
    'ygd6s7nl': {
      'en': 'Round Trip',
      'th': '',
    },
    'p0zvd90y': {
      'en': 'Cerificate Number',
      'th': '',
    },
    'dgw1brpx': {
      'en': 'TC - 23 - 0000013',
      'th': '',
    },
    '8v1v19w4': {
      'en': 'Traveler Details',
      'th': '',
    },
    'vnbku3nm': {
      'en': '1.',
      'th': '',
    },
    'ij3ksw8k': {
      'en': 'Yusuf Khan ',
      'th': '',
    },
    'nm1du61r': {
      'en': 'Adult',
      'th': '',
    },
    'kesih53c': {
      'en': 'Issue Another Policy',
      'th': '',
    },
    '56p27mne': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '2711z68n': {
      'en': 'Home',
      'th': '',
    },
  },
  // invoicepage
  {
    '7nkm4axn': {
      'en': 'Dashboard / ',
      'th': '',
    },
    'fv3bc0tw': {
      'en': 'General Search / ',
      'th': '',
    },
    'y8tok114': {
      'en': 'Plan Details / ',
      'th': '',
    },
    'fuyw6ucq': {
      'en': 'Invoice',
      'th': '',
    },
    'b46rzxz8': {
      'en': 'Invoice',
      'th': '',
    },
    'b2ka8a6i': {
      'en': 'Invoiced By:',
      'th': '',
    },
    'ckkq4n68': {
      'en': 'Tune Protect',
      'th': '',
    },
    '1r4dxlpd': {
      'en': 'Agent:',
      'th': '',
    },
    'llp8wnl6': {
      'en': '<name>',
      'th': '',
    },
    'mjhs8uez': {
      'en': 'Agent:',
      'th': '',
    },
    '1qynr56q': {
      'en': '<location>',
      'th': '',
    },
    'ztj1nyd5': {
      'en': 'Tax Invoice ',
      'th': '',
    },
    '0p0unibm': {
      'en': '(Internal Copy)',
      'th': '',
    },
    '4ps588rq': {
      'en': 'Client Detail',
      'th': '',
    },
    'no3t2517': {
      'en': 'Agent Name:',
      'th': '',
    },
    '8cymfkd2': {
      'en': 'Hello World',
      'th': '',
    },
    '3dl17g6s': {
      'en': 'Invoice Date:',
      'th': '',
    },
    'whz91opy': {
      'en': 'Hello World',
      'th': '',
    },
    'seuwn8qg': {
      'en': 'Agency Country:',
      'th': '',
    },
    'i2b9p7j2': {
      'en': 'Hello World',
      'th': '',
    },
    'j9abivcj': {
      'en': 'Agency TRN:',
      'th': '',
    },
    'oike6jnu': {
      'en': 'Hello World',
      'th': '',
    },
    'd1v86z60': {
      'en': 'Invoice Details',
      'th': '',
    },
    '8cc1qkho': {
      'en': 'Invoice No.:',
      'th': '',
    },
    's9cfzawo': {
      'en': 'Hello World',
      'th': '',
    },
    'bn5m3zu7': {
      'en': 'Client Detail',
      'th': '',
    },
    'bpmb37bv': {
      'en': 'Plan Name:',
      'th': '',
    },
    'q8zcwn40': {
      'en': 'Hello World',
      'th': '',
    },
    'hd6j1fzj': {
      'en': 'Certificate No.:',
      'th': '',
    },
    '67nux4is': {
      'en': 'Hello World',
      'th': '',
    },
    '61mlu8eb': {
      'en': 'Travel Date:',
      'th': '',
    },
    '3sdp0esc': {
      'en': 'Hello World',
      'th': '',
    },
    '2zl321gm': {
      'en': 'Booking Date:',
      'th': '',
    },
    '3ahcogog': {
      'en': 'Hello World',
      'th': '',
    },
    'ozsxtobx': {
      'en': 'Rate Details',
      'th': '',
    },
    'f8fyjnh2': {
      'en': 'Premium (Including VAT):',
      'th': '',
    },
    'cdlx5x9a': {
      'en': 'Hello World',
      'th': '',
    },
    '4bsnf4m2': {
      'en': 'Tax @ 6% SST:',
      'th': '',
    },
    'tp7fb37t': {
      'en': 'Hello World',
      'th': '',
    },
    'mkdq54lh': {
      'en': 'VAT@ 0%:',
      'th': '',
    },
    '1wm882ih': {
      'en': 'Hello World',
      'th': '',
    },
    '9i1qgxjm': {
      'en': 'Premium Without Tax & VAT:',
      'th': '',
    },
    'v1wp22bm': {
      'en': 'Hello World',
      'th': '',
    },
    'nhbqqszc': {
      'en': 'Less Standard Marketing Fee @10%\n(Excluding Tax & VAT)',
      'th': '',
    },
    '5k5xx95v': {
      'en': 'Hello World',
      'th': '',
    },
    'sjxx4x4y': {
      'en': 'Tax Payable (including VAT):',
      'th': '',
    },
    'y234pal1': {
      'en': 'Hello World',
      'th': '',
    },
    'olz8of0n': {
      'en': 'Client Detail',
      'th': '',
    },
    'jl9mwxc3': {
      'en': 'No.:',
      'th': '',
    },
    'mwtthkvw': {
      'en': '1',
      'th': '',
    },
    'ttvz2p5r': {
      'en': 'Name:',
      'th': '',
    },
    'i07otzeh': {
      'en': '<name>',
      'th': '',
    },
    '0g4w5tit': {
      'en': 'Type:',
      'th': '',
    },
    'y47t39ky': {
      'en': '<Adult>',
      'th': '',
    },
    'joazvom7': {
      'en': 'Tax Invoice ',
      'th': '',
    },
    'kmgmqpyv': {
      'en': '(Internal Copy)',
      'th': '',
    },
    'bn1hzop7': {
      'en': 'Print Internal Invoice',
      'th': '',
    },
    '1yldvaxl': {
      'en': 'Print Customer Invoice',
      'th': '',
    },
    'qr38pjhf': {
      'en': 'Print Both Invoice',
      'th': '',
    },
    '22wgsvnz': {
      'en': 'Email',
      'th': '',
    },
    '4ciwno4u': {
      'en': 'Dashboard / General Search',
      'th': '',
    },
    '6kr2s7ig': {
      'en': '/ Plan Details',
      'th': '',
    },
    'onodibf0': {
      'en': 'Invoice',
      'th': '',
    },
    '0p464flk': {
      'en': 'Invoiced By: ',
      'th': '',
    },
    'z39q1e5t': {
      'en': 'Tune Protect',
      'th': '',
    },
    '18u5r5jy': {
      'en': 'Agent: ',
      'th': '',
    },
    'z0g7mq65': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    'i99jcyfo': {
      'en': 'Location:',
      'th': '',
    },
    'e7rm067u': {
      'en': 'Malaysia',
      'th': '',
    },
    'd226im6z': {
      'en': 'Tax Invoice ',
      'th': '',
    },
    '05j8uqrn': {
      'en': '(Internal Copy)',
      'th': '',
    },
    'd2gp2u5q': {
      'en': 'Client Detail',
      'th': '',
    },
    'dbkjxa9m': {
      'en': 'Agent Name:',
      'th': '',
    },
    'tqiyn78h': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    'b7yi4mr0': {
      'en': 'Invoice Date:',
      'th': '',
    },
    'o8wo4z3u': {
      'en': '12 Jan 2023',
      'th': '',
    },
    'le34o1ds': {
      'en': 'Agency Country:',
      'th': '',
    },
    'oqimjj7g': {
      'en': 'Malaysia',
      'th': '',
    },
    '87l3knfx': {
      'en': 'Agency TRN:',
      'th': '',
    },
    'mm61y476': {
      'en': 'N.A',
      'th': '',
    },
    'zrwm2v0g': {
      'en': 'Invoice Details',
      'th': '',
    },
    'xwdn8pge': {
      'en': 'Invoice Details',
      'th': '',
    },
    'ks03tg83': {
      'en': 'IN-0000020',
      'th': '',
    },
    'f23x8fjj': {
      'en': 'Booking Details',
      'th': '',
    },
    'ryhacexn': {
      'en': 'Plan Name:',
      'th': '',
    },
    'u45sulwl': {
      'en': 'Travel Comprehensive \nfor Single Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'lancw414': {
      'en': 'Certificate No.:',
      'th': '',
    },
    'o8980719': {
      'en': 'TC-23-00000003',
      'th': '',
    },
    'b0btgvxx': {
      'en': 'Travel Date:',
      'th': '',
    },
    'sdb4ong6': {
      'en': '20 Jan 2023',
      'th': '',
    },
    '50x05g0j': {
      'en': 'Travel Date:',
      'th': '',
    },
    'wdzhxgbg': {
      'en': '12 Jan 2023',
      'th': '',
    },
    '1j05yivd': {
      'en': 'Traveler Details',
      'th': '',
    },
    'h3omn3nn': {
      'en': 'No:',
      'th': '',
    },
    '7mjp3tak': {
      'en': '1',
      'th': '',
    },
    'weiceaty': {
      'en': 'Name:',
      'th': '',
    },
    'l39619p4': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    'zoenhxtd': {
      'en': 'Type:',
      'th': '',
    },
    '46rwn77w': {
      'en': 'Adult',
      'th': '',
    },
    'ebt24z45': {
      'en': 'Rate Details',
      'th': '',
    },
    'ylh69gqv': {
      'en': 'Premium (Including VAT):',
      'th': '',
    },
    'bwrutero': {
      'en': '92.00',
      'th': '',
    },
    'tm2ggen5': {
      'en': 'Tax @ 6% SST:',
      'th': '',
    },
    '0yp2d5cz': {
      'en': '5.21',
      'th': '',
    },
    'kwkjm9ha': {
      'en': 'VAT@ 0%:',
      'th': '',
    },
    'fxi49tww': {
      'en': '0.00',
      'th': '',
    },
    'dj535g0k': {
      'en': 'Premium Without Tax & VAT:',
      'th': '',
    },
    'k0y406mz': {
      'en': '86.79',
      'th': '',
    },
    'fhclvqs3': {
      'en': 'Less Standard Marketing Fee @10%\n(Excluding Tax & VAT)',
      'th': '',
    },
    '47zdwwi2': {
      'en': '(8.79)',
      'th': '',
    },
    'k2rbwblk': {
      'en': 'Tax Payable (including VAT):',
      'th': '',
    },
    'ctw75p8u': {
      'en': 'MYR 83.32',
      'th': '',
    },
    'w9vb2z5p': {
      'en': 'Tax Invoice ',
      'th': '',
    },
    'g7w1n163': {
      'en': '(Internal Copy)',
      'th': '',
    },
    'urmthnxr': {
      'en': 'Print Internal Invoice',
      'th': '',
    },
    'd3tgygbs': {
      'en': 'Print Customer Invoice',
      'th': '',
    },
    'ik5h68n8': {
      'en': 'Print Both Invoice',
      'th': '',
    },
    'tytd0pqs': {
      'en': 'Email',
      'th': '',
    },
    'a5k0epm0': {
      'en': 'Home',
      'th': '',
    },
  },
  // AgenciesMain
  {
    'x971o1py': {
      'en': 'Dashboard',
      'th': '',
    },
    'n7opydui': {
      'en': ' / Entities / Agents',
      'th': '',
    },
    'bmw33p4n': {
      'en': 'All Agencies (16)',
      'th': '',
    },
    'rsyd8qq8': {
      'en': 'Show',
      'th': '',
    },
    'kdc54exs': {
      'en': 'Option 1',
      'th': '',
    },
    '5zn0e07y': {
      'en': '0',
      'th': '',
    },
    'isslbuvt': {
      'en': 'entries',
      'th': '',
    },
    'w2wvxngh': {
      'en': 'Search',
      'th': '',
    },
    'cpg1ljok': {
      'en': 'Agency',
      'th': '',
    },
    '3e3v57m1': {
      'en': 'Country',
      'th': '',
    },
    'cckl0fk2': {
      'en': 'Credit \nBalance',
      'th': '',
    },
    'w96ikr7a': {
      'en': 'Confirmation req.',
      'th': '',
    },
    'ubfan7z3': {
      'en': 'YTD Sales',
      'th': '',
    },
    'mq13eeeu': {
      'en': 'Yet to add',
      'th': '',
    },
    '5vwubzi7': {
      'en': 'Total Sales',
      'th': '',
    },
    '31v7rbt0': {
      'en': 'Yet to add',
      'th': '',
    },
    'uxj7b3h8': {
      'en': 'Received',
      'th': '',
    },
    'dc84guf6': {
      'en': 'Yet to add',
      'th': '',
    },
    '04lk9cxt': {
      'en': 'Outstanding',
      'th': '',
    },
    '7hxiuykh': {
      'en': 'Yet to add',
      'th': '',
    },
    '6d6bt3ag': {
      'en': 'Contract \nEnd Date',
      'th': '',
    },
    'ao2jbdrg': {
      'en': 'Approved',
      'th': '',
    },
    '9c0zqbd6': {
      'en': 'Status',
      'th': '',
    },
    'o4hbaoql': {
      'en': 'Yet to set',
      'th': '',
    },
    'kpmetnbt': {
      'en': 'Showing 1 to 6 of 6 entries',
      'th': '',
    },
    '48kqbqbp': {
      'en': 'Prev',
      'th': '',
    },
    '3scblulj': {
      'en': '1',
      'th': '',
    },
    'lii2lw4w': {
      'en': 'Next',
      'th': '',
    },
    'bq7bzc69': {
      'en': 'Home',
      'th': '',
    },
  },
  // BookingDetailPageMobile
  {
    'o7lkue3q': {
      'en': 'Dashboard / General Search',
      'th': '',
    },
    'te539pfa': {
      'en': '/ Plan Details',
      'th': '',
    },
    'v0io03xn': {
      'en': 'Plan Details',
      'th': '',
    },
    '7m1svhky': {
      'en': 'Plan:',
      'th': '',
    },
    'j1gyyxbf': {
      'en': 'Travel Comprehensive for Single Trip Cover (Platinum Plan)',
      'th': '',
    },
    'yixx699q': {
      'en': 'Certificate No.:',
      'th': '',
    },
    '0estboeh': {
      'en': 'TC-23-0000003',
      'th': '',
    },
    'q5gerwq9': {
      'en': 'Premium:',
      'th': '',
    },
    'g0aktaux': {
      'en': 'MYR 92.00',
      'th': '',
    },
    'dejijm23': {
      'en': 'Premium Charge Type:',
      'th': '',
    },
    'kzynmdqr': {
      'en': 'Per Booking',
      'th': '',
    },
    'rdtkq60k': {
      'en': 'Status:',
      'th': '',
    },
    'v0bzudgh': {
      'en': 'Confirmed',
      'th': '',
    },
    'lsx7xdgd': {
      'en': 'Adult:',
      'th': '',
    },
    '4jo32m2w': {
      'en': '1',
      'th': '',
    },
    '8vitvhnn': {
      'en': 'Child:',
      'th': '',
    },
    'bhu7daf6': {
      'en': '0',
      'th': '',
    },
    'ogisdah1': {
      'en': 'Infant:',
      'th': '',
    },
    'bviou0sz': {
      'en': '0',
      'th': '',
    },
    'ch0q9mba': {
      'en': 'Trip Type:',
      'th': '',
    },
    '1d3fcxon': {
      'en': 'One Way',
      'th': '',
    },
    'lnqdfyl3': {
      'en': 'Departure Date:',
      'th': '',
    },
    '0fs2fnxl': {
      'en': '20-01-2023',
      'th': '',
    },
    'byaedgpw': {
      'en': 'Origin City:',
      'th': '',
    },
    'by8k9pey': {
      'en': 'Kuala Lumpur',
      'th': '',
    },
    'r0krsii4': {
      'en': 'Destination City:',
      'th': '',
    },
    'uaa2udaf': {
      'en': 'Jakarta',
      'th': '',
    },
    'sgfrhdki': {
      'en': 'Booking Date:',
      'th': '',
    },
    '38vxkwd6': {
      'en': '12-01-2023, 2:15 PM',
      'th': '',
    },
    '4nr3ig3e': {
      'en': 'Booking Agent:',
      'th': '',
    },
    'rrv2xm4j': {
      'en': 'Ravi Shankar',
      'th': '',
    },
    '8eee70gw': {
      'en': 'Booking Country:',
      'th': '',
    },
    'o4p5x9kg': {
      'en': 'Malaysia',
      'th': '',
    },
    'd1f0ang3': {
      'en': 'Adhoc Commission (%):',
      'th': '',
    },
    '3pzx6vx3': {
      'en': '0',
      'th': '',
    },
    'walvljtm': {
      'en': 'Adhoc Commission Fee:',
      'th': '',
    },
    'bnt4ixxf': {
      'en': '0',
      'th': '',
    },
    'rgm1vrgl': {
      'en': 'Download COI',
      'th': '',
    },
    'o0335djv': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'vt0d6hn0': {
      'en': 'Traveler Details (1)',
      'th': '',
    },
    'lxcoq0jt': {
      'en': 'Home',
      'th': '',
    },
  },
  // productsandservices
  {
    'l2f2tms4': {
      'en': 'Dashboard',
      'th': '',
    },
    '1ipfvump': {
      'en': ' /Products and services',
      'th': '',
    },
    'qk1kkqd1': {
      'en': 'Products',
      'th': '',
    },
    'bezuv0ek': {
      'en': 'Travel Easy',
      'th': '',
    },
    'dbg4zi2e': {
      'en': 'Motor Easy',
      'th': '',
    },
    'qadwlb7r': {
      'en': 'Home Easy',
      'th': '',
    },
    '6zk7kgg9': {
      'en': 'Services',
      'th': '',
    },
    '18jqv7i5': {
      'en': 'Services not available',
      'th': '',
    },
    'u0t7smqo': {
      'en': 'Dashboard',
      'th': '',
    },
    '14aft1yp': {
      'en': ' /Products and services',
      'th': '',
    },
    '6o3vd1mo': {
      'en': 'Products',
      'th': '',
    },
    'llgk80vq': {
      'en': 'Travel Easy',
      'th': '',
    },
    'vjfucvjc': {
      'en': 'Motor Easy',
      'th': '',
    },
    'lzlrp1fm': {
      'en': 'Home Easy',
      'th': '',
    },
    'lck0zmfv': {
      'en': 'Services',
      'th': '',
    },
    'mi77kga6': {
      'en': 'Services not available',
      'th': '',
    },
    'ocy2kxd6': {
      'en': 'Home',
      'th': '',
    },
  },
  // BookingDetailPage
  {
    'dgbgwamr': {
      'en': 'Dashboard / General Search',
      'th': '',
    },
    'xeec9i23': {
      'en': '/ Plan Details',
      'th': '',
    },
    'hh2oj9w1': {
      'en': 'Plan Details',
      'th': '',
    },
    '8c8b9v45': {
      'en': 'Plan:',
      'th': '',
    },
    'l9oimx0c': {
      'en': 'Travel Comprehensive for Single Trip Cover (Platinum Plan)',
      'th': '',
    },
    'jm3r74ga': {
      'en': 'Certificate No.:',
      'th': '',
    },
    'bftr7c44': {
      'en': 'TC-23-0000003',
      'th': '',
    },
    '6gqg1muw': {
      'en': 'Premium:',
      'th': '',
    },
    'r6w8bt9e': {
      'en': 'MYR 92.00',
      'th': '',
    },
    'hhixame6': {
      'en': 'Premium Charge Type:',
      'th': '',
    },
    '55yfu32e': {
      'en': 'Per Booking',
      'th': '',
    },
    '2nwtvm6f': {
      'en': 'Status:',
      'th': '',
    },
    'ea1o0xhv': {
      'en': 'Confirmed',
      'th': '',
    },
    '5itlmqju': {
      'en': 'Trip Type:',
      'th': '',
    },
    'dgrojved': {
      'en': 'One Way',
      'th': '',
    },
    'glu0um6j': {
      'en': 'Adult:',
      'th': '',
    },
    'a66ytboo': {
      'en': '1',
      'th': '',
    },
    'g2cx2wq2': {
      'en': 'Origin City:',
      'th': '',
    },
    '8xnovo7y': {
      'en': 'Kuala Lumpur',
      'th': '',
    },
    'orma0kj5': {
      'en': 'Departure Date:',
      'th': '',
    },
    'so9d1pa3': {
      'en': '20-01-2023',
      'th': '',
    },
    'lachzcke': {
      'en': 'Child:',
      'th': '',
    },
    'dys2hjoo': {
      'en': '0',
      'th': '',
    },
    '9w89ob38': {
      'en': 'Destination City:',
      'th': '',
    },
    'w8lpfzyn': {
      'en': 'Jakarta',
      'th': '',
    },
    'r2a75g3k': {
      'en': 'Destination City:',
      'th': '',
    },
    'mqnbhrp2': {
      'en': 'Jakarta',
      'th': '',
    },
    'jqkgqtl0': {
      'en': 'Infant:',
      'th': '',
    },
    'idevxznp': {
      'en': '0',
      'th': '',
    },
    'qox8rh4v': {
      'en': 'Booking Date:',
      'th': '',
    },
    '0dr63g1k': {
      'en': '12-01-2023, 2:15 PM',
      'th': '',
    },
    '6u8c2kqs': {
      'en': 'Booking Agent:',
      'th': '',
    },
    'tq5fk78l': {
      'en': 'Ravi Shankar',
      'th': '',
    },
    'xggvwgpt': {
      'en': 'Booking Country:',
      'th': '',
    },
    'pcq9pxf2': {
      'en': 'Malaysia',
      'th': '',
    },
    'hva740jj': {
      'en': 'Adhoc Commission (%):',
      'th': '',
    },
    '41edle6e': {
      'en': '0',
      'th': '',
    },
    'gb16xxtr': {
      'en': 'Adhoc Commission Fee:',
      'th': '',
    },
    '80jkq5gi': {
      'en': '0',
      'th': '',
    },
    'rp1ryh18': {
      'en': 'Download COI',
      'th': '',
    },
    'xv5fp2zd': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'vuayvh43': {
      'en': 'Traveler Details ',
      'th': '',
    },
    '6w8hpf10': {
      'en': '(1)',
      'th': '',
    },
    'hheafzw0': {
      'en': 'Home',
      'th': '',
    },
  },
  // ChangePasswordSuccessMobileS
  {
    '1pfaum6g': {
      'en': 'Home',
      'th': '',
    },
  },
  // valueAddedServicesS
  {
    'rcfycgcv': {
      'en': 'Dashboard',
      'th': '',
    },
    'ae0m1dxt': {
      'en': '/ Value Added Services',
      'th': '',
    },
    'tr8f3yqf': {
      'en': 'Value Added Services',
      'th': '',
    },
    '4xdl98ui': {
      'en': 'Book COVID-19 Test',
      'th': '',
    },
    '6urt6p5n': {
      'en': 'Get Transfer',
      'th': '',
    },
    'li5srw3t': {
      'en': 'Get Transfer',
      'th': '',
    },
    'vj1j9poa': {
      'en': 'Tune iPass Thailand',
      'th': '',
    },
    'aitxnmz8': {
      'en': 'Home',
      'th': '',
    },
  },
  // ConfigSearchAndDeleteMain
  {
    'qem2w7f2': {
      'en': 'Dashboard',
      'th': '',
    },
    '9tp71oih': {
      'en': '/ Search or Delete Uploaded Report',
      'th': '',
    },
    'cl53orhe': {
      'en': 'Dashboard / Search or Delete Uploaded Report',
      'th': '',
    },
    'o3sbakp7': {
      'en': 'Country',
      'th': '',
    },
    'rnzntoxo': {
      'en': 'Option 1',
      'th': '',
    },
    '7i97z7od': {
      'en': 'Please select...',
      'th': '',
    },
    'ooeghmwi': {
      'en': 'Agency',
      'th': '',
    },
    'ag8stwmd': {
      'en': 'Option 1',
      'th': '',
    },
    'r3vadrtr': {
      'en': 'Please select...',
      'th': '',
    },
    '59ts4138': {
      'en': 'Month',
      'th': '',
    },
    'l1yl5ln6': {
      'en': 'Option 1',
      'th': '',
    },
    'od1dg9xx': {
      'en': 'Please select...',
      'th': '',
    },
    'xsg3hhra': {
      'en': 'Year',
      'th': '',
    },
    'vt64jnlw': {
      'en': 'Option 1',
      'th': '',
    },
    'img6ify4': {
      'en': 'Please select...',
      'th': '',
    },
    'nnwuruca': {
      'en': 'Report Type',
      'th': '',
    },
    'x6agmzxr': {
      'en': 'Option 1',
      'th': '',
    },
    'u590lw6c': {
      'en': 'Please select...',
      'th': '',
    },
    'marifkcw': {
      'en': 'Back to Dashboard',
      'th': '',
    },
    '9saay4eb': {
      'en': 'Search',
      'th': '',
    },
    'uqotexra': {
      'en': 'No Records Found!',
      'th': '',
    },
    'imxd4kzk': {
      'en': 'Home',
      'th': '',
    },
  },
  // reloginmobile
  {
    '74h2tql0': {
      'en': 'Forgot / Reset Password ',
      'th': '',
    },
    'p788rp9u': {
      'en': 'The password reset instructions have been \nsent to your email.',
      'th': '',
    },
    '4gf1w5fr': {
      'en': 'Please',
      'th': '',
    },
    '94bdl9wt': {
      'en': ' relogin ',
      'th': '',
    },
    'coo28fmy': {
      'en': 'here with your new password.',
      'th': '',
    },
    'ldjjsblh': {
      'en': 'A note about spam filters',
      'th': '',
    },
    '8vnso8ee': {
      'en':
          'If you do not receive this mail, please check the \nspam or junk mail folder.',
      'th': '',
    },
    '5phuvf43': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    'ehxtb4rv': {
      'en': '| Disclaimer',
      'th': '',
    },
    'to5bwwuq': {
      'en': 'Home',
      'th': '',
    },
  },
  // PWchangescussfulMain
  {
    '64i5xgfz': {
      'en': 'Change Password',
      'th': '',
    },
    '40rb0w1g': {
      'en': 'Your password has been \nchanged successfully!',
      'th': '',
    },
    '8wlxeqjz': {
      'en': 'Please',
      'th': '',
    },
    'kz0fbk2s': {
      'en': ' relogin here ',
      'th': '',
    },
    'pjs7yp9l': {
      'en': 'with your new password.',
      'th': '',
    },
    'jf7btuep': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved.',
      'th': '',
    },
    '5nlkwyl8': {
      'en': '| Disclaimer',
      'th': '',
    },
    '1rb0xxok': {
      'en': 'Home',
      'th': '',
    },
  },
  // searchdeleteMobile
  {
    'mv75jk28': {
      'en': 'Dashboard ',
      'th': '',
    },
    'i9x05qcn': {
      'en': '/ Email Configuration',
      'th': '',
    },
    't7gd7o09': {
      'en': 'Email Configuration',
      'th': '',
    },
    'wopoap0e': {
      'en': 'Country',
      'th': '',
    },
    'r89do2ax': {
      'en': 'Option 1',
      'th': '',
    },
    '5anc8ozm': {
      'en': 'Please select...',
      'th': '',
    },
    '8b3ifrzj': {
      'en': 'Agency',
      'th': '',
    },
    'fvvylj1c': {
      'en': 'Option 1',
      'th': '',
    },
    'zsbz2z8o': {
      'en': 'Please select...',
      'th': '',
    },
    'gyhmf71x': {
      'en': 'Month',
      'th': '',
    },
    '2iiixokx': {
      'en': 'Option 1',
      'th': '',
    },
    '7ylkuzbd': {
      'en': 'Please select...',
      'th': '',
    },
    '0penjjfr': {
      'en': 'Year',
      'th': '',
    },
    'lcmn2487': {
      'en': 'Option 1',
      'th': '',
    },
    'nh5nr2r5': {
      'en': 'Please select...',
      'th': '',
    },
    'lu0nq3o0': {
      'en': 'Report Type',
      'th': '',
    },
    'j6q7cvw4': {
      'en': 'Option 1',
      'th': '',
    },
    'xi8fj1ho': {
      'en': 'Please select...',
      'th': '',
    },
    'waeg1acz': {
      'en': 'Back to Dashboard',
      'th': '',
    },
    '1ghswdy8': {
      'en': 'Search',
      'th': '',
    },
    'wnddkuyx': {
      'en': 'No Records Found!',
      'th': '',
    },
    'zekq19h6': {
      'en': 'Home',
      'th': '',
    },
  },
  // AddemailMobile
  {
    'r4mjvb1h': {
      'en': 'Dashboard ',
      'th': '',
    },
    'n29wfg17': {
      'en': '/ Email Configuration',
      'th': '',
    },
    'ez9pdq0l': {
      'en': 'Email Configuration',
      'th': '',
    },
    '19bgln2z': {
      'en': 'Home',
      'th': '',
    },
  },
  // PolicyStatementMain
  {
    'jerwcg24': {
      'en': 'Dashboard / ',
      'th': '',
    },
    'khzcj5zg': {
      'en': 'Queue / ',
      'th': '',
    },
    'kc77kjm4': {
      'en': 'Confirmed Bookings',
      'th': '',
    },
    'bcdlwpxr': {
      'en': 'Policy Statement',
      'th': '',
    },
    'zxnqb2l4': {
      'en': 'Dashboard /Queue',
      'th': '',
    },
    '6e73bmbk': {
      'en': '/ Confirmed Bookings',
      'th': '',
    },
    'k094qtzn': {
      'en': 'Policy Statement',
      'th': '',
    },
    'ryt5zjue': {
      'en': 'Home',
      'th': '',
    },
  },
  // payableMain
  {
    '37m58xii': {
      'en': 'Dashboard / ',
      'th': '',
    },
    'lh0p9xao': {
      'en': 'Queue / ',
      'th': '',
    },
    'aocg6eka': {
      'en': 'Confirmed Bookings',
      'th': '',
    },
    'sxwl0rwt': {
      'en': 'Payable',
      'th': '',
    },
    'cwc64vuh': {
      'en': 'Country',
      'th': '',
    },
    'av6ep6bi': {
      'en': 'Option 1',
      'th': '',
    },
    's4i623za': {
      'en': 'Please select...',
      'th': '',
    },
    'zm82zx9t': {
      'en': 'Agency',
      'th': '',
    },
    'faebyz3d': {
      'en': 'Option 1',
      'th': '',
    },
    'tckfr1k7': {
      'en': 'Please select...',
      'th': '',
    },
    '5jye2em3': {
      'en': 'Period',
      'th': '',
    },
    'bu5yvnew': {
      'en': 'Option 1',
      'th': '',
    },
    '08l6bglw': {
      'en': 'Please select...',
      'th': '',
    },
    'cpuxochx': {
      'en': 'Underwriter',
      'th': '',
    },
    'r1kla4f7': {
      'en': 'Option 1',
      'th': '',
    },
    'wtjx4fy3': {
      'en': 'Please select...',
      'th': '',
    },
    '3f7y5z2y': {
      'en': 'Cancel',
      'th': '',
    },
    '3rx7by0s': {
      'en': 'Upload',
      'th': '',
    },
    'niqixjxo': {
      'en': 'Home',
      'th': '',
    },
  },
  // policystmentMain
  {
    'q3nuascz': {
      'en': 'Dashboard / ',
      'th': '',
    },
    '07fvd8g9': {
      'en': 'Queue / ',
      'th': '',
    },
    '3zavgbg7': {
      'en': 'Confirmed Bookings',
      'th': '',
    },
    'xsnctvrn': {
      'en': 'Policy Statement',
      'th': '',
    },
    '1x08ya23': {
      'en': 'Country',
      'th': '',
    },
    '9c6hguqb': {
      'en': 'Option 1',
      'th': '',
    },
    'acd70bj1': {
      'en': 'Please select...',
      'th': '',
    },
    'volhw2xl': {
      'en': 'Agency',
      'th': '',
    },
    'nsephvcb': {
      'en': 'Option 1',
      'th': '',
    },
    '939k6ynm': {
      'en': 'Please select...',
      'th': '',
    },
    '7iir3u9m': {
      'en': 'Underwriter',
      'th': '',
    },
    'b1y8m5kj': {
      'en': 'Option 1',
      'th': '',
    },
    'wli6p07p': {
      'en': 'Please select...',
      'th': '',
    },
    'kfbyxwk6': {
      'en': 'Policy Number',
      'th': '',
    },
    '1boru1lh': {
      'en': 'Option 1',
      'th': '',
    },
    'nsfh2xga': {
      'en': 'Please select...',
      'th': '',
    },
    '8ettblmw': {
      'en': 'Cancel',
      'th': '',
    },
    'pwn7174r': {
      'en': 'Export',
      'th': '',
    },
    'z0qcnzrm': {
      'en': 'Search',
      'th': '',
    },
    'mt9y1tlc': {
      'en': 'Home',
      'th': '',
    },
  },
  // EmailConfigMain
  {
    'ag69shjz': {
      'en': 'Dashboard',
      'th': '',
    },
    'zc85qty5': {
      'en': ' / Email Configuration',
      'th': '',
    },
    '9sa3ktp8': {
      'en': 'Email Configuration',
      'th': '',
    },
    '9vjbr28s': {
      'en': 'Country',
      'th': '',
    },
    'xp1jjl5l': {
      'en': 'Option 1',
      'th': '',
    },
    'uesd558x': {
      'en': 'Please select...',
      'th': '',
    },
    'm1po7tjd': {
      'en': 'Agency',
      'th': '',
    },
    'itlgm0va': {
      'en': 'Option 1',
      'th': '',
    },
    'i7jaowz8': {
      'en': 'Please select...',
      'th': '',
    },
    'ubx34jqt': {
      'en': 'Add',
      'th': '',
    },
    '5jfh7e2x': {
      'en': 'Search',
      'th': '',
    },
    '8sdv65lv': {
      'en': 'Home',
      'th': '',
    },
  },
  // valueaddedservicDESKTOP
  {
    '4p9tiv05': {
      'en': 'Dashboard /',
      'th': '',
    },
    'nfljz87g': {
      'en': ' Value Added Services',
      'th': '',
    },
    'im7zytiz': {
      'en': 'Value Added Services',
      'th': '',
    },
    'fyjn7dm0': {
      'en': 'Home',
      'th': '',
    },
  },
  // AgencyProfileMain
  {
    'kvl86k5x': {
      'en': 'Dashboard / ',
      'th': '',
    },
    'phrjt6ty': {
      'en': 'Entities / ',
      'th': '',
    },
    '7xszi7gg': {
      'en': 'Agencies / ',
      'th': '',
    },
    'lj4mqqsx': {
      'en': 'Agency Profile',
      'th': '',
    },
    'm73kl07l': {
      'en': 'ABC Travel Agency’s Profile',
      'th': '',
    },
    'mae9ikao': {
      'en': 'Legal Registered Name',
      'th': '',
    },
    'hg5lv7lj': {
      'en': 'name',
      'th': '',
    },
    'dnea6h3y': {
      'en': 'Legal Registered Address* :',
      'th': '',
    },
    'a4wvrdf0': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'vbinusgk': {
      'en': 'Phone',
      'th': '',
    },
    'qhun8wcj': {
      'en': 'phone number',
      'th': '',
    },
    '8npbxf7d': {
      'en': 'Country Of Registered Office',
      'th': '',
    },
    'je9iay5j': {
      'en': 'country name',
      'th': '',
    },
    'pysbdmj5': {
      'en': 'Authorized Signatory Name',
      'th': '',
    },
    '5y9xhlx7': {
      'en': 'Signatory Name',
      'th': '',
    },
    '07xgrbbs': {
      'en': 'Finance Manager Name',
      'th': '',
    },
    '0fr7e9k7': {
      'en': 'Manager Name',
      'th': '',
    },
    '6m72li55': {
      'en': 'Billing Department Name',
      'th': '',
    },
    'gvss16zw': {
      'en': 'Department Name',
      'th': '',
    },
    'r5109yj3': {
      'en': 'Departmental Head Name',
      'th': '',
    },
    'v3yszu6y': {
      'en': 'Head name',
      'th': '',
    },
    'n1g5b7ch': {
      'en': 'Trade License Number',
      'th': '',
    },
    'pxvl2df2': {
      'en': 'Licenece number',
      'th': '',
    },
    'm1f0e74s': {
      'en': 'IATA Code',
      'th': '',
    },
    'kojyf0lb': {
      'en': 'IATA Code',
      'th': '',
    },
    'fd1zt838': {
      'en': 'Bank Name',
      'th': '',
    },
    'iph3m6kd': {
      'en': 'Bank Name',
      'th': '',
    },
    'ulzpkvp0': {
      'en': 'Bank Account No.',
      'th': '',
    },
    'ds2o4xh7': {
      'en': 'Bank Account No.',
      'th': '',
    },
    'rlrv6mx4': {
      'en': 'Contract Period Start Date',
      'th': '',
    },
    'oy96k1q1': {
      'en': 'Start Date',
      'th': '',
    },
    't51ptnup': {
      'en': 'Contract Period End Date',
      'th': '',
    },
    '2txgrwq2': {
      'en': 'End Date',
      'th': '',
    },
    'ezjss0mv': {
      'en': 'Adhoc Commission',
      'th': '',
    },
    'kcze8tc8': {
      'en': 'Staff Incentive',
      'th': '',
    },
    's2jqfswl': {
      'en': 'Agency Code',
      'th': '',
    },
    'j5cklis8': {
      'en': 'Agency Code',
      'th': '',
    },
    'p2fky7yr': {
      'en': 'Pseudo API Code',
      'th': '',
    },
    'ejewwwn4': {
      'en': 'Pseudo API Code',
      'th': '',
    },
    '69yj4h84': {
      'en': 'Debit Note Frequency',
      'th': '',
    },
    'xwgbtb0u': {
      'en': '1 Month',
      'th': '',
    },
    'lc0ut66w': {
      'en': '2 Month',
      'th': '',
    },
    'umo7f6z3': {
      'en': 'Sub Group',
      'th': '',
    },
    '4uzj9f68': {
      'en': 'NA',
      'th': '',
    },
    'nqozjpog': {
      'en': 'Approval Status',
      'th': '',
    },
    'l4wkzear': {
      'en': 'Approval Status',
      'th': '',
    },
    'jcnqbmdb': {
      'en': 'Status',
      'th': '',
    },
    'xrq9bc5t': {
      'en': 'Status',
      'th': '',
    },
    'drkvr91t': {
      'en': 'Registered Date',
      'th': '',
    },
    'j1gyv8p9': {
      'en': 'Registered Date',
      'th': '',
    },
    'wx9m7laj': {
      'en': 'Update',
      'th': '',
    },
    '71tffx0k': {
      'en': 'Deactivate Account',
      'th': '',
    },
    '21udeyov': {
      'en': 'Cancel',
      'th': '',
    },
    '5cye8ou1': {
      'en': 'View Audit Logs',
      'th': '',
    },
    'gb35vo3h': {
      'en': 'User (?)',
      'th': '',
    },
    'tb1fe2ex': {
      'en': 'Showing 1 to 6 of 6 entries',
      'th': '',
    },
    '50gef4fe': {
      'en': 'Prev',
      'th': '',
    },
    'j5bdrilu': {
      'en': '1',
      'th': '',
    },
    'm63rc5y4': {
      'en': 'Next',
      'th': '',
    },
    'ta6djmbn': {
      'en': 'Home',
      'th': '',
    },
  },
  // userprofileMain
  {
    '8s2jhu28': {
      'en': 'Dashboard /',
      'th': '',
    },
    'z4q5yev0': {
      'en': 'Entities / ',
      'th': '',
    },
    'i79zzima': {
      'en': 'Agencies / ',
      'th': '',
    },
    'g8lhf6q8': {
      'en': 'Agency Profile / ',
      'th': '',
    },
    '14wpmdjm': {
      'en': 'User Profile',
      'th': '',
    },
    '78kjnc2i': {
      'en': 'Create New User',
      'th': '',
    },
    'p79ifv6m': {
      'en': '* All fields are mandatory',
      'th': '',
    },
    'vf208jwj': {
      'en': '* Duplicate emails not accepted',
      'th': '',
    },
    'dpe1nrcy': {
      'en': 'Username',
      'th': '',
    },
    's82s1jwv': {
      'en': 'username',
      'th': '',
    },
    'ww1dknhq': {
      'en': 'First Name',
      'th': '',
    },
    'gdhgpacw': {
      'en': 'First Name',
      'th': '',
    },
    'lovqhwu5': {
      'en': 'Date Of Birth',
      'th': '',
    },
    'ze5biqsg': {
      'en': 'Date Of Birth',
      'th': '',
    },
    'que9dm5v': {
      'en': 'Email',
      'th': '',
    },
    '0rle2gjf': {
      'en': 'Email',
      'th': '',
    },
    'wwmtyeyl': {
      'en': 'Landline  Number',
      'th': '',
    },
    'rbtjvgbu': {
      'en': 'Landline  Number',
      'th': '',
    },
    'xvomq7v3': {
      'en': 'Mobile Phone',
      'th': '',
    },
    '05fwyfpa': {
      'en': 'Mobile Phone',
      'th': '',
    },
    'ezyamffe': {
      'en': 'Branch',
      'th': '',
    },
    'jsu3iy2q': {
      'en': 'Branch',
      'th': '',
    },
    'naa9gv32': {
      'en': 'Company',
      'th': '',
    },
    'lqrxe1e6': {
      'en': 'Company',
      'th': '',
    },
    '54v3q61z': {
      'en': 'Organisation Role',
      'th': '',
    },
    'mkbedg4z': {
      'en': 'Organisation Role',
      'th': '',
    },
    'zbcfey55': {
      'en': 'User Role',
      'th': '',
    },
    'wmz842q6': {
      'en': 'User Role',
      'th': '',
    },
    'de43wi79': {
      'en': 'Last Login Date',
      'th': '',
    },
    'jv32345i': {
      'en': 'Last Login Date',
      'th': '',
    },
    'dnzdqvin': {
      'en': 'Is it Active?',
      'th': '',
    },
    'gurd2e8a': {
      'en': 'Update',
      'th': '',
    },
    'utbwdq01': {
      'en': 'Move User To Another Entity',
      'th': '',
    },
    'g353wecr': {
      'en': 'Home',
      'th': '',
    },
  },
  // ResellerMain
  {
    'jrfn3gh0': {
      'en': 'Dashboard',
      'th': '',
    },
    '4u3l3lnz': {
      'en': ' / Entities ',
      'th': '',
    },
    'kq64l3ii': {
      'en': '/ Agents',
      'th': '',
    },
    '3ddsqhcc': {
      'en': 'Reseller (0)',
      'th': '',
    },
    'esf7yx71': {
      'en': 'Show',
      'th': '',
    },
    'k86urldh': {
      'en': 'Option 1',
      'th': '',
    },
    'zpdrc24i': {
      'en': '0',
      'th': '',
    },
    'z2vkb5jj': {
      'en': 'entries',
      'th': '',
    },
    'mc8rjuch': {
      'en': 'Search',
      'th': '',
    },
    'ib9pd8ha': {
      'en': 'Reseller',
      'th': '',
    },
    'hggw24ro': {
      'en': 'Country',
      'th': '',
    },
    '3i789hec': {
      'en': 'Market',
      'th': '',
    },
    '9qkzkrbo': {
      'en': 'Yet to add',
      'th': '',
    },
    '36dh00xk': {
      'en': 'YTD Sales',
      'th': '',
    },
    'z73f9kno': {
      'en': 'Yet to add',
      'th': '',
    },
    'r9a0umlm': {
      'en': 'Total Sales',
      'th': '',
    },
    'x4cv82s2': {
      'en': 'Yet to add',
      'th': '',
    },
    'r57wea31': {
      'en': 'Contract End Date',
      'th': '',
    },
    'wj4cgmen': {
      'en': 'Yet to add',
      'th': '',
    },
    'tiexjdgv': {
      'en': 'Status',
      'th': '',
    },
    'twni2qq7': {
      'en': 'Yet to add',
      'th': '',
    },
    '2f3p9wni': {
      'en': 'Edit Header 8',
      'th': '',
    },
    'n567mw15': {
      'en': 'Edit Column 8',
      'th': '',
    },
    '6tcxawok': {
      'en': 'Showing 1 to 6 of 6 entries',
      'th': '',
    },
    '7b6s0qnm': {
      'en': 'Prev',
      'th': '',
    },
    'cpo9ybae': {
      'en': '1',
      'th': '',
    },
    '7laola67': {
      'en': 'Next',
      'th': '',
    },
    '2na1a4q1': {
      'en': 'Home',
      'th': '',
    },
  },
  // ManageProfile
  {
    'kg8jehn6': {
      'en': 'Dashboard',
      'th': '',
    },
    'qqrdelbs': {
      'en': '/Profile',
      'th': '',
    },
    '2c0lju3e': {
      'en': 'Dashboard',
      'th': '',
    },
    '2i3iee7m': {
      'en': '/Profile',
      'th': '',
    },
    '9bus7inz': {
      'en': 'Home',
      'th': '',
    },
  },
  // ManageProfileEdit
  {
    'r4z09o1r': {
      'en': 'Dashboard',
      'th': '',
    },
    't5b79o16': {
      'en': '/Profile',
      'th': '',
    },
    'segrrfn0': {
      'en': 'Dashboard',
      'th': '',
    },
    '0hoqxkcy': {
      'en': '/Profile',
      'th': '',
    },
    'qouo1qqb': {
      'en': 'Home',
      'th': '',
    },
  },
  // Test
  {
    '7o49qp35': {
      'en': 'Button',
      'th': '',
    },
    '7ckb69wt': {
      'en': 'Home',
      'th': '',
    },
  },
  // TopupCreditMain
  {
    '9v3zl5t4': {
      'en': 'Dashboard / ',
      'th': '',
    },
    '3zw52fdf': {
      'en': 'Entities / ',
      'th': '',
    },
    'd1zoamzz': {
      'en': 'Agencies / ',
      'th': '',
    },
    '3e1hjqtf': {
      'en': 'Top Up Credit',
      'th': '',
    },
    'ghszwymj': {
      'en': 'Top-up Credit',
      'th': '',
    },
    'hpl4dfzx': {
      'en': 'Agency',
      'th': '',
    },
    '0xznn47f': {
      'en': '[Some hint text...]',
      'th': '',
    },
    '25kpbvi3': {
      'en': 'Country',
      'th': '',
    },
    'fgb7xcgs': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'mnbi1ogr': {
      'en': 'Current Balance',
      'th': '',
    },
    '4zyvj20m': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'l8cvomsi': {
      'en': 'Underwriter',
      'th': '',
    },
    '7z23k2f9': {
      'en': 'Option 1',
      'th': '',
    },
    '2p2zhhip': {
      'en': '2',
      'th': '',
    },
    'o6o1p01a': {
      'en': '3',
      'th': '',
    },
    'hd3hhk5m': {
      'en': '4',
      'th': '',
    },
    'ln2hta4t': {
      'en': '--select...',
      'th': '',
    },
    '60dvh97i': {
      'en': 'Top-up Amount',
      'th': '',
    },
    'b1vhsu07': {
      'en': '[Some hint text...]',
      'th': '',
    },
    '3iis5n9g': {
      'en':
          '(Include a negative sign (-) in front of the amount for a deduction)',
      'th': '',
    },
    '527zm6p5': {
      'en': 'Mobile Phone',
      'th': '',
    },
    's87gkxbc': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'vx9rypvm': {
      'en': 'Remarks',
      'th': '',
    },
    'kndtixt3': {
      'en': '[Some hint text...]',
      'th': '',
    },
    '17scqw69': {
      'en': 'Cancel',
      'th': '',
    },
    'okw1bya1': {
      'en': 'Reset Credit',
      'th': '',
    },
    'octovqo2': {
      'en': 'Top-Up',
      'th': '',
    },
    '56x2gnsk': {
      'en': 'Home',
      'th': '',
    },
  },
  // EmailConfigCopy
  {
    '55j5fc1w': {
      'en': 'Dashboard',
      'th': '',
    },
    'pstqxidy': {
      'en': ' / Email Configuration',
      'th': '',
    },
    'c02ceeir': {
      'en': 'Home',
      'th': '',
    },
  },
  // issuePolicyEntryPage
  {
    'yazysxp7': {
      'en': 'Dashboard ',
      'th': '',
    },
    '49du0aul': {
      'en': 'Select Product',
      'th': '',
    },
    'zs2hy41b': {
      'en': 'Home',
      'th': '',
    },
  },
  // regisaterscuessful
  {
    '4j76wowk': {
      'en': 'Login',
      'th': '',
    },
    '43lwlqyd': {
      'en': 'Thank You For Registering!',
      'th': '',
    },
    'lnopdu7p': {
      'en':
          'Your registration has been submitted successfully. Please regularly check both the Authorized Signatory and Finance Manager\nemail inbox (including “Junk” and “Spam” mail folder) for your registration status.',
      'th': '',
    },
    'lxoccip2': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'v7j1axpv': {
      'en': '| Disclaimer',
      'th': '',
    },
  },
  // PWsucessful
  {
    'm0h62obb': {
      'en': 'Change Password',
      'th': '',
    },
    'bevhh4qk': {
      'en': 'Your password has been changed successfully!',
      'th': '',
    },
    'y48n9r7e': {
      'en': 'Please',
      'th': '',
    },
    'bqwcs7vr': {
      'en': ' relogin ',
      'th': '',
    },
    'dlsc6ik9': {
      'en': 'here with your new password.',
      'th': '',
    },
    'z6puxlb2': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    '4l8ztl5v': {
      'en': '| Disclaimer',
      'th': '',
    },
  },
  // issuepolicysearch
  {
    'mla4c2ha': {
      'en': 'Travel Details',
      'th': '',
    },
    'gky2ty18': {
      'en': 'Journey Type',
      'th': '',
    },
    'i0uhhf0k': {
      'en': 'One Way',
      'th': '',
    },
    'pq2yljkr': {
      'en': 'Round Trip',
      'th': '',
    },
    'b81gpgwk': {
      'en': 'Destination Type',
      'th': '',
    },
    'rjaak7pq': {
      'en': 'City',
      'th': '',
    },
    'cv5r3o6g': {
      'en': 'Country',
      'th': '',
    },
    'ui6lxlus': {
      'en': 'From',
      'th': '',
    },
    'fj19b0h9': {
      'en': 'Option 1',
      'th': '',
    },
    '1cw4dwvl': {
      'en': 'Option 2',
      'th': '',
    },
    'lygt2q8w': {
      'en': 'Option 3',
      'th': '',
    },
    'f0n4kn7e': {
      'en': 'Departure',
      'th': '',
    },
    'n47wlaem': {
      'en': 'Going To',
      'th': '',
    },
    'pnmrlgic': {
      'en': 'Option 1',
      'th': '',
    },
    'wd5nhecc': {
      'en': 'Option 2',
      'th': '',
    },
    'pc6tuzhf': {
      'en': 'Option 3',
      'th': '',
    },
    'cljmy418': {
      'en': 'Destination',
      'th': '',
    },
    'rwjrwbhx': {
      'en': 'Departure Date',
      'th': '',
    },
    'zjnk3d4t': {
      'en': 'Return Date',
      'th': '',
    },
    'vy6zpa3u': {
      'en': 'Number of Pax',
      'th': '',
    },
    'vy72odu7': {
      'en': 'Policy For',
      'th': '',
    },
    'klawec7w': {
      'en': 'Option 1',
      'th': '',
    },
    '2cahe24x': {
      'en': 'Option 2',
      'th': '',
    },
    'gay59sci': {
      'en': 'Option 3',
      'th': '',
    },
    'wm7yxp1g': {
      'en': '-- Select --',
      'th': '',
    },
    'otcs2pxj': {
      'en': 'Adult(19-55 Years)',
      'th': '',
    },
    'i4nrrcct': {
      'en': 'Option 1',
      'th': '',
    },
    '0e4azh0e': {
      'en': 'Option 2',
      'th': '',
    },
    '9vaqzzsp': {
      'en': 'Option 3',
      'th': '',
    },
    'psxmjc5t': {
      'en': 'Departure',
      'th': '',
    },
    'dei9o6e6': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '4nwyrpjp': {
      'en': 'Proceed',
      'th': '',
    },
  },
  // IssuePolicyTab
  {
    'ppzr3zph': {
      'en': '1',
      'th': '',
    },
    '6ckbf5xc': {
      'en': 'Select Plan',
      'th': '',
    },
    'ehy3gwwv': {
      'en': '2',
      'th': '',
    },
    'l473yqng': {
      'en': 'Travel Details',
      'th': '',
    },
    'hu4s9a8o': {
      'en': '3',
      'th': '',
    },
    'v8i5woq0': {
      'en': 'Traveler Info',
      'th': '',
    },
    'sr0kyrwv': {
      'en': '4',
      'th': '',
    },
    'mme92h40': {
      'en': 'Confirmation',
      'th': '',
    },
    '7vbj912c': {
      'en': '5',
      'th': '',
    },
    '38nks5i0': {
      'en': 'Policy',
      'th': '',
    },
  },
  // dwnloadsalesstmntMain
  {
    '7jcu5r6f': {
      'en': 'Download Sales Statement',
      'th': '',
    },
    '46r5yaqd': {
      'en': 'Country',
      'th': '',
    },
    'ahaj9o0t': {
      'en': 'Option 1',
      'th': '',
    },
    'o25ra9mx': {
      'en': '2',
      'th': '',
    },
    'u3a9fnjk': {
      'en': '-- All --',
      'th': '',
    },
    'xye0kefm': {
      'en': 'Agency',
      'th': '',
    },
    'um0cih3p': {
      'en': 'Option 1',
      'th': '',
    },
    'ours91n8': {
      'en': '2',
      'th': '',
    },
    'kjzt9j7l': {
      'en': '-- All --',
      'th': '',
    },
    '364m1rur': {
      'en': 'Month',
      'th': '',
    },
    'sxa0jez6': {
      'en': '1',
      'th': '',
    },
    'zf9bo2ye': {
      'en': '2',
      'th': '',
    },
    '6jcggdhq': {
      'en': '-- All --',
      'th': '',
    },
    '3aps4q7v': {
      'en': 'Year',
      'th': '',
    },
    '95wuadek': {
      'en': 'Option 1',
      'th': '',
    },
    'sk0klwr5': {
      'en': '2',
      'th': '',
    },
    'jqkm9yp7': {
      'en': '-- All --',
      'th': '',
    },
    'h2iqrob8': {
      'en': 'Currency',
      'th': '',
    },
    '0wvlqmul': {
      'en': 'Option 1',
      'th': '',
    },
    'pv27lzcr': {
      'en': '2',
      'th': '',
    },
    'rr3k96ka': {
      'en': '-- All --',
      'th': '',
    },
    'zrop53g1': {
      'en': 'Close',
      'th': '',
    },
    'yhp6ubdy': {
      'en': 'Download',
      'th': '',
    },
  },
  // downloadsucessful
  {
    '45ymfff1': {
      'en': 'Sales statement downloaded successfully',
      'th': '',
    },
    'fxsdpvwe': {
      'en': 'Sales statement downloaded successfully',
      'th': '',
    },
  },
  // createnewuser
  {
    'qeu3gfcl': {
      'en': 'Create New User',
      'th': '',
    },
    'ws1d539g': {
      'en': '* All fields are mandatory',
      'th': '',
    },
    'gx3qe95d': {
      'en': '* Duplicate emails not accepted',
      'th': '',
    },
    'vfxz6u5q': {
      'en': 'First Name',
      'th': '',
    },
    '3g6u0v1u': {
      'en': 'First name',
      'th': '',
    },
    '630c2t17': {
      'en': 'Last Name',
      'th': '',
    },
    'tdlkq7jw': {
      'en': 'Last name',
      'th': '',
    },
    '1lmi05eu': {
      'en': 'Date Of Birth',
      'th': '',
    },
    'vjsf1pyb': {
      'en': 'Email',
      'th': '',
    },
    'n6gwqkh7': {
      'en': 'Email',
      'th': '',
    },
    '1owxc96j': {
      'en': 'Landline No.',
      'th': '',
    },
    'ipikf2wj': {
      'en': 'Telphone number',
      'th': '',
    },
    's31dklhh': {
      'en': 'Mobile Number',
      'th': '',
    },
    'eazbvlyf': {
      'en': 'Mobile number',
      'th': '',
    },
    'v2cmla92': {
      'en': 'Branch',
      'th': '',
    },
    'nw2gdlso': {
      'en': 'Branch name',
      'th': '',
    },
    'lkcmpelz': {
      'en': 'User Role',
      'th': '',
    },
    'pali39bd': {
      'en': 'Admin',
      'th': '',
    },
    'dvxhm6se': {
      'en': 'Agent',
      'th': '',
    },
    '0cws9oxn': {
      'en': 'Please select...',
      'th': '',
    },
    'sv8ypz2z': {
      'en': 'Cancel',
      'th': '',
    },
    '96g3p4wm': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'ilfvv0qz': {
      'en': 'Save User',
      'th': '',
    },
  },
  // IPTravelerDetailsCard
  {
    'fnbb2b5s': {
      'en': 'Full Name',
      'th': '',
    },
    'wa8dov5m': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    '0c89da30': {
      'en': 'Date of Birth',
      'th': '',
    },
    'hdk1uutx': {
      'en': '24 / 06 / 1994',
      'th': '',
    },
    '79s8hfjf': {
      'en': 'City',
      'th': '',
    },
    'vguf1tt6': {
      'en': 'Kuala Lumpur',
      'th': '',
    },
    'esoypd5i': {
      'en': 'Country',
      'th': '',
    },
    'vyzoeg59': {
      'en': 'Malaysia',
      'th': '',
    },
  },
  // forgotpswrd
  {
    '3fzu644k': {
      'en': 'Forgot / Reset Password',
      'th': '',
    },
    '7dvjxcfq': {
      'en': 'The password reset instructions have been sent to your email.',
      'th': '',
    },
    'mt4kpf1s': {
      'en': 'Please',
      'th': '',
    },
    'w7g8occ0': {
      'en': ' relogin ',
      'th': '',
    },
    'vqje7j1w': {
      'en': 'here with your new password.',
      'th': '',
    },
    '4pki63bi': {
      'en': 'A note about spam filters',
      'th': '',
    },
    'fe7pd395': {
      'en':
          'If you do not receive this mail, please check the spam or junk mail folder.',
      'th': '',
    },
    'm6qvw0pb': {
      'en': 'Back To Login',
      'th': '',
    },
    '08yvd3au': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    '08sryeqy': {
      'en': '| Disclaimer',
      'th': '',
    },
  },
  // myaccmanager
  {
    'v7w00uw3': {
      'en': 'My Account Manager',
      'th': '',
    },
    'xz51hewi': {
      'en': 'Account Manager Name',
      'th': '',
    },
    '51wuej3z': {
      'en': 'Contact Email ID',
      'th': '',
    },
    'dgtaz1cp': {
      'en': 'Contact No.:',
      'th': '',
    },
  },
  // WebSidNavBarLeft
  {
    'c1i5potk': {
      'en': '<name>',
      'th': '',
    },
    '8ckhpeyr': {
      'en': 'Credit:',
      'th': '',
    },
    'c9nr4fv2': {
      'en': 'MYR \n1,000.00',
      'th': '',
    },
    'elf742a2': {
      'en': 'Outstanding:',
      'th': '',
    },
    'gnk9g7bc': {
      'en': 'MYR \n0.00',
      'th': '',
    },
    'z4b8j1t5': {
      'en': '<name>',
      'th': '',
    },
    'g12nvyxr': {
      'en': 'Credit:',
      'th': '',
    },
    '7lmoei1j': {
      'en': '<MYR 1000.0>',
      'th': '',
    },
    'n193qdrn': {
      'en': 'Outstanding:',
      'th': '',
    },
    'zzwqj3ti': {
      'en': '<MYR 0.00>',
      'th': '',
    },
    '49ag9u7s': {
      'en': 'Dashboard',
      'th': '',
    },
    'd1gesvnu': {
      'en': 'Dashboard',
      'th': '',
    },
    'cj9yrmn0': {
      'en': 'Issue Policy',
      'th': '',
    },
    'zcymjbi6': {
      'en': 'Issue Policy',
      'th': '',
    },
    'unpnac9i': {
      'en': 'Queue',
      'th': '',
    },
    'cveljgfw': {
      'en': 'Queue',
      'th': '',
    },
    'gq4n50s2': {
      'en': 'Today (0)',
      'th': '',
    },
    'zmrnp2e0': {
      'en': 'Today (0)',
      'th': '',
    },
    '8ty2u68u': {
      'en': 'All (4)',
      'th': '',
    },
    'r2k96li5': {
      'en': 'All (4)',
      'th': '',
    },
    'uv945ch6': {
      'en': 'Confirmed (4)',
      'th': '',
    },
    'hwjppypr': {
      'en': 'Confirmed (4)',
      'th': '',
    },
    'bql6qn11': {
      'en': 'Cancelled (0)',
      'th': '',
    },
    '8o5kw1e4': {
      'en': 'Cancelled (0)',
      'th': '',
    },
    'x83dkbmf': {
      'en': 'Previous Month Cancellations (0)',
      'th': '',
    },
    '4zg9kng4': {
      'en': 'Previous Month Cancellations (0)',
      'th': '',
    },
    '37bkq7hr': {
      'en': 'Saved Quotations (1)',
      'th': '',
    },
    'q61rq4ci': {
      'en': 'Saved Quotations (1)',
      'th': '',
    },
    'jxbvbjmm': {
      'en': 'Refresh',
      'th': '',
    },
    '5xa3vwc1': {
      'en': 'Search Bookings',
      'th': '',
    },
    'v74gh7ps': {
      'en': 'Search Bookings',
      'th': '',
    },
    'kqqcw081': {
      'en': 'Approvals',
      'th': '',
    },
    'juih4nfa': {
      'en': 'Approvals',
      'th': '',
    },
    'v24o63j4': {
      'en': 'Entities',
      'th': '',
    },
    'ceha28jj': {
      'en': 'Entities',
      'th': '',
    },
    'x5tof12j': {
      'en': 'Account Manager',
      'th': '',
    },
    't4dw8oa8': {
      'en': 'Account Manager',
      'th': '',
    },
    '5bjlgh4o': {
      'en': 'Users',
      'th': '',
    },
    '1ul755tz': {
      'en': 'Users',
      'th': '',
    },
    'reptv06n': {
      'en': 'All Users',
      'th': '',
    },
    'cp0g55kw': {
      'en': 'All Users',
      'th': '',
    },
    'fh7d0200': {
      'en': 'Create User',
      'th': '',
    },
    '8zbr0doi': {
      'en': 'Create User',
      'th': '',
    },
    '5iz51xmm': {
      'en': 'Downloads',
      'th': '',
    },
    'iwjwzajs': {
      'en': 'Downloads',
      'th': '',
    },
    'pwupndqo': {
      'en': 'Sales Statement',
      'th': '',
    },
    'q8ceuljj': {
      'en': 'Credit Note Statement',
      'th': '',
    },
    'gt0zkjbl': {
      'en': 'Debit Note / Tax Invoice',
      'th': '',
    },
    'b2nmhe3d': {
      'en': 'Credit Note',
      'th': '',
    },
    'wowwvjt9': {
      'en': 'Payable Aging',
      'th': '',
    },
    'xbw1ggox': {
      'en': 'Agency Summary',
      'th': '',
    },
    'vc9gvq0z': {
      'en': 'User Email',
      'th': '',
    },
    'x4gvvmk9': {
      'en': 'Group Travel Template',
      'th': '',
    },
    'obu7mn7l': {
      'en': 'Credit Audit',
      'th': '',
    },
    '2ys78zp2': {
      'en': 'Credit Audit',
      'th': '',
    },
    'jlb6g0nw': {
      'en': 'Payable',
      'th': '',
    },
    'cw1pfm7g': {
      'en': 'Payable',
      'th': '',
    },
    'a616abnt': {
      'en': 'Payable',
      'th': '',
    },
    't1m3gjcm': {
      'en': 'Payable',
      'th': '',
    },
    '59sgiw7k': {
      'en': 'Policy Statement',
      'th': '',
    },
    'x3ba38am': {
      'en': 'Policy Statement',
      'th': '',
    },
    'zj60hhek': {
      'en': 'Configuration',
      'th': '',
    },
    '3ipb7f1f': {
      'en': 'Configuration',
      'th': '',
    },
    'kns49ufb': {
      'en': 'Email Receiver',
      'th': '',
    },
    'ebdodr9x': {
      'en': 'Email Receiver',
      'th': '',
    },
    '81dj2oec': {
      'en': 'Report',
      'th': '',
    },
    'vcldyg4t': {
      'en': 'Report',
      'th': '',
    },
    '60xlbs6p': {
      'en': 'Upload',
      'th': '',
    },
    's7tlrgou': {
      'en': 'Search / Delete',
      'th': '',
    },
    '1mwfnow3': {
      'en': 'Search / Delete',
      'th': '',
    },
    '2u3uyssl': {
      'en': 'English',
      'th': '',
    },
    's7mlntaw': {
      'en': 'Logout',
      'th': '',
    },
  },
  // IPTravelerDetailsNote
  {
    'wro7no53': {
      'en': 'Please Note',
      'th': '',
    },
    '8ew6o1iv': {
      'en':
          'Kindly check the customer details. If ok, we will proceed to issue the policy.',
      'th': '',
    },
    'tlxog4j2': {
      'en': 'Close',
      'th': '',
    },
    'c863ayg8': {
      'en': 'Confirm',
      'th': '',
    },
  },
  // GeneralSearchBookings
  {
    'wapz9k79': {
      'en': 'General Search Bookings',
      'th': '',
    },
    'obf4kksd': {
      'en': 'Booking Status',
      'th': '',
    },
    'q9u243vl': {
      'en': 'Confirmed',
      'th': '',
    },
    'solh6ka2': {
      'en': 'Unconfirmed',
      'th': '',
    },
    '1xddsg51': {
      'en': 'Confirmed',
      'th': '',
    },
    'wz4ubx3d': {
      'en': 'Certificate Number',
      'th': '',
    },
    'azb0xyix': {
      'en': 'Eg: 123456',
      'th': '',
    },
    'r5j7czs7': {
      'en': 'Plan Code',
      'th': '',
    },
    'c26t06oh': {
      'en': 'Eg: 123456',
      'th': '',
    },
    'oybesjci': {
      'en': 'Departure Country',
      'th': '',
    },
    'xqwwvr1f': {
      'en': 'Malaysia | MY',
      'th': '',
    },
    'ikhe72c1': {
      'en': 'Arrival Country',
      'th': '',
    },
    'ykq2o9lu': {
      'en': 'Malaysia | MY',
      'th': '',
    },
    'c791v8lk': {
      'en': 'Booking Agent Username',
      'th': '',
    },
    'ced5ak2r': {
      'en': 'Eg: raphael.guerro',
      'th': '',
    },
    'akume3kx': {
      'en': 'Agency',
      'th': '',
    },
    'f1zgqkbg': {
      'en': 'Eg: ABC Agency',
      'th': '',
    },
    'zly1yrye': {
      'en': 'Traveler Full Name',
      'th': '',
    },
    'jy1biuqj': {
      'en': 'Eg: ABC Agency',
      'th': '',
    },
    'rj0oq7x2': {
      'en': 'Departure Date (From)',
      'th': '',
    },
    'zkffqauw': {
      'en': 'Departure Date (To)',
      'th': '',
    },
    'mf2w05ic': {
      'en': 'Booking Period (From)',
      'th': '',
    },
    'p890dtfj': {
      'en': 'Booking Period (To)',
      'th': '',
    },
    'vqhs54yf': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'ujocxqxv': {
      'en': 'Search',
      'th': '',
    },
  },
  // profilemngmnt
  {
    'bfepedgh': {
      'en': '<name>Profile',
      'th': '',
    },
    '39lu7bg5': {
      'en': 'Username',
      'th': '',
    },
    'v7xospau': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'vz8t9wnt': {
      'en': 'Password',
      'th': '',
    },
    '1baieh4v': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'grlecvkn': {
      'en': 'Change Password',
      'th': '',
    },
    'zs0ug28y': {
      'en': 'First Name',
      'th': '',
    },
    'bneqqoln': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'x70o35pr': {
      'en': 'Last Name',
      'th': '',
    },
    'slyv5g59': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'cg5bsxo3': {
      'en': 'Date of Birth',
      'th': '',
    },
    '10p1p86x': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'l93odote': {
      'en': 'Email Address',
      'th': '',
    },
    'uuawhbiz': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'u5prhosp': {
      'en': 'Landline No.',
      'th': '',
    },
    'chusgjk7': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'yy67mg0o': {
      'en': 'Mobile Number',
      'th': '',
    },
    'x0466jun': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'xa9sbbcq': {
      'en': 'Company',
      'th': '',
    },
    '6ov38px3': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'uyky2c7g': {
      'en': 'Branch / Location',
      'th': '',
    },
    '8yoimey5': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'ag9qjrs0': {
      'en': 'Country',
      'th': '',
    },
    'dlq0md1q': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'exl3gabg': {
      'en': 'Insurance Partner',
      'th': '',
    },
    'dv4locro': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'c6onfm9l': {
      'en': 'System Role',
      'th': '',
    },
    'r2gro48s': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'tkj6z5zi': {
      'en': 'Company Role',
      'th': '',
    },
    '1xqsb5kp': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'v03rvk8w': {
      'en': 'Last Login',
      'th': '',
    },
    'ztbiff7t': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'xvoo16lu': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '8c72ewft': {
      'en': 'Edit',
      'th': '',
    },
  },
  // plandetails
  {
    'rdynn0bh': {
      'en': 'Plan Details',
      'th': '',
    },
    'efarzc1r': {
      'en': 'Plan:',
      'th': '',
    },
    '0hp6lh62': {
      'en': 'Travel Comprehensive for Single Trip Cover (Platinum Plan)',
      'th': '',
    },
    '7w6l0trd': {
      'en': 'Certificate No.:',
      'th': '',
    },
    '9rthbei4': {
      'en': 'TC-23-0000003',
      'th': '',
    },
    'u7hh8bcm': {
      'en': 'Premium:',
      'th': '',
    },
    'kybvkhld': {
      'en': 'MYR 92.00',
      'th': '',
    },
    'f9brw1p2': {
      'en': 'Premium Charge Type:',
      'th': '',
    },
    'es0d6p56': {
      'en': 'Per Booking',
      'th': '',
    },
    '5b3d82jw': {
      'en': 'Status:',
      'th': '',
    },
    'y5pqbh4g': {
      'en': 'Confirmed',
      'th': '',
    },
    '68o5ot57': {
      'en': 'Trip Type:',
      'th': '',
    },
    'hjis0xvy': {
      'en': 'Round-Trip 6 Days',
      'th': '',
    },
    'bo8lp7p6': {
      'en': 'Adult:',
      'th': '',
    },
    'xkqy7v4w': {
      'en': '1',
      'th': '',
    },
    'qsywzauo': {
      'en': 'Origin City:',
      'th': '',
    },
    'sui1pws7': {
      'en': 'Kuala Lumpur',
      'th': '',
    },
    'w25dyip6': {
      'en': 'Departure Date:',
      'th': '',
    },
    'igft2x6q': {
      'en': '20-01-2023',
      'th': '',
    },
    'x778fzbb': {
      'en': 'Child:',
      'th': '',
    },
    'iua7ua3v': {
      'en': '0',
      'th': '',
    },
    'q05aiwxg': {
      'en': 'Destination City:',
      'th': '',
    },
    'e9csb47g': {
      'en': 'Jakarta',
      'th': '',
    },
    'm3kd9hkg': {
      'en': 'Return Date:',
      'th': '',
    },
    'soe7uogw': {
      'en': '25-01-2023',
      'th': '',
    },
    'd5s1hhyy': {
      'en': 'Infant:',
      'th': '',
    },
    '5hitwnnt': {
      'en': '0',
      'th': '',
    },
    '3ywjt4yz': {
      'en': 'Booking Date:',
      'th': '',
    },
    '5dsevcby': {
      'en': '12-01-2023, 2:15 PM',
      'th': '',
    },
    'hpvmdlfp': {
      'en': 'Booking Agent:',
      'th': '',
    },
    'bk8q8z9s': {
      'en': 'Ravi Shankar',
      'th': '',
    },
    '5iu6b17b': {
      'en': 'Booking Country:',
      'th': '',
    },
    '5odeypgd': {
      'en': 'Malaysia',
      'th': '',
    },
    '9mfiyt17': {
      'en': 'Adhoc Commission (%):',
      'th': '',
    },
    'wngpsp15': {
      'en': '0',
      'th': '',
    },
    'lucdy869': {
      'en': 'Adhoc Commission Fee:',
      'th': '',
    },
    'xj8ab1oq': {
      'en': '0',
      'th': '',
    },
    '1rakbrqn': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '784qvgz1': {
      'en': 'Download COI',
      'th': '',
    },
  },
  // creditnotestmtMain
  {
    'd2487wxk': {
      'en': 'Download Credit Note Statement',
      'th': '',
    },
    'bprnwk22': {
      'en': 'Country',
      'th': '',
    },
    'y9slisxx': {
      'en': 'Malaysia',
      'th': '',
    },
    'oeq4iy3h': {
      'en': 'Thailand',
      'th': '',
    },
    'dgwauzpr': {
      'en': '-- All --',
      'th': '',
    },
    'nykvlsd9': {
      'en': 'Agency',
      'th': '',
    },
    '82ioaqu3': {
      'en': 'Option 1',
      'th': '',
    },
    '1e43cwvn': {
      'en': '2',
      'th': '',
    },
    'h28pcbio': {
      'en': '-- All --',
      'th': '',
    },
    'jgodrm95': {
      'en': 'Month',
      'th': '',
    },
    'ducyy168': {
      'en': '1',
      'th': '',
    },
    'f2scqc5p': {
      'en': '2',
      'th': '',
    },
    'pe2xv8fx': {
      'en': '3',
      'th': '',
    },
    'ry7s28so': {
      'en': '4',
      'th': '',
    },
    'mfj1m3rb': {
      'en': '5',
      'th': '',
    },
    'x9togrjr': {
      'en': '6',
      'th': '',
    },
    'frl9zba1': {
      'en': '7',
      'th': '',
    },
    '6rkkkfnp': {
      'en': '8',
      'th': '',
    },
    '766slk9b': {
      'en': '9',
      'th': '',
    },
    '82skasyu': {
      'en': '10',
      'th': '',
    },
    'i34u00mf': {
      'en': '11',
      'th': '',
    },
    'nq4z77wx': {
      'en': '12',
      'th': '',
    },
    'dp6kc88u': {
      'en': '-- All --',
      'th': '',
    },
    'a40outhh': {
      'en': 'Year',
      'th': '',
    },
    'dx5jspl3': {
      'en': 'Option 1',
      'th': '',
    },
    'b31gvnm9': {
      'en': '2',
      'th': '',
    },
    'ac1i5zd7': {
      'en': '-- All --',
      'th': '',
    },
    'xy8jxdyx': {
      'en': 'Close',
      'th': '',
    },
    '3oxc70i6': {
      'en': 'Download',
      'th': '',
    },
  },
  // debitnotestmntpopup
  {
    'cq6aoe3p': {
      'en': 'Debit note statement downloaded successfully',
      'th': '',
    },
  },
  // creditnotepopup
  {
    'm5agebmm': {
      'en': 'Credit note downloaded successfully',
      'th': '',
    },
  },
  // uploadreport
  {
    'nvenw1ge': {
      'en': 'Upload Report',
      'th': '',
    },
    'kpcbzhwo': {
      'en': 'Country',
      'th': '',
    },
    'rp4lsf7o': {
      'en': 'Option 1',
      'th': '',
    },
    'd171v6iq': {
      'en': 'Please select...',
      'th': '',
    },
    '957aky4x': {
      'en': 'Agency',
      'th': '',
    },
    'gwsovqy7': {
      'en': 'Option 1',
      'th': '',
    },
    'jzd7hujg': {
      'en': 'Please select...',
      'th': '',
    },
    '6ptrdo70': {
      'en': 'Month',
      'th': '',
    },
    '55z3vrja': {
      'en': 'Option 1',
      'th': '',
    },
    'emz1qwn0': {
      'en': 'Please select...',
      'th': '',
    },
    'o37o0avx': {
      'en': 'Year',
      'th': '',
    },
    '9njznf22': {
      'en': 'Option 1',
      'th': '',
    },
    'fhbsg6vj': {
      'en': 'Please select...',
      'th': '',
    },
    '0167qg43': {
      'en': 'Report Type',
      'th': '',
    },
    'je2o5qm8': {
      'en': 'Option 1',
      'th': '',
    },
    'zvww8r3w': {
      'en': 'Please select...',
      'th': '',
    },
    'dbrrcglb': {
      'en': 'Attach File',
      'th': '',
    },
    'c0qf522l': {
      'en': 'Option 1',
      'th': '',
    },
    '8iui91yx': {
      'en': 'Please select...',
      'th': '',
    },
    'njp34h5p': {
      'en': 'Cancel',
      'th': '',
    },
    'wkx5e5wh': {
      'en': 'Upload',
      'th': '',
    },
  },
  // addemail
  {
    'ol5dbza8': {
      'en': 'Add Email',
      'th': '',
    },
    'c5c3mt1b': {
      'en': 'Country',
      'th': '',
    },
    '7ujqtmrg': {
      'en': 'Option 1',
      'th': '',
    },
    'ztawixer': {
      'en': 'Please select...',
      'th': '',
    },
    'iyerjh4v': {
      'en': 'Agency',
      'th': '',
    },
    '1ccikyoy': {
      'en': 'Option 1',
      'th': '',
    },
    '8zc32t44': {
      'en': 'Please select...',
      'th': '',
    },
    'txojzi9a': {
      'en': 'Agency',
      'th': '',
    },
    'h2su0ufe': {
      'en': 'Internal',
      'th': '',
    },
    'znae3c53': {
      'en': 'External',
      'th': '',
    },
    '6ia654jj': {
      'en': 'Cancel',
      'th': '',
    },
    'lz8f1vlx': {
      'en': 'Add User',
      'th': '',
    },
  },
  // declaration1
  {
    '82jsqzu2': {
      'en': 'Important Declaration',
      'th': '',
    },
    'jtj77qg5': {
      'en':
          'I understand that the Product is provided by GetTransfer. I understand that Tune Protect cannot provide full support for the GetTransfer services and that Tune Protect merely facilitates the sale of the GetTransfer services. I will contact GetTransfer for any query in relation thereto',
      'th': '',
    },
    'av82ub8z': {
      'en': 'Reject',
      'th': '',
    },
    '0a55zpcu': {
      'en': 'Accept',
      'th': '',
    },
  },
  // declaration2
  {
    'vj8njbtz': {
      'en': 'Important Declaration',
      'th': '',
    },
    'm5dbzr6y': {
      'en':
          'I understand that the Product is provided by Blue Ribbon Bags. I understand that Tune Protect cannot provide full support for Blue Ribbon Bags and that Tune Protect merely facilitates the sale Blue Ribbon Bags . I will contact Blue Ribbon Bags for any query in relation thereto.',
      'th': '',
    },
    'kcd8btug': {
      'en': 'Reject',
      'th': '',
    },
    'xgcqtp2m': {
      'en': 'Accept',
      'th': '',
    },
  },
  // declaration3
  {
    'ypa2sv2o': {
      'en': 'Important Declaration',
      'th': '',
    },
    '16mx1qtw': {
      'en':
          'TuneProtect is only facilitating the provision of RT-PCR tests for testing Covid-19, for passengers through Stemz Global DMCC (“Stemz”). All customer services, support, grievances in relation to STEMZ services shall be addressed by STEMZ Global DMCC directly.',
      'th': '',
    },
    '20zzn7pw': {
      'en': 'Reject',
      'th': '',
    },
    '8yzmu5a5': {
      'en': 'Accept',
      'th': '',
    },
  },
  // notificationbar
  {
    'kn0httcr': {
      'en': 'Notifications For You (<?>)',
      'th': '',
    },
    '2qjfdrix': {
      'en': 'Information For You',
      'th': '',
    },
    'sekfepce': {
      'en': 'Premium At-A-Glance (PDF)',
      'th': '',
    },
    'lsnkd4i8': {
      'en': 'Schedule of Benefits At-A-Glance',
      'th': '',
    },
    'a2kjcd96': {
      'en': 'COVID Travel Pass (PDF)',
      'th': '',
    },
    '8jm8xij0': {
      'en': 'Travel Comprehensive (PDF)',
      'th': '',
    },
    'bv1gymhh': {
      'en': 'Travel Outbound Lite (PDF)',
      'th': '',
    },
    'zd0j5xpz': {
      'en': 'Travel Inbound Lite (PDF)',
      'th': '',
    },
    'i4wp77lq': {
      'en': 'FAQ',
      'th': '',
    },
  },
  // IPTravelerDetailsCardMobile
  {
    'ubm3ns6e': {
      'en': 'Full Name',
      'th': '',
    },
    '6zdnf5sg': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    'je7ldk2z': {
      'en': 'Date of Birth',
      'th': '',
    },
    'hr9iip58': {
      'en': '24 / 06 / 1994',
      'th': '',
    },
    'tw9n0jc4': {
      'en': 'City',
      'th': '',
    },
    'jgdzg1zw': {
      'en': 'Kuala Lumpur',
      'th': '',
    },
    '8buznjg1': {
      'en': 'Country',
      'th': '',
    },
    'd0k1m0d0': {
      'en': 'Malaysia',
      'th': '',
    },
  },
  // profilepicchange
  {
    '9c0nw3d5': {
      'en': 'Profile Picture',
      'th': '',
    },
    'g8802y76': {
      'en': 'Save Changes',
      'th': '',
    },
  },
  // createnewusermobile
  {
    'nx8tg9wl': {
      'en': 'Create New User',
      'th': '',
    },
    'ocqrjosp': {
      'en': '* All fields are mandatory',
      'th': '',
    },
    'xxxagiuc': {
      'en': '* Duplicate emails not accepted',
      'th': '',
    },
    'py6uxxlg': {
      'en': 'First Name',
      'th': '',
    },
    'fqpgq2u4': {
      'en': 'Last Name',
      'th': '',
    },
    'iwuot4s0': {
      'en': 'Date Of Birth',
      'th': '',
    },
    'quq0y6an': {
      'en': 'Email',
      'th': '',
    },
    'e2e5epv4': {
      'en': 'Landline No.',
      'th': '',
    },
    'bezs35bk': {
      'en': 'Monile Number',
      'th': '',
    },
    '1na7yty4': {
      'en': 'Branch',
      'th': '',
    },
    '3hg3kdah': {
      'en': 'User Role',
      'th': '',
    },
    '7c90o8ru': {
      'en': 'Option 1',
      'th': '',
    },
    'a5ltqpnt': {
      'en': 'Please select...',
      'th': '',
    },
    'bjvjzfng': {
      'en': 'Cancel',
      'th': '',
    },
    '3eezfyok': {
      'en': 'Save User',
      'th': '',
    },
  },
  // pleasenote
  {
    '4jeeo7a5': {
      'en': 'Please Note',
      'th': '',
    },
    '2mxtph7t': {
      'en':
          'Kindly check the customer details. If ok, we will proceed to issue the policy.',
      'th': '',
    },
    'y9k181qa': {
      'en': 'Close',
      'th': '',
    },
    '1g8cn7rv': {
      'en': 'Confirm',
      'th': '',
    },
  },
  // choosepaymentmethod
  {
    '9wfmv59n': {
      'en': 'Choose your payment method',
      'th': '',
    },
    'jf0zklqw': {
      'en': 'Payment method',
      'th': '',
    },
    '075n3hw9': {
      'en': 'Credit ( ',
      'th': '',
    },
    'knjikywq': {
      'en': 'MYR 1,00,000',
      'th': '',
    },
    'q5tbyu6h': {
      'en': ' )',
      'th': '',
    },
    'vn39eb6h': {
      'en': 'Confirm',
      'th': '',
    },
  },
  // PWsucessfullMobile
  {
    'l8bcfqpq': {
      'en': 'Change Password',
      'th': '',
    },
    'qoj7mz8c': {
      'en': 'Your password has been \nchanged successfully!',
      'th': '',
    },
    'ljq6afv7': {
      'en': 'Please',
      'th': '',
    },
    '0htyxd6u': {
      'en': ' relogin here ',
      'th': '',
    },
    'qeft9xlc': {
      'en': 'with your new password.',
      'th': '',
    },
    'wletjyfy': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    'ootlnhaj': {
      'en': '| Disclaimer',
      'th': '',
    },
  },
  // issuepolicyrightbar
  {
    'zuqsfqv8': {
      'en': 'Passenger Details',
      'th': '',
    },
    'wr9ae1i9': {
      'en': 'Adult',
      'th': '',
    },
    '9cjweu5i': {
      'en': '0',
      'th': '',
    },
    'ht5t1r42': {
      'en': 'Child',
      'th': '',
    },
    'wxftb2xg': {
      'en': '1',
      'th': '',
    },
    'f26gqahi': {
      'en': 'Travel Details',
      'th': '',
    },
    'o6f23ru0': {
      'en': 'Journey Type',
      'th': '',
    },
    'h842gbsi': {
      'en': 'One Way',
      'th': '',
    },
    'vq7okwgp': {
      'en': 'Destination Type',
      'th': '',
    },
    'req0opap': {
      'en': 'City',
      'th': '',
    },
    'fgqcdeqc': {
      'en': 'Departure',
      'th': '',
    },
    '5nkmfxi2': {
      'en': 'Kuala Lumpur (KUL - MY)',
      'th': '',
    },
    '3uog4pkb': {
      'en': 'Arrival',
      'th': '',
    },
    'nw0xh30u': {
      'en': 'Jakarta (GCK - ID)',
      'th': '',
    },
    '6wo5leb3': {
      'en': 'Departure Date',
      'th': '',
    },
    'hd2hypuh': {
      'en': '12/01/2023',
      'th': '',
    },
    '336ba00q': {
      'en': 'Return Date',
      'th': '',
    },
    'flaew20j': {
      'en': '12/01/2023',
      'th': '',
    },
    '0q45eefv': {
      'en': 'Travel Details',
      'th': '',
    },
    '67efgxfa': {
      'en': 'Travel Comprehensive\nfor Single Trip Cover\n(Platinum Plan)',
      'th': '',
    },
    'fydzmkn1': {
      'en': '67.00',
      'th': '',
    },
    'l1uplead': {
      'en': 'Adventure Rider',
      'th': '',
    },
    '5iec2d7h': {
      'en': '30.00',
      'th': '',
    },
    '610r5gr2': {
      'en': 'Total Premium',
      'th': '',
    },
    '52morptg': {
      'en': 'MYR 97.00',
      'th': '',
    },
  },
  // hamburgerMobile
  {
    'rrfs5s1q': {
      'en': '<name>',
      'th': '',
    },
    'rhp7ed9r': {
      'en': 'Credit:',
      'th': '',
    },
    '3pr1vvxs': {
      'en': '<MYR 1000.0>',
      'th': '',
    },
    'nnf6efj0': {
      'en': 'Outstanding:',
      'th': '',
    },
    '12h7z668': {
      'en': '<MYR 0.00>',
      'th': '',
    },
    'sdueq5m6': {
      'en': 'Dashboard',
      'th': '',
    },
    '3cpejmbz': {
      'en': 'Dashboard',
      'th': '',
    },
    'u7skx95u': {
      'en': 'Issue Policy',
      'th': '',
    },
    'xezb3pze': {
      'en': 'Issue Policy',
      'th': '',
    },
    'fgng9sup': {
      'en': 'Queue',
      'th': '',
    },
    'ad9h9azz': {
      'en': 'Queue',
      'th': '',
    },
    'ohk64oow': {
      'en': 'Today (0)',
      'th': '',
    },
    'a8ktk699': {
      'en': 'Today (0)',
      'th': '',
    },
    '39amo6vp': {
      'en': 'All (4)',
      'th': '',
    },
    'ywxpe68b': {
      'en': 'All (4)',
      'th': '',
    },
    'ko93u5cp': {
      'en': 'Confirmed (4)',
      'th': '',
    },
    'a6y3xyyb': {
      'en': 'Confirmed (4)',
      'th': '',
    },
    'wwk2gp9m': {
      'en': 'Cancelled (0)',
      'th': '',
    },
    'o49a9ep8': {
      'en': 'Cancelled (0)',
      'th': '',
    },
    'u6sodfex': {
      'en': 'Previous Month Cancellations (0)',
      'th': '',
    },
    'wj2g5i0j': {
      'en': 'Previous Month Cancellations (0)',
      'th': '',
    },
    'suu3rw4w': {
      'en': 'Saved Quotations (1)',
      'th': '',
    },
    '9613meiu': {
      'en': 'Saved Quotations (1)',
      'th': '',
    },
    'xu1246rm': {
      'en': 'Refresh',
      'th': '',
    },
    'uhdsul47': {
      'en': 'Search Bookings',
      'th': '',
    },
    '2067z3pl': {
      'en': 'Search Bookings',
      'th': '',
    },
    'k6tvd7lr': {
      'en': 'Approvals',
      'th': '',
    },
    'dot1xbm6': {
      'en': 'Approvals',
      'th': '',
    },
    'ihtk7dbd': {
      'en': 'Entities',
      'th': '',
    },
    'hdb307qt': {
      'en': 'Entities',
      'th': '',
    },
    'cny51l69': {
      'en': 'Account Manager',
      'th': '',
    },
    'm0gg4avz': {
      'en': 'Account Manager',
      'th': '',
    },
    '0zb3pmt0': {
      'en': 'Users',
      'th': '',
    },
    'qvvoj0zu': {
      'en': 'Users',
      'th': '',
    },
    'lh0ury6c': {
      'en': 'All Users',
      'th': '',
    },
    '564kg2zi': {
      'en': 'All Users',
      'th': '',
    },
    'vxvqnwh8': {
      'en': 'Create User',
      'th': '',
    },
    'skv3nib6': {
      'en': 'Create User',
      'th': '',
    },
    '0kxm92l2': {
      'en': 'Downloads',
      'th': '',
    },
    'at00j1z3': {
      'en': 'Downloads',
      'th': '',
    },
    'vzwsg2wf': {
      'en': 'Sales Statement',
      'th': '',
    },
    'w9znfxgl': {
      'en': 'Group Travel Template',
      'th': '',
    },
    '8739gtvf': {
      'en': 'Credit Audit',
      'th': '',
    },
    '5q1i16qh': {
      'en': 'Credit Audit',
      'th': '',
    },
    '4v5japm2': {
      'en': 'Payable',
      'th': '',
    },
    'ftjwdfkl': {
      'en': 'Payable',
      'th': '',
    },
    'ij9s6hhy': {
      'en': 'Configuration',
      'th': '',
    },
    '9emqwqyh': {
      'en': 'Configuration',
      'th': '',
    },
    'iwxqohob': {
      'en': 'English',
      'th': '',
    },
    'iui9ozu0': {
      'en': 'Logout',
      'th': '',
    },
  },
  // profilePicSuccess
  {
    '7skimwbe': {
      'en': 'Profile picture updated successfully!',
      'th': '',
    },
  },
  // forgotpswrdMobile
  {
    'swfcpeuh': {
      'en': 'Forgot / Reset Password',
      'th': '',
    },
    'ynxmtht9': {
      'en': 'The password reset instructions have been sent to your email.',
      'th': '',
    },
    'b1njokvl': {
      'en': 'Please',
      'th': '',
    },
    'bkq4zymf': {
      'en': ' relogin ',
      'th': '',
    },
    'yizyoczt': {
      'en': 'here with your new password.',
      'th': '',
    },
    'bjibymjt': {
      'en': 'A note about spam filters',
      'th': '',
    },
    '4e46obbr': {
      'en':
          'If you do not receive this mail, please check the spam or junk mail folder.',
      'th': '',
    },
    'y3ke9bdm': {
      'en': 'Back To Login',
      'th': '',
    },
    'dqe04web': {
      'en': 'Copyright © 2023 Tune Protect. All rights reserved. ',
      'th': '',
    },
    't4bzonwf': {
      'en': '| Disclaimer',
      'th': '',
    },
  },
  // profilemanagementmobile
  {
    'ybibiiw1': {
      'en': '<name>',
      'th': '',
    },
    'jow8qkfe': {
      'en': '\'s Profile',
      'th': '',
    },
    'nd1j2gia': {
      'en': 'Username',
      'th': '',
    },
    'rrzla5f5': {
      'en': 'Password',
      'th': '',
    },
    'g9b238jx': {
      'en': 'Change Password',
      'th': '',
    },
    '5evwtvn7': {
      'en': 'First Name',
      'th': '',
    },
    '3cot9v1e': {
      'en': 'Last Name',
      'th': '',
    },
    '6ydrmkui': {
      'en': 'Date of Birth',
      'th': '',
    },
    'hhln2t5u': {
      'en': 'Email Address',
      'th': '',
    },
    'atqdwehw': {
      'en': 'Landline No.',
      'th': '',
    },
    'supal9vx': {
      'en': 'Monile Number',
      'th': '',
    },
    'l6gktfls': {
      'en': 'Company',
      'th': '',
    },
    'wwuzglhr': {
      'en': 'Branch / Location',
      'th': '',
    },
    'm3x7bhyk': {
      'en': 'Country',
      'th': '',
    },
    'ea14rxcj': {
      'en': 'Insurance Partner',
      'th': '',
    },
    'oploz70g': {
      'en': 'System Role',
      'th': '',
    },
    'sd6l5t5u': {
      'en': 'Company Role',
      'th': '',
    },
    '30tp1t0m': {
      'en': 'Last Login',
      'th': '',
    },
    'cmp8oizl': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    '5v9b872m': {
      'en': 'Edit',
      'th': '',
    },
  },
  // resetcreditMain
  {
    '5vz04ml1': {
      'en': 'Confirmation To Reset Credit',
      'th': '',
    },
    's3487i9k': {
      'en': 'Are you sure you want to Reset Credit?',
      'th': '',
    },
    '99s2b729': {
      'en': 'Cancel',
      'th': '',
    },
    'qnd3zxkz': {
      'en': 'Reset Credit',
      'th': '',
    },
  },
  // logout
  {
    'lmcg9ay9': {
      'en': 'Confirm Logout',
      'th': '',
    },
    '9c8mq5kb': {
      'en': 'Are you sure you want to logout?',
      'th': '',
    },
    '3720tpvd': {
      'en': 'Cancel',
      'th': '',
    },
    'fqzkyg2k': {
      'en': 'Logout',
      'th': '',
    },
  },
  // changessaved
  {
    'emdv5qfi': {
      'en': 'Changes saved successfully\n',
      'th': '',
    },
  },
  // policystate
  {
    'qr649xgu': {
      'en': 'Country',
      'th': '',
    },
    'kmiftrj7': {
      'en': 'Option 1',
      'th': '',
    },
    'ht51yqgl': {
      'en': 'Please select...',
      'th': '',
    },
    'j9ujw1n0': {
      'en': 'Agency',
      'th': '',
    },
    'pcdpzmv5': {
      'en': 'Option 1',
      'th': '',
    },
    'oe39vkct': {
      'en': 'Please select...',
      'th': '',
    },
    'domc5h03': {
      'en': 'Underwriter',
      'th': '',
    },
    'wtb5ig6e': {
      'en': 'Option 1',
      'th': '',
    },
    '1zvilssn': {
      'en': 'Please select...',
      'th': '',
    },
    'a0dgt7of': {
      'en': 'Policy Number',
      'th': '',
    },
    '5ia9fl88': {
      'en': 'Close',
      'th': '',
    },
    '2o4ilmri': {
      'en': 'Upload',
      'th': '',
    },
    '9znusgvr': {
      'en': 'Export',
      'th': '',
    },
  },
  // creditAuditLogMain
  {
    'rtbwa3s8': {
      'en': 'Credit Audit Logs',
      'th': '',
    },
    'zvv99lk5': {
      'en': 'Sl. No.',
      'th': '',
    },
    'sppnp13s': {
      'en': 'Underwriter',
      'th': '',
    },
    'b3hkf6u6': {
      'en': '1',
      'th': '',
    },
    'kiornom8': {
      'en': 'TPM',
      'th': '',
    },
    '9w1bt976': {
      'en': 'Old Credit',
      'th': '',
    },
    'be8p02p4': {
      'en': 'MYR 6.00',
      'th': '',
    },
    'qoima3w3': {
      'en': 'Topped Up Credit',
      'th': '',
    },
    'lj2ptzuu': {
      'en': 'MYR 20,000.00',
      'th': '',
    },
    'w5tahhuk': {
      'en': 'New Credit',
      'th': '',
    },
    '32cqdgh6': {
      'en': 'MYR 20,006.00',
      'th': '',
    },
    '4qn81svt': {
      'en': 'Topped Up By',
      'th': '',
    },
    'n8w4o9po': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    '5r4qqf9u': {
      'en': 'Topped Up Date',
      'th': '',
    },
    'ybyez7y5': {
      'en': '24/02/2022',
      'th': '',
    },
    '4bv0c38k': {
      'en': 'Showing 1 to 6 of 6 entries',
      'th': '',
    },
    '3kamijbw': {
      'en': 'Prev',
      'th': '',
    },
    '022hqko0': {
      'en': '1',
      'th': '',
    },
    'c445j2ip': {
      'en': 'Next',
      'th': '',
    },
    'qcysfd5d': {
      'en': 'close',
      'th': '',
    },
  },
  // topUpCreditSuccess
  {
    'rjro3tkd': {
      'en': 'Credit Top-Up Successful',
      'th': '',
    },
  },
  // agencyApprovalSuccess
  {
    'znjxk1dp': {
      'en': 'New Agency Approved Successfully!',
      'th': '',
    },
  },
  // passwordChangedsuccess
  {
    '4sosxsst': {
      'en': 'Password changed successfully',
      'th': '',
    },
  },
  // debitnotestmntMain
  {
    'ts08qjkx': {
      'en': 'Download Debit Note Statement',
      'th': '',
    },
    'j4yfxiv7': {
      'en': 'Country',
      'th': '',
    },
    'd8kdjlxd': {
      'en': 'Malaysia',
      'th': '',
    },
    'fxxlyt4d': {
      'en': 'Thailand',
      'th': '',
    },
    'tluwv3xc': {
      'en': '-- All --',
      'th': '',
    },
    'culvn3ll': {
      'en': 'Agency',
      'th': '',
    },
    'rn77b4xg': {
      'en': 'Option 1',
      'th': '',
    },
    'jx2wry33': {
      'en': '2',
      'th': '',
    },
    '8xck65zu': {
      'en': '-- All --',
      'th': '',
    },
    'bshp0k9z': {
      'en': 'Month',
      'th': '',
    },
    'rcxlwdjm': {
      'en': '1',
      'th': '',
    },
    'my213sjj': {
      'en': '2',
      'th': '',
    },
    'q8zlhfnf': {
      'en': '3',
      'th': '',
    },
    '51szoqq9': {
      'en': '4',
      'th': '',
    },
    'hianayxb': {
      'en': '5',
      'th': '',
    },
    'lz6muwez': {
      'en': '6',
      'th': '',
    },
    'ihwmgiy5': {
      'en': '7',
      'th': '',
    },
    'ogaed47g': {
      'en': '8',
      'th': '',
    },
    'x1imib8r': {
      'en': '9',
      'th': '',
    },
    '5nvaoo6q': {
      'en': '10',
      'th': '',
    },
    '8ayw0pfh': {
      'en': '11',
      'th': '',
    },
    '8locq9dz': {
      'en': '12',
      'th': '',
    },
    'wre84pfn': {
      'en': '-- All --',
      'th': '',
    },
    't1uk7a7y': {
      'en': 'Year',
      'th': '',
    },
    '9za54lxh': {
      'en': 'Option 1',
      'th': '',
    },
    '53voh36h': {
      'en': '2',
      'th': '',
    },
    'prk7nj9y': {
      'en': '-- All --',
      'th': '',
    },
    'y39n3k4r': {
      'en': 'Close',
      'th': '',
    },
    'xaaj4v2j': {
      'en': 'Download',
      'th': '',
    },
  },
  // creditnoteMain
  {
    'fqxuoth1': {
      'en': 'Download Credit Note',
      'th': '',
    },
    '1wov4kir': {
      'en': 'Country',
      'th': '',
    },
    'h1mey6bg': {
      'en': 'Option 1',
      'th': '',
    },
    'ily6hi8q': {
      'en': '2',
      'th': '',
    },
    '16k3k1ex': {
      'en': '-- All --',
      'th': '',
    },
    'jfk4mqfh': {
      'en': 'Agency',
      'th': '',
    },
    'b2ryc64i': {
      'en': 'Option 1',
      'th': '',
    },
    'wivpdag8': {
      'en': '2',
      'th': '',
    },
    'v1pplfyu': {
      'en': '-- All --',
      'th': '',
    },
    '65d3xyc4': {
      'en': 'Month',
      'th': '',
    },
    'a6iyrz3g': {
      'en': 'Option 1',
      'th': '',
    },
    'varnhs1b': {
      'en': '2',
      'th': '',
    },
    'thw7y0m0': {
      'en': '-- All --',
      'th': '',
    },
    'i1v0o1bu': {
      'en': 'Year',
      'th': '',
    },
    'ajvha006': {
      'en': 'Option 1',
      'th': '',
    },
    'xg6moa9q': {
      'en': '2',
      'th': '',
    },
    'zbijkas3': {
      'en': '-- All --',
      'th': '',
    },
    'euehtjk6': {
      'en': 'Close',
      'th': '',
    },
    'mznemcv4': {
      'en': 'Download',
      'th': '',
    },
  },
  // profilepicchangeCopy
  {
    '0c29nzjv': {
      'en': 'Profile Picture',
      'th': '',
    },
    '5szr2acg': {
      'en': 'Save Changes',
      'th': '',
    },
  },
  // userAddedSuccessfully
  {
    'eocwarwq': {
      'en': 'User Added Successfully',
      'th': '',
    },
  },
  // editProfileOptions
  {
    '322abd2y': {
      'en': 'Move User To Another Entity',
      'th': '',
    },
    'c8mjysam': {
      'en': 'Save Changes',
      'th': '',
    },
  },
  // profilemngmntEdit
  {
    '5ggmuucg': {
      'en': '<name>Profile',
      'th': '',
    },
    'recw6kwi': {
      'en': 'Username',
      'th': '',
    },
    'lf4dfdjd': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'dmer8o0k': {
      'en': 'Password',
      'th': '',
    },
    '2fyahzel': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'w40wipe0': {
      'en': 'Change Password',
      'th': '',
    },
    'xbdj0rb5': {
      'en': 'First Name',
      'th': '',
    },
    '9ioc2w9g': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'stsmkyjr': {
      'en': 'Last Name',
      'th': '',
    },
    '5df6oo0j': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'fe7v7e1c': {
      'en': 'Date of Birth',
      'th': '',
    },
    'osw3w1c9': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'b9mlogit': {
      'en': 'Email Address',
      'th': '',
    },
    '7807q55v': {
      'en': '[Some hint text...]',
      'th': '',
    },
    '5ogyt798': {
      'en': 'Landline No.',
      'th': '',
    },
    'u3hoizdl': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'ot1a1w4n': {
      'en': 'Mobile Number',
      'th': '',
    },
    '7mou3ubo': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'vgjeebi3': {
      'en': 'Company',
      'th': '',
    },
    '3hu91p24': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'wkxe63hq': {
      'en': 'Branch / Location',
      'th': '',
    },
    'qagrqxth': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'oh5o7qmb': {
      'en': 'Country',
      'th': '',
    },
    'ufmgsro8': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'b6mxcafx': {
      'en': 'Insurance Partner',
      'th': '',
    },
    '85y09vwz': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'wgavjxu8': {
      'en': 'System Role',
      'th': '',
    },
    'dtvg1b12': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'ylrnvxh7': {
      'en': 'Company Role',
      'th': '',
    },
    'tlpjm3pd': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'hc48oiqw': {
      'en': 'Last Login',
      'th': '',
    },
    '89uu6ae3': {
      'en': '[Some hint text...]',
      'th': '',
    },
    'kdmyoijn': {
      'en': 'Cancel',
      'th': '',
    },
  },
  // profilemanagementmobileEdit
  {
    'muifoa9g': {
      'en': '<name>',
      'th': '',
    },
    'x6lngvld': {
      'en': '\'s Profile',
      'th': '',
    },
    'lxkvhe4l': {
      'en': 'Username',
      'th': '',
    },
    'dbs0p77y': {
      'en': 'Password',
      'th': '',
    },
    '4x1wjiiv': {
      'en': 'Change Password',
      'th': '',
    },
    '8anvudij': {
      'en': 'First Name',
      'th': '',
    },
    'otxl5arg': {
      'en': 'Last Name',
      'th': '',
    },
    'w90gidu8': {
      'en': 'Date of Birth',
      'th': '',
    },
    '9hji7qsn': {
      'en': 'Email Address',
      'th': '',
    },
    '4vn1io2b': {
      'en': 'Landline No.',
      'th': '',
    },
    'usxdk2wj': {
      'en': 'Monile Number',
      'th': '',
    },
    '2h5wgppy': {
      'en': 'Company',
      'th': '',
    },
    'n3j3soo9': {
      'en': 'Branch / Location',
      'th': '',
    },
    '7zamilfa': {
      'en': 'Country',
      'th': '',
    },
    '9bd7n720': {
      'en': 'Insurance Partner',
      'th': '',
    },
    'kuy1jq3n': {
      'en': 'System Role',
      'th': '',
    },
    'nw6f1z5c': {
      'en': 'Company Role',
      'th': '',
    },
    'ham53ku1': {
      'en': 'Last Login',
      'th': '',
    },
    'z11x8cvm': {
      'en': 'Back To Dashboard',
      'th': '',
    },
  },
  // IssuePlanType
  {
    '1hm0v46u': {
      'en': 'Plan Type',
      'th': '',
    },
    '1ys1azjs': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    'd7actw29': {
      'en': 'Travel Comprehensive',
      'th': '',
    },
    'tgug5e08': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    'hxavie2q': {
      'en': 'Travel Outbound Lite',
      'th': '',
    },
    'mm30pkmz': {
      'en': 'Individual',
      'th': '',
    },
    'r5gu287t': {
      'en': 'MYR ',
      'th': '',
    },
    'nrugd6pf': {
      'en': '67.00',
      'th': '',
    },
    'q3qpaw3y': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'qyod4ily': {
      'en': '+ More Details',
      'th': '',
    },
    '78hlcmbx': {
      'en': 'MYR ',
      'th': '',
    },
    '7iru8qp4': {
      'en': '67.00',
      'th': '',
    },
    't94dtgfp': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'fwbjg2p2': {
      'en': '+ More Details',
      'th': '',
    },
    'rip1u7px': {
      'en': 'Adventure Plans',
      'th': '',
    },
    'nivsa7j0': {
      'en': 'MYR ',
      'th': '',
    },
    '0zwo6qz4': {
      'en': '67.00',
      'th': '',
    },
    'hn5dkofm': {
      'en': 'Travel Comprehensive for \nSingle Trip Cover \n(Platinum Plan)',
      'th': '',
    },
    'i2srfft6': {
      'en': '+ More Details',
      'th': '',
    },
    'sik2oj3n': {
      'en': 'Important:',
      'th': '',
    },
    'pc082ewk': {
      'en': ' By clicking on proceed I agree and accept the ',
      'th': '',
    },
    'cd4hwp19': {
      'en': 'Disclaimer',
      'th': '',
    },
    'wa43e4lj': {
      'en': 'Back',
      'th': '',
    },
    'tatxjmzs': {
      'en': 'Proceed',
      'th': '',
    },
  },
  // IssueTravelDetails
  {
    'j24jubk0': {
      'en': 'Travel Details',
      'th': '',
    },
    'urwcc78q': {
      'en': 'Journey Type',
      'th': '',
    },
    'vigcbx8r': {
      'en': 'One Way',
      'th': '',
    },
    'sbv6nmy0': {
      'en': 'Round Trip',
      'th': '',
    },
    're2fn2nn': {
      'en': 'Destination Type',
      'th': '',
    },
    'zqo986xs': {
      'en': 'City',
      'th': '',
    },
    'kvydhwxn': {
      'en': 'Country',
      'th': '',
    },
    '0wjekl3g': {
      'en': 'From',
      'th': '',
    },
    'p1f38tyb': {
      'en': 'Option 1',
      'th': '',
    },
    'wngvqqqv': {
      'en': 'Option 2',
      'th': '',
    },
    'o0zau7el': {
      'en': 'Option 3',
      'th': '',
    },
    'pfuev3m7': {
      'en': 'Departure',
      'th': '',
    },
    'tvee0r0d': {
      'en': 'Going To',
      'th': '',
    },
    '4aywslu3': {
      'en': 'Option 1',
      'th': '',
    },
    '25zoclsx': {
      'en': 'Option 2',
      'th': '',
    },
    'jv78nhzz': {
      'en': 'Option 3',
      'th': '',
    },
    '6194kw5f': {
      'en': 'Destination',
      'th': '',
    },
    '0v3hgu0d': {
      'en': 'Departure Date',
      'th': '',
    },
    '0bxxt8bw': {
      'en': 'Return Date',
      'th': '',
    },
    'hcrgpgu0': {
      'en': 'Number of Pax',
      'th': '',
    },
    'qfpha75r': {
      'en': 'Policy For',
      'th': '',
    },
    'yq1uc3v2': {
      'en': 'Up To 55 years',
      'th': '',
    },
    '4mvd77ik': {
      'en': 'Option 2',
      'th': '',
    },
    '82otswpo': {
      'en': 'Option 3',
      'th': '',
    },
    'a436g5ou': {
      'en': '-- Select --',
      'th': '',
    },
    'pzxri5k5': {
      'en': 'Adult(19-55 Years)',
      'th': '',
    },
    'onxpil0r': {
      'en': 'Option 1',
      'th': '',
    },
    '1gdoa49y': {
      'en': 'Option 2',
      'th': '',
    },
    'f58f8qpe': {
      'en': 'Option 3',
      'th': '',
    },
    'ubtga2ed': {
      'en': '1',
      'th': '',
    },
    'z5rvmovb': {
      'en': 'Child (2-21 Years)',
      'th': '',
    },
    'qkuhsrwi': {
      'en': 'Option 1',
      'th': '',
    },
    '73n3us0e': {
      'en': 'Option 2',
      'th': '',
    },
    'kjuop2hz': {
      'en': 'Option 3',
      'th': '',
    },
    'l2ydyu93': {
      'en': '0',
      'th': '',
    },
    'qutlcslf': {
      'en': 'Infants (1 Months - 2 Years)',
      'th': '',
    },
    '0y8b35g7': {
      'en': 'Option 1',
      'th': '',
    },
    '43dmkjcp': {
      'en': 'Option 2',
      'th': '',
    },
    'mm880n1a': {
      'en': 'Option 3',
      'th': '',
    },
    '5hnfjhe6': {
      'en': '0',
      'th': '',
    },
    'fymb5wko': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'ni9vua8j': {
      'en': 'Proceed',
      'th': '',
    },
  },
  // IssueTravelerInfo
  {
    '23oglioy': {
      'en': 'Adult 1',
      'th': '',
    },
    'cwt0h0dc': {
      'en': '-',
      'th': '',
    },
    '3g0tsllv': {
      'en': 'Last Name',
      'th': '',
    },
    'zxgvlqze': {
      'en': 'Last Name',
      'th': '',
    },
    '1lt2c1vm': {
      'en': 'First Name',
      'th': '',
    },
    'uobp4hlo': {
      'en': 'First Name',
      'th': '',
    },
    'iwjxo07q': {
      'en': 'Gender',
      'th': '',
    },
    'u4glniue': {
      'en': 'Option 1',
      'th': '',
    },
    'aofsopke': {
      'en': 'Male',
      'th': '',
    },
    '16zmxf4a': {
      'en': 'Nationality',
      'th': '',
    },
    'wbzumyh2': {
      'en': 'Option 1',
      'th': '',
    },
    'n1plickj': {
      'en': 'Malaysian',
      'th': '',
    },
    'hy4po0lp': {
      'en': 'NRIC / Passport',
      'th': '',
    },
    'jpbl1423': {
      'en': 'Enter ID',
      'th': '',
    },
    'v0kg7di1': {
      'en': 'Mobile Number',
      'th': '',
    },
    'sucd13sg': {
      'en': 'Mobile Number',
      'th': '',
    },
    '15t5d6jm': {
      'en': 'Email Address',
      'th': '',
    },
    'gehnn27p': {
      'en': 'Email ',
      'th': '',
    },
    '7metxs1e': {
      'en': 'Date of Birth',
      'th': '',
    },
    'oz8mh7jw': {
      'en': 'Date of Birth',
      'th': '',
    },
    '3b9ot9cb': {
      'en': 'Apply for All Passengers',
      'th': '',
    },
    'i4108uiy': {
      'en': 'Mailing Address',
      'th': '',
    },
    '7dyatn7p': {
      'en': 'Address',
      'th': '',
    },
    'nq6il71w': {
      'en': 'Address',
      'th': '',
    },
    'cpuoy04x': {
      'en': 'Country',
      'th': '',
    },
    'rostbdwa': {
      'en': 'Option 1',
      'th': '',
    },
    'l97y1y6a': {
      'en': 'Malaysia',
      'th': '',
    },
    'd5nx8ndv': {
      'en': 'Postal Code',
      'th': '',
    },
    'u77cvjho': {
      'en': 'Postal Code',
      'th': '',
    },
    'lz901zwm': {
      'en': 'State',
      'th': '',
    },
    'rbbsbhsd': {
      'en': 'Option 1',
      'th': '',
    },
    'qkcyc18g': {
      'en': 'Perak',
      'th': '',
    },
    'sabjlx2n': {
      'en': 'Add Nominees (Optional)',
      'th': '',
    },
    '2mz59wbz': {
      'en': 'First Name',
      'th': '',
    },
    's31h8acu': {
      'en': 'Enter First Name',
      'th': '',
    },
    'c229ujbc': {
      'en': 'Gender',
      'th': '',
    },
    'n1d82iy4': {
      'en': 'Option 1',
      'th': '',
    },
    'wfu49zg4': {
      'en': '-- Select --',
      'th': '',
    },
    '9rygg6ra': {
      'en': 'Email Address',
      'th': '',
    },
    'fgq3pivh': {
      'en': 'Enter Email Address',
      'th': '',
    },
    'u1ax08l9': {
      'en': 'Country',
      'th': '',
    },
    'aunamgal': {
      'en': 'Option 1',
      'th': '',
    },
    '49pt3xzn': {
      'en': '-- Select --',
      'th': '',
    },
    'lo9t9jwc': {
      'en': 'Email Address',
      'th': '',
    },
    'qm7mckcw': {
      'en': 'Enter Email Address',
      'th': '',
    },
    'hu1x2nep': {
      'en': 'Last Name',
      'th': '',
    },
    '5q4iobpn': {
      'en': 'Enter Last Name',
      'th': '',
    },
    '6q78sgmg': {
      'en': 'Mobile Number',
      'th': '',
    },
    'gx2e8uy3': {
      'en': 'Enter Mobile Number',
      'th': '',
    },
    'gak23f3v': {
      'en': 'Address Line',
      'th': '',
    },
    'ziq615j4': {
      'en': 'Enter Address',
      'th': '',
    },
    'utgn7eyy': {
      'en': 'State',
      'th': '',
    },
    'rqfd3jbr': {
      'en': 'Option 1',
      'th': '',
    },
    'voj634w6': {
      'en': '-- Select --',
      'th': '',
    },
    'me32x9n8': {
      'en': 'Relationship',
      'th': '',
    },
    '6f451kfl': {
      'en': 'Enter Relationship with Passenger',
      'th': '',
    },
    'il1crxq7': {
      'en': '+ Add Another Nominee',
      'th': '',
    },
    'ttrjbshv': {
      'en': 'Back',
      'th': '',
    },
    'p1p9i9v6': {
      'en': 'Proceed',
      'th': '',
    },
  },
  // IssueConfirmation
  {
    '7riqcwi4': {
      'en': 'Traveler Details (1)',
      'th': '',
    },
    '1x1btlkt': {
      'en': 'Consent by Customer',
      'th': '',
    },
    'fbu6vcix': {
      'en':
          'I/We agree that my/our personal information collected or held by the Company (whether contained in this application or otherwise obtained) may be disclosed by the Company to any selected third party for the purposes of cross marketing, direct marketing and data matching by the said third-party.v',
      'th': '',
    },
    '62cjofiv': {
      'en': 'Yes',
      'th': '',
    },
    'n4cwrxqv': {
      'en': 'No',
      'th': '',
    },
    'yiuy5ci0': {
      'en': 'Current Balance: ',
      'th': '',
    },
    'fwsztj2o': {
      'en': 'MYR 766.00',
      'th': '',
    },
    'a7i4eisa': {
      'en': 'Amount to Be Paid: ',
      'th': '',
    },
    'n54nncwb': {
      'en': 'MYR 766.00',
      'th': '',
    },
    'wpskz786': {
      'en': 'Back',
      'th': '',
    },
    'ilb7noys': {
      'en': 'Save Quotation',
      'th': '',
    },
    '8d2g6zgo': {
      'en': 'Confirm',
      'th': '',
    },
  },
  // IssueSuccessPolicy
  {
    'ivyqt0ln': {
      'en': 'Insurance Voucher',
      'th': '',
    },
    'epbiyyz1': {
      'en': 'Trip Type',
      'th': '',
    },
    'weld2wqp': {
      'en': 'Round Trip',
      'th': '',
    },
    'pxemx2ma': {
      'en': 'Journey',
      'th': '',
    },
    'btykkmdk': {
      'en': 'KUL-CGK-KUL',
      'th': '',
    },
    'k934y9z8': {
      'en': 'Departure Date',
      'th': '',
    },
    '87l490ox': {
      'en': '21-01-2023',
      'th': '',
    },
    'kmtcrm2n': {
      'en': 'Return Date',
      'th': '',
    },
    'kuw4b5ir': {
      'en': '24-01-2023',
      'th': '',
    },
    'h71ev4gd': {
      'en': 'Policy Details',
      'th': '',
    },
    '5a4zc64x': {
      'en': 'Download',
      'th': '',
    },
    '67tr29js': {
      'en': 'Plan:',
      'th': '',
    },
    'zufl4ds8': {
      'en': 'Travel Comprehensive for Single Trip Cover (Platinum Plan)',
      'th': '',
    },
    'lmcwt8h9': {
      'en': 'Plan:',
      'th': '',
    },
    'm0wmh0pa': {
      'en': 'TC - 23 - 0000013',
      'th': '',
    },
    'okbkvhrq': {
      'en': 'Traveler Details',
      'th': '',
    },
    'cd0bw9d5': {
      'en': '1.',
      'th': '',
    },
    'l4nu39po': {
      'en': 'Yusuf Khan',
      'th': '',
    },
    '32jcuyth': {
      'en': 'Adult',
      'th': '',
    },
    '4fq1uqm4': {
      'en': 'Back To Dashboard',
      'th': '',
    },
    'fworubdy': {
      'en': 'Save Quotation',
      'th': '',
    },
    'rugtjahl': {
      'en': 'Issue Another Policy',
      'th': '',
    },
  },
  // creditnotestmntpopup
  {
    'h8zylets': {
      'en': 'Credit note statement downloaded successfully',
      'th': '',
    },
  },
  // IssuePolicyPlanCard
  {
    '6vb0s8dc': {
      'en': '+ More Details',
      'th': '',
    },
  },
  // Miscellaneous
  {
    'rq80w3zu': {
      'en': '',
      'th': '',
    },
    'bj2lc8bi': {
      'en': '',
      'th': '',
    },
    't4mc1zjf': {
      'en': '',
      'th': '',
    },
    'odg5mmjw': {
      'en': '',
      'th': '',
    },
    'casacsia': {
      'en': '',
      'th': '',
    },
    '3sa8ec18': {
      'en': '',
      'th': '',
    },
    'mo2jvm6l': {
      'en': '',
      'th': '',
    },
    '9o5uphcf': {
      'en': '',
      'th': '',
    },
    'c7rrf7ez': {
      'en': '',
      'th': '',
    },
    'y6ta1pd2': {
      'en': '',
      'th': '',
    },
    '7ljd4idv': {
      'en': '',
      'th': '',
    },
    '2tl4cglm': {
      'en': '',
      'th': '',
    },
    'z57tppuu': {
      'en': '',
      'th': '',
    },
    'ymmqwu0z': {
      'en': '',
      'th': '',
    },
    'o0k0dku8': {
      'en': '',
      'th': '',
    },
    'otssufes': {
      'en': '',
      'th': '',
    },
    'ms74xz9t': {
      'en': '',
      'th': '',
    },
    '65x1gz8d': {
      'en': '',
      'th': '',
    },
    'aobjd63h': {
      'en': '',
      'th': '',
    },
    'et15sv5z': {
      'en': '',
      'th': '',
    },
  },
].reduce((a, b) => a..addAll(b));
