// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

class AppVariables {
  BuildContext? context;
  AppVariables({Key? key, this.context});
  static const String empty = '';
  static String toLocalization({required String locale, required int index}) {
    if (locale == 'en') {
      return AppVariables.months_en[index];
    } else {
      return AppVariables.months[index];
    }
  }

  static List months = [
    'Января',
    'Февраля',
    'Марта',
    'Апреля',
    'Мая',
    'Июня',
    'Июля',
    'Августа',
    'Сентября',
    'Октября',
    'Ноября',
    'Декабря'
  ];

  static List months_kk = [
    'Қаңтар',
    'Ақпан',
    'Наурыз',
    'Сәуір',
    'Мамыр',
    'Маусым',
    'Шілде',
    'Тамыз',
    'Қыркүйек',
    'Қазан',
    'Қараша',
    'Желтоқсан'
  ];
  static List months_en = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  static const List months_short = [
    'янв',
    'фев',
    'мар',
    'апр',
    'мая',
    'июн',
    'июл',
    'авг',
    'сен',
    'окт',
    'ноя',
    'дек'
  ];
  static List months_short_en = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec'
  ];
  static const List<String> categoriesRU = [
    CoreConstant.all,
    'Футбол',
    'Теннис',
    'Хоккей',
    'Баскетбол',
    'Волейбол',
    'Бег',
    'Шахматы',
    'Триатлон',
    'Велоспорт',
    'Йога',
    'Танцы',
    'Фитнес',
    'Плавание',
    'Единоборства',
    'Гимнастика',
    'Акробатика',
    'Легкая атлетика',
    'Прочие'
  ];
  static const List<String> categoriesEN = [
    'All',
    'Football',
    'Tennis',
    'Hockey',
    'Basketball',
    'Volleyball',
    'Chess',
    'Triathlon',
    'Cycling',
    'Yoga',
    'Dancing',
    'Fitness',
    'Swimming',
    'Martial arts',
    'Gymnastics',
    'Acrobatics',
    'Athletics',
    'Other'
  ];
  static const List<String> categoriesKZ = [
    'Барлығы',
    'Футбол',
    'Теннис',
    'Хоккей',
    'Баскетбол',
    'Волейбол',
    'Жүгіру',
    'Шахмат',
    'Триатлон',
    'Велоспорт',
    'Йога',
    'Би',
    'Фитнес',
    'Жүзу',
    'Жекпе-жек өнері',
    'Гимнастика',
    'Акробатика',
    'Жеңіл атлетика',
    'Басқасы'
  ];

  static const List<String> generalCategory = ['Мероприятия', 'Новости'];

  static const List<String> languages = [
    'Русский',
    'Казахский',
  ];

  static const List<String> formats = [
    FormatConstant.offline,
    FormatConstant.online
  ];

  static const List<String> tabsCategories = [
    FormatConstant.offline,
    FormatConstant.online
  ];

  static const List<String> ticketTypes = [
    TicketTypeConstant.standart,
    TicketTypeConstant.vip,
    TicketTypeConstant.adult,
    TicketTypeConstant.student,
    TicketTypeConstant.child
  ];

  static const List<String> eventType = [
    EventTypeConstant.open,
    EventTypeConstant.closed
  ];
  static const List<String> eventPaymentType = [
    EventPaymentTypeConstant.online,
    EventPaymentTypeConstant.withdrawal
  ];
}

class CoreConstant {
  static const zeroDouble = 0.0;
  static const empty = '';
  static const all = 'Все';
  static const negative = -1;
  static const zeroInt = 0;
}

class FormatConstant {
  static const offline = 'Оффлайн';
  static const online = 'Онлайн';
}

class Izi {
  static const places = 'places';
  static const events = 'events';
  static const users = 'users';
  static const admins = 'admins';
  static const cities = 'cities';
  static const communities = 'communities';
  static const news = 'news';
  static const participants = 'participants';
  static const reserves = 'reserves';
  static const subscribers = 'subscribers';
  static const comments = 'comments';
  static const support = 'support';
  static const sections = 'sections';
  static const trainers = 'trainers';
  static const banners = 'banners';
  static const notifications = 'notifications';
  static const agreements = 'agreements';
  static const tournaments = 'tournaments';
  static const championship = 'championship';
  static const teams = 'teams';
  static const schedule = 'schedule';
  static const table = 'table';
  static const tableDescription = 'tableDescription';
  static const scorers = 'scorers';
  static const squadList = 'squadList';
  static const seasons = 'seasons';
  static const version = 'version';
  static const penalty = 'penalty';
  static const subscribedTopics = 'subscribedTopics';
}

class NavigationType {
  static const tournament = 'tournament';
  static const community = 'community';
  static const section = 'section';
  static const place = 'place';
  static const trainer = 'trainer';
}

class EventTypeConstant {
  static const open = 'Открытое мероприятие';
  static const closed = 'Закрытое мероприятие';
}

class EventPaymentTypeConstant {
  static const online = 'Онлайн';
  static const withdrawal = 'Наличными';
}

class TicketTypeConstant {
  static const standart = 'Стандартный';
  static const vip = 'Вип';
  static const adult = 'Взрослый';
  static const student = 'Студенческий';
  static const child = 'Детский';
}

List<String> sportCategories(String locale) {
  switch (locale) {
    case 'en':
      return AppVariables.categoriesEN;
    case 'kz_KZ':
      return AppVariables.categoriesKZ;
    case 'ru_RU':
      return AppVariables.categoriesRU;
    default:
      return [];
  }
}

List<String> adminEmails = [
  'beka.izidos@gmail.com',
  'izidosapp@gmail.com',
  'bekzat@gmail.com',
  'joenaine10@gmail.com',
  'bmchannel19@gmail.com'
];
