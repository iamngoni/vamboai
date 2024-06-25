//
//  vamboai
//  language.dart
//
//  Created by Ngonidzashe Mangudya on 25/06/2024.
//  Copyright (c) 2024 Codecraft Solutions. All rights reserved.
//

enum Language {
  afrikaans('Afrikaans', 'afr'),
  amharic('Amharic', 'amh'),
  arabicEgyptian('Arabic (Egyptian)', 'arz'),
  arabicTunisian('Arabic (Tunisian)', 'aeb'),
  english('English', 'eng'),
  french('French', 'fra'),
  shona('Shona', 'sna'),
  swahiliCoastal('Swahili (Coastal)', 'swh'),
  xhosa('Xhosa', 'xho'),
  zulu('Zulu', 'zul'),
  arabicModernStandard('Arabic (Modern Standard)', 'arb'),
  akan('Akan', 'aka'),
  arabicMoroccan('Arabic (Moroccan)', 'ary'),
  bambara('Bambara', 'bam'),
  bemba('Bemba', 'bem'),
  centralAtlasTamazight('Central Atlas Tamazight', 'tzm'),
  chineseSimplified('Chinese (Simplified)', 'zho'),
  chokwe('Chokwe', 'cjk'),
  dinkaSouthwestern('Dinka (Southwestern)', 'dik'),
  dutch('Dutch', 'nld'),
  dyula('Dyula', 'dyu'),
  estonian('Estonian', 'est'),
  ewe('Ewe', 'ewe'),
  fon('Fon', 'fon'),
  fulani('Fulani', 'fuv'),
  ganda('Ganda', 'lug'),
  german('German', 'deu'),
  hausa('Hausa', 'hau'),
  hebrew('Hebrew', 'heb'),
  igbo('Igbo', 'ibo'),
  italian('Italian', 'ita'),
  kabiye('Kabiyè', 'kbp'),
  kamba('Kamba', 'kam'),
  kikongo('Kikongo', 'kon'),
  kikuyu('Kikuyu', 'kik'),
  kimbundu('Kimbundu', 'kmb'),
  kinyarwanda('Kinyarwanda', 'kin'),
  lingala('Lingala', 'lin'),
  lubaKasai('Luba-Kasai', 'lua'),
  luo('Luo', 'luo'),
  mossi('Mossi', 'mos'),
  northernSotho('Northern Sotho', 'nso'),
  norwegianBokmal('Norwegian (Bokmål)', 'nob'),
  nuer('Nuer', 'nus'),
  nyanja('Nyanja', 'nya'),
  oromoWesternCentral('Oromo (Western Central)', 'gaz'),
  portuguese('Portuguese', 'por'),
  romanian('Romanian', 'ron'),
  rundi('Rundi', 'run'),
  russian('Russian', 'rus'),
  sango('Sango', 'sag'),
  southernSotho('Southern Sotho', 'sot'),
  spanish('Spanish', 'spa'),
  swati('Swati', 'ssw'),
  tigrinya('Tigrinya', 'tir'),
  tsonga('Tsonga', 'tso'),
  tswana('Tswana', 'tsn'),
  tumbuka('Tumbuka', 'tum'),
  turkish('Turkish', 'tur'),
  twi('Twi', 'twi'),
  ukrainian('Ukrainian', 'ukr'),
  umbundu('Umbundu', 'umb'),
  wolof('Wolof', 'wol'),
  yoruba('Yoruba', 'yor');

  const Language(this.title, this.code);
  final String title;
  final String code;
}
