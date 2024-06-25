//
//  vamboai
//  language.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

/// An enumeration of languages with their titles and ISO codes.
enum Language {
  /// Afrikaans language with ISO code 'afr'.
  afrikaans('Afrikaans', 'afr'),

  /// Amharic language with ISO code 'amh'.
  amharic('Amharic', 'amh'),

  /// Egyptian Arabic language with ISO code 'arz'.
  arabicEgyptian('Arabic (Egyptian)', 'arz'),

  /// Tunisian Arabic language with ISO code 'aeb'.
  arabicTunisian('Arabic (Tunisian)', 'aeb'),

  /// English language with ISO code 'eng'.
  english('English', 'eng'),

  /// French language with ISO code 'fra'.
  french('French', 'fra'),

  /// Shona language with ISO code 'sna'.
  shona('Shona', 'sna'),

  /// Coastal Swahili language with ISO code 'swh'.
  swahiliCoastal('Swahili (Coastal)', 'swh'),

  /// Xhosa language with ISO code 'xho'.
  xhosa('Xhosa', 'xho'),

  /// Zulu language with ISO code 'zul'.
  zulu('Zulu', 'zul'),

  /// Modern Standard Arabic language with ISO code 'arb'.
  arabicModernStandard('Arabic (Modern Standard)', 'arb'),

  /// Akan language with ISO code 'aka'.
  akan('Akan', 'aka'),

  /// Moroccan Arabic language with ISO code 'ary'.
  arabicMoroccan('Arabic (Moroccan)', 'ary'),

  /// Bambara language with ISO code 'bam'.
  bambara('Bambara', 'bam'),

  /// Bemba language with ISO code 'bem'.
  bemba('Bemba', 'bem'),

  /// Central Atlas Tamazight language with ISO code 'tzm'.
  centralAtlasTamazight('Central Atlas Tamazight', 'tzm'),

  /// Simplified Chinese language with ISO code 'zho'.
  chineseSimplified('Chinese (Simplified)', 'zho'),

  /// Chokwe language with ISO code 'cjk'.
  chokwe('Chokwe', 'cjk'),

  /// Southwestern Dinka language with ISO code 'dik'.
  dinkaSouthwestern('Dinka (Southwestern)', 'dik'),

  /// Dutch language with ISO code 'nld'.
  dutch('Dutch', 'nld'),

  /// Dyula language with ISO code 'dyu'.
  dyula('Dyula', 'dyu'),

  /// Estonian language with ISO code 'est'.
  estonian('Estonian', 'est'),

  /// Ewe language with ISO code 'ewe'.
  ewe('Ewe', 'ewe'),

  /// Fon language with ISO code 'fon'.
  fon('Fon', 'fon'),

  /// Fulani language with ISO code 'fuv'.
  fulani('Fulani', 'fuv'),

  /// Ganda language with ISO code 'lug'.
  ganda('Ganda', 'lug'),

  /// German language with ISO code 'deu'.
  german('German', 'deu'),

  /// Hausa language with ISO code 'hau'.
  hausa('Hausa', 'hau'),

  /// Hebrew language with ISO code 'heb'.
  hebrew('Hebrew', 'heb'),

  /// Igbo language with ISO code 'ibo'.
  igbo('Igbo', 'ibo'),

  /// Italian language with ISO code 'ita'.
  italian('Italian', 'ita'),

  /// Kabiyè language with ISO code 'kbp'.
  kabiye('Kabiyè', 'kbp'),

  /// Kamba language with ISO code 'kam'.
  kamba('Kamba', 'kam'),

  /// Kikongo language with ISO code 'kon'.
  kikongo('Kikongo', 'kon'),

  /// Kikuyu language with ISO code 'kik'.
  kikuyu('Kikuyu', 'kik'),

  /// Kimbundu language with ISO code 'kmb'.
  kimbundu('Kimbundu', 'kmb'),

  /// Kinyarwanda language with ISO code 'kin'.
  kinyarwanda('Kinyarwanda', 'kin'),

  /// Lingala language with ISO code 'lin'.
  lingala('Lingala', 'lin'),

  /// Luba-Kasai language with ISO code 'lua'.
  lubaKasai('Luba-Kasai', 'lua'),

  /// Luo language with ISO code 'luo'.
  luo('Luo', 'luo'),

  /// Mossi language with ISO code 'mos'.
  mossi('Mossi', 'mos'),

  /// Northern Sotho language with ISO code 'nso'.
  northernSotho('Northern Sotho', 'nso'),

  /// Norwegian Bokmål language with ISO code 'nob'.
  norwegianBokmal('Norwegian (Bokmål)', 'nob'),

  /// Nuer language with ISO code 'nus'.
  nuer('Nuer', 'nus'),

  /// Nyanja language with ISO code 'nya'.
  nyanja('Nyanja', 'nya'),

  /// Western Central Oromo language with ISO code 'gaz'.
  oromoWesternCentral('Oromo (Western Central)', 'gaz'),

  /// Portuguese language with ISO code 'por'.
  portuguese('Portuguese', 'por'),

  /// Romanian language with ISO code 'ron'.
  romanian('Romanian', 'ron'),

  /// Rundi language with ISO code 'run'.
  rundi('Rundi', 'run'),

  /// Russian language with ISO code 'rus'.
  russian('Russian', 'rus'),

  /// Sango language with ISO code 'sag'.
  sango('Sango', 'sag'),

  /// Southern Sotho language with ISO code 'sot'.
  southernSotho('Southern Sotho', 'sot'),

  /// Spanish language with ISO code 'spa'.
  spanish('Spanish', 'spa'),

  /// Swati language with ISO code 'ssw'.
  swati('Swati', 'ssw'),

  /// Tigrinya language with ISO code 'tir'.
  tigrinya('Tigrinya', 'tir'),

  /// Tsonga language with ISO code 'tso'.
  tsonga('Tsonga', 'tso'),

  /// Tswana language with ISO code 'tsn'.
  tswana('Tswana', 'tsn'),

  /// Tumbuka language with ISO code 'tum'.
  tumbuka('Tumbuka', 'tum'),

  /// Turkish language with ISO code 'tur'.
  turkish('Turkish', 'tur'),

  /// Twi language with ISO code 'twi'.
  twi('Twi', 'twi'),

  /// Ukrainian language with ISO code 'ukr'.
  ukrainian('Ukrainian', 'ukr'),

  /// Umbundu language with ISO code 'umb'.
  umbundu('Umbundu', 'umb'),

  /// Wolof language with ISO code 'wol'.
  wolof('Wolof', 'wol'),

  /// Yoruba language with ISO code 'yor'.
  yoruba('Yoruba', 'yor');

  /// Creates a [Language] with the specified [title] and [code].
  const Language(this.title, this.code);

  /// The title of the language.
  final String title;

  /// The ISO code of the language.
  final String code;
}
