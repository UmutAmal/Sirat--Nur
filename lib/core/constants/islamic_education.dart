// Educational content about Islam
// Topics: Aqeedah (Beliefs), Fiqh (Jurisprudence), Seerah (Prophet's Biography), History

class IslamicEducation {
  static List<EducationCategory> get categories => [
    EducationCategory(
      id: 'iman',
      title: 'İman Esasları',
      titleEn: 'Articles of Faith',
      icon: '✋',
      description: 'İslam inancının temel maddeleri',
      descriptionEn: 'The fundamental beliefs of Islam',
      topics: _imanTopics,
    ),
    EducationCategory(
      id: 'islam',
      title: 'İslamın Şartları',
      titleEn: 'Pillars of Islam',
      icon: '🕌',
      description: 'İslamın beş şartı',
      descriptionEn: 'The five pillars of Islam',
      topics: _islamPillars,
    ),
    EducationCategory(
      id: 'seerah',
      title: 'Peygamber Efendimiz',
      titleEn: 'Prophet Muhammad',
      icon: 'ﷺ',
      description: 'Hz. Muhammed\'in hayatı',
      descriptionEn: 'Life of Prophet Muhammad',
      topics: _seerahTopics,
    ),
    EducationCategory(
      id: 'fiqh',
      title: 'Fıkıh',
      titleEn: 'Islamic Jurisprudence',
      icon: '📜',
      description: 'İslam hukuku ve ibadetler',
      descriptionEn: 'Islamic law and worship',
      topics: _fiqhTopics,
    ),
    EducationCategory(
      id: 'history',
      title: 'İslam Tarihi',
      titleEn: 'Islamic History',
      icon: '🏛️',
      description: 'İslam tarihi ve medeniyeti',
      descriptionEn: 'Islamic history and civilization',
      topics: _historyTopics,
    ),
    EducationCategory(
      id: 'ahlak',
      title: 'İslam Ahlakı',
      titleEn: 'Islamic Ethics',
      icon: '🌟',
      description: 'İslami değerler ve erdemler',
      descriptionEn: 'Islamic values and virtues',
      topics: _ahlakTopics,
    ),
    EducationCategory(
      id: 'mesajlar',
      title: 'İslami Mesajlar',
      titleEn: 'Islamic Messages',
      icon: '💬',
      description: 'Önemli hadisler ve dualar',
      descriptionEn: 'Important hadiths and prayers',
      topics: _mesajTopics,
    ),
  ];
}

// Iman (Beliefs) - 6 articles of faith
final List<EducationTopic> _imanTopics = [
  EducationTopic(
    id: 'iman_1',
    title: 'Allah\'a İman',
    titleEn: 'Belief in Allah',
    content: 'İslam inancının temeli, tek ve benzersiz olan Allah\'a inanmaktır. Müminler şunu ikrar eder: Allah birdir, O\'ndan başka ilah yoktur. Allah ezeli ve ebedidir, doğmamış ve doğurmamıştır. Allah\'ın ne benzeri ne de ortağı vardır. Allah her şeyi işitir, görür ve bilir. Allah her şeye kadirdir.',
    contentEn: 'The foundation of Islamic belief is believing in the one and unique Allah. Believers declare: Allah is one, there is no god but Him. Allah is eternal and everlasting, He begets not nor is He begotten. Allah has no partner or equal.',
  ),
  EducationTopic(
    id: 'iman_2',
    title: 'Meleklere İman',
    titleEn: 'Belief in Angels',
    content: 'Müminler, görünmeyen varlıklar olan meleklere inanır. Melekler Allah\'ın emirlerini yerine getiren varlıklardır. Önemli Melekler: Cebrail (vahiy), Mikail (rızık), İsrafil (sûr), Azrael (can alma).',
    contentEn: 'Believers believe in angels, the unseen beings. Angels are beings who carry out Allah\'s commands. Important Angels: Jibril (revelation), Mikail (sustenance), Israfil (trumpet), Azrael (death).',
  ),
  EducationTopic(
    id: 'iman_3',
    title: 'Kitaplara İman',
    titleEn: 'Belief in Divine Books',
    content: 'Müminler, Allah\'ın peygamberlerine gönderdiği tüm ilahi kitaplara inanır: Tevrat, Zebur, İncil ve son olarak Kuran-ı Kerim. Kuran, önceki kitapları neshetti ve son ilahi kitaptır.',
    contentEn: 'Believers believe in all divine books sent to prophets: Torah, Psalms, Gospel, and finally the Quran. The Quran abrogated previous books and is the final divine revelation.',
  ),
  EducationTopic(
    id: 'iman_4',
    title: 'Peygamberlere İman',
    titleEn: 'Belief in Prophets',
    content: 'Müminler, tüm peygamberlere inanır. İslam\'a göre 25 peygamberin ismi Kuran\'da geçer. En önemlileri: Adem, Nuh, İbrahim, Musa, İsa ve son peygamber Hz. Muhammed (s.a.v).',
    contentEn: 'Believers believe in all prophets. Islam recognizes 25 prophets mentioned in the Quran. The most important: Adam, Noah, Abraham, Moses, Jesus, and the final prophet Muhammad (peace be upon him).',
  ),
  EducationTopic(
    id: 'iman_5',
    title: 'Ahirete İman',
    titleEn: 'Belief in the Afterlife',
    content: 'İslam inancının temel taşlarından biri ahirete inanmaktır. Kıyamet günü tüm insanlar diriltilecek ve hesaba çekilecektir. İyi müminler cennete, kötüler cehenneme gidecektir.',
    contentEn: 'One of the fundamental beliefs in Islam is belief in the afterlife. On the Day of Judgment, all humans will be resurrected and held accountable. The righteous will go to Paradise, the wicked to Hell.',
  ),
  EducationTopic(
    id: 'iman_6',
    title: 'Kadere İman',
    titleEn: 'Belief in Qadar (Destiny)',
    content: 'Kadere inanmak, İslam inancının altı esasının sonuncusudur. Allah\'ın her şeyi ezelde bilmesi ve takdir etmesi. Kul, kendi fiillerinden sorumludur.',
    contentEn: 'Belief in Qadar (destiny) is the sixth article of Islamic faith. Allah\'s eternal knowledge and decree of all things. People are responsible for their own actions.',
  ),
];

// Five Pillars of Islam
final List<EducationTopic> _islamPillars = [
  EducationTopic(
    id: 'shahada',
    title: 'Şehadet',
    titleEn: 'Testimony (Shahada)',
    content: 'İslamın birinci şartı: "Eşhedü en la ilahe illallah ve eşhedü enne Muhammeden resulullah" (Şahitlik ederim ki Allah\'tan başka ilah yoktur ve şahitlik ederim ki Muhammed Allah\'ın resulüdür).',
    contentEn: 'The first pillar of Islam: "I bear witness that there is no god but Allah and I bear witness that Muhammad is the Messenger of Allah".',
  ),
  EducationTopic(
    id: 'salat',
    title: 'Namaz',
    titleEn: 'Prayer (Salat)',
    content: 'Namaz, Müslümanların günde beş vakit kıldığı farz ibadettir: Sabah (2 rekât), Öğle (4 rekât), İkindi (4 rekât), Akşam (3 rekât), Yatsı (4 rekât).',
    contentEn: 'Prayer is the obligatory worship performed five times daily: Fajr (2 rakat), Dhuhr (4 rakat), Asr (4 rakat), Maghrib (3 rakat), Isha (4 rakat).',
  ),
  EducationTopic(
    id: 'zakat',
    title: 'Zekat',
    titleEn: 'Zakat (Almsgiving)',
    content: 'Zekat, Müslümanların mallarının bir kısmını ihtiyaç sahiplerine vermesidir. Nisab: Altın 85 gram, Gümüş 595 gram. Oran: %2.5 (40\'ta bir).',
    contentEn: 'Zakat is giving a portion of one\'s wealth to those in need. Nisab: Gold 85 grams, Silver 595 grams. Rate: 2.5% (1/40).',
  ),
  EducationTopic(
    id: 'sawm',
    title: 'Oruç',
    titleEn: 'Fasting (Ramadan)',
    content: 'Ramazan orucu, her yıl Ramazan ayında tutulur. Oruç; imsak vaktinden iftar vaktine kadar yemek, içmek ve cinsel ilişkiden uzak durmaktır.',
    contentEn: 'Fasting in Ramadan is performed every year. Fasting means abstaining from food, drink, and sexual relations from dawn (imsak) to sunset (iftar).',
  ),
  EducationTopic(
    id: 'hajj',
    title: 'Hac',
    titleEn: 'Hajj (Pilgrimage)',
    content: 'Hac, Müslümanların Kabe\'yi ziyaret etmesidir. Şartları: Müslüman olmak, ergin olmak, akıllı olmak, hür olmak ve gücü yetmek. Zilhicce ayının 8-12. günleri yapılır.',
    contentEn: 'Hajj is visiting the Kaaba. Conditions: Being Muslim, adult, sane, free, and able. Performed on 8th-12th of Dhul Hijjah.',
  ),
];

// Seerah (Prophet's Biography)
final List<EducationTopic> _seerahTopics = [
  EducationTopic(
    id: 'seerah_1',
    title: 'Hz. Muhammed\'in Doğumu',
    titleEn: 'Birth of Prophet Muhammad',
    content: 'Hz. Muhammed (s.a.v), Miladi 570 yılında Mekke\'de doğdu. Babası Abdullah, annesi Amine\'dir. "Fil yılı" olarak da bilinir.',
    contentEn: 'Prophet Muhammad (peace be upon him) was born in 570 CE in Mecca. His father was Abdullah, his mother was Amina. Also known as the "Year of the Elephant".',
  ),
  EducationTopic(
    id: 'seerah_2',
    title: 'İlk Vahiy',
    titleEn: 'First Revelation',
    content: '610 yılında Ramazan ayında Hira mağarasında ilk vahiy geldi. Cebrail meleği "Oku!" (Iqra!) emriyle geldi. 23 yıl boyunca toplam 114 sure indirildi.',
    contentEn: 'In 610 CE during Ramadan, the first revelation came in the Cave of Hira. The Angel Jibril came with the command "Read!" (Iqra!). Over 23 years, 114 surahs were revealed.',
  ),
  EducationTopic(
    id: 'seerah_3',
    title: 'Veda Haccı',
    titleEn: 'Farewell Pilgrimage',
    content: '632 yılında yapılan Veda Haccı, Hz. Muhammed\'in son haccıdır. Peygamber şöyle buyurdu: "Ey insanlar! Rabbiniz birdir. Üstünlük takvadadır (Allah korkusundadır).".',
    contentEn: 'The Farewell Pilgrimage in 632 CE was the Prophet\'s final Hajj. The Prophet said: "O people! Your Lord is one. Superiority is by Taqwa (fear of Allah).".',
  ),
];

// Fiqh Topics
final List<EducationTopic> _fiqhTopics = [
  EducationTopic(
    id: 'fiqh_1',
    title: 'Abdest',
    titleEn: 'Ablution (Wudu)',
    content: 'Abdest, namaz öncesi alınan temizliktir. Farz kısımlar: Yüzü yıkamak, dirseklere kadar kolları yıkamak, başı meshetmek, ayakları topuklara kadar yıkamak.',
    contentEn: 'Ablution (Wudu) is purification before prayer. Obligatory parts: Washing the face, washing arms to elbows, wetting the head, washing feet to ankles.',
  ),
  EducationTopic(
    id: 'fiqh_2',
    title: 'Cenaze Namazı',
    titleEn: 'Funeral Prayer (Janazah)',
    content: 'Cenaze namazı, vefat etmiş Müslüman için kılınan toplu ibadettir. 4 tekbirden oluşur. Cenazenin Müslüman, yıkanmış ve kefenlenmiş olması şarttır.',
    contentEn: 'Funeral prayer is a collective worship for a deceased Muslim. Consists of 4 takbirs. The deceased must be Muslim, washed, and shrouded.',
  ),
];

// Islamic History
final List<EducationTopic> _historyTopics = [
  EducationTopic(
    id: 'history_1',
    title: 'İslamın Doğuşu',
    titleEn: 'Rise of Islam',
    content: 'İslam, 7. yüzyılda Arabistan\'da ortaya çıkmıştır. 610\'da ilk vahiy, 622\'de Hicret (Medine\'ye göç), 630\'da Mekke\'nin fethi, 632\'de Peygamberin vefatı.',
    contentEn: 'Islam emerged in Arabia in the 7th century. 610: First revelation, 622: Hijra (migration to Medina), 630: Conquest of Mecca, 632: Death of the Prophet.',
  ),
  EducationTopic(
    id: 'history_2',
    title: 'Endülüs Medeniyeti',
    titleEn: 'Andalusian Civilization',
    content: 'Endülüs, 711-1492 yılları arasında Müslüman yönetiminde kaldı. Kurtuba, Gırnata, Sevilla önemli şehirlerdi. Bilim, tıp, felsefe alanlarında büyük gelişmeler yaşandı.',
    contentEn: 'Andalus was under Muslim rule from 711-1492. Cordoba, Granada, Seville were important cities. Great developments in science, medicine, and philosophy.',
  ),
  EducationTopic(
    id: 'history_3',
    title: 'Osmanlı İmparatorluğu',
    titleEn: 'Ottoman Empire',
    content: 'Osmanlı İmparatorluğu 1299-1922 arasında hüküm sürmüştür. 1453\'te İstanbul\'un fethi, Kanuni Sultan Süleyman dönemi (1520-1566) en parlak dönemdir.',
    contentEn: 'The Ottoman Empire ruled from 1299-1922. The conquest of Istanbul in 1453, and the reign of Suleiman the Magnificent (1520-1566) was the golden age.',
  ),
];

// Islamic Ethics
final List<EducationTopic> _ahlakTopics = [
  EducationTopic(
    id: 'ahlak_1',
    title: 'İslami Erdemenler',
    titleEn: 'Islamic Virtues',
    content: 'Temel erdemler: Takva (Allah korsu), İslam (barış), İhsan (iyilik), Sabır, Şükür. Mümin, insanların kendisine güvendiği kimsedir.',
    contentEn: 'Core virtues: Taqwa (consciousness of Allah), Islam (peace), Ihsan (excellence), Patience, Gratitude. A believer is one whom people trust.',
  ),
  EducationTopic(
    id: 'ahlak_2',
    title: 'Günahlardan Kaçınma',
    titleEn: 'Avoiding Sins',
    content: 'Büyük günahlar: Şirk (ortak koşmak), adam öldürmek, zina, faiz yemek, yetim hakkı yemek, ana-babaya isyan. Tövbe: Günahı terk etmek, pişman olmak.',
    contentEn: 'Major sins: Shirk (polytheism), murder, fornication, consuming interest, oppressing orphans, disobeying parents. Repentance: Abandon sin, feel remorse.',
  ),
  EducationTopic(
    id: 'ahlak_3',
    title: 'Toplumsal İlişkiler',
    titleEn: 'Social Relationships',
    content: 'Komşuluk hakları: İyilik etmek, rahatsız etmemek, ziyaretine gitmek. Selamı yaymak, insanlarla güzel geçinmek, affetmeyi bilmek.',
    contentEn: 'Neighbor rights: Doing good, not disturbing, visiting. Spreading peace, living well with people, knowing how to forgive.',
  ),
];

// Important Messages and Hadiths
final List<EducationTopic> _mesajTopics = [
  EducationTopic(
    id: 'mesaj_1',
    title: 'Önemli Hadisler',
    titleEn: 'Important Hadiths',
    content: '"İman yetmiş küsur şubedir." "İlim öğrenmek her Müslümana farzdır." "Namaz, dinin direğidir." "Cennet annelerin ayakları altındadır."',
    contentEn: '"Faith has over seventy branches." "Seeking knowledge is obligatory upon every Muslim." "Prayer is the pillar of religion." "Paradise lies under mothers\' feet."',
  ),
  EducationTopic(
    id: 'mesaj_2',
    title: 'Kuran Hakkında',
    titleEn: 'About the Quran',
    content: 'Kuran-ı Kerim, 23 yılda peyderpey inmiştir. 114 sure, 6666 ayet vardır. Hiçbir harfi değiştirilmemiştir. En uzun sure Bakara, en kısa sure Kevserdir.',
    contentEn: 'The Quran was revealed gradually over 23 years. 114 surahs, 6666 verses. Not a single letter has been changed. Longest: Al-Bakarah, shortest: Al-Kawthar.',
  ),
  EducationTopic(
    id: 'mesaj_3',
    title: 'Müslümanın Günlüğü',
    titleEn: 'Daily Routine of a Muslim',
    content: 'Sabah namazı, gün içinde zikir ve tesbih, öğle ve ikindi namazları, akşam şükür, yatsı namazı ve gece duası. Her an Bismillah demeyi unutmamak.',
    contentEn: 'Morning prayer, dhikr throughout the day, noon and afternoon prayers, evening gratitude, night prayer and supplication. Not forgetting Bismillah at all times.',
  ),
];

// Education Category Model
class EducationCategory {
  final String id;
  final String title;
  final String titleEn;
  final String icon;
  final String description;
  final String descriptionEn;
  final List<EducationTopic> topics;

  const EducationCategory({
    required this.id,
    required this.title,
    required this.titleEn,
    required this.icon,
    required this.description,
    required this.descriptionEn,
    required this.topics,
  });
}

// Education Topic Model
class EducationTopic {
  final String id;
  final String title;
  final String titleEn;
  final String content;
  final String contentEn;

  const EducationTopic({
    required this.id,
    required this.title,
    required this.titleEn,
    required this.content,
    required this.contentEn,
  });
}
