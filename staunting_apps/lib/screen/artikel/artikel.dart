import 'package:flutter/material.dart';

class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 1, color: Colors.black))),
          padding: const EdgeInsets.only(top: 64, bottom: 16),
          child: const Text(
            "TENTANG STUNTING",
            style: TextStyle(
              color: Color(0xFF332C55),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index])),
        ),
      ],
    ));
  }
}

class Entry {
  final String title;
  final List<Entry> children;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
      'I.	Apa itu stunting (Menurut buku stunting pada anak : kenali dan cegah sejak dini oleh Nurul Imani)',
      <Entry>[
        Entry(
            'Stunting adalah kondisi di mana anak mengalami keterlambatan pertumbuhan yang disebabkan oleh kurangnya asupan gizi yang memadai dalam jangka waktu yang lama, yang bisa dimulai sejak dalam kandungan hingga usia 2 tahun. Stunting biasanya diukur dengan melihat tinggi badan anak yang lebih rendah dari standar pertumbuhan yang ditetapkan oleh WHO. Menurut data dari Kementrian Kesehatan Indonesia, sekitar 37% anak di Indonesia mengalami stunting, menjadikan Indonesia salah satu negara dengan prevalensi stunting tertinggi di dunia. Singkatnya stunting dapat diartikan sebagai berikut:'),
        Entry(
            'a.	Stunting merupakan kondisi anak lebih pendek dari anak lain seumurannya'),
        Entry(
            'b.	Masalah gizi yang disebabkan asupan gizi yang kurang dalam waktu yang lama'),
        Entry(
            'c.	Masalah gizi ini dikarenakan makanan yang tidak sesuai dengan kebutuhan tubuh anak'),
        Entry(
            'd.	Stunting terjadi mulai dari bayi dalam kandungan dan terlihat saat anak dalam usia 2 tahun'),
      ]),
  Entry('II.	Bahaya Stunting ', <Entry>[
    Entry(
        'Menurut haloosehat.com yang mereview dari dr. Damar Uphaita stunting merupakan gangguan pertumbuhan anak yang jika tidak ditangani dengan baik akan mempengaruhi pertumbuhan hingga dewasa baik secara fisik maupun non fisik, berikut ini merupakan akibat gangguan stunting :'),
    Entry('a.	Kesulitan belajar.\n'
        'b. Kemampuan kognitif lemah.\n'
        'c. Mudah lelah dan tidak lincah.\n'
        'd. Dibanding bandingkan dengan anak lain.\n'
        'e. Resiko lebih tinggi untuk terserang infeksi, dikarenakan sistem imun lemah misalnya tuberkulosis, pneumonia, influenza, thypus, diare, cacingan, campak, cacar air.\n'
        'f. Memiliki resiko lebih tinggi untuk mengalami berbagai penyakit kronis di usia dewasa seperti, diabetes, penyakit jantung, kanker, dan lain lain.\n'
        'g. Bagi anak perempuan yang mengalami stunting, beresiko untuk mengalami masalah kesehatan dan perkembangan pada keturunanya saat dewasa nanti.\n'),
    Entry(
        'Dampak stunting juga perlu diwaspadai untuk ibu hamil, hal ini karena ibu hamil yang memiliki tubuh pendek dibawah rata rata akan mengalami perlambatan aliran darah ke janin, serta pertumbuhan rahim dan plasentanya. hal ini bisa saja berdampak pada kondisi bayi, dimana bayi yang lahir dari ibu yang pendek beresiko mengalami komplikasi medis yang serius, bahkan bisa saja mengalami pertumbuhan yang terhambat. sehingga dapat mengakibatkan perkembangan saraf dan kemampuan intelektual bayi tersebut bisa terhambat dan tinggi badan yang rendah.'),
    Entry(
        'Dampak stunting jika dapat meningkatkan resiko kematian janin saat melahirkan. hal ini karena ibu dengan tinggi badan yang dibawah normal cenderung memiliki ukuran panggul yang kecil yang nantinya akan mempersempit jalan lahir bayi yang mempersulit keluarnya bayi dari rahim ibu, dengan kata lain ukuran bayi terlalu besar sehingga tidak sepadan dengan panggul yang dimiliki ibu, hal ini pula yang mempersulit seorang ibu untuk melahirkan secara normal dan jika dipaksakan akan menyebabkan resiko kematian maternal dan menyebabkan masalah kesehatan bayi baik kesehatan pendek maupun panjang. '),
  ]),
  // Entry('II.	Bahaya Stunting ', <Entry>[
  //   Entry(
  //       'Menurut haloosehat.com yang mereview dari dr. Damar Uphaita stunting merupakan gangguan pertumbuhan anak yang jika tidak ditangani dengan baik akan mempengaruhi pertumbuhan hingga dewasa baik secara fisik maupun non fisik, berikut ini merupakan akibat gangguan stunting :'),
  //   Entry(
  //       'a.	Kesulitan belajar, kemampuan kognitif lemah, mudah lelah dan tidak lincah dan dibanding bandingkan dengan anak lain'),
  //   Entry(
  //       'b.	Resiko lebih tinggi untuk terserang infeksi, dikarenakan sistem imun lemah misalnya tuberkulosis, pneumonia, influenza, thypus, diare, cacingan, campak, cacar air. '),
  //   Entry(
  //       'c.	Memiliki resiko lebih tinggi untuk mengalami berbagai penyakit kronis di usia dewasa seperti, diabetes, penyakit jantung, kanker, dan lain lain'),
  //   Entry(
  //       'd.	Bagi anak perempuan yang mengalami stunting, beresiko untuk mengalami masalah kesehatan dan perkembangan pada keturunanya saat dewasa nanti. '),
  //   Entry(
  //       'Dampak stunting juga perlu diwaspadai untuk ibu hamil, hal ini karena ibu hamil yang memiliki tubuh pendek dibawah rata rata akan mengalami perlambatan aliran darah ke janin, serta pertumbuhan rahim dan plasentanya. hal ini bisa saja berdampak pada kondisi bayi, dimana bayi yang lahir dari ibu yang pendek beresiko mengalami komplikasi medis yang serius, bahkan bisa saja mengalami pertumbuhan yang terhambat. sehingga dapat mengakibatkan perkembangan saraf dan kemampuan intelektual bayi tersebut bisa terhambat dan tinggi badan yang rendah.'),
  //   Entry(
  //       'Dampak stunting jika dapat meningkatkan resiko kematian janin saat melahirkan. hal ini karena ibu dengan tinggi badan yang dibawah normal cenderung memiliki ukuran panggul yang kecil yang nantinya akan mempersempit jalan lahir bayi yang mempersulit keluarnya bayi dari rahim ibu, dengan kata lain ukuran bayi terlalu besar sehingga tidak sepadan dengan panggul yang dimiliki ibu, hal ini pula yang mempersulit seorang ibu untuk melahirkan secara normal dan jika dipaksakan akan menyebabkan resiko kematian maternal dan menyebabkan masalah kesehatan bayi baik kesehatan pendek maupun panjang. '),
  // ]),
  Entry('III.	Penyebab stunting ', <Entry>[
    Entry(
        'Stunting disebabkan oleh banyak faktor baik faktor langsung maupun tidak langsung.'),
    Entry(
        '1. Stunting disebabkan oleh banyak faktor baik faktor langsung maupun tidak langsung.',
        <Entry>[
          Entry('a.	Asupan Makanan', <Entry>[
            Entry(
              'Kurangnya asupan gizi pada saat 1000 hari pertama9dari dalam kandungan hingga usia 2 tahun). Salah satu penyebabnya yaitu kekurangan protein',
            ),
          ]),
          Entry('b.	Berat Badan Lahir', <Entry>[
            Entry(
              'Hasil penelitian membuktikan bahwa ibu hamil yang kurang gizi akan cenderung melahirkan bayi yang kurang gizi. Berat bayi yang dilahirkan bisa kurang dari 2500 gr atau BBLR. Bayi yang lahir BBLR mempunyai ukuran proporsional kecil seperti kepala, badan, tangan, kaki dan organ-organ lainnya dalam tuthbuh. Selain itu, bayi BBLR tidak mempunyai cukup cadangan zat gizi dalam tubuhnya sehingga mudah terserang penyakit, terutama penyakit infeksi, hipotermi dan akibatnya mudah meninggal dunia. Oleh karena itu , angka kematian bayi yang tinggi sangat erat hubungannya dengan Berat Badan Lahir Rendah (BBLR).',
            ),
          ]),
          Entry('c.	Penyakit', <Entry>[
            Entry(
              'Selain nutrisi yang buruk stunting juga disebabkan oleh lingkungan yang buruk , sehingga anakan akan terinfeksi. Penyakit atau infeksi yang berkali kali, kondisi lingkungan, baik polusi udara, air bersih juga mempengaruhi stunting.',
            ),
          ]),
        ]),
    Entry(
        '2.	Faktor tidak langsung  seperti faktor ekonomi, budaya, pendidikan, fasilitas dan faktor fasilitas kesehatan. ',
        <Entry>[
          Entry('a.	Ekonomi', <Entry>[
            Entry(
              'Masalah non kesehatan juga dapat menyebabkan stunting, misal seperti masalah ekonomi, sosial, politik, budaya, kemiskinan, kurangnya pemberdayaan perempuan serta degradasi lingkungan. Jika taraf ekonomi buruk maka dapat berdampak pada kurangnya asupan gizi.',
            ),
          ]),
          Entry('b.	Lingkungan', <Entry>[
            Entry(
              'Stunting juga bisa disebabkan oleh sanitasi lingkungan yang buruk. Selain dari nutrisi, sanitasi yang buruk berdampak pada kesehatan anak menyebabkan anak mudah terkena penyakit infeksi. Penyakit infeksi yang terus menerus menyebabkan dapat meningkatkan kebutuhan metabolik serta mengurangi nafsu makan sehingga berdampak pada terjadinya ketidak normalan dalam bentuk tubuh pendek meskipun faktor gen dan sel menunjukan potensi tubuh normal.',
            ),
          ]),
        ]),
    Entry(
        'Kesimpulan dari berbagai sumber yang disebutkan adalah bahwa stunting adalah masalah pertumbuhan anak yang kompleks dan dipengaruhi oleh berbagai faktor, baik langsung maupun tidak langsung. Faktor langsung meliputi kurangnya asupan gizi, berat badan lahir rendah, dan penyakit infeksi yang sering. Faktor tidak langsung mencakup aspek ekonomi, budaya, pendidikan, lingkungan, dan perilaku seperti pola asuh yang kurang baik. Selain itu, stunting juga dapat dimulai sejak dalam kandungan jika ibu hamil tidak mendapatkan asupan gizi yang cukup. Kebersihan dan hygiene juga memainkan peran penting dalam mencegah stunting. Stunting adalah masalah serius yang memerlukan upaya holistik untuk pencegahan dan penanggulangannya.')
  ]),
  Entry('IV.	Ciri ciri ', <Entry>[
    Entry(
      'Stunting ini memiliki beberapa ciri ciri diantaranya sebagai berikut :\n'
      'a. Tumbuh kembangnya lambat\n'
      'b. Wajah tampak lebih muda dari anak seusianya\n'
      'c. Berat badan tidak naik bahkan akan cenderung menurun\n'
      'd. Kemampuan fokus dan memori belajarnya tidak baik\n'
      'e. Anak cenderung lebih pendiam\n'
      'f. Fase pertumbuhan gigi pada anak melambat\n'
      'g. Dalam jangka panjang, bagi anak perempuan berpotensi telat menstruasi pertama\n'
      'h. Anak lebih mudah terserang/terinfeksi berbagai penyakit',
    ),
  ]),
  Entry('V.	Cara Mencegah dan Mengatasi', <Entry>[
    Entry(
      'a.	Perbaiki stunting sebelum usia 2 tahun\n'
      'b.	Berikan ASI Eksklusif sejak usia 0-6 bulan diteruskan dengan ASI dan MPASI \n'
      'c.	Perbaiki masalah menyusui\n'
      'd.	Beri olahan protein hewani pada MPASI\n'
      'e.	Imunisasi rutin\n'
      'f.	Perilaku hidup bersih dan sehat\n'
      'g.	Memakai jamban sehat\n'
      'h.	Atasi masalah kesehatan anak\n'
      'i.	Selalu menambah ilmu kesehatan\n'
      'j.	Memantau perkembangan anak dan membawa ke posyandu secara berkala',
    ),
  ]),
  Entry('VI.	Dampak Masalah Stunting di Indonesia', <Entry>[
    Entry('1.	Dampak Kesehatan', <Entry>[
      Entry(
        'a.	Gagal tumbuh (berat lahir rendah, kecil, pendek, kurus), hambatan perkembangan kognitif dan motoric.',
      ),
      Entry(
        'b.	Gangguan metabolik pada saat dewasa → risiko penyakit tidak menular (diabetes, obesitas, stroke, penyakit jantung, dan lain sebagainya).',
      ),
    ]),
    Entry('2.	Dampak Ekonomi', <Entry>[
      Entry(
        'Berpotensi menimbulkan kerugian setiap tahunnya : 2-3 % GDP.',
      ),
    ]),
  ]),
  Entry('VII.	Sasaran Stunting?', <Entry>[
    Entry(
      '1.	Remaja putri\n'
      '2.	Calon Pengantin\n'
      '3.	Ibu hamil\n'
      '4.	Anak usia 0-59 bulan\n'
      '5.	Keluarga berisiko Stunting',
    ),
  ]),
  Entry('VIII. 8 Nutrisi Penting untuk Tumbuh Kembang Anak Sehat', <Entry>[
    Entry(
        'Bunda, anak membutuhkan asupan nutrisi yang memadai agar tubuh mungilnya tumbuh dengan optimal. Jadi saat makan, bukan hanya rasa kenyang saja yang dikejar. Namun, Bunda juga harus memastikan makanan yang masuk ke mulut si Kecil mengandung berbagai macam gizi yang dibutuhkan tubuhnya. '),
    Entry(
        'Apa saja nutrisi penting yang harus dipenuhi agar anak tumbuh sehat dan aktif? Bunda dapat langsung melihat daftarnya pada ulasan di bawah ini. Simak sampai selesai untuk mendapatkan penjelasan lengkapnya ya, Bun.'),
    Entry('Nutrisi Penting agar Anak Tumbuh Sehat dan Aktif ', <Entry>[
      Entry(
        'Bunda, mari berkenalan dengan 8 vitamin dan mineral penting yang dibutuhkan oleh tubuh si Kecil:',
      ),
      Entry('1. Vitamin A', <Entry>[
        Entry(
          'Vitamin A merupakan salah satu nutrisi penting yang tidak dapat diproduksi oleh tubuh manusia sehingga anak harus mendapatkannya dari asupan makanan sehari-hari. Vitamin ini memiliki peran yang sangat besar dalam mendorong pertumbuhan dan membantu tubuh si Kecil dalam melawan infeksi.',
        ),
        Entry(
          'Asupan vitamin A yang tepat juga akan membantu tubuh si Kecil dalam memproduksi zat bernama asam retinoat yang mengatur folikel rambut, siklus rambut, kecepatan kesembuhan luka pada kulit, serta sel induk pigmentasi pada kulit. ',
        ),
        Entry(
          'Nah, yang perlu diwaspadai Bunda, kekurangan vitamin A yang parah pada anak dapat menyebabkan gangguan penglihatan hingga meningkatkan risiko kematian. ',
        ),
        Entry(
          'Kebutuhan vitamin A untuk anak usia 1-3 tahun adalah 400 RE dan dapat dipenuhi dengan mengkonsumsi makanan yang kaya akan nutrisi mikro ini antara lain:\n'
          '●	Hati sapi.\n'
          '●	Hati kambing.\n'
          '●	Keju cheddar.\n'
          '●	Telur rebus.\n'
          '●	Ubu jalar. \n'
          '●	Labu kuning.\n'
          '●	Sawi hijau.\n'
          '●	Wortel. \n'
          '●	Bayam. \n'
          '●	Selada. \n'
          '●	Tomat.\n',
        ),
        Entry(
            'Saking pentingnya peran vitamin A di dalam tubuh si Kecil, Kementerian Kesehatan Republik Indonesia juga memiliki program suplementasi vitamin A untuk anak setiap bulan Februari dan Agustus. Bunda bisa kunjungi Puskesmas atau Posyandu di domisili Bunda, ya, untuk informasi lebih lengkapnya. ')
      ]),
      Entry('2. Vitamin C', <Entry>[
        Entry(
          'Vitamin C penting bagi tubuh anak menjaga jaringan tubuh seperti gusi, tulang, dan pembuluh darah tetap berada dalam bentuk yang bagus. Vitamin C juga membantu tubuh dalam memulihkan luka dan melawan infeksi seperti batuk dan pilek.  ',
        ),
        Entry(
          'Konsumsi vitamin C yang cukup juga membantu tubuh dalam pemaksimalan penyerapan zat besi dalam tubuh. ',
        ),
        Entry(
          'Nah, jumlah vitamin C yang dibutuhkan oleh tubuh anak usia 1-3 tahun adalah 40 mg. Bunda, banyak lho sumber makanan yang kaya akan vitamin C di sekitar kita seperti:\n'
          '●	Berbagai macam jeruk.\n'
          '●	Blewah. \n'
          '●	Tomat.\n'
          '●	Brokoli.\n'
          '●	Kol.\n'
          '●	Kiwi.\n'
          '●	Stroberi. \n',
        ),
      ]),
      Entry('3. Vitamin D', <Entry>[
        Entry(
          'Vitamin D berperan penting dalam pembentukan tulang, pengaturan sistem imun, dan anti peradangan. Secara alami, anak dapat memperoleh vitamin ini melalui paparan sinar matahari dan beberapa sumber makanan. ',
        ),
        Entry(
          'Apabila si Kecil kekurangan asupan vitamin D berat, tubuhnya dapat terserang penyakit bernama riketsia nutrisional. Penyakit satu ini umumnya menyerang anak-anak di usia 6 bulan hingga 2,5 tahun. ',
        ),
        Entry(
          'Bunda, dampak penyakit ini cukup mengancam kesejahteraan masa depan si Kecil karena menyebabkan:\n'
          '●	Kelemahan otot.\n'
          '●	Keterlambatan perkembangan gerak motorik.\n'
          '●	Pembesaran area pergelangan tangan dan lutut.\n'
          '●	Tungkai kaki berbentuk O.\n'
          '●	Gangguan bentuk kepala.\n'
          '●	Keterlambatan pertumbuhan gigi.\n'
          '●	Penurunan kepadatan tulang.\n'
          '●	Infeksi. \n',
        ),
        Entry(
          'Untuk mencegah defisiensi vitamin D, Bunda dapat mengajak anak untuk bermain atau sekedar duduk berjemur di bawah sinar matahari selama 10-15 menit. ',
        ),
        Entry(
          'Kapan sih Bun waktu terbaik untuk berjemur? ',
        ),
        Entry(
          'Menurut Kementerian Kesehatan Indonesia, waktu terbaik untuk berjemur dan mendapatkan vitamin D dimulai sejak matahari terbit hingga pukul 09.00 dan pukul 15.00 hingga matahari terbenam. ',
        ),
        Entry(
          'Nah, anak usia 1-3 tahun sendiri membutuhkan asupan vitamin D sebesar 15 mcg dan sumber makanan yang dapat Bunda berikan kepada si Kecil untuk memenuhi kebutuhan asupan vitamin D antara lain:\n'
          '●	Kuning telur.\n'
          '●	Sarden kalengan.\n'
          '●	Makarel.\n'
          '●	Keju.\n'
          '●	Minyak ikan.\n'
          '●	Jamur shitake.\n'
          '●	Susu pertumbuhan yang telah diperkaya vitamin D.\n',
        ),
        Entry(
          'Oh iya Bun, selain dari makanan, anak usia di atas 12 bulan perlu mendapatkan suplementasi vitamin D sebesar 600 IU per hari. ',
        ),
      ]),
      Entry('4. Kalsium', <Entry>[
        Entry(
          'Bunda, kalsium merupakan nutrisi yang berperan penting dalam pembentukan tulang dan gigi anak. Selain itu, kalsium juga berperan penting dalam pembekuan darah, membantu kontraksi otot, dan meregulasi detak jantung juga fungsi saraf agar berjalan dengan normal. ',
        ),
        Entry(
          'Agar semua fungsi yang disebutkan di atas dapat berjalan dengan lancar, anak membutuhkan asupan kalsium sebesar 650 mg per hari. ',
        ),
        Entry(
          'Bunda dapat memenuhi kebutuhan si Kecil akan kalsium dengan memberikan makanan seperti berikut:\n'
          '●	Yogurt.\n'
          '●	Susu pertumbuhan terfortifikasi kalsium.\n'
          '●	Keju.\n'
          '●	Jus jeruk yang telah diperkaya kalsium.\n'
          '●	Edamame.\n'
          '●	Tahu.\n'
          '●	Sarden kalengan.\n'
          '●	Bayam.\n'
          '●	Bok choy.\n',
        ),
      ]),
      Entry('5. Asam Lemak Esensial', <Entry>[
        Entry(
          'Asam lemak esensial terdiri dari omega 3 (ALA), omega 6 (LA), dan docosahexaenoic acid (DHA). Ketiga macam asam lemak esensial tersebut sangat dibutuhkan oleh tubuh anak dalam memaksimalkan fungsi otak, kesehatan jantung, daya tahan tubuh, dan perkembangan retina. ',
        ),
        Entry(
          'Ketiga macam asam lemak esensial tersebut tidak dapat diproduksi oleh tubuh, sehingga si Kecil perlu mendapatkannya dari berbagai makanan yang dikonsumsi sehari-hari. ',
        ),
        Entry(
          'Omega 3 umumnya bersumber dari ikan kaya lemak seperti salmon, makarel, sarden, dan tuna. Selain itu, omega 3 juga dapat dipenuhi dari mengkonsumsi makanan nabati seperti minyak sayur, minyak kedelai, biji rami, kacang kenari, dan masih masih banyak lagi.',
        ),
        Entry(
          'Sementara itu, untuk memenuhi asupan omega 6 dapat dipenuhi dengan mengonsumsi minyak bunga safflower, minyak bunga matahari, minyak jagung, minyak kedelai, biji bunga matahari, biji labu, dan kacang kenari. ',
        ),
        Entry(
          'Nah, untuk asupan DHA, Bunda dapat memberikan berbagai ikan kaya lemak seperti contoh di atas serta susu pertumbuhan yang difortifikasi omega-3 dan 6.',
        ),
      ]),
      Entry('6. Zink', <Entry>[
        Entry(
          'Mineral lain yang penting bagi tubuh anak adalah zink atau dikenal juga dengan seng. Asupan zinc yang cukup terbukti menurunkan risiko anak terkena diare, mendukung pertumbuhan tinggi badan, dan menekan risiko kematian anak akibat infeksi. ',
        ),
        Entry(
          'Asupan harian zinc untuk anak usia 1-3 tahun yang disarankan adalah sebesar 3 mg dan Bunda dapat menemukannya dalam:\n'
          '•	Daging.\n'
          '•	Kerang.\n'
          '•	Biji labu.\n'
          '•	Keju.\n'
          '•	Sarden.\n'
          '•	Susu pertumbuhan terfortifikasi.\n'
          '•	Brokoli.\n'
          '•	Nasi putih.\n'
          '•	Tomat ceri.\n'
          '•	Blueberry.\n'
          '•	Roti tawar.\n',
        ),
      ]),
      Entry('7. Iodium', <Entry>[
        Entry(
          'Bunda, iodium atau dikenal juga dengan nama yodium merupakan salah satu mineral penting yang berpengaruh besar dalam pertumbuhan berat dan tinggi badan serta perkembangan kognitif si Kecil. ',
        ),
        Entry(
          'Bahkan menurut data yang disadur dari IDAI (Ikatan Dokter Anak Indonesia), balita yang kekurangan iodium akan memiliki IQ (Intelligent Quotient) lebih rendah 13,5 poin daripada balita  dengan asupan iodium yang memadai. ',
        ),
        Entry(
          'Untuk anak usia 1-3 tahun, kebutuhan iodium si Kecil adalah 90 mgc dan dapat Bunda penuhi dengan memberikan makanan berikut: \n'
          '•	Garam beryodium.\n'
          '•	Susu pertumbuhan terfortifikasi.\n'
          '•	Telur.\n'
          '•	Hati sapi.\n'
          '•	Daging ayam.\n'
          '•	Ikan. \n'
          '•	Kerang-kerangan.\n'
          '•	Udang.\n',
        ),
      ]),
      Entry('8. Zat Besi', <Entry>[
        Entry(
          'Salah satu nutrisi esensial yang dibutuhkan oleh si Kecil adalah zat besi. Mineral satu ini memiliki peran yang sangat signifikan dalam produksi hemoglobin.',
        ),
        Entry(
          'Hemoglobin adalah protein yang terdapat di dalam sel darah merah dan berfungsi untuk mengantarkan oksigen ke dalam seluruh organ dan jaringan dalam tubuh.',
        ),
        Entry(
          'Ketika tubuh anak kekurangan zat besi, hemoglobin tidak akan terbentuk dengan sempurna dan kinerja berbagai organ tubuh akan terganggu dan terjadilah penyakit yang dinamai anemia defisiensi zat besi.',
        ),
        Entry(
          'Anemia akan membuat tubuh anak terasa letih dan lelah sepanjang waktu sehingga suasana hatinya cenderung buruk. Bunda, suasana hati yang buruk akan membuat si Kecil kesulitan dalam bersosialisasi dengan teman sebaya maupun gurunya di sekolah. ',
        ),
        Entry(
          'Tubuhnya yang terus-menerus terasa lelah juga membuat ia tidak aktif bergerak. Jika tidak segera ditangani, hal ini bisa menyebabkan gangguan permanen pada sistem motorik dan sensorik anak.',
        ),
        Entry(
          'Selain itu, anak yang kekurangan zat besi juga cenderung mudah terserang penyakit dan terhambat pertumbuhan fisiknya, Bun. ',
        ),
        Entry(
          'Masalah serius lain yang akan timbul apabila anak kekurangan zat besi dalam jangka waktu lama adalah menurunnya daya konsentrasi anak sehingga ia kesulitan belajar.',
        ),
        Entry(
          'Melihat pentingnya peran sumber zat besi untuk anak, Bunda perlu memastikan agar kebutuhan zat besi si Kecil selalu terpenuhi, ya. Kebutuhan zat besi untuk anak usia 1-3 tahun adalah sebanyak 7 mg per hari.',
        ),
        Entry(
          'Pastikan Bunda melengkapi menu makan si Kecil dengan makanan dan minuman yang kaya zat besi seperti:\n'
          '•	Daging sapi cincang ¼ ons (kandungan zat besi 0,8 mg).\n'
          '•	Daging kambing ¼ ons (kandungan zat besi 1 mg).\n'
          '•	Setengah potong hati ayam (kandungan zat besi 3.6 mg).\n'
          '•	Setengah potong hati sapi (kandungan zat besi 1,7 mg).\n'
          '•	Setengah potong sosis sapi (kandungan zat besi 0,8 mg).\n'
          '•	Telur 1 butir (kandungan zat besi 0,8 mg).\n'
          '•	Brokoli 9 kuntum (kandungan zat besi 0,2 mg).\n'
          '•	Bayam 3 ikat (kandungan zat besi 1 mg).\n'
          '•	Tahu 150 gram (kandungan zat besi 2.4 mg).\n'
          '•	Tempe 100 gram (kandungan zat besi 2.7 mg).\n'
          '•	Tauge 100 gram (kandungan zat besi 1mg).\n'
          '•	Kol 100 gram (kandungan zat besi 0.5 mg).\n'
          '•	Susu pertumbuhan terfortifikasi.\n',
        ),
        Entry(
          'Nah, selain dari berbagai sumber makanan bernutrisi tinggi di atas, hal lain yang dapat Bunda lakukan untuk melengkapi kebutuhan gizi si Kecil adalah lewat susu pertumbuhan terfortifikasi seperti SGM Eksplor 1+ dua kali sehari, yaitu waktu sarapan dan malam sebelum tidur.',
        ),
        Entry(
          'Susu SGM Eksplor adalah satu-satunya susu pertumbuhan yang mengandung IronC, yaitu kombinasi unik antara zat besi dan vitamin C untuk bantu memaksimalkan penyerapan nutrisi penting hingga 2x lipat. Dilengkapi juga dengan DHA, Minyak Ikan, Omega 3&6 serta nutrisi penting lainnya, bantu si Kecil tumbuh maksimal jadi generasi maju yang berpikir cepat dan berani. ',
        ),
      ]),
    ]),
  ]),
  Entry(
      'IX. Kebutuhan nutrisi pada anak berubah seiring dengan pertumbuhan dan perkembangan mereka. Berikut adalah ringkasan kebutuhan nutrisi pada anak sesuai dengan jenjang usia:',
      <Entry>[
        Entry('A.	Bayi (0-12 bulan)', <Entry>[
          Entry(
            'a.	ASI atau susu formula adalah sumber utama nutrisi pada bayi selama 6 bulan pertama.\n'
            'b.	ASI atau susu formula memberikan protein, lemak, karbohidrat, vitamin, mineral, dan antibodi penting untuk perkembangan bayi.\n'
            'c.	Perkenalkan makanan tambahan (seperti sereal beras atau puree buah-buahan) setelah usia 6 bulan.\n'
            'd.	Pastikan asupan zat besi yang cukup, dan hindari memberikan madu kepada bayi di bawah usia 1 tahun.\n',
          ),
        ]),
        Entry('B.	Balita (1-3 tahun)', <Entry>[
          Entry(
            'a.	Lanjutkan dengan ASI atau susu formula jika mungkin. Pada usia 1 tahun, Anda dapat beralih ke susu sapi utuh atau susu alternatif yang direkomendasikan oleh dokter.\n'
            'b.	Pemberian makanan tambahan perlahan ditingkatkan, termasuk makanan padat seperti sayuran, buah-buahan, daging, dan sereal gandum utuh.\n'
            'c.	Pastikan asupan zat besi dan kalsium yang mencukupi.\n'
            'd.	Batasi gula dan garam dalam makanan dan minuman.\n'
            'e.	Anak usia ini mungkin memerlukan camilan sehat di antara waktu makan.\n',
          ),
        ]),
        Entry('C.	Anak Pra-Sekolah (3-5 tahun)', <Entry>[
          Entry(
            'a.	Berikan makanan yang kaya akan serat, seperti sayuran, buah-buahan, dan sereal gandum utuh.\n'
            'b.	Pastikan anak mendapatkan cukup protein dari berbagai sumber.\n'
            'c.	Perhatikan asupan kalsium dan vitamin D untuk kesehatan tulang.\n'
            'd.	Batasi makanan tinggi gula dan lemak jenuh.\n'
            'e.	Ajarkan anak tentang pentingnya pola makan seimbang.\n'
            'f.	Berikan pilihan makanan sehat dan dorong mereka untuk mencoba makanan baru.\n',
          ),
        ]),
        Entry('D.	Anak Usia Sekolah Awal (6-12 tahun)', <Entry>[
          Entry(
            'a.	Lanjutkan dengan pemberian makanan sehat dan beragam, termasuk protein, karbohidrat, lemak sehat, sayuran, dan buah-buahan.\n'
            'b.	Pastikan asupan zat besi, kalsium, vitamin, dan mineral lainnya sesuai kebutuhan.\n'
            'c.	Dorong anak untuk minum cukup air.\n'
            'd.	Batasi makanan tinggi gula, garam, dan lemak jenuh.\n'
            'e.	Ajarkan anak tentang pentingnya kebiasaan makan yang sehat dan pilihan makanan yang bijaksana.\n'
            'f.	Libatkan mereka dalam memasak dan perencanaan makanan.\n',
          ),
        ]),
        Entry('E.	Remaja (13-18 tahun)', <Entry>[
          Entry(
            'a.	Kebutuhan nutrisi meningkat karena pertumbuhan pubertas.\n'
            'b.	Fokus pada asupan protein, kalsium, zat besi, vitamin D, dan folat.\n'
            'c.	Pilihan makanan seimbang yang mencakup sayuran, buah-buahan, biji-bijian, daging, ikan, dan produk susu rendah lemak.\n'
            'd.	Pertimbangkan kebutuhan khusus remaja yang aktif dalam olahraga atau pertumbuhan yang cepat.\n',
          ),
        ]),
      ]),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(
          root.title,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
      );
    }
    return ExpansionTile(
        key: PageStorageKey<Entry>(root),
        title: Text(
          root.title,
          textAlign: TextAlign.justify,
          // selectionColor: Colors.amber,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        textColor: Colors.black,
        collapsedShape:
            const Border(bottom: BorderSide(width: 1, color: Colors.grey)),
        children: root.children.map<Widget>(_buildTiles).toList());
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
