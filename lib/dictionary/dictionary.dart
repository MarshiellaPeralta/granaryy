import 'package:flutter/material.dart';
import '../include/sidebar.dart'; // Import the sidebar

void main() {
  runApp(DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A1128),
        hintColor: Colors.orange,
        scaffoldBackgroundColor: Color (0xFF0A1128),
      ),
     debugShowCheckedModeBanner: false,
      home: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatefulWidget {
  @override
  _DictionaryHomePageState createState() => _DictionaryHomePageState();
}

class _DictionaryHomePageState extends State<DictionaryHomePage> {
  final List<Word> words = [
    Word(
      english: "abandon",
      tagalog: "tagalog: iwan",
      ilocano: "ilocano: abuloyan",
      pangasinense: "pangasinense: baybay-an",
      examples: [
        WordExample(tagalog: "Iniwan niya ang bahay.", ilocano: "Binay-an na ti balay.", pangasinense: "Binenkala na so balay."),
        WordExample(tagalog: "Huwag mong iwan ang iyong mga pangarap.", ilocano: "Saan mo ipabay-an dagiti pangarap mo.", pangasinense: "Agsayangkaya angat na pangarap mo.")
      ],
    ),
    Word(
      english: "abandoned",
      tagalog: "tagalog: iniwan",
      ilocano: "ilocano: tinaynan",
      pangasinense: "pangasinense: nabaybay-an",
      examples: [
        WordExample(tagalog: "Iniwan ang lumang bahay sa bayan.", ilocano: "Nabaybay-an ti daan a balay iti ili.", pangasinense: "Nabaybay-an ya abalang so balay ed ciudad."),
        WordExample(tagalog: "Iniwan niya ang kanyang dating pangarap.", ilocano: "Ininiwan na dagiti pangarapna idi.", pangasinense: "Ininiwan na so pangarap na daan.")
      ],
    ),

  Word(
  english: "abbreviate",
  tagalog: "tagalog: pinaikli",
  ilocano: "ilocano: pinatikey",
  pangasinense: "pangasinense: napaababa",
  examples: [
  WordExample(tagalog: "Pinaikli niya ang pangalan sa dokumento.", ilocano: "Pinatikey na ti naganna iti dokumento.", pangasinense: "Napaababa na so naganna ed dokumento."),
  WordExample(tagalog: "Mas mainam kung pinaikli ang mga salita.", ilocano: "Nalaka pay ti aramiden no pinatikey dagiti sao.", pangasinense: "Mas nalaka ya inedit so salitan ya napaababa.")
  ],
  ),
  Word(
  english: "abdomen",
  tagalog: "tagalog: tiyan",
  ilocano: "ilocano: eges",
  pangasinense: "pangasinense: ti tian",
  examples: [
  WordExample(tagalog: "Sumakit ang kanyang tiyan matapos kumain.", ilocano: "Nagsakit ti egés na kalpasan ti mangan.", pangasinense: "Sinarakel so tiyan na kayari nen mangan."),
  WordExample(tagalog: "Pinisil niya ang kanyang tiyan nang masakit.", ilocano: "Pinisilan na ti egés na gapu ti sakit.", pangasinense: "Pinisil na so tiyan na so sinakit.")
  ],
  ),
  Word(
  english: "abhor",
  tagalog: "tagalog: suklam",
  ilocano: "ilocano: suklam",
  pangasinense: "pangasinense: suklam",
  examples: [
  WordExample(tagalog: "Suklam siya sa kasinungalingan.", ilocano: "Suklam na ti panagsinungaling.", pangasinense: "May sakam so panaglayo."),
  WordExample(tagalog: "Suklam na suklam siya sa masamang ugali.", ilocano: "Suklam unay ti dakes a ugali.", pangasinense: "Masyadong suklam na suklam sa ugaling masama.")
  ],
  ),
  Word(
  english: "ability",
  tagalog: "tagalog: kakayahan",
  ilocano: "ilocano: abilidad",
  pangasinense: "pangasinense: abilidad",
  examples: [
  WordExample(tagalog: "Ipinakita niya ang kanyang kakayahan sa entablado.", ilocano: "Inpakita na ti abilidad na iti entablado.", pangasinense: "Inpakita na so abilidad na ed entablado."),
  WordExample(tagalog: "May kakayahan siyang tumulong sa iba.", ilocano: "Adda abilidad na nga tumulong iti dadduma.", pangasinense: "Onse so abilidad na ya mangipugot tan iba.")
  ],
  ),
  Word(
  english: "abnormal",
  tagalog: "tagalog: hindi normal",
  ilocano: "ilocano: aliwan normal",
  pangasinense: "pangasinense: saan a normal",
  examples: [
  WordExample(tagalog: "Ang kanyang pag-uugali ay hindi normal.", ilocano: "Saan a normal ti ugali na.", pangasinense: "Ag malikot tan saan a normal so ugali na."),
  WordExample(tagalog: "Nagpakita siya ng hindi normal na lakas.", ilocano: "Nagpakita iti aliwan a normal nga bilaen.", pangasinense: "Nang pakitan ya lakas na saan a normal.")
  ],
  ),
  Word(
  english: "abode",
  tagalog: "tagalog: tahanan",
  ilocano: "ilocano: abung",
  pangasinense: "pangasinense: pagtaengan",
  examples: [
  WordExample(tagalog: "Ang kanyang tahanan ay puno ng saya.", ilocano: "Nalagda ti abung na iti ragsak.", pangasinense: "Ed say pagtaengan na ang naragsak."),
  WordExample(tagalog: "Gusto niya ang simple at payak na tahanan.", ilocano: "Kayat na ti naingel ken nadawdawel nga abung.", pangasinense: "Masa gusto so simpleng pagtaengan na.")
  ],
  ),
  Word(
  english: "abolish",
  tagalog: "tagalog: wakasan",
  ilocano: "ilocano: sampot",
  pangasinense: "pangasinense: maudi",
  examples: [
  WordExample(tagalog: "Dapat nating wakasan ang mga masamang kaugalian.", ilocano: "Masapul a sampoten dagiti dakes nga ugali.", pangasinense: "Mas napigsa ya maudi so ugali na balaw."),
  WordExample(tagalog: "Pinagdesisyunan nilang wakasan ang tradisyon.", ilocano: "Nagdesisyon da nga isampot ti tradision.", pangasinense: "Nangdesisyon tan maudi ya tradisyon.")
  ],
  ),
  Word(
  english: "abolition",
  tagalog: "tagalog: pagwawakas",
  ilocano: "ilocano: panampot",
  pangasinense: "pangasinense: panagpatingga",
  examples: [
  WordExample(tagalog: "Ang pagwawakas ng mga hindi makatarungang batas ay mahalaga.", ilocano: "Mahalaga ti panampot ti dakes nga linteg.", pangasinense: "Magbawal ya panagpatingga ed mali."),
  WordExample(tagalog: "Ipinaglaban niya ang pagwawakas ng kasamaan.", ilocano: "Inkipot na ti panampot ti dakes.", pangasinense: "Inkipot na ya panagpatingga so panagsakam.")
  ],
  ),
  Word(
  english: "aborigene",
  tagalog: "tagalog: katutubo",
  ilocano: "ilocano: dayo",
  pangasinense: "pangasinense: katutubo",
  examples: [
  WordExample(tagalog: "Maraming katutubo sa bundok.", ilocano: "Adu dagiti dayo iti bantay.", pangasinense: "Dakel ed say katutubo ed bulod."),
  WordExample(tagalog: "Pinagmamalaki niya ang kanyang lahing katutubo.", ilocano: "Ipagarup na ti pinagmulan na nga dayo.", pangasinense: "Ipinagyayari so say kasay-sayan ya katutubo.")
  ],
  ),
  Word(
  english: "abort",
  tagalog: "tagalog: palaglag",
  ilocano: "ilocano: pan-abort",
  pangasinense: "pangasinense: abdomen",
  examples: [
  WordExample(tagalog: "Bawal ang pagpapalaglag sa ilang lugar.", ilocano: "Saan a mabalin ti pan-abort iti sabali a lugar.", pangasinense: "Pinaliintan ya mang-abort so siar."),
  WordExample(tagalog: "Sinubukan niyang pigilan ang paglaglag ng sanggol.", ilocano: "Sinubukan na a patinggaten ti pan-abort.", pangasinense: "Intunda na ya patinggaan so pan-abort na.")
  ],
  ),
  Word(
  english: "abortion",
  tagalog: "tagalog: pagpapalaglag",
  ilocano: "ilocano: panagpaekal",
  pangasinense: "pangasinense: aborsion",
  examples: [
  WordExample(tagalog: "Ang pagpapalaglag ay isang sensitibong paksa.", ilocano: "Sensitibo nga topiko ti panagpaekal.", pangasinense: "Senstibo ed topiko ya aborsion."),
  WordExample(tagalog: "Nagdeklara ang gobyerno ng bagong batas tungkol sa pagpapalaglag.", ilocano: "Nagbalin ti gobyerno ti baro a linteg iti panagpaekal.", pangasinense: "Nangdineklara so gobierno ya baro ya linteg ed aborsion.")
  ],
  ),
  Word(
  english: "abound",
  tagalog: "tagalog: masagana",
  ilocano: "ilocano: mabunlok",
  pangasinense: "pangasinense: nawadswad",
  examples: [
  WordExample(tagalog: "Masagana ang ani sa aming bukid.", ilocano: "Nabunlok ti ani iti bukid mi.", pangasinense: "Masagana so ani ed bukid mi."),
  WordExample(tagalog: "Masagana ang buhay sa probinsya.", ilocano: "Nabunlok ti biag iti probinsia.", pangasinense: "Nawadswad so biag ed probinsia.")
  ],
  ),
  Word(
  english: "about",
  tagalog: "tagalog: tungkol",
  ilocano: "ilocano: nipaakar ed",
  pangasinense: "pangasinense: maipapan iti",
  examples: [
  WordExample(tagalog: "Ang kanyang kwento ay tungkol sa pag-ibig.", ilocano: "Nipaakar ed ayat ti istoria na.", pangasinense: "Maipapan iti ayat so istoria na."),
  WordExample(tagalog: "May libro siya tungkol sa kasaysayan.", ilocano: "Adda libro na nipaakar ed kasaysayan.", pangasinense: "May libro so maipapan iti kasaysayan.")
  ],
  ),
  Word(
  english: "above",
  tagalog: "tagalog: higit",
  ilocano: "ilocano: mas dakel",
  pangasinense: "pangasinense: ad-adu pay",
  examples: [
  WordExample(tagalog: "Higit siyang magaling sa larangan ng sining.", ilocano: "Mas dakel ti abilidad na iti sining.", pangasinense: "Ad-adu pay so abilidad na ed sining."),
  WordExample(tagalog: "Ang kalangitan ay nasa ibabaw ng lahat.", ilocano: "Ti langit ket adda iti babaw amin.", pangasinense: "So kalangitan ay ada ed ibabaw so balet.")
  ],
  ),
  Word(
  english: "abreast",
  tagalog: "tagalog: katabi",
  ilocano: "ilocano: kaabay",
  pangasinense: "pangasinense: iti abay",
  examples: [
  WordExample(tagalog: "Naglakad kami nang magkatabi sa dalampasigan.", ilocano: "Nagpasinged kami a naglakad iti baybay.", pangasinense: "Inayun mi ya naglakad ed baybay."),
  WordExample(tagalog: "Palaging magkatabi ang magkapatid sa klase.", ilocano: "Kaabayda iti klase ti kakabsat.", pangasinense: "Palagi a magkatabi ed klase so magkabsat.")
  ],
  ),
  Word(
  english: "abrupt",
  tagalog: "tagalog: biglaan",
  ilocano: "ilocano: bigla",
  pangasinense: "pangasinense: biglaan",
  examples: [
  WordExample(tagalog: "Biglaan ang pag-alis niya sa pagtitipon.", ilocano: "Bigla a napapanaw ti pagtitipon.", pangasinense: "Biglaan so linayao ed pantitipon."),
  WordExample(tagalog: "Nagulat sila sa biglaang pagbabago.", ilocano: "Nagulat dagiti biglaan nga panagbaliw.", pangasinense: "Inaysutiran ed biglaan ya pagbabago.")
  ],
  ),
  Word(
  english: "absence",
  tagalog: "tagalog: pagkawala",
  ilocano: "ilocano: pannakatay",
  pangasinense: "pangasinense: naandi",
  examples: [
  WordExample(tagalog: "Ramdam ko ang pagkawala niya sa aming buhay.", ilocano: "Riknak ti pannakatay na iti biagmi.", pangasinense: "May padas so naandi na ed biag mi."),
  WordExample(tagalog: "Napansin ang pagkawala ng kanyang presensya.", ilocano: "Napansin ti pannakatay ti presensia na.", pangasinense: "Nanpansin so naandi so presensia na.")
  ],
  ),
  Word(
  english: "absent",
  tagalog: "tagalog: wala",
  ilocano: "ilocano: awan",
  pangasinense: "pangasinense: anggapo",
  examples: [
  WordExample(tagalog: "Wala siya sa trabaho ngayon.", ilocano: "Awan isuna iti trabaho ita.", pangasinense: "Anggapo ed trabaho ya sigod."),
  WordExample(tagalog: "Nagpaliban siya at wala ngayon.", ilocano: "Nagliban isuna ket awan ita.", pangasinense: "Nagliban tan anggapo sigod.")
  ],
  ),
  Word(
  english: "absent-minded",
  tagalog: "tagalog: wala sa sarili",
  ilocano: "ilocano: saan nga agmaymaysa",
  pangasinense: "pangasinense: agmanlalapud inkasikato",
  examples: [
  WordExample(tagalog: "Palaging wala siya sa sarili tuwing naguusap.", ilocano: "Saan nga agmaymaysa ken agsarita isuna.", pangasinense: "Agmanlalapud inkasikato so ed gatasan."),
  WordExample(tagalog: "Hindi siya nakikinig at parang wala sa sarili.", ilocano: "Saan a mangngeg a kasla agmaymaysa.", pangasinense: "Anggapo so listening ken agmanlalapud inkasikato.")
  ],
  ),
  Word(
  english: "absorb",
  tagalog: "tagalog: sumipsip",
  ilocano: "ilocano: sumisipsip",
  pangasinense: "pangasinense: mansusupot",
  examples: [
  WordExample(tagalog: "Sumipsip ang tuwalya ng tubig.", ilocano: "Sumisipsip ti towel ti danum.", pangasinense: "Mansusupot so towel ed danum."),
  WordExample(tagalog: "Ang halaman ay sumisipsip ng sikat ng araw.", ilocano: "Ti mula sumisipsip iti init ti init.", pangasinense: "So halaman ay mansusupot ed init na araw.")
  ],
  ),
  Word(
  english: "abstain",
  tagalog: "tagalog: umiwas",
  ilocano: "ilocano: liklikan",
  pangasinense: "pangasinense: paliisan",
  examples: [
  WordExample(tagalog: "Umiwas siya sa masasamang bisyo.", ilocano: "Liklikan na dagiti dakes nga bisyo.", pangasinense: "Paliisan na so balew ya bisyo."),
  WordExample(tagalog: "Iwasan mo ang pagkain ng matatamis.", ilocano: "Liklikan ti makan ti nasamit.", pangasinense: "Paliisan so makan ya mansam-it.")
  ],
  ),
  Word(
  english: "abstinence",
  tagalog: "tagalog: pag-iwas",
  ilocano: "ilocano: panangliklik",
  pangasinense: "pangasinense: paliisan",
  examples: [
  WordExample(tagalog: "Pag-iwas sa bisyo ang kanyang sinumpaan.", ilocano: "Panangliklik iti bisyo ti sinumpaan na.", pangasinense: "Paliisan so bisyo ed sinumpaan na."),
  WordExample(tagalog: "Ang pag-iwas sa alak ay mahalaga para sa kalusugan.", ilocano: "Mahalaga ti panangliklik iti arak para iti salud.", pangasinense: "Magbawal so paliisan ed alak para so salud.")
  ],
  ),
  Word(
  english: "abundance",
  tagalog: "tagalog: kasaganaan",
  ilocano: "ilocano: kinabaknang",
  pangasinense: "pangasinense: inkadaakan",
  examples: [
  WordExample(tagalog: "Kasaganaan ang dala ng pag-ani ng palay.", ilocano: "Kinabaknang ti dala ti panag-ani ti pagay.", pangasinense: "Inkadaakan so dala ed panag-ani na palay."),
  WordExample(tagalog: "Nabubuhay sila sa kasaganaan sa probinsya.", ilocano: "Agtutubo da iti kinabaknang iti probinsia.", pangasinense: "Nabubuhay ya sakey ed inkadaakan ed probinsia.")
  ],
  ),
  Word(
  english: "abundant",
  tagalog: "tagalog: masagana",
  ilocano: "ilocano: nawadswad",
  pangasinense: "pangasinense: mabunlok",
  examples: [
  WordExample(tagalog: "Masagana ang ani sa kanilang bukid.", ilocano: "Nabunlok ti ani iti bukid da.", pangasinense: "Masagana so ani ed say bukid da."),
  WordExample(tagalog: "Masagana ang pamumuhay sa kanilang lugar.", ilocano: "Nabunlok ti biag iti lugar da.", pangasinense: "Mabunlok so biag na lugar da.")
  ],
  ),
  Word(
  english: "abuse",
  tagalog: "tagalog: pang-aabuso",
  ilocano: "ilocano: panangabuso",
  pangasinense: "pangasinense: panag-abuso",
  examples: [
  WordExample(tagalog: "Huwag nating pahintulutan ang pang-aabuso.", ilocano: "Saan tayo a panangawaten ti panangabuso.", pangasinense: "Hindi tayo awaten ya panag-abuso."),
  WordExample(tagalog: "Ipinaglalaban nila ang laban sa pang-aabuso.", ilocano: "Inkipot da ti laban iti panangabuso.", pangasinense: "Inkipot tan laban ed panag-abuso.")
  ],
  ),
  Word(
  english: "accede",
  tagalog: "tagalog: pumayag",
  ilocano: "ilocano: umanamong",
  pangasinense: "pangasinense: onabobon",
  examples: [
  WordExample(tagalog: "Pumayag siya sa kasunduan.", ilocano: "Umanamong isuna iti kasunduan.", pangasinense: "Onabobon so ed kasunduan."),
  WordExample(tagalog: "Pumayag ang pamilya niya sa kanyang desisyon.", ilocano: "Umanamong ti pamilya na iti desisyon na.", pangasinense: "Onabobon so pamilya na ed desisyon na.")
  ],
  ),
  Word(
  english: "accelerate",
  tagalog: "tagalog: pabilisin",
  ilocano: "ilocano: mangpadaras",
  pangasinense: "pangasinense: paeleten",
  examples: [
  WordExample(tagalog: "Pabilisin ang proseso ng pag-aaral.", ilocano: "Mangpadaras ti proseso ti adal.", pangasinense: "Paeleten so proseso ed pag-adal."),
  WordExample(tagalog: "Pabilisin ang pagtakbo sa huling parte ng laro.", ilocano: "Mangpadaras ti taray iti puli a bahin ti luba.", pangasinense: "Paeleten so pagtakbo ya parte ed laro.")
  ],
  ),
  Word(
  english: "accent",
  tagalog: "tagalog: tuldik",
  ilocano: "ilocano: bulong",
  pangasinense: "pangasinense: tan",
  examples: [
  WordExample(tagalog: "Kilala siya sa kanyang kakaibang tuldik.", ilocano: "Makikilala isuna iti nadumduma nga bulong.", pangasinense: "Kilalang nalilik ya tan na."),
  WordExample(tagalog: "Malakas ang kanyang tuldik sa pagbigkas ng mga salita.", ilocano: "Naaten ti bulong na iti bigbig ti sao.", pangasinense: "Malakas so tan na ed bigkas na salitan.")
  ],
  ),
  Word(
  english: "accept",
  tagalog: "tagalog: tanggapin",
  ilocano: "ilocano: awaten",
  pangasinense: "pangasinense: awaten",
  examples: [
  WordExample(tagalog: "Tanggapin mo ang iyong mga pagkukulang.", ilocano: "Awaten mo dagiti kinulang mo.", pangasinense: "Awaten so kabulung ya kinulang na."),
  WordExample(tagalog: "Mahalaga ang pagtanggap sa sarili.", ilocano: "Mahalaga ti pannakaawat iti bagim.", pangasinense: "Mahalaga so pagtanggap ed sadya.")
  ],
  ),
  Word(
  english: "acceptable",
  tagalog: "tagalog: katanggap-tanggap",
  ilocano: "ilocano: maawat",
  pangasinense: "pangasinense: awaten",
  examples: [
  WordExample(tagalog: "Katanggap-tanggap ang kanyang alok sa trabaho.", ilocano: "Maawat ti inalok na iti trabaho.", pangasinense: "Awaten so inalok na ed trabaho."),
  WordExample(tagalog: "Ang kanyang paliwanag ay katanggap-tanggap.", ilocano: "Ti panangipaliwanag na ket maawat.", pangasinense: "So panangipaliwanag na ay awaten.")
  ],
  ),
  Word(
  english: "accessible",
  tagalog: "tagalog: madaling puntahan",
  ilocano: "ilocano: nalaka a madanon",
  pangasinense: "pangasinense: mainomay ya asinggeran",
  examples: [
  WordExample(tagalog: "Madaling puntahan ang lugar ng kanilang opisina.", ilocano: "Nalaka a madanon ti lugar ti opisina da.", pangasinense: "Mainomay ya asinggeran ed lugar na opisina da."),
  WordExample(tagalog: "Madaling ma-access ang impormasyon sa internet.", ilocano: "Nalaka a madanon ti impormasion iti internet.", pangasinense: "Mainomay ya asinggeran so impormasyon ed internet.")
  ],
  ),
  Word(
  english: "accident",
  tagalog: "tagalog: aksidente",
  ilocano: "ilocano: aksidente",
  pangasinense: "pangasinense: aksidente",
  examples: [
  WordExample(tagalog: "Nadamay siya sa aksidente sa kalsada.", ilocano: "Nadamay isuna iti aksidente iti kalsada.", pangasinense: "Nadale so ed aksidente ed kalsada."),
  WordExample(tagalog: "Ingat sa pagmamaneho upang maiwasan ang aksidente.", ilocano: "Agtandaan iti pagdaldalan tapno maiwasan ti aksidente.", pangasinense: "Mangaliklik ya panagan so aksidente.")
  ],
  ),
  Word(
  english: "accommodate",
  tagalog: "tagalog: tumanggap",
  ilocano: "ilocano: mangawat",
  pangasinense: "pangasinense: mangawat",
  examples: [
  WordExample(tagalog: "Kayang tumanggap ng maraming bisita ang lugar.", ilocano: "Kayat na ti mangawat iti adu a bisita.", pangasinense: "Agkamang so mangawat tan dakel na bisita."),
  WordExample(tagalog: "Nagbigay sila ng karagdagang upuan upang tumanggap ng iba pa.", ilocano: "Nangipatongda iti upuan para mangawat pay dagiti dadduma.", pangasinense: "Nangtokad ya luganan ya mangawat tan arum ni.")
  ],
  ),
  Word(
  english: "accompany",
  tagalog: "tagalog: samahan",
  ilocano: "ilocano: sangsangkamaysa",
  pangasinense: "pangasinense: kaibay arum",
  examples: [
  WordExample(tagalog: "Sasamahan kita sa paglalakbay mo.", ilocano: "Sangsangkamaysak iti panagdaliasat mo.", pangasinense: "Kaibay tan ed say paglakbay mo."),
  WordExample(tagalog: "Sinamahan niya ang kanyang kaibigan sa ospital.", ilocano: "Sinangsangkami na ti gayyem na iti ospital.", pangasinense: "Nangkakiba tan kaibigan na ed ospital.")
  ],
  ),
  Word(
  english: "accomplish",
  tagalog: "tagalog: tapusin",
  ilocano: "ilocano: agpatingga",
  pangasinense: "pangasinense: manampot",
  examples: [
  WordExample(tagalog: "Tapusin mo ang iyong mga gawain sa oras.", ilocano: "Patinggaan dagiti aramid mo iti oras.", pangasinense: "Tapuson so gawain mo ed oras."),
  WordExample(tagalog: "Sinikap niyang tapusin ang proyekto bago ang takdang panahon.", ilocano: "Sinikap na a patinggaan ti proyekto sakbay ti naihat nga aldaw.", pangasinense: "Sinikap na ya matapos so proyekto sakey tan ti oras.")
  ],
  ),
  Word(
  english: "according",
  tagalog: "tagalog: ayon",
  ilocano: "ilocano: sigun iti",
  pangasinense: "pangasinense: onong ed",
  examples: [
  WordExample(tagalog: "Ayon sa batas, kailangan nating sumunod.", ilocano: "Sigun iti linteg, masapul a sumurot tayo.", pangasinense: "Onong ed linteg, masapol so sumurot."),
  WordExample(tagalog: "Ayon sa kanya, importante ang pagiging tapat.", ilocano: "Sigun kenkuana, importante ti pannakaawat.", pangasinense: "Onong ed sikato, importante so pagsaypatan.")
  ],
  ),
  Word(
  english: "accordingly",
  tagalog: "tagalog: alinsunod",
  ilocano: "ilocano: iti sumaganad",
  pangasinense: "pangasinense: onong ed",
  examples: [
  WordExample(tagalog: "Gawin natin ito alinsunod sa mga patakaran.", ilocano: "Aramiden tayo daytoy iti sumaganad iti paglintegan.", pangasinense: "Gawan mi ed onong ed patakaran."),
  WordExample(tagalog: "Nagsalita siya nang alinsunod sa mga alituntunin.", ilocano: "Nagsao isuna iti sumaganad iti alituntunin.", pangasinense: "Nagsalita tan ed onong ed alituntunin.")
  ],
  ),
  Word(
  english: "account",
  tagalog: "tagalog: ulat",
  ilocano: "ilocano: report",
  pangasinense: "pangasinense: Report",
  examples: [
  WordExample(tagalog: "Ipinasa niya ang ulat sa guro.", ilocano: "Inurnong na ti report iti maestro.", pangasinense: "Ipasa na so report ed maestro."),
  WordExample(tagalog: "Ang kanyang ulat ay tungkol sa kalikasan.", ilocano: "Ti report na ket nipaakar iti kinanawan.", pangasinense: "So report na ay maipapan iti kalikasan.")
  ],
  ),
  Word(
  english: "accumulate",
  tagalog: "tagalog: mag-ipon",
  ilocano: "ilocano: agurnong",
  pangasinense: "pangasinense: mantitipon",
  examples: [
  WordExample(tagalog: "Nagsimula siyang mag-ipon para sa kinabukasan.", ilocano: "Nagurnong isuna para iti masakbayan.", pangasinense: "Nangmantipon tan para ed sakey na masakbayan."),
  WordExample(tagalog: "Mag-ipon ka ng pera para sa iyong mga pangarap.", ilocano: "Agurnong ka iti kuarta para kadagiti pangarap mo.", pangasinense: "Mantipon ka ya kwarta ya pangarap mo.")
  ],
  ),
  Word(
  english: "accurate",
  tagalog: "tagalog: tama",
  ilocano: "ilocano: umno",
  pangasinense: "pangasinense: dugan",
  examples: [
  WordExample(tagalog: "Tama ang kanyang mga sagot sa pagsusulit.", ilocano: "Umno dagiti sungbat na iti pagsusulit.", pangasinense: "Dugan so sagot na ed pagsusulit."),
  WordExample(tagalog: "Dapat tayong magbigay ng tamang impormasyon.", ilocano: "Masapul nga mangipaay tayo iti umno a impormasyon.", pangasinense: "Onse so tamang impormasyon na paito mi.")
  ],
  ),
  Word(
  english: "accusation",
  tagalog: "tagalog: paratang",
  ilocano: "ilocano: pammabasol",
  pangasinense: "pangasinense: kasalanan",
  examples: [
  WordExample(tagalog: "Hindi niya matanggap ang maling paratang.", ilocano: "Saan na nga mabalin nga awaten ti bassit nga basol.", pangasinense: "Saan na matanggap so maling kasalanan."),
  WordExample(tagalog: "Nagpahayag siya laban sa paratang sa kanya.", ilocano: "Nagsao isuna nga bassit nga paratang kenkuana.", pangasinense: "Nagsalita tan laban ed kasalanan na siopa.")
  ],
  ),
  Word(
  english: "accuse",
  tagalog: "tagalog: akusahan",
  ilocano: "ilocano: akusasion",
  pangasinense: "pangasinense: akusasyon",
  examples: [
  WordExample(tagalog: "Inakusahan siya ng pagnanakaw.", ilocano: "Inakusaran isuna iti panakawat.", pangasinense: "Inakusaran so ed pagnakaw."),
  WordExample(tagalog: "Huwag kang basta-basta mag-akusa.", ilocano: "Saan ka a mangakusacion ti haan a sigurado.", pangasinense: "Anggan ka mag-akusasyon ya haan na sigurado.")
  ],
  ),
  Word(
  english: "accustomed",
  tagalog: "tagalog: nakasanayan",
  ilocano: "ilocano: nakairuaman",
  pangasinense: "pangasinense: niyugali",
  examples: [
  WordExample(tagalog: "Nakasanayan ko na ang maagang pag-gising.", ilocano: "Nakairuaman ko ti agsingpet nga bigat.", pangasinense: "Niyugali ko so maga ya gising."),
  WordExample(tagalog: "Nakasanayan na niyang mag-aral gabi-gabi.", ilocano: "Nakairuaman na ti agadal rabi-rabi.", pangasinense: "Niyugali na so pagadal ed gabigabi.")
  ],
  ),
  Word(
  english: "ache",
  tagalog: "tagalog: kirot",
  ilocano: "ilocano: ut-ot",
  pangasinense: "pangasinense: sakit",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng kirot sa likod.", ilocano: "Narikna na ti ut-ot iti likod.", pangasinense: "Nakaramdam so sakit ed likod."),
  WordExample(tagalog: "Minsan ay sumasakit ang kanyang ulo.", ilocano: "Minsan ket agut-ot ti ulo na.", pangasinense: "Minsan ay mankarakel so ulo na.")
  ],
  ),
  Word(
  english: "achieve",
  tagalog: "tagalog: makamit",
  ilocano: "ilocano: magun-odan",
  pangasinense: "pangasinense: nagawaan",
  examples: [
  WordExample(tagalog: "Gusto kong makamit ang aking mga pangarap.", ilocano: "Kayat ko nga magun-odan dagiti pangarap ko.", pangasinense: "Gusto ko makamit so pangarap ko."),
  WordExample(tagalog: "Nagsikap siya upang makamit ang tagumpay.", ilocano: "Nagsikap isuna tapno magun-odan ti sukses.", pangasinense: "Nagsikap ya tan makamit so tagumpay.")
  ],
  ),
  Word(
  english: "acid",
  tagalog: "tagalog: asido",
  ilocano: "ilocano: asido",
  pangasinense: "pangasinense: asido",
  examples: [
  WordExample(tagalog: "Gamitin ang tamang dami ng asido sa eksperimento.", ilocano: "Usaren ti umno a kadakkel ti asido iti eksperimento.", pangasinense: "Gamit so tamang dakel ya asido ed eksperimento."),
  WordExample(tagalog: "May asido ang ilang prutas kaya maasim ang lasa.", ilocano: "Adda asido dagiti sabali a prutas isu a nasam-it ti rasa.", pangasinense: "Ada asido ed iba ya prutas kaya ansamit so lasa.")
  ],
  ),
  Word(
  english: "acidity",
  tagalog: "tagalog: asim",
  ilocano: "ilocano: nasam-it",
  pangasinense: "pangasinense: asido",
  examples: [
  WordExample(tagalog: "Ang asim ng suka ay matindi.", ilocano: "Nasam-it ti suka ket nakaro.", pangasinense: "Asido na suka ay napigsa."),
  WordExample(tagalog: "May mataas na acidity ang ilang prutas.", ilocano: "Adda nabunga a asido dagiti prutas.", pangasinense: "Ada napigsa ya asido ed ibang prutas.")
  ],
  ),
  Word(
  english: "acknowledge",
  tagalog: "tagalog: kilalanin",
  ilocano: "ilocano: ipakaammom",
  pangasinense: "pangasinense: ipakabat",
  examples: [
  WordExample(tagalog: "Dapat nating kilalanin ang tulong ng iba.", ilocano: "Masapul a ipakaammo tayo ti tulong dagiti sabali.", pangasinense: "Dapat ya ipakabat tan tulong na iba."),
  WordExample(tagalog: "Kailangan mong kilalanin ang iyong mga pagkakamali.", ilocano: "Masapul nga ipakaammo dagiti basol mo.", pangasinense: "Masapol ya ipakabat so kabulung mo.")
  ],
  ),
  Word(
  english: "acquaint",
  tagalog: "tagalog: ipakilala",
  ilocano: "ilocano: ipakaammo",
  pangasinense: "pangasinense: ipakabat",
  examples: [
  WordExample(tagalog: "Ipakilala mo ang sarili mo sa bago mong mga kaibigan.", ilocano: "Ipakaammo ti bagim kadagiti baro nga gayyem mo.", pangasinense: "Ipakabat so sarili mo ed bago ya kaibigan."),
  WordExample(tagalog: "Siya ang nagpakilala sa akin sa kanya.", ilocano: "Isuna ti nangipakaammo kanya ken isuna.", pangasinense: "Siya so nagpakilala ed sikat ya ed sikato.")
  ],
  ),
  Word(
  english: "acquire",
  tagalog: "tagalog: makuha",
  ilocano: "ilocano: magun-odan",
  pangasinense: "pangasinense: naala",
  examples: [
  WordExample(tagalog: "Makuha mo ang tagumpay kung magsusumikap ka.", ilocano: "Magun-odan ti sukses no agtinnulong ka.", pangasinense: "Makuha so tagumpay ya agsisikap ka."),
  WordExample(tagalog: "Ang sipag ang nagbigay daan para makuha niya ang nais.", ilocano: "Ti panagtinnulong ket nangipaay para magun-odan na ti kayat na.", pangasinense: "Ti pagsisikap na ya nagpakana so naala na ya kayat na.")
  ],
  ),
  Word(
  english: "across",
  tagalog: "tagalog: sa kabila",
  ilocano: "ilocano: iti bangir",
  pangasinense: "pangasinense: diad biek a dapag",
  examples: [
  WordExample(tagalog: "May tindahan sa kabila ng kalsada.", ilocano: "Adda tiendaan iti bangir ti kalsada.", pangasinense: "Ada ya tiendaan diad biek na kalsada."),
  WordExample(tagalog: "Tumawid siya sa kabila upang makita ang kaibigan.", ilocano: "Naglampas isuna iti bangir tapno makitam ti gayyem na.", pangasinense: "Lumampas tan ed biek para makita so kaibigan na.")
  ],
  ),
  Word(
  english: "admit",
  tagalog: "tagalog: aminin",
  ilocano: "ilocano: aminen",
  pangasinense: "pangasinense: ikadua",
  examples: [
  WordExample(tagalog: "Aaminin kong nagkamali ako.", ilocano: "Aminenk nga nagkamali ak.", pangasinense: "Ikadua ko ya nagkamali ak."),
  WordExample(tagalog: "Minsan ay mahirap aminin ang katotohanan.", ilocano: "Adu a beses a narigat nga aminen ti pudno.", pangasinense: "Adu a beses ay narigat ikadua so katotohanan.")
  ],
  ),
  Word(
  english: "adventure",
  tagalog: "tagalog: pakikipagsapalaran",
  ilocano: "ilocano: panagpadas",
  pangasinense: "pangasinense: pakikabayan",
  examples: [
  WordExample(tagalog: "Gusto kong magkaroon ng bagong pakikipagsapalaran.", ilocano: "Kayatko a maala ti baro a panagpadas.", pangasinense: "Kayat ko ya makakuha ed balon a pakikabayan."),
  WordExample(tagalog: "Ang pakikipagsapalaran ay puno ng hamon.", ilocano: "Ti panagpadas ket napno iti pagrigatan.", pangasinense: "So pakikabayan ay puno ed hamon.")
  ],
  ),
  Word(
  english: "advocate",
  tagalog: "tagalog: tagapagtaguyod",
  ilocano: "ilocano: mangipateg",
  pangasinense: "pangasinense: tagapagtaguyod",
  examples: [
  WordExample(tagalog: "Siya ay isang tagapagtaguyod ng karapatang pantao.", ilocano: "Isu ket maysa a mangipateg ti karapatan ti tao.", pangasinense: "Sika ay tagapagtaguyod ed karapatan na tao."),
  WordExample(tagalog: "Bilang tagapagtaguyod, siya ay tumutulong sa mga mahihirap.", ilocano: "Kas mangipateg, tumulong isuna kadagiti napigsa.", pangasinense: "Bilang tagapagtaguyod, tumulong siya ed mga mahirap.")
  ],
  ),
  Word(
  english: "advantage",
  tagalog: "tagalog: kalamangan",
  ilocano: "ilocano: kangrunaan",
  pangasinense: "pangasinense: abong",
  examples: [
  WordExample(tagalog: "Ang pagkakaroon ng kaalaman ay isang kalamangan.", ilocano: "Ti panagkakaaramid ti ammo ket maysa a kangrunaan.", pangasinense: "So pagkakaroon na kaalaman ay abong."),
  WordExample(tagalog: "May mga kalamangan at kahinaan ang bawat desisyon.", ilocano: "Adda dagiti kalamangan ken kakurang ti tunggal desisyon.", pangasinense: "Awan so mga abong tan kahinaan so tunggal desisyon.")
  ],
  ),
  Word(
  english: "advise",
  tagalog: "tagalog: magpayo",
  ilocano: "ilocano: mangpayo",
  pangasinense: "pangasinense: magpayo",
  examples: [
  WordExample(tagalog: "Pinayuhan ko siya na mag-aral ng mabuti.", ilocano: "Pinayuhan ko isuna a nagadal a nasayaat.", pangasinense: "Pinayuhan ko ya mag-aral ya mabuti."),
  WordExample(tagalog: "Magsangguni ka sa eksperto para sa payo.", ilocano: "Sanggunianmo ti eksperto para iti pangpayo.", pangasinense: "Magsangguni ka ed eksperto para ed payo.")
  ],
  ),
  Word(
  english: "aesthetic",
  tagalog: "tagalog: estetiko",
  ilocano: "ilocano: estetiko",
  pangasinense: "pangasinense: estetiko",
  examples: [
  WordExample(tagalog: "Ang kanyang disenyo ay may mataas na estetiko.", ilocano: "Ti disenyo na ket addaan ti nangato a estetiko.", pangasinense: "So disenyo na ay atay ed mataas na estetiko."),
  WordExample(tagalog: "Mahilig siya sa mga estetiko na bagay.", ilocano: "Naimbag isuna iti dagiti estetiko a banag.", pangasinense: "Mahilig siya ed mga estetiko na bagay.")
  ],
  ),
  Word(
  english: "affect",
  tagalog: "tagalog: makaapekto",
  ilocano: "ilocano: makaapekto",
  pangasinense: "pangasinense: makaapekto",
  examples: [
  WordExample(tagalog: "Maaari itong makaapekto sa iyong kalusugan.", ilocano: "Mabalin daytoy nga makaapekto iti salud mo.", pangasinense: "Mabalin so makaapekto ed salud mo."),
  WordExample(tagalog: "Ang emosyon ay makakaapekto sa ating desisyon.", ilocano: "Ti emosyon ket makaapekto iti desisyon tayo.", pangasinense: "So emosyon ay makakaapekto ed desisyon tayo.")
  ],
  ),
  Word(
  english: "affirm",
  tagalog: "tagalog: pagtibayin",
  ilocano: "ilocano: ited",
  pangasinense: "pangasinense: pagtibayin",
  examples: [
  WordExample(tagalog: "Pagtibayin mo ang iyong mga desisyon.", ilocano: "Itedmo ti desisyon mo.", pangasinense: "Pagtibayin mo so desisyon mo."),
  WordExample(tagalog: "Kailangan nating pagtibayin ang ating layunin.", ilocano: "Masapul a ited tayo ti panggep tayo.", pangasinense: "Kasapulan tayong pagtibayin so layunin tayo.")
  ],
  ),
  Word(
  english: "afford",
  tagalog: "tagalog: kayang bilhin",
  ilocano: "ilocano: maikkan",
  pangasinense: "pangasinense: kayang bilhin",
  examples: [
  WordExample(tagalog: "Kaya kong bilhin ang bagong telepono.", ilocano: "Maikkan ko ti baro a telepono.", pangasinense: "Kaya ko ya bilhin so balon a telepono."),
  WordExample(tagalog: "Hindi ko kayang bilhin ang mamahaling damit.", ilocano: "Saan ko maikkan ti napateg a bado.", pangasinense: "Saan ko ya kayang bilhin so mahal a damit.")
  ],
  ),
  Word(
  english: "afraid",
  tagalog: "tagalog: takot",
  ilocano: "ilocano: natakot",
  pangasinense: "pangasinense: takot",
  examples: [
  WordExample(tagalog: "Takot ako sa madilim na lugar.", ilocano: "Natakot ak iti nadumaduma a lugar.", pangasinense: "Takot ak ed madilim na lugar."),
  WordExample(tagalog: "Huwag kang matakot na humingi ng tulong.", ilocano: "Saan ka nga agtakot a mangkidnap ti tulong.", pangasinense: "Saan ka ya matakot na humingi ed tulong.")
  ],
  ),
  Word(
  english: "against",
  tagalog: "tagalog: laban",
  ilocano: "ilocano: laban",
  pangasinense: "pangasinense: laban",
  examples: [
  WordExample(tagalog: "Labanan natin ang katiwalian.", ilocano: "Labanan tayo ti katiwalian.", pangasinense: "Labanan tayon so katiwalian."),
  WordExample(tagalog: "Hindi siya laban sa pagbabago.", ilocano: "Saan isuna a laban iti panagbalbaliw.", pangasinense: "Saan siya laban ed pagbabago.")
  ],
  ),
  Word(
  english: "agent",
  tagalog: "tagalog: ahente",
  ilocano: "ilocano: ahente",
  pangasinense: "pangasinense: ahente",
  examples: [
  WordExample(tagalog: "Siya ay isang ahente ng real estate.", ilocano: "Isu ket maysa a ahente ti real estate.", pangasinense: "Sika ay ahente ed real estate."),
  WordExample(tagalog: "Makikipag-ugnayan ako sa ahente bukas.", ilocano: "Makikidanggay ak iti ahente inton bigat.", pangasinense: "Makikipag-ugnayan ak ed ahente inton bigat.")
  ],
  ),
  Word(
  english: "agree",
  tagalog: "tagalog: sumang-ayon",
  ilocano: "ilocano: sumang-ayon",
  pangasinense: "pangasinense: sumang-ayon",
  examples: [
  WordExample(tagalog: "Sang-ayon ako sa iyong opinyon.", ilocano: "Sumang-ayon ak iti opinyon mo.", pangasinense: "Sumang-ayon ak ed opinyon mo."),
  WordExample(tagalog: "Mahalaga ang pagkakasunduan para sa amin.", ilocano: "Napateg ti pagkakasunduan para kadakami.", pangasinense: "Mahalaga so pagkakasunduan para ed sakon.")
  ],
  ),
  Word(
  english: "agriculture",
  tagalog: "tagalog: agrikultura",
  ilocano: "ilocano: agrikultura",
  pangasinense: "pangasinense: agrikultura",
  examples: [
  WordExample(tagalog: "Ang agrikultura ay mahalaga sa ating ekonomiya.", ilocano: "Ti agrikultura ket napateg iti ekonomiya tayo.", pangasinense: "So agrikultura ay mahalaga ed ekonomiya tayo."),
  WordExample(tagalog: "Dapat natin suportahan ang mga magsasaka sa agrikultura.", ilocano: "Masapul a suportaran tayo dagiti mannalon iti agrikultura.", pangasinense: "Dapat tayong suportahan so mga magsasaka ed agrikultura.")
  ],
  ),
  Word(
  english: "ahead",
  tagalog: "tagalog: pasulong",
  ilocano: "ilocano: uneg",
  pangasinense: "pangasinense: pasulong",
  examples: [
  WordExample(tagalog: "May mga hamon na darating sa hinaharap.", ilocano: "Adda dagiti pagsubok a sumang-at iti masakbayan.", pangasinense: "Ala, may mga hamon na darating ed hinaharap."),
  WordExample(tagalog: "Magplano ka nang maaga para sa mga gawain mo.", ilocano: "Agplano ka a masapul para kadagiti aramid mo.", pangasinense: "Magplano ka ya maaga para ed mga gawain mo.")
  ],
  ),
  Word(
  english: "aid",
  tagalog: "tagalog: tulong",
  ilocano: "ilocano: tulong",
  pangasinense: "pangasinense: tulong",
  examples: [
  WordExample(tagalog: "Kailangan nila ng tulong sa kanilang proyekto.", ilocano: "Masapul da ti tulong iti proyekto da.", pangasinense: "Kasapulan da so tulong ed proyekto da."),
  WordExample(tagalog: "Ang mga ahensya ng tulong ay nandiyan para magbigay ng suporta.", ilocano: "Dagiti ahensya ti tulong ket ada ditoy tapno mangted ti suporta.", pangasinense: "So mga ahensya na tulong ay andiyan para ed suporta.")
  ],
  ),
  Word(
  english: "aim",
  tagalog: "tagalog: layunin",
  ilocano: "ilocano: panggep",
  pangasinense: "pangasinense: layunin",
  examples: [
  WordExample(tagalog: "Ang layunin ng proyekto ay makamit ang kaunlaran.", ilocano: "Ti panggep ti proyekto ket makamit ti kaunlaran.", pangasinense: "So layunin na proyekto ay makamit so kaunlaran."),
  WordExample(tagalog: "Dapat malinaw ang iyong layunin sa buhay.", ilocano: "Masapul a klaro ti panggep mo iti biag.", pangasinense: "Dapat klaro so layunin mo ed biag.")
  ],
  ),
  Word(
  english: "air",
  tagalog: "tagalog: hangin",
  ilocano: "ilocano: angin",
  pangasinense: "pangasinense: hangin",
  examples: [
  WordExample(tagalog: "Ang sariwang hangin ay nakakapagpaginhawa.", ilocano: "Ti nasayaat a angin ket makapagpagenngana.", pangasinense: "So sariwang hangin ay nakakapagpaginhawa."),
  WordExample(tagalog: "Mahilig ako sa mga aktibidad sa labas kung saan may hangin.", ilocano: "Mahilig ak iti aktividad iti ruar a donde adda angin.", pangasinense: "Mahilig ak ed mga aktibidad na labas so andiyan angin.")
  ],
  ),
  Word(
  english: "alarm",
  tagalog: "tagalog: alarma",
  ilocano: "ilocano: alarma",
  pangasinense: "pangasinense: alarma",
  examples: [
  WordExample(tagalog: "Ang alarma ay tumunog ng maaga.", ilocano: "Ti alarma ket tumunog iti napudot.", pangasinense: "So alarma ay tumunog na maaga."),
  WordExample(tagalog: "Kailangan nating suriin ang alarma.", ilocano: "Masapul a suruten tayo ti alarma.", pangasinense: "Kasapulan tayong suriin so alarma.")
  ],
  ),
  Word(
  english: "alcohol",
  tagalog: "tagalog: alak",
  ilocano: "ilocano: alak",
  pangasinense: "pangasinense: alak",
  examples: [
  WordExample(tagalog: "Ang labis na alak ay hindi maganda sa kalusugan.", ilocano: "Ti naparabor a alak ket saan a nasayaat iti salud.", pangasinense: "So labis na alak ay di maganda ed salud."),
  WordExample(tagalog: "Iwasan ang pag-inom ng alak kung may mga gamot.", ilocano: "Iwasan ti panag-inom ti alak no adda dagiti gamot.", pangasinense: "Iwasan mo so pag-inom na alak no andiyan so mga gamot.")
  ],
  ),
  Word(
  english: "adjure",
  tagalog: "hinihiling",
  ilocano: "ipasaseseg",
  pangasinense: "ipagpangato",
  examples: [
  WordExample(tagalog: "Hinihiling ko sa iyo na sabihin ang totoo.", ilocano: "Ipapaseseg ko ed sika ya ibagam so tua.", pangasinense: "Ipagpangato ko sika na ibagam so tua."),
  WordExample(tagalog: "Mahalaga ang katotohanan, kaya hinihiling ko sa iyo na sabihin ito.", ilocano: "Naurnos ti pudno, isu nga ipapaseseg ko ed sika a ibagam daytoy.", pangasinense: "Importante so katotohanan, kaya ipagpangato ko sika na ibagam so tua.")
  ],
  ),

  Word(
  english: "settings",
  tagalog: "mga setting",
  ilocano: "setting",
  pangasinense: "mga setting",
  examples: [
  WordExample(tagalog: "Maaaring kailanganin mong ayusin ang iyong mga setting.", ilocano: "Nayarin kaukolan mon umanen iray setting mo.", pangasinense: "Mabalin a kasapulam nga i-adjust dagiti setting mo."),
  WordExample(tagalog: "Siguraduhing tama ang mga setting bago magpatuloy.", ilocano: "Siguradwen a nasayaat dagiti setting sakbay nga agtultuloy.", pangasinense: "Siguraduhen mo na ayos so mga setting mo bago magpatuloy.")
  ],
  ),

  Word(
  english: "administration",
  tagalog: "administrasyon",
  ilocano: "administrasion",
  pangasinense: "administrasyon",
  examples: [
  WordExample(tagalog: "Ang administrasyon ay nagmungkahi ng isang bagong patakaran.", ilocano: "Say administrasyon et angiproponi na balon totontonen.", pangasinense: "Ang administrasyon ay nagmungkahi so baro na patakaran."),
  WordExample(tagalog: "Ang administrasyon ay nagpatupad ng mga bagong batas.", ilocano: "Ti administrasion ket nagpatungpal ti baro a linteg.", pangasinense: "Ang administrasyon ay nagpatupad so baro na batas.")
  ],
  ),

  Word(
  english: "dedication",
  tagalog: "dedikasyon",
  ilocano: "dedikasion",
  pangasinense: "dedikasyon",
  examples: [
  WordExample(tagalog: "Talagang hinahangaan ko ang kanyang dedikasyon sa kanyang trabaho.", ilocano: "Talagan pandinayewan ko so dedikasyon to ed kimey to.", pangasinense: "Talagang hinahangaan ko so dedikasyon na ed kimey na."),
  WordExample(tagalog: "Ang dedikasyon niya sa kanyang pamilya ay kahanga-hanga.", ilocano: "Ti dedikasionna kadagiti pamilya na ket nakakabilig.", pangasinense: "So dedikasyon na ed pamilya na ay napakahanga.")
  ],
  ),
  Word(
  english: "admit",
  tagalog: "aminin",
  ilocano: "amin",
  pangasinense: "aksobien",
  examples: [
  WordExample(tagalog: "Nagpasya siyang aminin ang kanyang pagkakamali.", ilocano: "Denesidi ton aksobien so lingo to.", pangasinense: "Inkeddengna nga aminen ti biddutna."),
  WordExample(tagalog: "Minsan mahirap aminin ang mga pagkakamali natin.", ilocano: "Adda dagiti taw-tawen a narigat a aminen dagiti pagkakamali tayo.", pangasinense: "Minsan, mahirap aksobien so mga pagkakamali tayo.")
  ],
  ),

  Word(
  english: "admonish",
  tagalog: "paalalahanan",
  ilocano: "balakad",
  pangasinense: "simbawaen",
  examples: [
  WordExample(tagalog: "Kailangan niyang paalalahanan siya dahil sa pagiging huli.", ilocano: "Kaukolan ton simbawaen lapud atrasado.", pangasinense: "Masapul a balakadanna gapu iti panagladawna."),
  WordExample(tagalog: "Paalalahanan mo siya na huwag magmadali.", ilocano: "Balakadanna isuna a saan nga agdali.", pangasinense: "Simbawaen mo ya anawa so magmadali.")
  ],
  ),

  Word(
  english: "adopt",
  tagalog: "mag-ampon",
  ilocano: "mangampon",
  pangasinense: "mangampon",
  examples: [
  WordExample(tagalog: "Nagpasya silang mag-ampon ng isang bata.", ilocano: "Nandesisyon iran mangampon na sakey ya ugaw.", pangasinense: "Inkeddengda ti mangampon iti ubing."),
  WordExample(tagalog: "Maraming magulang ang nag-aampon para sa mas magandang kinabukasan ng bata.", ilocano: "Ad-adu a nagannak ti agaramid a mangampon para iti nasayaat a masakbayan ti ubing.", pangasinense: "Adu so magulang na nag-aampon para ed mas maganda so masakbayan na ubing.")
  ],
  ),

  Word(
  english: "adopted",
  tagalog: "inampon",
  ilocano: "inampon",
  pangasinense: "inampon",
  examples: [
  WordExample(tagalog: "Isa siyang adopted child mula sa ibang bansa.", ilocano: "Sikatoy inampon ya anak a nanlapud arum a bansa.", pangasinense: "Isu ket inampon nga anak manipud iti ganggannaet a pagilian."),
  WordExample(tagalog: "Maraming adopted children ang may espesyal na pangangailangan.", ilocano: "Ad-adu a inampon a ubing ti adda espesyal a kasapulan.", pangasinense: "Adu so inampon na ubing na agdama so espesyal na kailangan.")
  ],
  ),

  Word(
  english: "adult",
  tagalog: "nasa hustong gulang",
  ilocano: "matatken",
  pangasinense: "matatken",
  examples: [
  WordExample(tagalog: "Siya ay nasa hustong gulang na at maaaring gumawa ng kanyang sariling mga pagpipilian.", ilocano: "Sikatoy matatken la natan tan makapanggawa na sarili ton desisyon.", pangasinense: "Nataengan itan ken makapili iti bukodna."),
  WordExample(tagalog: "Bilang isang adult, kailangan niyang maging responsable.", ilocano: "Kas adult, masapul nga agbalin a responsable.", pangasinense: "Bilang matatken, kailangan na maging responsable.")
  ],
  ),

  Word(
  english: "adultery",
  tagalog: "pangangalunya",
  ilocano: "pikakalugoran",
  pangasinense: "pikalugoran",
  examples: [
  WordExample(tagalog: "Ang pangangalunya ay itinuturing na isang malubhang pagkakasala sa maraming kultura.", ilocano: "Say pikakalugoran et ipapasen ya seryoson kasalanan ed dakel a kultura.", pangasinense: "Maibilang a nadagsen a basol ti pannakikamalala iti adu a kultura."),
  WordExample(tagalog: "Maraming tao ang hindi nakakaunawa sa kahulugan ng pangangalunya.", ilocano: "Adu a tao ti saan a makasabot iti kahulugan ti pangangalunya.", pangasinense: "Adu so tao na di nakakaintindi ed kahulugan na pangangalunya.")
  ],
  ),

  Word(
  english: "advance",
  tagalog: "isulong",
  ilocano: "iyabante",
  pangasinense: "idur-as",
  examples: [
  WordExample(tagalog: "Plano nilang isulong ang kanilang karera ngayong taon.", ilocano: "Plano dan iyabante so karera da ed sayan taon.", pangasinense: "Planoda nga idur-as ti karerada ita a tawen."),
  WordExample(tagalog: "Mahalaga ang pag-advance ng iyong karera para sa iyong kinabukasan.", ilocano: "Napateg ti pag-advance ti karera mo para iti masakbayan mo.", pangasinense: "Importante so pag-advance na karera mo para ed masakbayan mo.")
  ],
  ),

  Word(
  english: "advantage",
  tagalog: "samantalahin",
  ilocano: "anamoten",
  pangasinense: "gundaway",
  examples: [
  WordExample(tagalog: "Kailangan nating samantalahin ang pagkakataong ito.", ilocano: "Kaukolan tayon anamoten iyan pankanawnawa.", pangasinense: "Masapul a gundawayantayo daytoy a gundaway."),
  WordExample(tagalog: "Samantalahin mo ang mga oportunidad na dumating.", ilocano: "Anamoten mo dagiti oportunidad a dumteng.", pangasinense: "Gundawayan mo so mga oportunidad na dumating.")
  ],
  ),

  Word(
  english: "adventure",
  tagalog: "pakikipagsapalaran",
  ilocano: "adbentura",
  pangasinense: "adbentura",
  examples: [
  WordExample(tagalog: "Ang paglalakbay ay isang kapana-panabik na pakikipagsapalaran.", ilocano: "Say biahe et makapalikliket ya adbentura.", pangasinense: "Makapagagar nga adbentura ti panagbiahe."),
  WordExample(tagalog: "Naghahanap ako ng mga bagong adventure sa buhay.", ilocano: "Agsapul ak ti baro a adbentura iti biag.", pangasinense: "Naghanap ak ed bagong adbentura ed biag ko.")
  ],
  ),

  Word(
  english: "advertisement",
  tagalog: "patalastas",
  ilocano: "anunsio",
  pangasinense: "anunsyo",
  examples: [
  WordExample(tagalog: "May nakita akong advertisement para sa isang bagong produkto.", ilocano: "Walay anengneng kon patalastas na balon produkto.", pangasinense: "Nakitak ti anunsio ti baro a produkto."),
  WordExample(tagalog: "Ang mga advertisement ay nakakatulong sa pagbebenta ng mga produkto.", ilocano: "Dagiti anunsio ket makatulong iti panaglakon dagiti produkto.", pangasinense: "So mga anunsyo ay nakakatulong ed pagbebenta na mga produkto.")
  ],
  ),
  Word(
  english: "advice",
  tagalog: "payo",
  ilocano: "balakad",
  pangasinense: "simbawa",
  examples: [
  WordExample(tagalog: "Binigyan niya ako ng ilang kapaki-pakinabang na payo.", ilocano: "Inikdan to ak na pigaran makatulong ya simbawa.", pangasinense: "Inikkannak iti sumagmamano a makatulong a balakad."),
  WordExample(tagalog: "Minsan mahirap tumanggap ng payo mula sa iba.", ilocano: "Saan nga rumbeng a tumanggap ti balakad manipud kadagiti dadduma.", pangasinense: "Adu so tao na hirap tumanggap ed payo na iba.")
  ],
  ),

  Word(
  english: "adze",
  tagalog: "adze",
  ilocano: "adze",
  pangasinense: "adze",
  examples: [
  WordExample(tagalog: "Gumamit ng adze ang karpintero upang hubugin ang kahoy.", ilocano: "Inusar na karpintero so adze pian naporma so tabla.", pangasinense: "Inusar ti karpintero ti adze a mangsukog iti kayo."),
  WordExample(tagalog: "Mahalaga ang paggamit ng adze sa paggawa ng mga kasangkapan.", ilocano: "Napateg ti panagusar ti adze iti panagaramid ti kasangkapan.", pangasinense: "Importante so panagusar na adze ed pamagporma na kasangkapan.")
  ],
  ),

  Word(
  english: "afar",
  tagalog: "malayo",
  ilocano: "adayo",
  pangasinense: "arawi",
  examples: [
  WordExample(tagalog: "Nakita ko siya sa malayo.", ilocano: "Anengneng ko ed arawi.", pangasinense: "Nakitak iti adayo."),
  WordExample(tagalog: "Minsan mas maganda ang tanaw mula sa malayo.", ilocano: "Adda dagiti oras a nasayaat ti kita manipud ed adayo.", pangasinense: "Adu so oras na mas maganda so tanaw na ed arawi.")
  ],
  ),

  Word(
  english: "affair",
  tagalog: "relasyon",
  ilocano: "relasion",
  pangasinense: "relasyon",
  examples: [
  WordExample(tagalog: "Nagkaroon sila ng romantic affair.", ilocano: "Walay romantikon relasyon da.", pangasinense: "Adda romantiko a relasionda."),
  WordExample(tagalog: "Maraming tao ang nahihirapan sa mga affair na ito.", ilocano: "Adu a tao ti narigatan kadagiti daytoy a relasion.", pangasinense: "Adu so tao na hirap ed mga relasion ya daytoy.")
  ],
  ),

  Word(
  english: "affection",
  tagalog: "pagmamahal",
  ilocano: "panangaro",
  pangasinense: "panangaro",
  examples: [
  WordExample(tagalog: "Ipinahayag niya ang kanyang pagmamahal sa kanyang pamilya.", ilocano: "Imbalikas toy panangaro to ed pamilya to.", pangasinense: "Inyebkasna ti panagayatna iti pamiliana."),
  WordExample(tagalog: "Ang pagpapakita ng affection ay mahalaga sa relasyon.", ilocano: "Ti panangipakita ti panangaro ket napateg iti relasion.", pangasinense: "Importante so panangipakita na panangaro ed relasyon.")
  ],
  ),

  Word(
  english: "affirm",
  tagalog: "pagtibayin",
  ilocano: "ibagak",
  pangasinense: "ibagak",
  examples: [
  WordExample(tagalog: "I can affirm na nandoon ako.", ilocano: "Nayarin ibagak ya wadman ak.", pangasinense: "Mapasingkedak nga addaak idi."),
  WordExample(tagalog: "Mahalaga ang pag-affirm ng iyong nararamdaman.", ilocano: "Napateg ti panag-affirm ti aniamin a nararamdaman mo.", pangasinense: "Importante so pag-affirm na anian ya nararamdaman mo.")
  ],
  ),

  Word(
  english: "afflicted",
  tagalog: "dinapuan",
  ilocano: "pinairap",
  pangasinense: "pinairap",
  examples: [
  WordExample(tagalog: "Siya ay dinapuan ng matinding karamdaman.", ilocano: "Sikatoy pinairap na graben sakit.", pangasinense: "Narigatan iti nakaro a sakit."),
  WordExample(tagalog: "Maraming tao ang afflicted ng mga sakit na hindi natutukoy.", ilocano: "Adu a tao ti pinairap dagiti sakit a saan a natuklasan.", pangasinense: "Adu so tao na pinairap ed sakit ya di natutukoy.")
  ],
  ),

  Word(
  english: "afloat",
  tagalog: "nakalutang",
  ilocano: "naglugan",
  pangasinense: "linmugan",
  examples: [
  WordExample(tagalog: "Nanatiling nakalutang ang bangka sa kabila ng bagyo.", ilocano: "Nansiansian linmugan so baloto anggaman ed bagyo.", pangasinense: "Nagtalinaed a naglugan ti bangka iti laksid ti bagyo."),
  WordExample(tagalog: "Kailangan ng bangka na manatiling afloat sa gitna ng bagyo.", ilocano: "Masapul ti baloto a naglugan kadagiti tengngaan ti bagyo.", pangasinense: "Kailangan na so bangka maglugan ed gitna na bagyo.")
  ],
  ),

  Word(
  english: "afraid",
  tagalog: "takot",
  ilocano: "buteng",
  pangasinense: "takot",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng takot sa panahon ng bagyo.", ilocano: "Natatakot legan na bagyo.", pangasinense: "Nariknana ti buteng bayat ti panaggurruod."),
  WordExample(tagalog: "Minsan takot ang nararamdaman sa mga hindi inaasahang pangyayari.", ilocano: "Adda dagiti oras a buteng ti maaramid iti saan a maaramid a pasamak.", pangasinense: "Adu so oras na takot so nararamdaman ed mga di inaasahang pangyayari.")
  ],
  ),

  Word(
  english: "afternoon",
  tagalog: "hapon",
  ilocano: "malem",
  pangasinense: "ngarem",
  examples: [
  WordExample(tagalog: "Nasiyahan kami sa isang magandang hapon sa parke.", ilocano: "Nanliketan mi so marakep ya ngarem ed parke.", pangasinense: "Tinagiragsakmi ti nakaay-ayat a malem iti parke."),
  WordExample(tagalog: "Masarap magpahinga sa hapon pagkatapos ng trabaho.", ilocano: "Naimas ti agpaturong iti malem kalpasan ti trabaho.", pangasinense: "Masarap so magpahinga ed ngarem pagkatapos na trabaho.")
  ],
  ),

  Word(
  english: "again",
  tagalog: "muli",
  ilocano: "manen",
  pangasinense: "lamet",
  examples: [
  WordExample(tagalog: "Magkikita pa tayo bukas.", ilocano: "Nanengneng ta ka lamet nabuas.", pangasinense: "Makitakto manen inton bigat."),
  WordExample(tagalog: "Sana makilala kita muli sa susunod na pagkakataon.", ilocano: "Sana makilala ka manen iti sumaruno a pagkakataon.", pangasinense: "Sana makilala ta manen ed susunod na pagkakataon.")
  ],
  ),

  Word(
  english: "fight",
  tagalog: "nilabanan",
  ilocano: "nikiranget",
  pangasinense: "nilabanan",
  examples: [
  WordExample(tagalog: "Nilabanan nila ang bagong batas.", ilocano: "Nilabanan da so balon ganggan.", pangasinense: "Nakirangetda iti baro a linteg."),
  WordExample(tagalog: "Minsan ang pakikibaka ay mahalaga para sa karapatan.", ilocano: "Adda dagiti oras a napateg ti pakikibaka para iti karapatan.", pangasinense: "Adu so oras na importante so pakikibaka para ed karapatan.")
  ],
  ),

  Word(
  english: "agency",
  tagalog: "ahensya",
  ilocano: "ahensia",
  pangasinense: "ahensia",
  examples: [
  WordExample(tagalog: "Ang ahensya ay responsable para sa pangangalaga sa kapaligiran.", ilocano: "Say ahensia so responsable ed proteksion na kaliberliber.", pangasinense: "Ti ahensia ti akinrebbeng iti pannakasalaknib ti aglawlaw."),
  WordExample(tagalog: "Maraming ahensya ang tumutulong sa mga nangangailangan.", ilocano: "Adu a ahensia ti tumulong kadagiti agkasapulan.", pangasinense: "Adu so ahensia na tumutulong ed mga nangangailangan.")
  ],
  ),

  Word(
  english: "agent",
  tagalog: "ahente",
  ilocano: "ahente",
  pangasinense: "ahente",
  examples: [
  WordExample(tagalog: "Inayos ng ahente ang pagpupulong.", ilocano: "Say ahente so angiyuksoy ed miting.", pangasinense: "Inyurnos ti ahente ti miting."),
  WordExample(tagalog: "Ang ahente ay nag-aasikaso ng mga detalye.", ilocano: "Ti ahente ket agaramid kadagiti detalye.", pangasinense: "Ti ahente ay ag-asikaso ed mga detalye.")
  ],
  ),
  Word(
  english: "aggravate",
  tagalog: "magpalala",
  ilocano: "mangpakaro",
  pangasinense: "paermenen",
  examples: [
  WordExample(tagalog: "Huwag hayaan ang maliliit na isyu na magpalala sa iyo.", ilocano: "Agmo aabuloyan ya paermenen ka na saray angkekelag ya isyu.", pangasinense: "Dimo ipalubos a dagiti babassit nga isyu ti mangpakaro kenka."),
  WordExample(tagalog: "Minsan ang mga simpleng problema ay nagiging sanhi ng aggravation.", ilocano: "Adda dagiti saan a nakaririkna a problema nga mangpapakaro.", pangasinense: "Adu so simpleng problema na nagiging sanhi na aggravation.")
  ],
  ),

  Word(
  english: "agile",
  tagalog: "maliksi",
  ilocano: "maples",
  pangasinense: "maples",
  examples: [
  WordExample(tagalog: "Siya ay maliksi at mabilis sa kanyang mga paa.", ilocano: "Sikatoy maples tan maples ya onalagey.", pangasinense: "Nasiglat ken napartak ti panagtakderna."),
  WordExample(tagalog: "Ang mga atleta ay kadalasang agile sa kanilang mga galaw.", ilocano: "Dagiti atleta kadawyan a maples iti aramidda.", pangasinense: "Adu so atleta na agile so galaw na.")
  ],
  ),

  Word(
  english: "agitation",
  tagalog: "pagkabalisa",
  ilocano: "inkaapag-apag",
  pangasinense: "inkaapag-apag",
  examples: [
  WordExample(tagalog: "Kapansin-pansin ang kanyang pagkabalisa sa pulong.", ilocano: "Naimano so inkaapag-apag to legan na miting.", pangasinense: "Nadlaw ti panagriribukna bayat ti gimong."),
  WordExample(tagalog: "Ang pagkabalisa niya ay nagbigay-diin sa kanyang sitwasyon.", ilocano: "Ti panagkabalisa na ket nangted ti panaglaplapus ti sitwasyon na.", pangasinense: "Ti pagkabalisa na nagbigay-diin ed sitwasyon na.")
  ],
  ),

  Word(
  english: "agony",
  tagalog: "paghihirap",
  ilocano: "mansasakit",
  pangasinense: "mansasakit",
  examples: [
  WordExample(tagalog: "Siya ay nasa paghihirap pagkatapos ng aksidente.", ilocano: "Sikatoy mansasakit kayari na aksidente.", pangasinense: "Napalalo ti rigatna kalpasan ti aksidente."),
  WordExample(tagalog: "Ang agony na naramdaman niya ay hindi matutumbasan ng kahit anong gamot.", ilocano: "Ti agony a narikna na ket saan a matungpal ti aniaman a gamot.", pangasinense: "Anya so agony na narikna na di matutumbasan ed anuman na gamot.")
  ],
  ),

  Word(
  english: "agreement",
  tagalog: "kasunduan",
  ilocano: "akapanpaknaan",
  pangasinense: "akapanpaknaan",
  examples: [
  WordExample(tagalog: "Nagkasundo kami pagkatapos ng maraming talakayan.", ilocano: "Akapanpaknaan kami kayari na dakel a pantotongtong.", pangasinense: "Nagtunoskami kalpasan ti adu a panagsasarita."),
  WordExample(tagalog: "Ang kasunduan ay mahalaga sa pagtutulungan.", ilocano: "Ti kasunduan ket napateg iti panagtulungan.", pangasinense: "Importante so kasunduan ed pagtutulungan.")
  ],
  ),

  Word(
  english: "agriculture",
  tagalog: "agrikultura",
  ilocano: "agrikultura",
  pangasinense: "agrikultura",
  examples: [
  WordExample(tagalog: "Ang agrikultura ay mahalaga sa ekonomiya.", ilocano: "Say agrikultura et importante ed ekonomya.", pangasinense: "Napateg ti agrikultura iti ekonomia."),
  WordExample(tagalog: "Ang mga farmers ay may malaking papel sa agrikultura.", ilocano: "Dagiti farmers ket adda dakkel a papel iti agrikultura.", pangasinense: "Adu so farmers na may malaking papel ed agrikultura.")
  ],
  ),

  Word(
  english: "ahead",
  tagalog: "nauuna",
  ilocano: "akauna",
  pangasinense: "akauna",
  examples: [
  WordExample(tagalog: "Nauuna kami sa iskedyul sa proyekto.", ilocano: "Akauna kami ed eskedyul ed proyekto.", pangasinense: "Nasaksakbaykami iti eskediul iti proyekto."),
  WordExample(tagalog: "Mahalaga ang pagiging ahead sa mga deadline.", ilocano: "Napateg ti agahead kadagiti deadline.", pangasinense: "Importante so agahead ed mga deadline.")
  ],
  ),

  Word(
  english: "aid",
  tagalog: "tulong",
  ilocano: "tulong",
  pangasinense: "tulong",
  examples: [
  WordExample(tagalog: "Ang tulong na ibinigay ay mahalaga para sa pagbawi.", ilocano: "Say tulong ya inter et importante parad pakabawi to.", pangasinense: "Nasken ti naited a tulong para iti panagimbag."),
  WordExample(tagalog: "Ang mga tao ay nangangailangan ng aid sa panahon ng krisis.", ilocano: "Dagiti tao ket kasapulan ti tulong iti tiempo ti krisis.", pangasinense: "Adu so tao na nangangailangan ed tulong ed panahon na krisis.")
  ],
  ),

  Word(
  english: "aim",
  tagalog: "layunin",
  ilocano: "panggep",
  pangasinense: "panggep",
  examples: [
  WordExample(tagalog: "Ang layunin ko ay matapos ang proyektong ito sa susunod na linggo.", ilocano: "Say get ko et nasumpal ko yan proyekto ed ontumbok a simba.", pangasinense: "Panggepko a malpas daytoy a proyekto inton sumaruno a lawas."),
  WordExample(tagalog: "Ang tamang aim ay susi sa tagumpay.", ilocano: "Ti umno a panggep ket susing iti panagbalin a naragsak.", pangasinense: "Ti wasto a panggep ay susi ed tagumpay.")
  ],
  ),

  Word(
  english: "air",
  tagalog: "hangin",
  ilocano: "dagem",
  pangasinense: "dagem",
  examples: [
  WordExample(tagalog: "Sariwa at malinis ang hangin.", ilocano: "Presko tan malinis so dagem.", pangasinense: "Napresko ken nadalus ti angin."),
  WordExample(tagalog: "Minsan ang hangin ay nagdadala ng bagong simoy.", ilocano: "Adda dagiti oras a ti dagem ket mangipaay ti baro a simoy.", pangasinense: "Adu so oras na ti dagem ay nagdadala ed bagong simoy.")
  ],
  ),

  Word(
  english: "ajar",
  tagalog: "nakaawang",
  ilocano: "akalukas",
  pangasinense: "akalukas",
  examples: [
  WordExample(tagalog: "Naiwang nakaawang ang pinto.", ilocano: "Say puerta et akalukas.", pangasinense: "Nabaybay-an a nakalukat ti ridaw."),
  WordExample(tagalog: "Ang pinto ay palaging nakaawang sa malamig na panahon.", ilocano: "Ti puerta ket agtultuloy a nakaawang iti nabanglo a tiempo.", pangasinense: "Ti ridaw ay palaging akalukas ed malamig na panahon.")
  ],
  ),

  Word(
  english: "alarm",
  tagalog: "alarma",
  ilocano: "alarma",
  pangasinense: "alarma",
  examples: [
  WordExample(tagalog: "Tumunog ang alarm noong 6 AM.", ilocano: "Nan-alarma nen alas-6 na kabuasan.", pangasinense: "Nagpukaw ti alarma iti alas 6 ti bigat."),
  WordExample(tagalog: "Minsan ang alarm ay nakakasira ng tulog.", ilocano: "Adda dagiti oras a ti alarma ket makadadael ti tulog.", pangasinense: "Adu so oras na ti alarma ay nakakasira ed tulog.")
  ],
  ),

  Word(
  english: "albumen",
  tagalog: "albumen",
  ilocano: "albumen",
  pangasinense: "albumen",
  examples: [
  WordExample(tagalog: "Ang albumen ng itlog ay ang puting bahagi.", ilocano: "Say albumen na itlog et say amputin parte.", pangasinense: "Ti albumen ti itlog ti puraw a paset."),
  WordExample(tagalog: "Ang albumen ay naglalaman ng protina.", ilocano: "Ti albumen ket naglaon ti protina.", pangasinense: "Ti albumen ay naglalaman ed protina.")
  ],
  ),

  Word(
  english: "alcohol",
  tagalog: "alak",
  ilocano: "arak",
  pangasinense: "arak",
  examples: [
  WordExample(tagalog: "Ang alkohol ay dapat na ubusin nang responsable.", ilocano: "Nepeg ya responsable ya inumen so alak.", pangasinense: "Rumbeng a responsable ti panaginum ti arak."),
  WordExample(tagalog: "Ang labis na pag-inom ng alkohol ay masama sa kalusugan.", ilocano: "Ti sobra a panaginum ti alak ket saan a nasayaat para iti salud.", pangasinense: "Anya so sobra na panaginum na alak ay masama ed kalusugan.")
  ],
  ),

  Word(
  english: "alert",
  tagalog: "alerto",
  ilocano: "alerto",
  pangasinense: "alerto",
  examples: [
  WordExample(tagalog: "Ang alerto ay inilabas ng madaling araw.", ilocano: "Say alerto et niiter nen masakbay ed kabuasan.", pangasinense: "Nasapa a naipaulog ti alerto."),
  WordExample(tagalog: "Mahalaga ang alerto sa mga panahon ng panganib.", ilocano: "Napateg ti alerto iti panahon ti peligro.", pangasinense: "Importante so alerto ed mga panahon na panganib.")
  ],
  ),

  Word(
  english: "alien",
  tagalog: "alien",
  ilocano: "dayo",
  pangasinense: "dayo",
  examples: [
  WordExample(tagalog: "Para siyang alien sa bagong bansa.", ilocano: "Singa sikatoy dayo ed balon bansa.", pangasinense: "Kasla ganggannaet iti baro a pagilian ti riknana."),
  WordExample(tagalog: "Ang mga dayuhan ay madalas na nahihirapan sa kanilang mga karanasan.", ilocano: "Dagiti dayo ket kadawyan a nagrigat iti aramidda.", pangasinense: "Adu so dayuhan na madalas nahihirapan ed karanasan na.")
  ],
  ),

  Word(
  english: "alight",
  tagalog: "magliyab",
  ilocano: "nagdisso",
  pangasinense: "nagdisso",
  examples: [
  WordExample(tagalog: "Nagsimulang magliyab ang apoy sa kahoy.", ilocano: "Ginmapon sinmabi so ngalab ed kiew.", pangasinense: "Nangrugin a nagdisso dagiti gil-ayab iti kayo."),
  WordExample(tagalog: "Kapag nagliyab ang apoy, mag-ingat sa paligid.", ilocano: "No nagdisso ti ngalab, agtalinaed a maingat iti paligid.", pangasinense: "Kapag nagdisso ti gil-ayab, mag-ingat ed paligid.")
  ],
  ),

  Word(
  english: "alike",
  tagalog: "magkatulad",
  ilocano: "agpapada",
  pangasinense: "mipadparan",
  examples: [
  WordExample(tagalog: "Magkatulad sila sa kanilang pag-iisip.", ilocano: "Mipadparan maong so panagnonot da.", pangasinense: "Agpapada unay ti panagpampanunotda."),
  WordExample(tagalog: "Ang kanilang mga pananaw ay magkatulad.", ilocano: "Dagiti pananawda ket agpapada.", pangasinense: "Mipadparan so pananaw da.")
  ],
  ),
  Word(
  english: "autumn",
  tagalog: "tagalog: taglagas",
  ilocano: "ilocano: panagtutudo",
  pangasinense: "pangasinense: tiagew",
  examples: [
  WordExample(tagalog: "Ang mga puno ay buhay na may kulay sa taglagas.", ilocano: "Sibibiag dagiti kayo nga addaan kolor iti panagtutudo.", pangasinense: "Saray kiew et mabilay ed kolor da no tiagew."),
  WordExample(tagalog: "Ang mga dahon ay nagiging dilaw at pula sa taglagas.", ilocano: "Agbalin a dalus ken napudot dagiti dahon iti panagtutudo.", pangasinense: "Aldaw ed masiklab so dahon ed taglagas.")
  ],
  ),

  Word(
  english: "meeting",
  tagalog: "tagalog: pulong",
  ilocano: "ilocano: gimong",
  pangasinense: "pangasinense: miting",
  examples: [
  WordExample(tagalog: "Inaanyayahan ang lahat na dumalo sa pulong.", ilocano: "Amin et nayarin onatendi ed miting.", pangasinense: "Mabalin a tumabuno ti amin iti gimong."),
  WordExample(tagalog: "May mahalagang pulong bukas.", ilocano: "Adda napateg a gimong inton bigat.", pangasinense: "Alao so importante ed miting bukas.")
  ],
  ),

  Word(
  english: "graffiti",
  tagalog: "tagalog: graffiti",
  ilocano: "ilocano: graffiti",
  pangasinense: "pangasinense: graffiti",
  examples: [
  WordExample(tagalog: "Napuno ng graffiti ang makipot na eskinita.", ilocano: "Napno ti akikid nga eskinita kadagiti graffiti.", pangasinense: "Napno so mainget ya eskinita kadagiti graffiti."),
  WordExample(tagalog: "Ang graffiti ay bahagi ng sining sa lungsod.", ilocano: "Ti graffiti ket paset ti sining iti siudad.", pangasinense: "So graffiti ay parte na sining ed syudad.")
  ],
  ),

  Word(
  english: "alligator",
  tagalog: "tagalog: buwaya",
  ilocano: "ilocano: aligator",
  pangasinense: "pangasinense: buaya",
  examples: [
  WordExample(tagalog: "Lumangoy ang buwaya sa latian.", ilocano: "Naglangoy ti aligator iti libtong.", pangasinense: "Nanlangoy so buaya ed lawak."),
  WordExample(tagalog: "Ang buwaya ay matatagpuan sa mga latian.", ilocano: "Ti buwaya ket masarakan kadagiti libtong.", pangasinense: "So buaya ay masalubong ed lawak.")
  ],
  ),

  Word(
  english: "questions",
  tagalog: "tagalog: tanong",
  ilocano: "ilocano: saludsod",
  pangasinense: "pangasinense: katanungan",
  examples: [
  WordExample(tagalog: "Dapat kang maglaan ng oras para sa mga tanong.", ilocano: "Rumbeng nga ipalubosmo ti panawen para kadagiti saludsod.", pangasinense: "Dapat ka maglaan so oras para ed katanungan."),
  WordExample(tagalog: "Walang masamang magtanong.", ilocano: "Awan ti dakes a mangsaludsod.", pangasinense: "Awan masamang agtanong.")
  ],
  ),
  Word(
  english: "nature",
  tagalog: "tagalog: kalikasan",
  ilocano: "ilocano: pakayari",
  pangasinense: "pangasinense: nakaparsuaan",
  examples: [
  WordExample(tagalog: "Ang makapangyarihang kapangyarihan ng kalikasan ay maaaring maging kahanga-hanga.", ilocano: "Say makapanyarin-amin a pakayari na palsa et makapadinayew.", pangasinense: "Mabalin a makapaamanga ti mannakabalin-amin a pannakabalin ti nakaparsuaan."),
  WordExample(tagalog: "Mahalaga ang pangangalaga sa kalikasan.", ilocano: "Napateg ti panangsalimetmet ti pakayari.", pangasinense: "Mahalaga so pangalaga ed nakaparsuaan.")
  ],
  ),

  Word(
  english: "late",
  tagalog: "tagalog: huli",
  ilocano: "ilocano: atrasado",
  pangasinense: "pangasinense: naladaw",
  examples: [
  WordExample(tagalog: "Halos ma-late siya sa meeting.", ilocano: "Ngalngali la atrasado ed miting.", pangasinense: "Dandani naladaw iti gimong."),
  WordExample(tagalog: "Mas maaga siyang dumating kaysa huli.", ilocano: "Naimbag a dumating isuna nga imbes a naglabi.", pangasinense: "Mas maaga so pagdating na kesa sa naladaw.")
  ],
  ),

  Word(
  english: "alone",
  tagalog: "tagalog: nag-iisa",
  ilocano: "ilocano: agmaymaysa",
  pangasinense: "pangasinense: nag-iisa",
  examples: [
  WordExample(tagalog: "Pakiramdam niya ay nag-iisa siya sa isang masikip na silid.", ilocano: "Nalikna ton bukbukor to ed sakey a kuarton napno na totoo.", pangasinense: "Nariknana nga agmaymaysa iti napusek a siled."),
  WordExample(tagalog: "Minsan ay mas mabuting mag-isa.", ilocano: "Saan a malaksid, nasayaat a nagmaymaysa.", pangasinense: "Minsan mas mabuting mag-isa.")
  ],
  ),

  Word(
  english: "sunset",
  tagalog: "tagalog: paglubog ng araw",
  ilocano: "ilocano: ilelennek ti init",
  pangasinense: "pangasinense: onseselek lay banwa",
  examples: [
  WordExample(tagalog: "Naglakad kami sa tabing dagat sa paglubog ng araw.", ilocano: "Nanakar kami ed gilig na dayat nen onseselek lay banwa.", pangasinense: "Nagnakami iti igid ti baybay iti ilelennek ti init."),
  WordExample(tagalog: "Ang sunset ay napakaganda sa dalampasigan.", ilocano: "Ti ilelennek ti init ket napintas unay iti baybay.", pangasinense: "Ang sunset ay napakaganda ed dalampasigan.")
  ],
  ),

  Word(
  english: "event",
  tagalog: "tagalog: kaganapan",
  ilocano: "ilocano: ebento",
  pangasinense: "pangasinense: pasken",
  examples: [
  WordExample(tagalog: "Umupo siya sa tabi ng kanyang kaibigan sa kaganapan.", ilocano: "Akayurong ed abay na kaaro to legan na ebento.", pangasinense: "Nagtugaw iti abay ti gayyemna bayat ti pasken."),
  WordExample(tagalog: "Maraming tao sa kaganapan.", ilocano: "Adu ti tao iti ebento.", pangasinense: "Alao so ading ed pasken.")
  ],
  ),
  Word(
  english: "alphabet",
  tagalog: "tagalog: alpabeto",
  ilocano: "ilocano: alpabeto",
  pangasinense: "pangasinense: alpabeto",
  examples: [
  WordExample(tagalog: "Ang alpabeto ay binubuo ng 26 na titik.", ilocano: "Say alpabeto et walaan na 26 a letra.", pangasinense: "Buklen ti alpabeto ti 26 a letra."),
  WordExample(tagalog: "Mahalaga ang alpabeto sa pagbasa at pagsusulat.", ilocano: "Napateg ti alpabeto iti panagbasa ken panagsurat.", pangasinense: "Mahalaga so alpabeto ed pagbasa tan pagsurat.")
  ],
  ),

  Word(
  english: "assignment",
  tagalog: "tagalog: assignment",
  ilocano: "ilocano: assignment",
  pangasinense: "pangasinense: assignment",
  examples: [
  WordExample(tagalog: "Natapos ko na ang assignment ko.", ilocano: "Asumpal ko lay asainmin ko.", pangasinense: "Nalpaskon ti assignment-ko."),
  WordExample(tagalog: "Ang assignment ay dapat isumite bukas.", ilocano: "Ti assignment ket masapul nga isubmit iti bigat.", pangasinense: "Dapat isumit so assignment ed bukas.")
  ],
  ),

  Word(
  english: "club",
  tagalog: "tagalog: club",
  ilocano: "ilocano: klab",
  pangasinense: "pangasinense: club",
  examples: [
  WordExample(tagalog: "Gusto ko rin sumali sa club.", ilocano: "Labay ko met so mibali ed klab.", pangasinense: "Kayatko met ti makikadua iti club."),
  WordExample(tagalog: "May meeting ang club sa Sabado.", ilocano: "Adda miting ti klab inton Sabado.", pangasinense: "Alao so meeting ed club ed Sabado.")
  ],
  ),

  Word(
  english: "alternate",
  tagalog: "tagalog: magpalit",
  ilocano: "ilocano: saliwen",
  pangasinense: "pangasinense: saliwen",
  examples: [
  WordExample(tagalog: "Maaari kang magpalit sa pagitan ng dalawang opsyon.", ilocano: "Sarag mon saliwen so duaran opsyon.", pangasinense: "Mabalinmo ti agsinnublat iti nagbaetan ti dua a pagpilian."),
  WordExample(tagalog: "Maaari mong palitan ang mga gawain.", ilocano: "Mabalin mo nga saliwen dagiti ar-aramiden.", pangasinense: "Mabalin mo saliwen so gawi.")
  ],
  ),

  Word(
  english: "rain",
  tagalog: "tagalog: umulan",
  ilocano: "ilocano: agtudo",
  pangasinense: "pangasinense: mauran",
  examples: [
  WordExample(tagalog: "Kahit umuulan, lumabas kami.", ilocano: "Anggano mauran, pinmaway kami.", pangasinense: "Nupay agtudo, rimmuarkami."),
  WordExample(tagalog: "Umulan nang malakas kahapon.", ilocano: "Nagtudo a napigsa idi kalman.", pangasinense: "Nakanor so mauran ed kahapon.")
  ],
  ),

  Word(
  english: "altitude",
  tagalog: "tagalog: taas",
  ilocano: "ilocano: nangato",
  pangasinense: "pangasinense: mataas",
  examples: [
  WordExample(tagalog: "Lumipad ang eroplano sa mataas na lugar.", ilocano: "Say eroplano et tinmekkiab ed atagey a pasen.", pangasinense: "Nagtayab ti eroplano iti nangato a lugar."),
  WordExample(tagalog: "Ang taas ng bundok ay nakakamangha.", ilocano: "Ti nangato ti bantay ket nakakabighani.", pangasinense: "Ang taas na bundok ay nakaka-amaze.")
  ],
  ),

  Word(
  english: "ideas",
  tagalog: "tagalog: ideya",
  ilocano: "ilocano: ideya",
  pangasinense: "pangasinense: ideya",
  examples: [
  WordExample(tagalog: "Ang dalawang ideya ay gumagana nang maayos.", ilocano: "Say duaran ideya et mankakasakey a maong.", pangasinense: "Interamente a nasayaat ti panagtrabaho ti dua nga ideya."),
  WordExample(tagalog: "Minsan, ang mga ideya ay nagmumula sa karanasan.", ilocano: "Saan a kasapulan, dagiti ideya ket naggapu kadagiti naeksperiensia.", pangasinense: "Minsan, so ideya ay nagagaling ed karanasan.")
  ],
  ),

  Word(
  english: "heart",
  tagalog: "tagalog: puso",
  ilocano: "ilocano: pusok",
  pangasinense: "pangasinense: pusok",
  examples: [
  WordExample(tagalog: "Palagi siyang nasa puso ko.", ilocano: "Sikatoy lawas walad pusok.", pangasinense: "Kanayonto nga adda iti pusok."),
  WordExample(tagalog: "Ang puso ay simbolo ng pag-ibig.", ilocano: "Ti puso ket simbolo ti ayat.", pangasinense: "So puso ay simbolo na pag-ibig.")
  ],
  ),

  Word(
  english: "store",
  tagalog: "tagalog: tindahan",
  ilocano: "ilocano: tindaan",
  pangasinense: "pangasinense: tiendaan",
  examples: [
  WordExample(tagalog: "Papunta ako ngayon sa tindahan.", ilocano: "Onla ak natan ed tindaan.", pangasinense: "Mapanak ita iti tiendaan."),
  WordExample(tagalog: "Bumili ako ng gatas sa tindahan.", ilocano: "Nagbili ak ti gatas ed tindaan.", pangasinense: "Nagbilin ak so gatas ed tiendaan.")
  ],
  ),

  Word(
  english: "news",
  tagalog: "tagalog: balita",
  ilocano: "ilocano: balita",
  pangasinense: "pangasinense: damag",
  examples: [
  WordExample(tagalog: "Magugulat ka sa balita.", ilocano: "Mankelaw kayo ed balita.", pangasinense: "Masdaawnaka ti damag."),
  WordExample(tagalog: "Ang balita ay tungkol sa nangyari kahapon.", ilocano: "Ti balita ket maipanggep iti napasamak idi kalman.", pangasinense: "So balita ay maipanggep ed nangyari ed kahapon.")
  ],
  ),
  Word(
  english: "ambition",
  tagalog: "tagalog: ambisyon",
  ilocano: "ilocano: ambisyon",
  pangasinense: "pangasinense: ambisyon",
  examples: [
  WordExample(tagalog: "Ang kanyang ambisyon ay maging isang doktor.", ilocano: "Say ambisyon to et magmaliw ya doktor.", pangasinense: "Ti ambisionna ket agbalin a doktor."),
  WordExample(tagalog: "Ang ambisyon ay nagtutulak sa atin na magsikap.", ilocano: "Ti ambisyon ket mangpatalged kadatayo a mangsikap.", pangasinense: "So ambisyon ay nagtutulak ed sikanan na agtuluy.")
  ],
  ),

  Word(
  english: "amen",
  tagalog: "tagalog: amen",
  ilocano: "ilocano: amen",
  pangasinense: "pangasinense: amen",
  examples: [
  WordExample(tagalog: "Sinabi niyang amen sa pagtatapos ng panalangin.", ilocano: "Inkuan ton amen diad sampot na pikakasi.", pangasinense: "Kinunana nga amen iti ngudo ti kararag."),
  WordExample(tagalog: "Lahat ay sumang-ayon at nag-amen.", ilocano: "Amin ket umayon ken nag-amen.", pangasinense: "Alao so amin nag-amen.")
  ],
  ),

  Word(
  english: "amendment",
  tagalog: "tagalog: amyenda",
  ilocano: "ilocano: amyenda",
  pangasinense: "pangasinense: amyenda",
  examples: [
  WordExample(tagalog: "Ang pag-amyenda ay ipinasa ng Kongreso.", ilocano: "Say amyenda et inpasa na Kongreso.", pangasinense: "Ti enmienda ket impasa ti Kongreso."),
  WordExample(tagalog: "Ang amyenda ay nagdudulot ng pagbabago.", ilocano: "Ti amyenda ket mangited ti panagbalbaliw.", pangasinense: "Ti amyenda ay nagdadala ed pagbabago.")
  ],
  ),

  Word(
  english: "amiable",
  tagalog: "tagalog: magiliw",
  ilocano: "ilocano: maabagey",
  pangasinense: "pangasinense: naasi",
  examples: [
  WordExample(tagalog: "Siya ay may magiliw na personalidad.", ilocano: "Sikatoy walaan na maabagey a personalidad.", pangasinense: "Addaan iti naasi a personalidad."),
  WordExample(tagalog: "Ang magiliw na tao ay madaling lapitan.", ilocano: "Ti maabagey a tao ket nasayaat a lapitan.", pangasinense: "So naasi na tao ay madaling lapitan.")
  ],
  ),

  Word(
  english: "amidst",
  tagalog: "tagalog: gitna",
  ilocano: "ilocano: tengnga",
  pangasinense: "pangasinense: pegley",
  examples: [
  WordExample(tagalog: "Nasa gitna sila ng mainit na debate.", ilocano: "Wala ra ed pegley na ambetel a debati.", pangasinense: "Addada iti tengnga ti nabara a debate."),
  WordExample(tagalog: "Nasa gitna ng gulo ang katotohanan.", ilocano: "Adda iti tengnga ti gulo ti kinapudno.", pangasinense: "Alao so katotohanan ed gitna na gulo.")
  ],
  ),

  Word(
  english: "hidden",
  tagalog: "tagalog: nakatago",
  ilocano: "ilocano: nailemmeng",
  pangasinense: "pangasinense: inyamot",
  examples: [
  WordExample(tagalog: "Nakatago ang libro sa gitna ng iba.", ilocano: "Say libro et inyamot ed limog na arum.", pangasinense: "Nailemmeng ti libro kadagiti dadduma."),
  WordExample(tagalog: "May mga nakatagong kayamanan sa ilalim ng lupa.", ilocano: "Adda dagiti nakatago a kayamanan iti baba ti daga.", pangasinense: "Alao so nakatagong kayamanan ed baba na daga.")
  ],
  ),

  Word(
  english: "total",
  tagalog: "tagalog: kabuuang halaga",
  ilocano: "ilocano: dagup",
  pangasinense: "pangasinense: baleg",
  examples: [
  WordExample(tagalog: "Ang kabuuang halaga ay mas malaki kaysa sa inaasahan.", ilocano: "Mas baleg so dagup nen say inilaloan.", pangasinense: "Dakdakkel ti dagup a gatad ngem iti ninamnama."),
  WordExample(tagalog: "Kailangan mong isulat ang kabuuang halaga.", ilocano: "Masapul mo nga isurat ti kabuuang halaga.", pangasinense: "Dapat isurat mo so kabuuang halaga.")
  ],
  ),

  Word(
  english: "amusement park",
  tagalog: "tagalog: amusement park",
  ilocano: "ilocano: amusement park",
  pangasinense: "pangasinense: amusement park",
  examples: [
  WordExample(tagalog: "Ang amusement park ay masikip kapag weekend.", ilocano: "Say amusement park et napno na totoo no sampot-simba.", pangasinense: "Napusek ti amusement park no ngudo ti lawas."),
  WordExample(tagalog: "Masaya ang mga bata sa amusement park.", ilocano: "Naragsak dagiti ubing iti amusement park.", pangasinense: "Masaya so bata ed amusement park.")
  ],
  ),

  Word(
  english: "apple",
  tagalog: "tagalog: mansanas",
  ilocano: "ilocano: mansanas",
  pangasinense: "pangasinense: mansanas",
  examples: [
  WordExample(tagalog: "Ang isang mansanas sa isang araw ay naglalayo sa doktor.", ilocano: "Say sakey a mansanas ed sanagew et mamaarawi ed doktor.", pangasinense: "Ti maysa a mansanas iti inaldaw ti mangyadayo iti doktor."),
  WordExample(tagalog: "Ang mansanas ay masustansya.", ilocano: "Ti mansanas ket masustansya.", pangasinense: "So mansanas ay masustansya.")
  ],
  ),

  Word(
  english: "analogy",
  tagalog: "tagalog: pagkakatulad",
  ilocano: "ilocano: panangiyaliling",
  pangasinense: "pangasinense: analogy",
  examples: [
  WordExample(tagalog: "Nakatulong ang kanyang pagkakatulad na ipaliwanag ang konsepto.", ilocano: "Say panangiyaliling to so tinmulong pian nipaliwawa so konsepto.", pangasinense: "Nakatulong ti analogy-na a nangilawlawag iti konsepto."),
  WordExample(tagalog: "Ang analogy ay nakakatulong sa pag-unawa.", ilocano: "Ti analogy ket makatulong iti panakaawat.", pangasinense: "So analogy ay nakakatulong ed pag-intindi.")
  ],
  ),
  Word(
  english: "analyze",
  tagalog: "tagalog: pag-aralan",
  ilocano: "ilocano: analisaen",
  pangasinense: "pangasinense: analisarek",
  examples: [
  WordExample(tagalog: "Kailangan kong pag-aralan nang mabuti ang data na ito.", ilocano: "Kaukolan kon analisaen a maong iyan datos.", pangasinense: "Masapul nga analisarek a naimbag daytoy a datos."),
  WordExample(tagalog: "Pag-aralan mo ang mga detalye bago gumawa ng desisyon.", ilocano: "Analisaem dagiti detalye sakbay nga agaramid iti desisyon.", pangasinense: "Pag-aralan mo so detalye sakey ya ag-aramid ed desisyon.")
  ],
  ),

  Word(
  english: "ancestor",
  tagalog: "tagalog: ninuno",
  ilocano: "ilocano: inmuunan",
  pangasinense: "pangasinense: kapuon",
  examples: [
  WordExample(tagalog: "Ang aking ninuno ay nagmula sa Italya.", ilocano: "Say inmuunan atateng ko et nanlapud Italya.", pangasinense: "Naggapu ti kapuonak idiay Italia."),
  WordExample(tagalog: "Mahalaga ang mga ninuno sa ating kasaysayan.", ilocano: "Naimbag dagiti inmuunan kadagiti kasaysayan tayo.", pangasinense: "Mahalaga so kapuon ed kasaysayan tayo.")
  ],
  ),

  Word(
  english: "anchor",
  tagalog: "tagalog: angkla",
  ilocano: "ilocano: angkla",
  pangasinense: "pangasinense: angkla",
  examples: [
  WordExample(tagalog: "Hinawakan ng anchor ang bangka sa lugar.", ilocano: "Say angkla so angigaton ed baloto.", pangasinense: "Ti angkla ti nangtengngel iti bangka iti lugarna."),
  WordExample(tagalog: "Ang angkla ay mahalaga para sa mga bangka.", ilocano: "Ti angkla ket napateg para kadagiti bangka.", pangasinense: "Napateg so angkla para ed mga bangka.")
  ],
  ),

  Word(
  english: "ancient",
  tagalog: "tagalog: sinaunang",
  ilocano: "ilocano: kadaanan",
  pangasinense: "pangasinense: kadaanan",
  examples: [
  WordExample(tagalog: "Ang mga guho ay sinaunang at kaakit-akit.", ilocano: "Saray geray et kadaanan tan makapasagyat.", pangasinense: "Kadaanan ken makaawis dagiti rebba."),
  WordExample(tagalog: "May mga sinaunang artifact sa museo.", ilocano: "Adda dagiti kadaanan a artifact iti museo.", pangasinense: "Alao so mga sinaunang artifact ed museo.")
  ],
  ),

  Word(
  english: "animal",
  tagalog: "tagalog: hayop",
  ilocano: "ilocano: ayep",
  pangasinense: "pangasinense: ayep",
  examples: [
  WordExample(tagalog: "Ang hayop ay nailigtas mula sa kanlungan.", ilocano: "Say ayep so nisalba ed panag-amotan.", pangasinense: "Naisalakan ti ayup manipud iti pagkamangan."),
  WordExample(tagalog: "Maraming uri ng hayop sa zoo.", ilocano: "Adu a klase dagiti ayep iti zoo.", pangasinense: "Adu so klase na ayep ed zoo.")
  ],
  ),

  Word(
  english: "animosity",
  tagalog: "tagalog: poot",
  ilocano: "ilocano: panaggiginnura",
  pangasinense: "pangasinense: pambubusolan",
  examples: [
  WordExample(tagalog: "Nagkaroon ng poot sa pagitan ng magkatunggaling koponan.", ilocano: "Walay pambubusolan ed baetan na saray manlalaban a grupo.", pangasinense: "Adda panaggiginnura dagiti agkaribal a team."),
  WordExample(tagalog: "Ang poot ay hindi nakakatulong sa pagresolba ng problema.", ilocano: "Ti poot ket saan a makatulong iti panangresolba ti problema.", pangasinense: "So poot ay di nakakatulong ed pagresolba na problema.")
  ],
  ),

  Word(
  english: "ankle",
  tagalog: "tagalog: bukung-bukong",
  ilocano: "ilocano: gurong",
  pangasinense: "pangasinense: bikking",
  examples: [
  WordExample(tagalog: "Nasugatan ang bukung-bukong niya habang naglalaro ng basketball.", ilocano: "Asugat so bikking to legan ya manbabasketbol.", pangasinense: "Nasugatan ti gurongna bayat ti panagay-ayamna iti basketball."),
  WordExample(tagalog: "Dahil sa sugat, nahirapan siyang lumakad.", ilocano: "Gapu iti sugat, nagrigat isuna nga aglakad.", pangasinense: "Dahil ed sugat, nagkaiged isuna na aglakad.")
  ],
  ),

  Word(
  english: "announce",
  tagalog: "tagalog: ianunsyo",
  ilocano: "ilocano: ipakaammod",
  pangasinense: "pangasinense: i-anunsyo",
  examples: [
  WordExample(tagalog: "Malapit na nilang ianunsyo ang mga nanalo.", ilocano: "I-anunsyo da ray mananalo diad magano.", pangasinense: "Ipakaammoda iti mabiit dagiti nangabak."),
  WordExample(tagalog: "Dapat nilang ianunsyo ang mga bagong patakaran.", ilocano: "Masapul da a ianunsyo dagiti baro a patakaran.", pangasinense: "Dapat da i-anunsyo so baro na patakaran.")
  ],
  ),

  Word(
  english: "annoying",
  tagalog: "tagalog: nakakainis",
  ilocano: "ilocano: makapaermen",
  pangasinense: "pangasinense: makarimon",
  examples: [
  WordExample(tagalog: "Ito ay maaaring nakakainis kapag ang mga tao ay humarang.", ilocano: "Makapaermen no walay onsasaew.", pangasinense: "Mabalin a makarimon no agsinga dagiti tattao."),
  WordExample(tagalog: "Nakakainis ang mga taong walang respeto.", ilocano: "Nakakaasi dagiti tattao a awan ti respeto.", pangasinense: "Makakaasi so mga tao na awan so respeto.")
  ],
  ),

  Word(
  english: "annual",
  tagalog: "tagalog: taunang",
  ilocano: "ilocano: tinaon",
  pangasinense: "pangasinense: tinaon",
  examples: [
  WordExample(tagalog: "Ang taunang kaganapan ay magaganap sa susunod na buwan.", ilocano: "Say tinaon ya ebento et nagawa ed ontumbok a bulan.", pangasinense: "Maangay ti tinawen nga event inton sumaruno a bulan."),
  WordExample(tagalog: "Taun-taon tayong nagdaraos ng isang annual meeting.", ilocano: "Tawen-tawen ket agdaraos tayo ti maysa nga taunang miting.", pangasinense: "Bawat taon tayong nagdaraos ed annual meeting.")
  ],
  ),

  Word(
  english: "anoint",
  tagalog: "tagalog: papahiran",
  ilocano: "ilocano: lanaan",
  pangasinense: "pangasinense: punuannanto",
  examples: [
  WordExample(tagalog: "Papahiran niya ng langis ang bagong hari sa seremonya.", ilocano: "Lanaan toy balon ari legan na sirimonya.", pangasinense: "Punuannanto ti baro nga ari bayat ti seremonia."),
  WordExample(tagalog: "Ang langis ay simbolo ng kapangyarihan.", ilocano: "Ti lana ket simbolo ti kapangyarihan.", pangasinense: "Ti lana ay simbolo na kapangyarihan.")
  ],
  ),

  Word(
  english: "another",
  tagalog: "tagalog: isa pang",
  ilocano: "ilocano: sabali",
  pangasinense: "pangasinense: sabali",
  examples: [
  WordExample(tagalog: "Gusto niya ng isa pang piraso ng cake.", ilocano: "Labay toy sananey a piraso na cake.", pangasinense: "Kayatna ti sabali pay a pedaso ti cake."),
  WordExample(tagalog: "Kailangan ko ng isa pang pagkakataon.", ilocano: "Masapul ko ti sabali a pagkakataon.", pangasinense: "Kailangan ko so sabali pa a pagkakataon.")
  ],
  ),

  Word(
  english: "answer",
  tagalog: "tagalog: sagutin",
  ilocano: "ilocano: ebatan",
  pangasinense: "pangasinense: sungbatan",
  examples: [
  WordExample(tagalog: "Kaya mo bang sagutin ang tanong?", ilocano: "Sarag mon ebatan so tepet?", pangasinense: "Mabalinmo kadi a sungbatan ti saludsod?"),
  WordExample(tagalog: "Sino ang makakasagot sa tanong na ito?", ilocano: "Siasino ti makasagot iti daytoy a saludsod?", pangasinense: "Sino so makakasagot ed daytoy a saludsod?")
  ],
  ),

  Word(
  english: "ant",
  tagalog: "tagalog: langgam",
  ilocano: "ilocano: anay",
  pangasinense: "pangasinense: anay",
  examples: [
  WordExample(tagalog: "Ang langgam ay may dalang mumo na mas malaki kaysa sa sarili nito.", ilocano: "Say ant et walay awit ton mumo ya mas baleg nen say sikato.", pangasinense: "Adda awit ti anay iti rugit a dakdakkel nga amang ngem iti bagina."),
  WordExample(tagalog: "Mabilis kumilos ang mga langgam sa paligid.", ilocano: "Nasarab ti agaramid dagiti langgam iti paligid.", pangasinense: "Mabilis so ag-aramid so mga anay ed paligid.")
  ],
  ),
  Word(
  english: "anxiety",
  tagalog: "tagalog: pagkabalisa",
  ilocano: "ilocano: kapagaan",
  pangasinense: "pangasinense: danagna",
  examples: [
  WordExample(tagalog: "Dahil sa pagkabalisa niya, hindi siya mapalagay.", ilocano: "Say kapagaan to so amaermen ed sikato.", pangasinense: "Ti danagna ti nangparikna kenkuana iti pannakariribuk."),
  WordExample(tagalog: "Ang pagkabalisa ay normal na nararanasan ng marami.", ilocano: "Ti pagkabalisa ket normal a marikna ti adu.", pangasinense: "Normal so pagkabalisa na mararanasan na adu.")
  ],
  ),

  Word(
  english: "any questions",
  tagalog: "tagalog: tanong",
  ilocano: "ilocano: saludsod",
  pangasinense: "pangasinense: tepet",
  examples: [
  WordExample(tagalog: "May tanong ka ba?", ilocano: "Wala ray tepet mo?", pangasinense: "Adda kadi saludsodyo?"),
  WordExample(tagalog: "Kung may tanong, huwag mag-atubiling magtanong.", ilocano: "No adda saludsod, saan a madlaw nga agsaludsod.", pangasinense: "No adda tepet, di ka agtawag.")
  ],
  ),

  Word(
  english: "anybody",
  tagalog: "tagalog: sino",
  ilocano: "ilocano: siopaman",
  pangasinense: "pangasinense: asinoman",
  examples: [
  WordExample(tagalog: "Kahit sino ay maaaring sumali sa club.", ilocano: "Nayarin mibiang ed klab so siopaman.", pangasinense: "Asinoman ti mabalin a makikadua iti club."),
  WordExample(tagalog: "Sino mang gustong makilahok ay welcome.", ilocano: "Siopaman a kayat nga makikadua ket madaydayaw.", pangasinense: "Asinoman na kayat agkaw a makikadua ay welcome.")
  ],
  ),

  Word(
  english: "anyhow",
  tagalog: "tagalog: kahit papaano",
  ilocano: "ilocano: anggan panon",
  pangasinense: "pangasinense: kaskasano",
  examples: [
  WordExample(tagalog: "Gagawa tayo ng paraan kahit papaano.", ilocano: "Mananap kami na paraan anggan panon.", pangasinense: "Makasaraktayo iti wagas uray kaskasano."),
  WordExample(tagalog: "Basta't may gawin tayo, kahit papaano ay may mangyayari.", ilocano: "Basta't agaramid kami, anggan panon adda maangay.", pangasinense: "Basta ya mag-aramid tayo, kaskasano man may mangyayari.")
  ],
  ),

  Word(
  english: "anything to help",
  tagalog: "tagalog: maitutulong",
  ilocano: "ilocano: maaramidak",
  pangasinense: "pangasinense: nagawaan",
  examples: [
  WordExample(tagalog: "May maitutulong ba ako?", ilocano: "Adda kadi maaramidak a tumulong?", pangasinense: "Wala kasi nagawaan ko pian makatulong?"),
  WordExample(tagalog: "Handa akong tumulong sa anumang paraan.", ilocano: "Nariknaak a tumulong iti aniaman a wagas.", pangasinense: "Handa ak magtulong ed anuman na wagas.")
  ],
  ),

  Word(
  english: "anywhere",
  tagalog: "tagalog: kahit saan",
  ilocano: "ilocano: sadinoman",
  pangasinense: "pangasinense: ed anggan",
  examples: [
  WordExample(tagalog: "Hindi ko mahanap ang aking mga susi kahit saan.", ilocano: "Agko naromog iray tombok ko ed anggan iner.", pangasinense: "Diak masarakan dagiti tulbekko iti sadinoman."),
  WordExample(tagalog: "Minsan, wala talagang mahanap kahit saan.", ilocano: "Adda dagiti tiempo a awan ti masarakan iti sadinoman.", pangasinense: "Minsan, awan so masarakan ed anggan.")
  ],
  ),

  Word(
  english: "apart",
  tagalog: "tagalog: paghiwalayin",
  ilocano: "ilocano: ibiig",
  pangasinense: "pangasinense: ibibiga",
  examples: [
  WordExample(tagalog: "Dapat nating paghiwalayin ang mga piraso upang ayusin ito.", ilocano: "Kaukolan tayon ibiig iray piraso pian naapiger itan.", pangasinense: "Masapul nga isinatayo dagiti pedaso tapno matarimaan dayta."),
  WordExample(tagalog: "Ihiwalay ang mga sangkap bago magluto.", ilocano: "Ibiig dagiti sangkap sakbay nga agluto.", pangasinense: "Ibibiga so mga sangkap sakey ya agluto.")
  ],
  ),

  Word(
  english: "aperture",
  tagalog: "tagalog: aperture",
  ilocano: "ilocano: melag",
  pangasinense: "pangasinense: aperture",
  examples: [
  WordExample(tagalog: "Ang camera ay may maliit na aperture.", ilocano: "Say kamera et walaan na melag ya aperture.", pangasinense: "Bassit ti aperture ti kamera."),
  WordExample(tagalog: "Mahalaga ang aperture sa kalidad ng mga litrato.", ilocano: "Napateg ti melag iti kalidad dagiti litrato.", pangasinense: "Mahalaga so aperture ed kalidad na mga litrato.")
  ],
  ),

  Word(
  english: "apparel",
  tagalog: "tagalog: damit",
  ilocano: "ilocano: kawes",
  pangasinense: "pangasinense: kawes",
  examples: [
  WordExample(tagalog: "Bumili siya ng bagong damit para sa paglalakbay.", ilocano: "Angaliw na balon kawes parad biahe.", pangasinense: "Gimmatang iti baro a kawes para iti panagbiahena."),
  WordExample(tagalog: "Mahilig akong mamili ng mga damit.", ilocano: "Kayatko a mangala dagiti kawes.", pangasinense: "Ay-ayatek na mangpili ed mga kawes.")
  ],
  ),

  Word(
  english: "appear",
  tagalog: "tagalog: lalabas",
  ilocano: "ilocano: agparang",
  pangasinense: "pangasinense: ompanengneng",
  examples: [
  WordExample(tagalog: "Lalabas sila sa event.", ilocano: "Ompanengneng ira ed sayan ebento.", pangasinense: "Agparangda iti nasao nga aktibidad."),
  WordExample(tagalog: "Ang mga artista ay lalabas sa entablado.", ilocano: "Dagiti artista ket agparang iti entablado.", pangasinense: "Dagiti artista ay agparang ed entablado.")
  ],
  ),

  Word(
  english: "appetite",
  tagalog: "tagalog: gana",
  ilocano: "ilocano: ganask",
  pangasinense: "pangasinense: ganas",
  examples: [
  WordExample(tagalog: "Malaki ang gana ko pagkatapos mag-ehersisyo.", ilocano: "Baleg so ganas ko kayari na panag-ehersisyo.", pangasinense: "Dakkel ti ganasko kalpasan ti panagehersisio."),
  WordExample(tagalog: "Nawala ang gana ko sa pagkain.", ilocano: "Nawara ti ganask ko iti makan.", pangasinense: "Nawala so ganas ko ed pagkain.")
  ],
  ),

  Word(
  english: "applaud",
  tagalog: "tagalog: purihin",
  ilocano: "ilocano: palakpakan",
  pangasinense: "pangasinense: palakpak",
  examples: [
  WordExample(tagalog: "Gusto kong purihin ang iyong mga pagsisikap.", ilocano: "Labay kon palakpakan so sagpot mo.", pangasinense: "Kayatko a palakpak ti panagreggetyo."),
  WordExample(tagalog: "Dapat tayong pumalakpak sa kanilang mga tagumpay.", ilocano: "Masapul nga agpalakpak tayo kadagiti tagumpay da.", pangasinense: "Dapat tayong agpalakpak ed mga tagumpay da.")
  ],
  ),

  Word(
  english: "apply",
  tagalog: "tagalog: mag-aplay",
  ilocano: "ilocano: man-aplay",
  pangasinense: "pangasinense: agaplay",
  examples: [
  WordExample(tagalog: "Kailangan mong mag-aplay para sa posisyon na iyon.", ilocano: "Kaukolan moy man-aplay ed satan ya posisyon.", pangasinense: "Masapul nga agaplayka iti dayta a posision."),
  WordExample(tagalog: "Maaari kang mag-aplay online.", ilocano: "Mabalin ka nga man-aplay online.", pangasinense: "Mabalin ka mag-aplay online.")
  ],
  ),

  Word(
  english: "appoint",
  tagalog: "tagalog: magtalaga",
  ilocano: "ilocano: mangdutok",
  pangasinense: "pangasinense: manuro",
  examples: [
  WordExample(tagalog: "Magtatalaga sila ng bagong manager sa susunod na buwan.", ilocano: "Manuro ira na balon manedyer diad ontumbok a bulan.", pangasinense: "Mangdutokda iti baro a manedyer inton sumaruno a bulan."),
  WordExample(tagalog: "Magtatalaga ang kumpanya ng mga bagong empleyado.", ilocano: "Mangtudok ti kompanya kadagiti baro nga empleyado.", pangasinense: "Manuro so kumpanya ed mga baro na empleyado.")
  ],
  ),

  Word(
  english: "appreciate",
  tagalog: "tagalog: pinahahalagahan",
  ilocano: "ilocano: apresiaren",
  pangasinense: "pangasinense: apresiaren",
  examples: [
  WordExample(tagalog: "Talagang pinahahalagahan ko ang iyong tulong.", ilocano: "Aapresyaen ko so tulong mo.", pangasinense: "Talaga nga apresiarenko ti tulongyo."),
  WordExample(tagalog: "Pinahahalagahan ko ang mga simpleng bagay.", ilocano: "Apresiaren ko dagiti simple nga banag.", pangasinense: "Apresiarenko so simple na bagay.")
  ],
  ),
  Word(
  english: "approach",
  tagalog: "tagalog: lapitan",
  ilocano: "ilocano: asikasoen",
  pangasinense: "pangasinense: asitgantayo",
  examples: [
  WordExample(tagalog: "Dapat nating lapitan nang mabuti ang problemang ito.", ilocano: "Nepeg tayon asikasoen a maong iyan problema.", pangasinense: "Rumbeng nga asitgantayo a siaannad daytoy a parikut."),
  WordExample(tagalog: "Minsan, kailangan nating lapitan ang mga bagay nang maingat.", ilocano: "Sakbay, masapul tayon nga asikasoen dagiti banag a maingat.", pangasinense: "Bilang, rumbeng ya asitgantayo so mga bagay a masanap.")
  ],
  ),

  Word(
  english: "approve",
  tagalog: "tagalog: aprubahan",
  ilocano: "ilocano: aprobaan",
  pangasinense: "pangasinense: ilaloan",
  examples: [
  WordExample(tagalog: "Sana aprubahan nila ang proposal ko.", ilocano: "Ilaloan kon aprobaan da so proposal ko.", pangasinense: "Sapay koma ta aprobaranda ti singasingko."),
  WordExample(tagalog: "Mahalaga ang kanilang pag-apruba sa proyekto.", ilocano: "Napateg ti aprobasyon da iti proyekto.", pangasinense: "Mahalaga so aproban da ed proyekto.")
  ],
  ),

  Word(
  english: "April",
  tagalog: "tagalog: Abril",
  ilocano: "ilocano: Abril",
  pangasinense: "pangasinense: Abril",
  examples: [
  WordExample(tagalog: "Noong Abril, namumulaklak ang mga bulaklak.", ilocano: "No Abril, manrosas iray rosas.", pangasinense: "No Abril, agsabong dagiti sabong."),
  WordExample(tagalog: "Ang buwan ng Abril ay puno ng mga bulaklak.", ilocano: "Ti bulan ti Abril ket napno dagiti rosas.", pangasinense: "Ti bulan na Abril ay puno so mga bulaklak.")
  ],
  ),

  Word(
  english: "apron",
  tagalog: "tagalog: apron",
  ilocano: "ilocano: apron",
  pangasinense: "pangasinense: apron",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng apron habang nagluluto.", ilocano: "Nan-apron legan ya manluluto.", pangasinense: "Nakasuot iti apron bayat ti panaglutona."),
  WordExample(tagalog: "Minsan, kailangan mong magsuot ng apron sa kusina.", ilocano: "Sakbay, masapul mo nga isukat ti apron iti kusina.", pangasinense: "Bilang, rumbeng ya mag-apron ka ed kusina.")
  ],
  ),

  Word(
  english: "arbitrary",
  tagalog: "tagalog: arbitrary",
  ilocano: "ilocano: arbitrario",
  pangasinense: "pangasinense: arbitrario",
  examples: [
  WordExample(tagalog: "Ang desisyon ay tila arbitrary sa marami.", ilocano: "Say desisyon et singa ag-inisip na dakel.", pangasinense: "Kasla arbitrario ti desision iti adu."),
  WordExample(tagalog: "Minsan, ang mga patakaran ay nagiging arbitrary.", ilocano: "Sakbay, dagiti patakaran ket agbalin a arbitrario.", pangasinense: "Bilang, so mga patakaran ay nagiging arbitrario.")
  ],
  ),

  Word(
  english: "arch",
  tagalog: "tagalog: arko",
  ilocano: "ilocano: arko",
  pangasinense: "pangasinense: arko",
  examples: [
  WordExample(tagalog: "Ang arko ay maganda ang disenyo.", ilocano: "Marakep so inkadesinyo na arko.", pangasinense: "Napintas ti pannakadisenio ti arko."),
  WordExample(tagalog: "Ang mga arko sa tulay ay kahanga-hanga.", ilocano: "Dagiti arko iti tulay ket nakakaawis.", pangasinense: "Dagiti arko ed tulay ay nakakaawis.")
  ],
  ),

  Word(
  english: "argue",
  tagalog: "tagalog: ipaglaban",
  ilocano: "ilocano: idepensa",
  pangasinense: "pangasinense: ikalinteg",
  examples: [
  WordExample(tagalog: "Ipaglalaban ko ang aking kaso sa korte.", ilocano: "Idepensa ko so kaso ko ed korte.", pangasinense: "Ikalintegak ti kasok iti korte."),
  WordExample(tagalog: "Minsan, kailangan nating ipaglaban ang ating mga karapatan.", ilocano: "Sakbay, masapul tayon a ipaglaban dagiti karbengan tayo.", pangasinense: "Bilang, rumbeng ya ipaglaban tayon so mga karapatan tayo.")
  ],
  ),

  Word(
  english: "arid",
  tagalog: "tagalog: tigang",
  ilocano: "ilocano: amagan",
  pangasinense: "pangasinense: amagan",
  examples: [
  WordExample(tagalog: "Napaka tigang ng klima sa rehiyong iyon.", ilocano: "Say klima et amagan tuloy ed satan a rehyon.", pangasinense: "Natikag unay ti klima iti dayta a rehion."),
  WordExample(tagalog: "Ang mga desert ay may tigang na klima.", ilocano: "Dagiti desierto ket adda ti amagan a klima.", pangasinense: "Dagiti desert ay adda so amagan na klima.")
  ],
  ),

  Word(
  english: "arise",
  tagalog: "tagalog: lumitaw",
  ilocano: "ilocano: onlesa",
  pangasinense: "pangasinense: tumaud",
  examples: [
  WordExample(tagalog: "Maaaring lumitaw ang mga problema sa panahon ng proyekto.", ilocano: "Nayarin onlesa iray problema legan na proyekto.", pangasinense: "Mabalin a tumaud dagiti parikut bayat ti proyekto."),
  WordExample(tagalog: "Kailangan nating harapin ang mga suliranin na lumitaw.", ilocano: "Masapul tayon a sumangbay kadagiti suliranin a nayari.", pangasinense: "Rumbeng tayon makapasaliti ed mga parikut a naglalu.")
  ],
  ),

  Word(
  english: "arm",
  tagalog: "tagalog: braso",
  ilocano: "ilocano: taklay",
  pangasinense: "pangasinense: taklay",
  examples: [
  WordExample(tagalog: "Itinaas niya ang kanyang braso para kumaway.", ilocano: "Intagey toy taklay to pian man-wave.", pangasinense: "Inngatona ti takiagna tapno agwagayway."),
  WordExample(tagalog: "Ang kanyang braso ay mahirap itaas.", ilocano: "Narigat nga itaas ti braso na.", pangasinense: "Mahirap ya itaas so braso na.")
  ],
  ),
  Word(
  english: "army",
  tagalog: "tagalog: hukbo",
  ilocano: "ilocano: armada",
  pangasinense: "pangasinense: armada",
  examples: [
  WordExample(tagalog: "Ang hukbo ay ipinakalat upang tumulong.", ilocano: "Say armada so nibaki pian ontulong.", pangasinense: "Naidestino ti armada a tumulong."),
  WordExample(tagalog: "Ang hukbo ay handang ipagtanggol ang bansa.", ilocano: "Ti armada ket nakasagana a mangtanggol iti pagilian.", pangasinense: "So armada ay nakasagana ya ipagtanggol so bansa.")
  ],
  ),

  Word(
  english: "around",
  tagalog: "tagalog: libot",
  ilocano: "ilocano: kaliberliber",
  pangasinense: "pangasinense: aglawlaw",
  examples: [
  WordExample(tagalog: "Naglibot kami sa park.", ilocano: "Nanakar kami ed kaliberliber na parke.", pangasinense: "Nagnakami iti aglawlaw ti parke."),
  WordExample(tagalog: "Naglibot kami sa paligid ng bahay.", ilocano: "Nanakar kami iti paligid ti balay.", pangasinense: "Nagnakami ed aglawlaw na balay.")
  ],
  ),

  Word(
  english: "arouse",
  tagalog: "tagalog: pumukaw",
  ilocano: "ilocano: mamakiwas",
  pangasinense: "pangasinense: mamukaw",
  examples: [
  WordExample(tagalog: "Ang kanyang talumpati ay pumukaw ng interes sa paksa.", ilocano: "Say panagsalita to so mamakiwas ed interes ed topic.", pangasinense: "Ti panagbitlana ti mangpukaw iti interes iti topiko."),
  WordExample(tagalog: "Ang pelikula ay pumukaw sa damdamin ng mga tao.", ilocano: "Ti pelikula ket mangpukaw iti rikna dagiti tao.", pangasinense: "Ti pelikula ay mamukaw so damdamin na mga tao.")
  ],
  ),

  Word(
  english: "arrest",
  tagalog: "tagalog: arestuhin",
  ilocano: "ilocano: erelen",
  pangasinense: "pangasinense: tiliwen",
  examples: [
  WordExample(tagalog: "Malapit na nilang arestuhin ang suspek.", ilocano: "Ag mabayag et erelen da so suspek.", pangasinense: "Tiliwen da ti suspek iti mabiit."),
  WordExample(tagalog: "Dapat arestuhin ang mga lumabag sa batas.", ilocano: "Masapul a maaresto dagiti nanglapus iti linteg.", pangasinense: "Dapat tiliwen so mga lumabag ed batas.")
  ],
  ),

  Word(
  english: "expect",
  tagalog: "tagalog: inaasahan",
  ilocano: "ilocano: iilaloan",
  pangasinense: "pangasinense: namnamaen",
  examples: [
  WordExample(tagalog: "Inaasahan nilang darating ng tanghali.", ilocano: "Iilaloan dan onsabi ira no pegley-agew.", pangasinense: "Namnamaenda a sumangpetda inton tengnga ti aldaw."),
  WordExample(tagalog: "Inaabangan ko ang kanyang pagdating.", ilocano: "Inaasahan ko ti panagpadaan na.", pangasinense: "Namnamaek so pagdating na.")
  ],
  ),

  Word(
  english: "arrow",
  tagalog: "tagalog: pana",
  ilocano: "ilocano: pana",
  pangasinense: "pangasinense: pana",
  examples: [
  WordExample(tagalog: "Tamang tama ang tama ng arrow sa target.", ilocano: "Say pana et perpekton akasabi ed puntirya.", pangasinense: "Naan-anay a nadungpar ti pana ti puntiria."),
  WordExample(tagalog: "Ang arrow ay mabilis na lumipad.", ilocano: "Ti pana ket napardas a napalabas.", pangasinense: "Ti pana ay napardas ya lumipad.")
  ],
  ),

  Word(
  english: "article",
  tagalog: "tagalog: artikulo",
  ilocano: "ilocano: artikulo",
  pangasinense: "pangasinense: artikulo",
  examples: [
  WordExample(tagalog: "Nabasa ko ang isang kawili-wiling artikulo tungkol sa espasyo.", ilocano: "Walay abasak ya makapainteres ya artikulo nipaakar ed liwang.", pangasinense: "Nabasak ti makapainteres nga artikulo maipapan iti law-ang."),
  WordExample(tagalog: "Ang artikulo ay naglalaman ng mahahalagang impormasyon.", ilocano: "Ti artikulo ket naglaon dagiti napateg a impormasyon.", pangasinense: "Ti artikulo ay naglalaman so mahahalagang impormasyon.")
  ],
  ),

  Word(
  english: "ascend",
  tagalog: "tagalog: aakyat",
  ilocano: "ilocano: ontatdang",
  pangasinense: "pangasinense: sumalog",
  examples: [
  WordExample(tagalog: "Ang elevator ay aakyat sa itaas na palapag.", ilocano: "Say elevator et ontatdang ed sankatageyan a grado.", pangasinense: "Sumalog ti elevator iti kangatuan a kadsaaran."),
  WordExample(tagalog: "Minsan, ang hagdang-bato ay mahirap akyatin.", ilocano: "Sakbay, ti hagdang-bato ket narigat nga akyaten.", pangasinense: "Minsan, mahirap ya akyatin so hagdang-bato.")
  ],
  ),

  Word(
  english: "ashamed",
  tagalog: "tagalog: hiya",
  ilocano: "ilocano: nababaingan",
  pangasinense: "pangasinense: nariknak",
  examples: [
  WordExample(tagalog: "Nakaramdam ako ng hiya sa gawi ko.", ilocano: "Nababaingan ak ed ugali ko.", pangasinense: "Nariknak ti bainko iti kababalinko."),
  WordExample(tagalog: "Minsan, nakaramdam ako ng hiya sa aking pagkakamali.", ilocano: "Sakbay, nakaramdam ak ti hiya iti pakasarsaritaak.", pangasinense: "Minsan, nariknak ak so hiya ed kasalanan ko.")
  ],
  ),
  Word(
  english: "ashes",
  tagalog: "tagalog: abo",
  ilocano: "ilocano: dapol",
  pangasinense: "pangasinense: dapo",
  examples: [
  WordExample(tagalog: "Ang mga abo ay nakakalat sa hangin.", ilocano: "Saray dapol et nitaytayak ed dagem.", pangasinense: "Naiwaras dagiti dapo iti angin."),
  WordExample(tagalog: "Nakuha nila ang mga abo mula sa fireplace.", ilocano: "Nalaok da dagiti dapol manipud iti fireplace.", pangasinense: "Nakuha da so dapo ed fireplace.")
  ],
  ),

  Word(
  english: "boat",
  tagalog: "tagalog: bangka",
  ilocano: "ilocano: baloto",
  pangasinense: "pangasinense: bangka",
  examples: [
  WordExample(tagalog: "Ang bangka ay naanod sa pampang pagkatapos ng bagyo.", ilocano: "Say baloto so inmagus ed gilig na dayat kayari na bagyo.", pangasinense: "Nagdigus ti bangka iti takdang kalpasan ti bagyo."),
  WordExample(tagalog: "Ang bangka ay lumutang sa tubig.", ilocano: "Ti baloto ket nangluto iti danum.", pangasinense: "So bangka ay lumutang ed danum.")
  ],
  ),

  Word(
  english: "ask",
  tagalog: "tagalog: magtanong",
  ilocano: "ilocano: mantetep",
  pangasinense: "pangasinense: agsaludsod",
  examples: [
  WordExample(tagalog: "Maaari ba akong magtanong sa iyo?", ilocano: "Nayarin mantepet ak ed sika?", pangasinense: "Mabalin kadi nga agsaludsodak kenka?"),
  WordExample(tagalog: "Magtanong ka lamang kung may duda.", ilocano: "Agsaludsod ka laeng no adda karigatan.", pangasinense: "Agsaludsod ka laeng no adaka so duda.")
  ],
  ),

  Word(
  english: "asleep",
  tagalog: "tagalog: tulog",
  ilocano: "ilocano: naugip",
  pangasinense: "pangasinense: nakaturog",
  examples: [
  WordExample(tagalog: "Nakatulog siya habang nasa pelikula.", ilocano: "Naugip legan na pelikula.", pangasinense: "Nakaturog bayat ti sine."),
  WordExample(tagalog: "Madali siyang natutulog sa mga maingay na lugar.", ilocano: "Basta makaluganan, naugip isuna.", pangasinense: "Madali so natuturog na sa mga maingay na lugar.")
  ],
  ),

  Word(
  english: "assembly",
  tagalog: "tagalog: pagpupulong",
  ilocano: "ilocano: asemblea",
  pangasinense: "pangasinense: asamblea",
  examples: [
  WordExample(tagalog: "Ang pagpupulong ay magpupulong sa susunod na linggo.", ilocano: "Say asemblea et mantitipon ed ontumbok a simba.", pangasinense: "Agmiting ti asamblea inton sumaruno a lawas."),
  WordExample(tagalog: "Ang assembly ay mahalaga para sa mga desisyon.", ilocano: "Ti asemblea ket napateg para kadagiti desision.", pangasinense: "Napateg so asamblea para ed desisyon.")
  ],
  ),

  Word(
  english: "assert",
  tagalog: "tagalog: igiit",
  ilocano: "ilocano: ipatnag",
  pangasinense: "pangasinense: ipapilit",
  examples: [
  WordExample(tagalog: "Dapat mong igiit ang iyong mga karapatan.", ilocano: "Nepeg mon ipatnag iray kanepegan mo.", pangasinense: "Masapul nga ipapilitmo dagiti karbengam."),
  WordExample(tagalog: "Mahalaga na igiit mo ang iyong opinyon.", ilocano: "Napateg a ipatnag mo ti opinyon mo.", pangasinense: "Mahalaga so ipapilit mo so opinyon mo.")
  ],
  ),

  Word(
  english: "assign",
  tagalog: "tagalog: magtatalaga",
  ilocano: "ilocano: mangituding",
  pangasinense: "pangasinense: iter",
  examples: [
  WordExample(tagalog: "Magtatalaga sila ng mga gawain sa lahat.", ilocano: "Iter da ray kimey ed balang sakey.", pangasinense: "Mangitudingda kadagiti trabaho iti tunggal maysa."),
  WordExample(tagalog: "Ang guro ay magtatalaga ng mga proyekto sa mga estudyante.", ilocano: "Ti maestra ket mangituding kadagiti proyekto kadagiti estudyante.", pangasinense: "So guro ay magtatalaga so proyekto ed mga estudyante.")
  ],
  ),

  Word(
  english: "association",
  tagalog: "tagalog: asosasyon",
  ilocano: "ilocano: asosasyon",
  pangasinense: "pangasinense: asosasion",
  examples: [
  WordExample(tagalog: "Ang asosasyon ay nagtataguyod ng malusog na pamumuhay.", ilocano: "Say asosasyon so mangisusulong na mabunigas a panagbilay.", pangasinense: "Itandudo ti asosasion ti nasalun-at a panagbiag."),
  WordExample(tagalog: "Ang asosasyon ay may mga proyekto para sa komunidad.", ilocano: "Ti asosasyon ket adda dagiti proyekto para iti komunidad.", pangasinense: "So asosasion ay may proyekto para ed komunidad.")
  ],
  ),

  Word(
  english: "assurance",
  tagalog: "tagalog: assurance",
  ilocano: "ilocano: panamaseguro",
  pangasinense: "pangasinense: pammatalged",
  examples: [
  WordExample(tagalog: "Binigyan niya ito ng assurance na tutulong siya.", ilocano: "Inikdan to na panamaseguro ya sikatoy ontulong.", pangasinense: "Intedna kenkuana ti pammatalgedna a tumulong."),
  WordExample(tagalog: "Kailangan mo ng assurance mula sa iyong mga kaibigan.", ilocano: "Masapul mo ti panamaseguro manipud kadagiti gagayem mo.", pangasinense: "Kailangan mo so pammatalged ed mga kaibigan mo.")
  ],
  ),

  Word(
  english: "astonishing",
  tagalog: "tagalog: nakapagtataka",
  ilocano: "ilocano: makapakelaw",
  pangasinense: "pangasinense: nakaskasdaaw",
  examples: [
  WordExample(tagalog: "Nakapagtataka na makita ang mga resulta.", ilocano: "Makapakelaw so pakanengneng ed saray resulta.", pangasinense: "Nakaskasdaaw a makita dagiti resultana."),
  WordExample(tagalog: "Ang mga tanawin sa bundok ay nakapagtataka.", ilocano: "Dagiti tanawin iti bantay ket nakapagtataka.", pangasinense: "Dagiti tanawin ed bundok ay nakapagtataka.")
  ],
  ),
  Word(
  english: "astounding",
  tagalog: "tagalog: nakakagulat",
  ilocano: "ilocano: makapabigla",
  pangasinense: "pangasinense: nakaskasdaaw",
  examples: [
  WordExample(tagalog: "Ang balita ay nakakagulat sa lahat.", ilocano: "Say balita et makapabigla ed amin.", pangasinense: "Nakaskasdaaw ti damag iti amin."),
  WordExample(tagalog: "Nakakagulat ang mga resulta ng eksperimento.", ilocano: "Makapabigla dagiti resulta ti eksperimento.", pangasinense: "Nakakagulat so resulta na eksperimento.")
  ],
  ),

  Word(
  english: "desk",
  tagalog: "tagalog: desk",
  ilocano: "ilocano: lamisaan",
  pangasinense: "pangasinense: lamisaan",
  examples: [
  WordExample(tagalog: "Umupo siya sa desk.", ilocano: "Inmirung ed lamisaan.", pangasinense: "Nagtugaw iti lamisaan."),
  WordExample(tagalog: "Ang desk ay gawa sa kahoy.", ilocano: "Ti lamisaan ket naaramid iti kahoy.", pangasinense: "So lamisaan ay gawa ed kahoy.")
  ],
  ),

  Word(
  english: "electric",
  tagalog: "tagalog: electric",
  ilocano: "ilocano: makapabiskeg",
  pangasinense: "pangasinense: de koriente",
  examples: [
  WordExample(tagalog: "Naging electric ang atmosphere noong concert.", ilocano: "Makapabiskeg so atmospera legan na konsierto.", pangasinense: "De koriente ti atmospera bayat ti konsierto."),
  WordExample(tagalog: "Ang electric na atmospera ay tila bumuhay sa lahat.", ilocano: "Ti makapabiskeg a atmospera ket kasla nagbiag iti amin.", pangasinense: "Ti de koriente a atmospera ay nagbuhay ed lahat.")
  ],
  ),

  Word(
  english: "attack",
  tagalog: "tagalog: atakihin",
  ilocano: "ilocano: atakien",
  pangasinense: "pangasinense: rauten",
  examples: [
  WordExample(tagalog: "Plano nilang atakihin ang problema nang direkta.", ilocano: "Plano ran direktan atakien so problema.", pangasinense: "Planoda a direkta a rauten ti parikut."),
  WordExample(tagalog: "Dapat nating atakihin ang isyu sa lalong madaling panahon.", ilocano: "Masapul a atakien tayo ti isyu iti kaaduan a tiempo.", pangasinense: "Dapat tayon rauten so isyu ed maikling tiempo.")
  ],
  ),

  Word(
  english: "attempt",
  tagalog: "tagalog: susubukan",
  ilocano: "ilocano: salien",
  pangasinense: "pangasinense: padasek",
  examples: [
  WordExample(tagalog: "Susubukan kong tapusin ito bukas.", ilocano: "Salien kon sumpalen itan no nabuas.", pangasinense: "Padasek nga ileppas dayta inton bigat."),
  WordExample(tagalog: "Susubukan kong mag-aral ng mas mabuti.", ilocano: "Salien kon agadal ti nasayaat.", pangasinense: "Padasek nga ag-aral ed mas mabuti.")
  ],
  ),

  Word(
  english: "attention",
  tagalog: "tagalog: pansin",
  ilocano: "ilocano: imano",
  pangasinense: "pangasinense: asikasuen",
  examples: [
  WordExample(tagalog: "Mangyaring bigyang-pansin ang mga tagubilin.", ilocano: "Ipangasin imanoen iray instruksion.", pangasinense: "Pangngaasiyo ta asikasuenyo dagiti instruksion."),
  WordExample(tagalog: "Kailangan nating bigyang-pansin ang mga detalye.", ilocano: "Masapul a imano tayo dagiti detalye.", pangasinense: "Kailangan tayon asikasuen so detalye.")
  ],
  ),

  Word(
  english: "attract",
  tagalog: "tagalog: makaakit",
  ilocano: "ilocano: makapasagyat",
  pangasinense: "pangasinense: mangallukoy",
  examples: [
  WordExample(tagalog: "Ang mga maliliwanag na kulay ay maaaring makaakit ng pansin.", ilocano: "Saray maliwliwawan kolor et makapasagyat na imano.", pangasinense: "Mabalin a mangallukoy iti atension dagiti naraniag a kolor."),
  WordExample(tagalog: "Maaaring makaakit ang mga ito sa mga bata.", ilocano: "Mabalin a makapasagyat dagitoy kadagiti ubing.", pangasinense: "Mabalin so mangallukoy ed mga bata.")
  ],
  ),

  Word(
  english: "attribute",
  tagalog: "tagalog: katangian",
  ilocano: "ilocano: ugali",
  pangasinense: "pangasinense: galad",
  examples: [
  WordExample(tagalog: "Ang katangian ng kabaitan ay pinahahalagahan ng marami.", ilocano: "Say ugali na kaabigan et papablien na dakel.", pangasinense: "Ti galad ti kinamanangngaasi ket ipatpateg ti adu."),
  WordExample(tagalog: "Ang mga katangian ng isang mabuting tao ay mahalaga.", ilocano: "Dagiti katangian ti maysa a nasayaat a tao ket napateg.", pangasinense: "Dagiti katangian na maysa a maayong tao ay napateg.")
  ],
  ),

  Word(
  english: "audible",
  tagalog: "tagalog: rinig",
  ilocano: "ilocano: nadngel",
  pangasinense: "pangasinense: mangngeg",
  examples: [
  WordExample(tagalog: "Rinig na rinig ang boses niya sa crowd.", ilocano: "Nadngel so boses to ed karaklan.", pangasinense: "Mangngeg ti timekna iti rabaw ti bunggoy."),
  WordExample(tagalog: "Ang tunog ay dapat na maging malinaw at rinig.", ilocano: "Ti tunog ket masapul a marikna ken nadngel.", pangasinense: "So tunog ay dapat so maging klaro ed rinig.")
  ],
  ),

  Word(
  english: "applauded",
  tagalog: "tagalog: nagpalakpakan",
  ilocano: "ilocano: nanpalakpak",
  pangasinense: "pangasinense: nagpalakpak",
  examples: [
  WordExample(tagalog: "Nagpalakpakan ang mga manonood pagkatapos ng pagtatanghal.", ilocano: "Nanpalakpak iray dumerengel kayari na palabas.", pangasinense: "Nagpalakpak dagiti agdengdengngeg kalpasan ti pabuya."),
  WordExample(tagalog: "Ang mga tao ay nagpalakpakan sa mahusay na pagganap.", ilocano: "Dagiti tao ket nagpalakpak iti nasayaat a pagganap.", pangasinense: "So mga tao ay nagpalakpak ed masinales a pagganap.")
  ],
  ),
  Word(
  english: "meet",
  tagalog: "tagalog: magkikita",
  ilocano: "ilocano: agtataripnong",
  pangasinense: "pangasinense: mankakasakey",
  examples: [
  WordExample(tagalog: "Magkikita tayo sa August.", ilocano: "Agtataripnongtayo inton Agosto.", pangasinense: "Mankakasakey tayo ed Agosto."),
  WordExample(tagalog: "Magkikita kami sa susunod na linggo.", ilocano: "Agtataripnong kami inton sumaruno a lawas.", pangasinense: "Mankakasakey kami ed sumarsaro a lawas.")
  ],
  ),

  Word(
  english: "visit",
  tagalog: "tagalog: bumisita",
  ilocano: "ilocano: ombibisita",
  pangasinense: "pangasinense: sarungkarannakami",
  examples: [
  WordExample(tagalog: "Bumisita ang tita ko ngayong weekend.", ilocano: "Say auntie ko et ombibisita ed sikami ed sayan sampot-simba.", pangasinense: "Sarungkarannakami ni manangko ita a ngudo ti lawas."),
  WordExample(tagalog: "Bumisita siya sa kanyang kaibigan.", ilocano: "Bumisitana ed gayyemna.", pangasinense: "Sarungkaran to so gayyem na.")
  ],
  ),

  Word(
  english: "author",
  tagalog: "tagalog: may-akda",
  ilocano: "ilocano: autor",
  pangasinense: "pangasinense: autor",
  examples: [
  WordExample(tagalog: "Sumulat ang may-akda ng isang bestseller.", ilocano: "Say autor et nansulat na bestseller.", pangasinense: "Nagsurat ti autor iti bestseller."),
  WordExample(tagalog: "Ang may-akda ng librong ito ay sikat.", ilocano: "Ti may-akda ti daytoy a libro ket sikat.", pangasinense: "So autor na libro et sikat.")
  ],
  ),

  Word(
  english: "avarice",
  tagalog: "tagalog: katakawan",
  ilocano: "ilocano: inkaagum",
  pangasinense: "pangasinense: kinaagum",
  examples: [
  WordExample(tagalog: "Ang katakawan ay maaaring humantong sa kalungkutan.", ilocano: "Say inkaagum et nayarin manresulta ed ag-inkaliketan.", pangasinense: "Mabalin nga agtungpal iti kinaawan ragsak ti kinaagum."),
  WordExample(tagalog: "Ang labis na katakawan ay masama.", ilocano: "Ti labis a inkaagum ket dakes.", pangasinense: "Ti labis a kinaagum ay di maganda.")
  ],
  ),

  Word(
  english: "avenge",
  tagalog: "tagalog: ipaghiganti",
  ilocano: "ilocano: ibales",
  pangasinense: "pangasinense: ibales",
  examples: [
  WordExample(tagalog: "Gusto nilang ipaghiganti ang pagkamatay ng kanilang kaibigan.", ilocano: "Labay dan ibales so impatey na kaaro ra.", pangasinense: "Kayatda nga ibales ti ipapatay ti gayyemda."),
  WordExample(tagalog: "Nagpasya siyang ipaghiganti ang kanyang kapatid.", ilocano: "Nagdesisyon isuna a ibales ti kabsatna.", pangasinense: "Nagdesisyon so ibales so kapatid na.")
  ],
  ),

  Word(
  english: "avoid",
  tagalog: "tagalog: iwasan",
  ilocano: "ilocano: liklikan",
  pangasinense: "pangasinense: paliisan",
  examples: [
  WordExample(tagalog: "Mas mainam na iwasan ang salungatan kung maaari.", ilocano: "Mas maong no paliisan so panlalaban no posible.", pangasinense: "Nasaysayaat a liklikan ti panagsusupiat no mabalin."),
  WordExample(tagalog: "Dapat nating iwasan ang mga hindi pagkakaintindihan.", ilocano: "Masapul a liklikan dagiti saan a pagkakaintindihan.", pangasinense: "Dapat tayon liklikan so di pagkakaintindihan.")
  ],
  ),

  Word(
  english: "await",
  tagalog: "tagalog: hihintayin",
  ilocano: "ilocano: alagaren",
  pangasinense: "pangasinense: urayenmi",
  examples: [
  WordExample(tagalog: "Hihintayin namin ang iyong tugon.", ilocano: "Alagaren mi so ebat yo.", pangasinense: "Urayenmi ti sungbatyo."),
  WordExample(tagalog: "Hihintayin ko ang sagot sa aking liham.", ilocano: "Alagaren kon ti sungbat iti suratko.", pangasinense: "Urayen kon so sagot ed surat ko.")
  ],
  ),

  Word(
  english: "awake",
  tagalog: "tagalog: puyat",
  ilocano: "ilocano: aliing",
  pangasinense: "pangasinense: mariknak",
  examples: [
  WordExample(tagalog: "Lagi akong puyat pagkatapos ng kape.", ilocano: "Naynay ak ya aliing kayari na kape.", pangasinense: "Kanayon a mariknak a siririingak kalpasan ti kape."),
  WordExample(tagalog: "Pagkatapos ng mahabang gabi, ako'y puyat.", ilocano: "Kalpasanna ti naangot a rabii, puyat ak.", pangasinense: "Kalpas na madaydayaw na gabi, mariknak ak a puyat.")
  ],
  ),

  Word(
  english: "drive away",
  tagalog: "tagalog: pinaandar",
  ilocano: "ilocano: inmarawi",
  pangasinense: "pangasinense: napardas",
  examples: [
  WordExample(tagalog: "Mabilis na pinaandar ang sasakyan.", ilocano: "Maples ya inmarawi so kotse.", pangasinense: "Napardas ti panagmaneho ti lugan."),
  WordExample(tagalog: "Pinaandar niya ang kanyang bagong kotse.", ilocano: "Inmarawi na ti baro a kotse na.", pangasinense: "Inmarawi to so baro na lugan.")
  ],
  ),

  Word(
  english: "awkward",
  tagalog: "tagalog: awkward",
  ilocano: "ilocano: makapabaing",
  pangasinense: "pangasinense: makauma",
  examples: [
  WordExample(tagalog: "Ang sitwasyon ay naging awkward para sa lahat ng kasangkot.", ilocano: "Say situasyon et makapabaing parad amin ya nalalanor.", pangasinense: "Makauma ti kasasaad para iti amin a nairaman."),
  WordExample(tagalog: "Napaka-awkward ng pagkakataong iyon.", ilocano: "Napalalo a makapabaing dayta a pagkakataon.", pangasinense: "Makauma so sitwasyon ya dayta.")
  ],
  ),

  Word(
  english: "chop",
  tagalog: "tagalog: pagputol",
  ilocano: "ilocano: mantatabas",
  pangasinense: "pangasinense: nangputed",
  examples: [
  WordExample(tagalog: "Gumamit siya ng palakol sa pagputol ng kahoy.", ilocano: "Inusar toy wasay pian mantatabas na kiew.", pangasinense: "Inusarna ti wasay a nangputed iti kayo."),
  WordExample(tagalog: "Pinutol niya ang sanga ng puno gamit ang palakol.", ilocano: "Inputol na ti sanga ti kayo babaen ti wasay.", pangasinense: "Nangputed to so sanga na puno gamit so wasay.")
  ],
  ),

  Word(
  english: "axle",
  tagalog: "tagalog: ehe",
  ilocano: "ilocano: ehe",
  pangasinense: "pangasinense: abali",
  examples: [
  WordExample(tagalog: "Nasira ang ehe ng gulong.", ilocano: "Abali so ehe na piligoy.", pangasinense: "Naburak ti ehe ti pilid."),
  WordExample(tagalog: "Kailangan palitan ang sira na ehe.", ilocano: "Masapul a ipalit ti nasirang ehe.", pangasinense: "Kailangan so palitan so naburak a ehe.")
  ],
  ),

  Word(
  english: "smile",
  tagalog: "tagalog: ngumiti",
  ilocano: "ilocano: inmimis",
  pangasinense: "pangasinense: immisem",
  examples: [
  WordExample(tagalog: "Ngumiti ang sanggol sa kanyang ina.", ilocano: "Inmimis so ugaw ed ina to.", pangasinense: "Immisem ti maladaga iti inana."),
  WordExample(tagalog: "Ngumiti siya nang makita ang kanyang kaibigan.", ilocano: "Ngumiti isuna idi makita na ti gayyemna.", pangasinense: "Immisem to idi naipakita so gayyem na.")
  ],
  ),

  Word(
  english: "bachelor",
  tagalog: "tagalog: bachelor",
  ilocano: "ilocano: bachelor",
  pangasinense: "pangasinense: bachelor",
  examples: [
  WordExample(tagalog: "Siya ay isang bachelor at tinatamasa ang kanyang kalayaan.", ilocano: "Sikatoy sakey a bachelor tan panliliketan toy kawayangan to.", pangasinense: "Bachelor ken tagtagiragsakenna ti wayawayana."),
  WordExample(tagalog: "Bilang isang bachelor, mas pinipili niyang mag-isa.", ilocano: "Kas maysa a bachelor, mas kayat na nga agmaymaysa.", pangasinense: "Bilang bachelor, mas gusto na so makainla.")
  ],
  ),

  Word(
  english: "backbone",
  tagalog: "tagalog: gulugod",
  ilocano: "ilocano: beklew",
  pangasinense: "pangasinense: duri",
  examples: [
  WordExample(tagalog: "Siya ay may malakas na gulugod at naninindigan para sa kanyang mga paniniwala.", ilocano: "Sikatoy walaan na mabiskeg a beklew tan itatalindeg to iray sisiaen to.", pangasinense: "Natibker ti duri ken itakderanna dagiti patpatienna."),
  WordExample(tagalog: "Ang kanyang gulugod ay simbolo ng kanyang lakas.", ilocano: "Ti beklewna ket simbolo ti kinastrongna.", pangasinense: "So durina et simbolo na ti kinastrongna.")
  ],
  ),
  Word(
  english: "move backward",
  tagalog: "tagalog: umandar sa likod",
  ilocano: "ilocano: kalkalnan inmarawi",
  pangasinense: "pangasinense: in-inut a nagsubli",
  examples: [
  WordExample(tagalog: "Mabagal na umandar ang sasakyan sa likod.", ilocano: "Say kotse et kalkalnan inmarawi.", pangasinense: "In-inut a nagsubli ti lugan."),
  WordExample(tagalog: "Umandar ang sasakyan pabalik.", ilocano: "Inmarawi ti kotse.", pangasinense: "Nagsubli so kotse.")
  ],
  ),

  Word(
  english: "cancel",
  tagalog: "tagalog: kinansela",
  ilocano: "ilocano: nangkansela",
  pangasinense: "pangasinense: angikansela",
  examples: [
  WordExample(tagalog: "Kinansela ng masamang panahon ang kaganapan.", ilocano: "Ti dakes a paniempo ti nangkansela iti pasamak.", pangasinense: "Say mauges a panaon so angikansela ed ebento."),
  WordExample(tagalog: "Kinansela nila ang kanilang biyahe dahil sa bagyo.", ilocano: "Inkansela da ti biyahe da gapu ti bagyo.", pangasinense: "Inakansela so biyahe da ed bagyo.")
  ],
  ),

  Word(
  english: "carry",
  tagalog: "tagalog: dala",
  ilocano: "ilocano: walay",
  pangasinense: "pangasinense: awit",
  examples: [
  WordExample(tagalog: "May dala siyang malaking bag na puno ng mga pinamili.", ilocano: "Walay awit ton baleg a bag ya napnoy tindaan.", pangasinense: "Adda awitna a dakkel a bag a napno iti groseri."),
  WordExample(tagalog: "Nagdala siya ng maraming bagay sa kanyang pagbisita.", ilocano: "Naggadana ti adu a banag iti panagbisita na.", pangasinense: "Nagdadala to so adu a bagay ed bisita na.")
  ],
  ),

  Word(
  english: "allow",
  tagalog: "tagalog: pinayagan",
  ilocano: "ilocano: inabuloyan",
  pangasinense: "pangasinense: pinalubosan",
  examples: [
  WordExample(tagalog: "Pinayagan ng airline ang isang piraso ng bagahe bawat pasahero.", ilocano: "Inabuloyan na eroplano so sakey a bagahe ed kada pasahero.", pangasinense: "Pinalubosan ti kompania ti eroplano ti maysa a pedaso ti bagahe iti tunggal pasahero."),
  WordExample(tagalog: "Pinayagan silang magdala ng extra na bagahe.", ilocano: "Inabuloyan da a mangdala ti extra a bagahe.", pangasinense: "Pinalubosan da so magdala so extra a bagahe.")
  ],
  ),

  Word(
  english: "bait",
  tagalog: "tagalog: pain",
  ilocano: "ilocano: paon",
  pangasinense: "pangasinense: paon",
  examples: [
  WordExample(tagalog: "Gumamit siya ng pain para mahuli ang isda.", ilocano: "Angusar na paon pian narel so sira.", pangasinense: "Inusarna ti paon a nangtiliw kadagiti ikan."),
  WordExample(tagalog: "Kinailangan niyang bumili ng pain para sa pangingisda.", ilocano: "Masapul na a gumatang ti paon para iti pangingisda.", pangasinense: "Kailangan na bumili so paon para ed pangingisda.")
  ],
  ),

  Word(
  english: "bake",
  tagalog: "tagalog: mag-bake",
  ilocano: "ilocano: manluto",
  pangasinense: "pangasinense: pagay-ayatna",
  examples: [
  WordExample(tagalog: "Mahilig siyang mag-bake ng cookies kapag weekend.", ilocano: "Labalabay toy manluto na cookies no sampot-simba.", pangasinense: "Pagay-ayatna ti agluto iti cookies no ngudo ti lawas."),
  WordExample(tagalog: "Nagtuturo siya ng baking sa kanyang mga kaibigan.", ilocano: "Agisuro isuna ti baking kadagiti gayyemna.", pangasinense: "Nag-atud so baking ed mga gayyem na.")
  ],
  ),

  Word(
  english: "balance",
  tagalog: "tagalog: balansehin",
  ilocano: "ilocano: nabalanse",
  pangasinense: "pangasinense: nabalanse",
  examples: [
  WordExample(tagalog: "Kailangan kong gumawa ng paraan para balansehin ang aking trabaho at buhay.", ilocano: "Kaukolan koy mananap na paraan pian nabalanse so trabaho tan bilay ko.", pangasinense: "Masapul a mangbirokak iti pamay-an a mangtimbeng iti trabaho ken biagko."),
  WordExample(tagalog: "Minsan mahirap balansehin ang trabaho at pamilya.", ilocano: "Awan ti kasapulan a nabalanse ti trabaho ken pamilya.", pangasinense: "Minsan masakit so balansehin so trabaho tan pamilya.")
  ],
  ),

  Word(
  english: "bald",
  tagalog: "tagalog: kalbo",
  ilocano: "ilocano: kalbo",
  pangasinense: "pangasinense: kalbo",
  examples: [
  WordExample(tagalog: "Kalbo ang lalaki at nakasuot ng salamin.", ilocano: "Say laki et kalbo tan aka-salamin.", pangasinense: "Kalbo ken nakasarming ti lalaki."),
  WordExample(tagalog: "Naging kalbo siya pagkatapos ng chemotherapy.", ilocano: "Nagkalbo isuna kalpasanna ti chemotherapy.", pangasinense: "Nagkalbo to ed ninyap na chemotherapy.")
  ],
  ),

  Word(
  english: "dance",
  tagalog: "tagalog: nagsayaw",
  ilocano: "ilocano: nansayaw",
  pangasinense: "pangasinense: nagsalada",
  examples: [
  WordExample(tagalog: "Magdamag silang nagsayaw sa ballroom.", ilocano: "Nansayaw ira ed ballroom ed interon labi.", pangasinense: "Nagsalada iti ballroom iti intero a rabii."),
  WordExample(tagalog: "Nagsayaw sila ng mga sayaw ng bayan.", ilocano: "Nansayaw da dagiti sayaw ti ili.", pangasinense: "Nagsalada da so sayaw na bayan.")
  ],
  ),

  Word(
  english: "furniture",
  tagalog: "tagalog: kasangkapan",
  ilocano: "ilocano: muebles",
  pangasinense: "pangasinense: muebles",
  examples: [
  WordExample(tagalog: "Gawa sa kawayan ang mga kasangkapan.", ilocano: "Say muebles et gawad kawayan.", pangasinense: "Naaramid dagiti muebles manipud iti kawayan."),
  WordExample(tagalog: "Nagmamanupaktura sila ng mga kasangkapan mula sa kahoy.", ilocano: "Agmamanupaktura da dagiti muebles manipud iti kahoy.", pangasinense: "Nagmamanupaktura to so muebles ed kahoy.")
  ],
  ),

  Word(
  english: "breakfast",
  tagalog: "tagalog: almusal",
  ilocano: "ilocano: nan-almusal",
  pangasinense: "pangasinense: sabongko",
  examples: [
  WordExample(tagalog: "Nag-almusal ako ng saging.", ilocano: "Nan-almusal ak na saging.", pangasinense: "Adda sabongko a pammigat."),
  WordExample(tagalog: "Mahilig siyang kumain ng almusal na mga itlog.", ilocano: "Kayatna ti mangan ti almusal nga itlog.", pangasinense: "Ayat na so kumain ed almusal na itlog.")
  ],
  ),

  Word(
  english: "wrap",
  tagalog: "tagalog: binalot",
  ilocano: "ilocano: binalkot",
  pangasinense: "pangasinense: inbalkotna",
  examples: [
  WordExample(tagalog: "Binalot niya ng benda ang sugat.", ilocano: "Binalkot toy bendahe ed sugat.", pangasinense: "Inbalkotna ti benda iti sugat."),
  WordExample(tagalog: "Kailangan niyang binalutan ang kanyang regalo.", ilocano: "Masapul na binalutan ti regalo na.", pangasinense: "Kailangan na i-binalot so regalo na.")
  ],
  ),

  Word(
  english: "banner",
  tagalog: "tagalog: bandera",
  ilocano: "ilocano: bandera",
  pangasinense: "pangasinense: bandera",
  examples: [
  WordExample(tagalog: "May pagmamalaki na nakasabit ang banner sa gym.", ilocano: "Sipapannakkel a nakabitin ti bandera iti gym.", pangasinense: "Say bandera so akabitin ya mapaatagey ed gym."),
  WordExample(tagalog: "Ang banner ay naglalaman ng mga impormasyon.", ilocano: "Ti bandera ket naglaon ti impormasyon.", pangasinense: "So bandera et adda informasyones.")
  ],
  ),

  Word(
  english: "baptism",
  tagalog: "tagalog: binyag",
  ilocano: "ilocano: panagbautismo",
  pangasinense: "pangasinense: panagbautis",
  examples: [
  WordExample(tagalog: "Ang kanyang binyag ay isang masayang okasyon.", ilocano: "Makapaliket ya okasyon so impanpabautismo to.", pangasinense: "Naragsak nga okasion ti panagbautisarna."),
  WordExample(tagalog: "Dumalo ang buong pamilya sa kanyang binyag.", ilocano: "Nagdala ti pamilya a amin iti binyag na.", pangasinense: "Nadalo so pamilia ed binyag na.")
  ],
  ),

  Word(
  english: "barbarian",
  tagalog: "tagalog: barbaro",
  ilocano: "ilocano: barbaro",
  pangasinense: "pangasinense: barbaro",
  examples: [
  WordExample(tagalog: "Mabangis na lumaban ang mga tribong barbarian.", ilocano: "Saray tribu na barbaro so nanlalaban a maong.", pangasinense: "Nakaro ti pannakidangadang dagiti barbaro a tribu."),
  WordExample(tagalog: "Ang mga barbaro ay may iba't ibang kultura.", ilocano: "Dagiti barbaro ket adda naduma a kultura.", pangasinense: "So mga barbaro et adda naduma-duma so kultura.")
  ],
  ),
  Word(
  english: "visit the barber",
  tagalog: "tagalog: bisitahin ang barbero",
  ilocano: "ilocano: bisitaen so barbero",
  pangasinense: "pangasinense: sarungkarak ti barbero",
  examples: [
  WordExample(tagalog: "Kailangan kong bisitahin ang barbero para magpagupit.", ilocano: "Kaukolan kon bisitaen so barbero pian manpaputot.", pangasinense: "Masapul a sarungkarak ti barbero para iti panagputot."),
  WordExample(tagalog: "Magandang ideya na bisitahin ang barbero bago ang okasyon.", ilocano: "Nasayaat a ideya ti bisitaen ti barbero sakbay ti okasyon.", pangasinense: "Maayo a ideya ya sarungkaran so barbero ed sikat na okasyon.")
  ],
  ),

  Word(
  english: "walk barefoot",
  tagalog: "tagalog: maglakad ng walang sapin",
  ilocano: "ilocano: manakar ya anggapoy sandalyas",
  pangasinense: "pangasinense: magna a di nakasapatos",
  examples: [
  WordExample(tagalog: "Mas gusto niyang maglakad ng walang sapin sa dalampasigan.", ilocano: "Mas labay toy manakar ya anggapoy sandalyas to diad gilig na dayat.", pangasinense: "Kaykayatna ti magna a di nakasapatos iti aplaya."),
  WordExample(tagalog: "Naglakad siya ng walang sapin sa malamig na damuhan.", ilocano: "Nanakar isuna a di nakasapatos iti nabanglo a damo.", pangasinense: "Nagmagnanay ya di nakasapatos ed malamig na damo.")
  ],
  ),

  Word(
  english: "walk bareheaded",
  tagalog: "tagalog: walang ulo",
  ilocano: "ilocano: anggapoy ulo",
  pangasinense: "pangasinense: awan ti ulona",
  examples: [
  WordExample(tagalog: "Naglakad siya ng walang ulo sa mainit na araw.", ilocano: "Sikatoy nanakar ya anggapoy ulo to ed ambetel ya agew.", pangasinense: "Nagna nga awan ti ulona iti nabara nga init."),
  WordExample(tagalog: "Minsan naglalakad siyang walang ulo sa malamig na panahon.", ilocano: "Minsan nanakar isuna a di nakapublo iti nabara nga panawen.", pangasinense: "Minsan nagmagnanay so awan ti ulona ed nabara ya panawen.")
  ],
  ),

  Word(
  english: "find a bargain",
  tagalog: "tagalog: nakakita ng bargain",
  ilocano: "ilocano: nakakita",
  pangasinense: "pangasinense: nakakita",
  examples: [
  WordExample(tagalog: "Nakakita ako ng magandang bargain sa tindahan.", ilocano: "Walay aromog kon balibalin baratilyo ed tindahan.", pangasinense: "Nasarakak ti dakkel a baratilyo iti tiendaan."),
  WordExample(tagalog: "Kailangan kong maghanap ng bargain sa susunod na linggo.", ilocano: "Masapul kon a mangbiruk ti baratilyo inton sumaruno a lawas.", pangasinense: "Kailangan ko mag-imbestiga so baratilyo ed sumaruno ya semana.")
  ],
  ),

  Word(
  english: "bark loudly",
  tagalog: "tagalog: tumahol ng malakas",
  ilocano: "ilocano: agtaul",
  pangasinense: "pangasinense: agtaul",
  examples: [
  WordExample(tagalog: "Nagsimulang tumahol ng malakas ang aso.", ilocano: "Ginmapon nan-angol na maksil so aso.", pangasinense: "Nangrugin nga agtaul iti napigsa ti aso."),
  WordExample(tagalog: "Tumahol ang aso nang marinig ang estranghero.", ilocano: "Agtaul ti aso idi narinigna ti estranghero.", pangasinense: "Agtaul so aso ed minaranglayan to estranghero.")
  ],
  ),

  Word(
  english: "paint a barn",
  tagalog: "tagalog: pininturahan ang kamalig",
  ilocano: "ilocano: pininturaan",
  pangasinense: "pangasinense: pininturaan",
  examples: [
  WordExample(tagalog: "Ang kamalig ay pininturahan ng pula.", ilocano: "Say kamalir et pininturaan na ambalanga.", pangasinense: "Napintaan iti nalabaga ti kamalig."),
  WordExample(tagalog: "Gusto nilang pinturahan ang kanilang barn ng berde.", ilocano: "Kayatda a pinturahan ti kamaligda iti berde.", pangasinense: "Kayatda i-pintura so kamalig da ed berde.")
  ],
  ),

  Word(
  english: "barter goods",
  tagalog: "tagalog: makipagpalitan ng mga kalakal",
  ilocano: "ilocano: makipagbarter",
  pangasinense: "pangasinense: agbarter",
  examples: [
  WordExample(tagalog: "Maaari tayong makipagpalitan ng mga kalakal sa halip na gumamit ng pera.", ilocano: "Sarag tayon i-barter so produkto imbes ya mangusar na kuarta.", pangasinense: "Mabalintayo ti agbarter kadagiti tagilako imbes nga agusartayo iti kuarta."),
  WordExample(tagalog: "Nagsimula silang makipagpalitan ng mga produkto sa merkado.", ilocano: "Nagsimula da a makipagbarter kadagiti produkto iti merkado.", pangasinense: "Nagsimula to i-barter so produkto ed merkado.")
  ],
  ),

  Word(
  english: "base of the statue",
  tagalog: "tagalog: base ng rebulto",
  ilocano: "ilocano: base",
  pangasinense: "pangasinense: base",
  examples: [
  WordExample(tagalog: "Ang base ng rebulto ay gawa sa granite.", ilocano: "Say base na estatua et gawad granite.", pangasinense: "Ti batay ti estatua ket naaramid iti granito."),
  WordExample(tagalog: "Pininturahan nila ang base ng rebulto ng puti.", ilocano: "Pininturaan da ti base na estatua ti puti.", pangasinense: "Pininturaan da so base ti estatua ed puti.")
  ],
  ),

  Word(
  english: "bashful",
  tagalog: "tagalog: nahihiya",
  ilocano: "ilocano: mabaing",
  pangasinense: "pangasinense: mabain",
  examples: [
  WordExample(tagalog: "Masyado siyang nahihiya na magsalita sa publiko.", ilocano: "Sikatoy mabaing ya mansalita ed publiko.", pangasinense: "Mabain unay isuna nga agsao iti publiko."),
  WordExample(tagalog: "Nahihiya siya sa harap ng maraming tao.", ilocano: "Nahaasi isuna iti atubang dagiti adu a tao.", pangasinense: "Mabain to ed atubang na adu ya tao.")
  ],
  ),

  Word(
  english: "fill a basin",
  tagalog: "tagalog: napuno ng tubig",
  ilocano: "ilocano: napno",
  pangasinense: "pangasinense: napno",
  examples: [
  WordExample(tagalog: "Ang palanggana ay napuno ng tubig.", ilocano: "Napno na danum so planggana.", pangasinense: "Napno ti palanggana iti danum."),
  WordExample(tagalog: "Pinuno nila ang palanggana ng malamig na tubig.", ilocano: "Pinuno da ti planggana ti nabanglo a danum.", pangasinense: "Pinuno da so palanggana ed malamig na danum.")
  ],
  ),

  Word(
  english: "basis of your argument",
  tagalog: "tagalog: batayan ng iyong argumento",
  ilocano: "ilocano: basiyan",
  pangasinense: "pangasinense: batayan",
  examples: [
  WordExample(tagalog: "Ano ang batayan ng iyong argumento?", ilocano: "Antoy basiyan na argumento yo?", pangasinense: "Ania ti nakaibatayan ti argumentom?"),
  WordExample(tagalog: "Mahalaga ang batayan ng iyong sinasabi.", ilocano: "Napateg ti basiyan ti saem.", pangasinense: "Mahalaga so batayan ti sinasabi mo.")
  ],
  ),

  Word(
  english: "place apples in a basket",
  tagalog: "tagalog: inilagay ang mga mansanas",
  ilocano: "ilocano: inyan",
  pangasinense: "pangasinense: inkabil",
  examples: [
  WordExample(tagalog: "Inilagay niya ang mga mansanas sa isang basket.", ilocano: "Inyan to ray mansanas ed sakey a basket.", pangasinense: "Inkabilna dagiti mansanas iti basket."),
  WordExample(tagalog: "Nagtulong silang maglagay ng mansanas sa basket.", ilocano: "Nagtulong da a maglagay ti mansanas iti basket.", pangasinense: "Nagtulong da mag-inkabil so mansanas ed basket.")
  ],
  ),

  Word(
  english: "hit the bat",
  tagalog: "tagalog: natamaan ang bat",
  ilocano: "ilocano: tinamaan",
  pangasinense: "pangasinense: tinamaan",
  examples: [
  WordExample(tagalog: "Natamaan ko ang bat sa bola.", ilocano: "Tinamaan ko so bat ed bola.", pangasinense: "Nadungparko ti bat iti bola."),
  WordExample(tagalog: "Hit ko ang bat at tumama sa bola.", ilocano: "Pinaksa ko ti bat ken tinamaan ti bola.", pangasinense: "Pinukpok ko so bat tan tumama so bola.")
  ],
  ),

  Word(
  english: "take a relaxing bath",
  tagalog: "tagalog: naligo ako",
  ilocano: "ilocano: nanrelaks",
  pangasinense: "pangasinense: nagdigos",
  examples: [
  WordExample(tagalog: "Pagkatapos ng mahabang araw, naligo ako.", ilocano: "Kayari na andukey ya agew, nanrelaks ak ya nanames.", pangasinense: "Kalpasan ti napaut nga aldaw, nagdigosak a makaparelaks."),
  WordExample(tagalog: "Minsan naliligo ako sa mainit na tubig para mag-relax.", ilocano: "Minsan naligo ak iti naangot a danum tapno ag-relax.", pangasinense: "Minsan nagdigosak ed mainit na danum para mag-relax.")
  ],
  ),

  Word(
  english: "bathe in the sun",
  tagalog: "tagalog: maligo sa araw",
  ilocano: "ilocano: agdigus",
  pangasinense: "pangasinense: agdigus",
  examples: [
  WordExample(tagalog: "Mahilig silang maligo sa araw.", ilocano: "Labalabay day manames ed agew.", pangasinense: "Pagay-ayatda ti agdigus iti init."),
  WordExample(tagalog: "Masarap maligo sa araw sa tag-init.", ilocano: "Naimas ti agdigus iti init idi panawen ti tag-init.", pangasinense: "Masarap ya agdigus ed init ed panawen na tag-init.")
  ],
  ),
  Word(
  english: "prepare for battle",
  tagalog: "tagalog: naghahanda para sa labanan",
  ilocano: "ilocano: manpaparaan so duaran dapag parad bakal",
  pangasinense: "pangasinense: agsagsagana ti dua a dasig para iti laban",
  examples: [
  WordExample(tagalog: "Ang dalawang panig ay naghahanda para sa labanan.", ilocano: "Agsagsagana ti dua a dasig para iti laban.", pangasinense: "Manpaparaan so duaran dapag parad bakal."),
  WordExample(tagalog: "Naghahanda na ang mga sundalo para sa labanan bukas.", ilocano: "Agsagsagana dagiti soldado para iti laban inton bigat.", pangasinense: "Agsagsagana so sundalo para ed laban ed bukas.")
  ],
  ),

  Word(
  english: "buy souvenirs",
  tagalog: "tagalog: bumili ng mga souvenir",
  ilocano: "ilocano: nansaliw ak na souvenir",
  pangasinense: "pangasinense: gimmatangak kadagiti souvenir",
  examples: [
  WordExample(tagalog: "Bumili ako ng mga souvenir sa bazaar.", ilocano: "Nansaliw ak na souvenir ed tindaan.", pangasinense: "Gimmatangak kadagiti souvenir iti bazar."),
  WordExample(tagalog: "Kailangan kong bumili ng souvenir para sa aking pamilya.", ilocano: "Masapul kon a gumatang ti souvenir para ti pamilya ko.", pangasinense: "Kailangan ko maggimatang so souvenir para ed pamilya ko.")
  ],
  ),

  Word(
  english: "spend the day",
  tagalog: "tagalog: nagpalipas ng maghapon",
  ilocano: "ilocano: inusar mi so sanagew",
  pangasinense: "pangasinense: binusbosmi ti aldaw",
  examples: [
  WordExample(tagalog: "Nagpalipas kami ng maghapon sa dalampasigan.", ilocano: "Inusar mi so sanagew ed gilig na dayat.", pangasinense: "Binusbosmi ti aldaw iti aplaya."),
  WordExample(tagalog: "Nais naming magpalipas ng araw sa isang resort.", ilocano: "Kayatmi a magpalipas ti aldaw iti resort.", pangasinense: "Gusto mi magbusbos ed aldaw ed resort.")
  ],
  ),

  Word(
  english: "sharp beak",
  tagalog: "tagalog: matalim na tuka",
  ilocano: "ilocano: walay matadem ya sangi",
  pangasinense: "pangasinense: natadem ti tukak",
  examples: [
  WordExample(tagalog: "Ang ibon ay may matalim na tuka.", ilocano: "Say manok et walay matadem ya sangi to.", pangasinense: "Natadem ti tukak ti tumatayab."),
  WordExample(tagalog: "Kailangan ng ibon ng matalim na tuka para sa kanyang pagkain.", ilocano: "Masapul ti manok ti matadem a sangi para iti makan na.", pangasinense: "Kailangan na so ibon ed natadem ya tukak para ed kanyang makan.")
  ],
  ),

  Word(
  english: "sun began to beam",
  tagalog: "tagalog: nagsimulang sumikat ang araw",
  ilocano: "ilocano: ginmapon sinminag",
  pangasinense: "pangasinense: nangrugin nga agsilnag",
  examples: [
  WordExample(tagalog: "Nagsimulang sumikat ang araw sa mga ulap.", ilocano: "Say banwa et ginmapon sinminag ed saray lurem.", pangasinense: "Nangrugin nga agsilnag ti init kadagiti ulep."),
  WordExample(tagalog: "Sumikat ang araw sa likod ng mga bundok.", ilocano: "Agsilnag ti init idiay likudan dagiti bantay.", pangasinense: "Agsilnag so init ed likod na mga bundok.")
  ],
  ),

  Word(
  english: "plant a bean",
  tagalog: "tagalog: nagtanim ng sitaw",
  ilocano: "ilocano: nantanem ak na bean",
  pangasinense: "pangasinense: nagmulaak iti saba",
  examples: [
  WordExample(tagalog: "Nagtanim ako ng sitaw sa hardin.", ilocano: "Nantanem ak na bean ed hardin.", pangasinense: "Nagmulaak iti saba iti hardin."),
  WordExample(tagalog: "Mahilig akong magtanim ng mga beans sa aking bakuran.", ilocano: "Kayatko a nantanem kadagiti beans iti bakuran ko.", pangasinense: "Kayat ko magmula so beans ed bakuran ko.")
  ],
  ),

  Word(
  english: "long beard",
  tagalog: "tagalog: mahabang balbas",
  ilocano: "ilocano: andukey so balbas",
  pangasinense: "pangasinense: atiddog ti barbasna",
  examples: [
  WordExample(tagalog: "Siya ay may mahabang balbas at mukhang matalino.", ilocano: "Andukey so balbas to tan makabat so itsura to.", pangasinense: "Atiddog ti barbasna ken kasla masirib."),
  WordExample(tagalog: "Ang matandang lalaki ay may mahabang balbas na puti.", ilocano: "Ti lakay ket addaan ti andukey a balbas a puti.", pangasinense: "So matanda ya lalaki et atiddog so barbas na na puti.")
  ],
  ),

  Word(
  english: "beast roamed",
  tagalog: "tagalog: hayop ay gumagala",
  ilocano: "ilocano: linmabas ed katakelan",
  pangasinense: "pangasinense: nagdaliasat ti animal",
  examples: [
  WordExample(tagalog: "Ang hayop ay gumagala sa kagubatan sa gabi.", ilocano: "Say ayep et linmabas ed katakelan nen labi.", pangasinense: "Nagdaliasat ti animal iti kabakiran iti rabii."),
  WordExample(tagalog: "Naglalakad ang mga hayop sa paligid ng nayon.", ilocano: "Agnaed dagiti ayep iti aglawlaw ti nayon.", pangasinense: "Naglalakad so mga animal ed paligid na baryo.")
  ],
  ),

  Word(
  english: "source of beatitude",
  tagalog: "tagalog: pinagmumulan ng kapurihan",
  ilocano: "ilocano: lapuan na liket",
  pangasinense: "pangasinense: gubuayan ti beatitude",
  examples: [
  WordExample(tagalog: "Ang aklat ay pinagmumulan ng kapurihan.", ilocano: "Say libro et lapuan na liket.", pangasinense: "Ti libro ket gubuayan ti beatitude."),
  WordExample(tagalog: "Mahalaga ang mga pagkilos na nagdadala ng beatitude.", ilocano: "Napateg dagiti aramid a mangpapaay ti beatitude.", pangasinense: "Mahalaga so mga aramid na nagdadara ti beatitude.")
  ],
  ),

  Word(
  english: "beautiful in spring",
  tagalog: "tagalog: maganda sa tagsibol",
  ilocano: "ilocano: marakep so hardin",
  pangasinense: "pangasinense: napintas ti hardin",
  examples: [
  WordExample(tagalog: "Ang hardin ay maganda sa tagsibol.", ilocano: "Marakep so hardin no primabera.", pangasinense: "Napintas ti hardin no primavera."),
  WordExample(tagalog: "Nais kong magtanim ng mga bulaklak na maganda sa tagsibol.", ilocano: "Kayatko a nantanem kadagiti sabong a maganda no primabera.", pangasinense: "Gusto ko magmula so bulaklak na napintas ed primavera.")
  ],
  ),

  Word(
  english: "call for help",
  tagalog: "tagalog: tinawagan ko siya",
  ilocano: "ilocano: tinawagan ko",
  pangasinense: "pangasinense: tinawagak",
  examples: [
  WordExample(tagalog: "Tinawagan ko siya dahil kailangan ko ng tulong.", ilocano: "Tinawagan ko ta kaukolan koy tulong.", pangasinense: "Tinawagak ta kasapulak ti tulong."),
  WordExample(tagalog: "Kung may problema, tinawagan ko ang aking kaibigan.", ilocano: "No adda problema, tinawagan ko ti gayyem ko.", pangasinense: "Kung agkaka-problema, tinawagan ko so gayyem ko.")
  ],
  ),

  Word(
  english: "make bed bug free",
  tagalog: "tagalog: pinalaya ang surot",
  ilocano: "ilocano: ginawa ton libre",
  pangasinense: "pangasinense: pinagbalinna a nawaya",
  examples: [
  WordExample(tagalog: "Pinalaya niya ang surot sa kama.", ilocano: "Ginawa ton libre so bedbug.", pangasinense: "Pinagbalinna a nawaya ti bed bedbug."),
  WordExample(tagalog: "Kailangan mong linisin ang kama para maging bed bug free.", ilocano: "Masapul mo a linisan ti kama tapno agbalin a libre ti bedbug.", pangasinense: "Kailangan mo linisen so kama para maging nawaya so bedbug.")
  ],
  ),

  Word(
  english: "bee buzzed",
  tagalog: "tagalog: umugong ang bubuyog",
  ilocano: "ilocano: nan-ungol ed kaliberliber",
  pangasinense: "pangasinense: nagburburek ti uyokan",
  examples: [
  WordExample(tagalog: "Umugong ang bubuyog sa paligid ng bulaklak.", ilocano: "Say buyog so nan-ungol ed kaliberliber na rosas.", pangasinense: "Nagburburek ti uyokan iti aglawlaw ti sabong."),
  WordExample(tagalog: "Nakita ko ang bubuyog na umuugong sa mga bulaklak.", ilocano: "Nakita ko ti buyog a nan-ungol kadagiti rosas.", pangasinense: "Nakita ko so buyog na nagburburek ed mga sabong.")
  ],
  ),

  Word(
  english: "order beef",
  tagalog: "tagalog: nag-order ng beef",
  ilocano: "ilocano: nan-order",
  pangasinense: "pangasinense: nag-orderda",
  examples: [
  WordExample(tagalog: "Nag-order sila ng beef para sa hapunan.", ilocano: "Nan-order ira na karne na baka parad pangdem.", pangasinense: "Nag-orderda iti karne ti baka a pangrabii."),
  WordExample(tagalog: "Bumili sila ng karne ng baka para sa barbecue.", ilocano: "Nagtakaw da iti karne ti baka para iti barbecue.", pangasinense: "Naggimatang da so karne ti baka para ed barbecue.")
  ],
  ),
  Word(
  english: "beetle crawled",
  tagalog: "tagalog: gumapang ang salagubang",
  ilocano: "ilocano: inmamot so duron",
  pangasinense: "pangasinense: nagkarayam ti kuton a simmang-at iti diding",
  examples: [
  WordExample(tagalog: "Gumapang ang salagubang sa dingding.", ilocano: "Inmamot so duron ed padir.", pangasinense: "Nagkarayam ti kuton a simmang-at iti diding."),
  WordExample(tagalog: "Nakita ko ang salagubang na gumagapang sa sahig.", ilocano: "Nakita ko ti duron a inmamot ed salog.", pangasinense: "Nakita ko so kuton a nagkarayam ed sahig.")
  ],
  ),

  Word(
  english: "left my keys",
  tagalog: "tagalog: iniwan ko muna ang susi ko",
  ilocano: "ilocano: intilak ko ray tombok ko",
  pangasinense: "pangasinense: imbatik dagiti tulbekko",
  examples: [
  WordExample(tagalog: "Iniwan ko muna ang susi ko bago ako lumabas.", ilocano: "Intilak ko ray tombok ko antis ak ya pinmaway.", pangasinense: "Imbatik dagiti tulbekko sakbay a rimmuarak."),
  WordExample(tagalog: "Palagi kong iniwan ang aking susi sa bahay.", ilocano: "Saan a kanayon nga inwan ko ti tombok ko idiay balay.", pangasinense: "Palagi ko imbatik so tombok ko ed bahay.")
  ],
  ),

  Word(
  english: "beg for forgiveness",
  tagalog: "tagalog: humingi ng tawad",
  ilocano: "ilocano: mabetbet ak ya onkekerew",
  pangasinense: "pangasinense: masansan nga agpakaasiak",
  examples: [
  WordExample(tagalog: "Madalas akong humingi ng tawad.", ilocano: "Mabetbet ak ya onkekerew na panamerdona.", pangasinense: "Masansan nga agpakaasiak iti pammakawan."),
  WordExample(tagalog: "Humihingi ako ng tawad sa mga nagawa kong pagkakamali.", ilocano: "Agpakawan ak kadagiti nagkaliwliwan ko a basol.", pangasinense: "Agtawad ak ed mga pagkakamali ko.")
  ],
  ),

  Word(
  english: "beggar sat",
  tagalog: "tagalog: umupo ang pulubi",
  ilocano: "ilocano: say mipapayabol et akayurong",
  pangasinense: "pangasinense: nagtugaw ti agpalpalimos",
  examples: [
  WordExample(tagalog: "Umupo ang pulubi sa sulok ng kalye.", ilocano: "Say mipapayabol et akayurong ed suyok na karsada.", pangasinense: "Nagtugaw ti agpalpalimos iti suli ti kalsada."),
  WordExample(tagalog: "May pulubi na umupo sa harap ng tindahan.", ilocano: "Adda pulubi a mipapayabol idiay atubang ti tindaan.", pangasinense: "Adda agpalpalimos ya nagtugaw ed atubang na tindahan.")
  ],
  ),

  Word(
  english: "begin work early",
  tagalog: "tagalog: simulan ang iyong trabaho nang maaga",
  ilocano: "ilocano: nepeg ya masakbay mon igapo",
  pangasinense: "pangasinense: rugianyo koma a nasapa",
  examples: [
  WordExample(tagalog: "Dapat mong simulan ang iyong trabaho nang maaga.", ilocano: "Nepeg ya masakbay mon igapo so kimey mo.", pangasinense: "Rugianyo koma a nasapa ti trabahoyo."),
  WordExample(tagalog: "Mas mabuti kung sisimulan mo ang iyong proyekto ng maaga.", ilocano: "Nasayaat no masimulan mo ti proyekto mo a nasapa.", pangasinense: "Mas mabuti ed rugian mo so proyekto mo ed nasapa.")
  ],
  ),

  Word(
  english: "behave properly",
  tagalog: "tagalog: kumilos nang maayos",
  ilocano: "ilocano: importante so dugan ugali",
  pangasinense: "pangasinense: napateg ti umno a kababalin",
  examples: [
  WordExample(tagalog: "Mahalagang kumilos nang maayos sa publiko.", ilocano: "Importante so dugan ugali ed publiko.", pangasinense: "Napateg ti umno a kababalin iti publiko."),
  WordExample(tagalog: "Dapat tayong kumilos ng maayos sa harap ng ibang tao.", ilocano: "Masapul a kumilos tayo a nasayaat idiay atubangan dagiti dadduma.", pangasinense: "Dapat tayon kumilos ya maayos ed atubangan na ibang tao.")
  ],
  ),

  Word(
  english: "dog hiding",
  tagalog: "tagalog: nagtago ang aso",
  ilocano: "ilocano: say aso et manaamot",
  pangasinense: "pangasinense: naglemmeng ti aso",
  examples: [
  WordExample(tagalog: "Nagtago ang aso sa likod ng sopa.", ilocano: "Say aso et manaamot ed benegan na sopa.", pangasinense: "Naglemmeng ti aso iti likudan ti sopa."),
  WordExample(tagalog: "May aso na nagtago sa ilalim ng mesa.", ilocano: "Adda aso a nagtago idiay silong ti mesa.", pangasinense: "Adda aso ya naglemmeng ed silong na mesa.")
  ],
  ),

  Word(
  english: "unique human being",
  tagalog: "tagalog: natatanging tao",
  ilocano: "ilocano: sikatoy nikadkaduman",
  pangasinense: "pangasinense: isu ket naisangsangayan a tao",
  examples: [
  WordExample(tagalog: "Siya ay isang natatanging tao.", ilocano: "Sikatoy nikadkaduman too.", pangasinense: "Isu ket naisangsangayan a tao."),
  WordExample(tagalog: "Bawat tao ay may natatanging katangian.", ilocano: "Tunggal tao ket adda natatanging katangian.", pangasinense: "Bawat tao et adda naisa-isang katangian.")
  ],
  ),

  Word(
  english: "can't believe November",
  tagalog: "tagalog: hindi ako makapaniwala na November na",
  ilocano: "ilocano: agko makapanisia ya Nobyembre la",
  pangasinense: "pangasinense: diak patien a Nobiembre itan",
  examples: [
  WordExample(tagalog: "Hindi ako makapaniwala na November na.", ilocano: "Agko makapanisia ya Nobyembre la.", pangasinense: "Diak patien a Nobiembre itan."),
  WordExample(tagalog: "Mabilis ang paglipas ng panahon, hindi ko alam kung paanong November na.", ilocano: "Nasayaat ti panawen, agawidak no kasano a Nobyembre la.", pangasinense: "Mabilisan so paglipas na panahon, di ko la naalam na Nobiembre la.")
  ],
  ),

  Word(
  english: "lion began to bellow",
  tagalog: "tagalog: ang leon ay nagsimulang umungol",
  ilocano: "ilocano: say leon et ginmapon nan-ungol",
  pangasinense: "pangasinense: nangrugin nga agngaretnget ti leon",
  examples: [
  WordExample(tagalog: "Ang leon ay nagsimulang umungol ng malakas.", ilocano: "Say leon et ginmapon nan-ungol na maksil.", pangasinense: "Nangrugin nga agngaretnget ti leon iti napigsa."),
  WordExample(tagalog: "Nang makita ng leon ang biktima, siya ay umungol.", ilocano: "Iti panagkita ti leon iti biktima, nagungol isuna.", pangasinense: "Nang nakita na so leon ya biktima, nangungol so leon.")
  ],
  ),

  Word(
  english: "round belly",
  tagalog: "tagalog: bilog ang tiyan",
  ilocano: "ilocano: malimpek so eges",
  pangasinense: "pangasinense: nagtimbukel ti tianna",
  examples: [
  WordExample(tagalog: "Bilog ang tiyan niya dahil sa sobrang pagkain.", ilocano: "Malimpek so eges to lapud sobran panangan.", pangasinense: "Nagtimbukel ti tianna gapu iti nalabes a pannangan."),
  WordExample(tagalog: "Mataba siya at bilog ang kanyang tiyan.", ilocano: "Naballigi isuna ken malimpek ti tiyan na.", pangasinense: "Mataba so tao na ya nagtimbukel so tianna.")
  ],
  ),

  Word(
  english: "river flows",
  tagalog: "tagalog: ang ilog ay dumadaloy",
  ilocano: "ilocano: say ilog et onaagus",
  pangasinense: "pangasinense: agayus ti karayan",
  examples: [
  WordExample(tagalog: "Ang ilog ay dumadaloy sa ilalim ng bangin.", ilocano: "Say ilog et onaagus ed leksab na pukdol.", pangasinense: "Agayus ti karayan iti baba ti bakras."),
  WordExample(tagalog: "Malinis ang tubig ng ilog na dumadaloy dito.", ilocano: "Naimbag ti danum ti ilog a onaagus ditoy.", pangasinense: "Malinis so danum na karayan ya agayus ed ditoy.")
  ],
  ),

  Word(
  english: "leather belt",
  tagalog: "tagalog: nakasuot siya ng leather belt",
  ilocano: "ilocano: sikatoy akasulong na katat",
  pangasinense: "pangasinense: nakasuot iti lalat",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng leather belt.", ilocano: "Sikatoy akasulong na katat a sinturon.", pangasinense: "Nakasuot iti lalat a sinturon."),
  WordExample(tagalog: "May suot siyang sinturon na gawa sa balat.", ilocano: "Adda suot na sinturon a naggapu ed balat.", pangasinense: "Adda ya suot na sinturon ya gawang lalat.")
  ],
  ),

  Word(
  english: "bend the wire",
  tagalog: "tagalog: ibaluktot ang alambre",
  ilocano: "ilocano: kaukolan mon ibaluktot",
  pangasinense: "pangasinense: masapul a ikurba",
  examples: [
  WordExample(tagalog: "Kailangan mong ibaluktot ang alambre para mahubog ito.", ilocano: "Kaukolan mon ibaluktot so alambre pian naporma itan.", pangasinense: "Masapul a ikurba ti alambre tapno maporma dayta."),
  WordExample(tagalog: "Madali lang ibaluktot ang alambre gamit ang kamay.", ilocano: "Nalaka laeng nga ibaluktot ti alambre gamit ti ima.", pangasinense: "Madali la ibaluktot so alambre gamit so kamay.")
  ],
  ),

  Word(
  english: "treasure buried",
  tagalog: "tagalog: kayamanan ay inilibing",
  ilocano: "ilocano: say kayamanan so inkotkot",
  pangasinense: "pangasinense: naitabon ti gameng",
  examples: [
  WordExample(tagalog: "Ang kayamanan ay inilibing sa ilalim ng matandang puno ng oak.", ilocano: "Say kayamanan so inkotkot ed silong na daan a kiew ya oak.", pangasinense: "Naitabon ti gameng iti sirok ti daan a kayo nga oak."),
  WordExample(tagalog: "Nahanap nila ang kayamanan na inilibing sa burol.", ilocano: "Nakitam da ti kayamanan a naidulin ed burol.", pangasinense: "Nakitak da so gameng na naitabon ed burol.")
  ],
  ),

  Word(
  english: "beget great things",
  tagalog: "tagalog: magkaroon ng magagandang bagay",
  ilocano: "ilocano: iilaloan ton nawalaan",
  pangasinense: "pangasinense: nangnamnama a mangpataud",
  examples: [
  WordExample(tagalog: "Inaasahan niyang magkaroon ng magagandang bagay sa pamamagitan ng pagsusumikap.", ilocano: "Iilaloan ton nawalaan na angkabaleg iran bengatla diad panamegley na pansasagpot.", pangasinense: "Nangnamnama a mangpataud kadagiti naindaklan a banag babaen ti napinget a panagtrabaho."),
  WordExample(tagalog: "Madalas siyang nangarap na magkaroon ng magagandang bagay sa buhay.", ilocano: "Kanayon isuna nga mangyabong a mangarumang ti naindaklan a banag iti biag.", pangasinense: "Palagi so pangarap na mangkako so magagandang bagay ed biag.")
  ],
  ),

  Word(
  english: "bequeath belongings",
  tagalog: "tagalog: ipamana sa mga anak ko",
  ilocano: "ilocano: planok ya ipatawid",
  pangasinense: "pangasinense: planok ya ipatawir",
  examples: [
  WordExample(tagalog: "Balak kong ipamana sa mga anak ko ang mga gamit ko.", ilocano: "Planok ya ipatawid dagiti sanikuak kadagiti annakko.", pangasinense: "Planok ya ipatawir iray kayarian ko ed saray anak ko."),
  WordExample(tagalog: "Nais kong ipamana ang aking lupa sa aking mga anak.", ilocano: "Kayatko nga ipatawid ti daga ko kadagiti annak ko.", pangasinense: "Kayat ko ya ipatawir so daga ko ed mga anak ko.")
  ],
  ),

  Word(
  english: "sat beside him",
  tagalog: "tagalog: naupo siya sa tabi niya",
  ilocano: "ilocano: inyurong tod abay to",
  pangasinense: "pangasinense: nagtugaw iti sibayna",
  examples: [
  WordExample(tagalog: "Naupo siya sa tabi niya habang nasa pelikula.", ilocano: "Inyurong tod abay to legan na pelikula.", pangasinense: "Nagtugaw iti sibayna bayat ti pelikula."),
  WordExample(tagalog: "Naupo siya sa tabi ng kanyang kaibigan.", ilocano: "Inyurong isuna iti sidong ti gayyem na.", pangasinense: "Nagtugaw so paborito na aboy ed sibayna na kaibigan.")
  ],
  ),

  Word(
  english: "best player",
  tagalog: "tagalog: pinakamahusay na manlalaro",
  ilocano: "ilocano: sikato so sankamaongan",
  pangasinense: "pangasinense: isu ti kasayaatan a player",
  examples: [
  WordExample(tagalog: "Siya ang pinakamahusay na manlalaro sa koponan.", ilocano: "Sikato so sankamaongan ya manag-awit ed team.", pangasinense: "Isu ti kasayaatan a player iti team."),
  WordExample(tagalog: "Ang manlalaro na ito ang tinanghal na pinakamahusay sa liga.", ilocano: "Daytoy a manlalaro ket inawit nga kasayaatan iti liga.", pangasinense: "So player na ito ya tinanghal na kasayaatan ed liga.")
  ],
  ),

  Word(
  english: "bet you can't guess",
  tagalog: "tagalog: pustahan ako",
  ilocano: "ilocano: manpusta ak",
  pangasinense: "pangasinense: pustaek",
  examples: [
  WordExample(tagalog: "Pustahan ako na hindi mo mahuhulaan ang edad ko.", ilocano: "Manpusta ak ya agmo nahulaan so edad ko.", pangasinense: "Pustaek a dika makapugto iti edadko."),
  WordExample(tagalog: "Pustahan kita na magugustuhan mo ang pelikulang ito.", ilocano: "Manpusta ak kenca a maawagan mo daytoy a pelikula.", pangasinense: "Pustaek so di ka ya magustuhan so pelikula.")
  ],
  ),
  Word(
  english: "strive",
  tagalog: "tagalog: magsikap",
  ilocano: "ilocano: agsikap",
  pangasinense: "pangasinense: mangisuro",
  examples: [
  WordExample(tagalog: "Dapat mong laging magsikap na gumawa ng mas mahusay.", ilocano: "Nepeg mo kanayon a agsikap a mangaramid iti nasaysayaat.", pangasinense: "Rumbeng ka mangisuro ya agaramid na mas magaling."),
  WordExample(tagalog: "Ang pagsisikap ay susi sa tagumpay.", ilocano: "Ti panagsikap ket susi iti pannakaparsua.", pangasinense: "So pagsikap ay susi ed tagumpay.")
  ],
  ),

  Word(
  english: "park",
  tagalog: "tagalog: parke",
  ilocano: "ilocano: parke",
  pangasinense: "pangasinense: parke",
  examples: [
  WordExample(tagalog: "May park sa pagitan ng dalawang gusali.", ilocano: "Adda parke iti nagbaetan ti dua a pasdek.", pangasinense: "Adda parke ed baetan na duaran bilding."),
  WordExample(tagalog: "Pumunta tayo sa parke para magpiknik.", ilocano: "Umay tayo iti parke tapno agpiknik.", pangasinense: "Pumalo tayo sa parke para magpiknik.")
  ],
  ),

  Word(
  english: "celebrate",
  tagalog: "tagalog: ipagdiwang",
  ilocano: "ilocano: ipagcelebrar",
  pangasinense: "pangasinense: iselebrar",
  examples: [
  WordExample(tagalog: "Ipagdiwang ko ang kapanganakan ng aking anak.", ilocano: "Icelebrar ko ti kapanganakan ti anak ko.", pangasinense: "Iselebrak so inkianak na anak ko."),
  WordExample(tagalog: "Nais naming ipagdiwang ang aming anibersaryo.", ilocano: "Kayatmi a ipagcelebrar ti anibersaryo mi.", pangasinense: "Nais mi ed iselebrar so anibersaryo mi.")
  ],
  ),

  Word(
  english: "belly",
  tagalog: "tagalog: tiyan",
  ilocano: "ilocano: tiyan",
  pangasinense: "pangasinense: eges",
  examples: [
  WordExample(tagalog: "Bilog ang tiyan niya dahil sa sobrang pagkain.", ilocano: "Bilog ti tiyan na gapu iti nalabes a pannangan.", pangasinense: "Bilog so eges na gapu ed sobrang panangan."),
  WordExample(tagalog: "May sakit ang tiyan ko ngayon.", ilocano: "Agtakit ti tiyan ko itatta.", pangasinense: "Agtakit so eges ko la.")
  ],
  ),

  Word(
  english: "problem",
  tagalog: "tagalog: problema",
  ilocano: "ilocano: problema",
  pangasinense: "pangasinense: problemana",
  examples: [
  WordExample(tagalog: "May problema siya sa kanyang pantog.", ilocano: "Adda problema na iti pantog na.", pangasinense: "Adda problemana ed pantog na."),
  WordExample(tagalog: "Kailangan nating lutasin ang problemang ito.", ilocano: "Kailangan tayo a mangsolbar iti daytoy a problema.", pangasinense: "Rumbeng tayon i-solve so problemang daytoy.")
  ],
  ),
  Word(
  english: "blanket",
  tagalog: "tagalog: kumot",
  ilocano: "ilocano: kubrekama",
  pangasinense: "pangasinense: ambetel",
  examples: [
  WordExample(tagalog: "Kakailanganin ko ng mainit na kumot ngayong gabi.", ilocano: "Kaukolan ko so ambetel a kubrekama natan ya labi.", pangasinense: "Kasapulan ti nabara a kubrekama ita a rabii."),
  WordExample(tagalog: "Nakatakip ang kumot sa aking katawan.", ilocano: "Nakatakip ti kubrekama iti bagik.", pangasinense: "Nakabuyat so kumot ed bagik.")
  ],
  ),

  Word(
  english: "fire",
  tagalog: "tagalog: apoy",
  ilocano: "ilocano: apuy",
  pangasinense: "pangasinense: apoy",
  examples: [
  WordExample(tagalog: "Nagsimulang magliyab ang apoy sa fireplace.", ilocano: "Ginmapon manliob so apoy ed pugon.", pangasinense: "Nangrugin a sumsumged ti apuy iti pagpuoran."),
  WordExample(tagalog: "Kailangan nating patayin ang apoy sa campfire.", ilocano: "Masapul tayon nga ipatay ti apoy iti campfire.", pangasinense: "Kaukolan tayon i-patay so apoy ed campfire.")
  ],
  ),

  Word(
  english: "bleed",
  tagalog: "tagalog: dumugo",
  ilocano: "ilocano: ondugo",
  pangasinense: "pangasinense: duga",
  examples: [
  WordExample(tagalog: "Baka dumugo ako kapag naputol ko ang sarili ko.", ilocano: "Nayarin ondugo ak no putoten koy sarilik.", pangasinense: "Mabalin nga agdaraak no putdek ti bagik."),
  WordExample(tagalog: "Sinigurado kong hindi ako madudugo sa operasyon.", ilocano: "Sinigurado ko nga diak madudugo iti operasyon.", pangasinense: "Sinigurado ko so diak maduduga ed operasyon.")
  ],
  ),

  Word(
  english: "blind",
  tagalog: "tagalog: bulag",
  ilocano: "ilocano: bulag",
  pangasinense: "pangasinense: bulag",
  examples: [
  WordExample(tagalog: "Ang aso ay bulag sa isang mata.", ilocano: "Say aso et bulag ed sakey a mata.", pangasinense: "Bulsek ti aso iti maysa a matana."),
  WordExample(tagalog: "May bulag na tao sa kalsada.", ilocano: "Adda bulag nga tao iti kalsada.", pangasinense: "Adda bulag na tao ed kalsada.")
  ],
  ),

  Word(
  english: "blister",
  tagalog: "tagalog: paltos",
  ilocano: "ilocano: blister",
  pangasinense: "pangasinense: paltos",
  examples: [
  WordExample(tagalog: "Nagkaroon siya ng masakit na paltos sa paa.", ilocano: "Walay ansakit ya paltos ed sali to.", pangasinense: "Adda nasakit a blister ti sakana."),
  WordExample(tagalog: "Ang paltos ay nagdudulot ng matinding sakit.", ilocano: "Ti paltos ket agtutuloy ti nasakit a kasla.", pangasinense: "So paltos ay naggaga ed marikna na sakit.")
  ],
  ),

  Word(
  english: "nosebleed",
  tagalog: "tagalog: nosebleed",
  ilocano: "ilocano: agdara ti agong",
  pangasinense: "pangasinense: nadugo so ilong",
  examples: [
  WordExample(tagalog: "Nagkaroon ako ng nosebleed at nakakita ng dugo kung saan-saan.", ilocano: "Nandugo so eleng ko tan walay anengneng kon dala ed amin a pasen.", pangasinense: "Nagdara ti agongko ket nakitak ti dara iti sadinoman."),
  WordExample(tagalog: "Kadalasan akong nagkakaroon ng nosebleed kapag mainit.", ilocano: "Kada aldaw agdara ak no napudot.", pangasinense: "Kada aldaw nakadugo so ilong ko no maangin.")
  ],
  ),

  Word(
  english: "blow",
  tagalog: "tagalog: tatangayin",
  ilocano: "ilocano: ipalir",
  pangasinense: "pangasinense: ipalir",
  examples: [
  WordExample(tagalog: "Tatangayin ng hangin ang mga dahon.", ilocano: "Ipalir na dagem iray bulong.", pangasinense: "Ti angin ti mangpuyot kadagiti bulong."),
  WordExample(tagalog: "Ang hangin ay tatangayin ang mga bagay sa paligid.", ilocano: "Ti angin ket ipalir na dagiti banag iti paligid.", pangasinense: "So angin ay ipalir na so gamit ed paligid.")
  ],
  ),

  Word(
  english: "dress",
  tagalog: "tagalog: damit",
  ilocano: "ilocano: bado",
  pangasinense: "pangasinense: kawes",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng asul na damit sa party.", ilocano: "Nansulong na asul a kawes ed party.", pangasinense: "Nakasuot iti asul a bado a napan iti party."),
  WordExample(tagalog: "Gusto kong bumili ng bagong damit.", ilocano: "Kayatko nga gumatang ti baro a bado.", pangasinense: "Kayat ko ed bumili so baro na kawes.")
  ],
  ),

  Word(
  english: "blush",
  tagalog: "tagalog: mamula",
  ilocano: "ilocano: nagmulagat",
  pangasinense: "pangasinense: nagmulagat",
  examples: [
  WordExample(tagalog: "Nagsimula siyang mamula nang purihin siya nito.", ilocano: "Ginmapon nan-blush nen kinomendaan to.", pangasinense: "Nangrugin a nagmulagat idi komplimentaranna."),
  WordExample(tagalog: "Mamula ako kapag nahihiya.", ilocano: "Nagmulagat ak no nahihiya ak.", pangasinense: "Nagmulagat ak no nagkayaw.")
  ],
  ),

  Word(
  english: "board",
  tagalog: "tagalog: sumakay",
  ilocano: "ilocano: sumalang",
  pangasinense: "pangasinense: onlugan",
  examples: [
  WordExample(tagalog: "Sasakay na ako ng eroplano.", ilocano: "Onlugan ak lad eroplano magano.", pangasinense: "Sumalogak iti eroplano iti mabiit."),
  WordExample(tagalog: "Magsisimula na tayong sumakay sa bus.", ilocano: "Agsasaruno tayong sumalang iti bus.", pangasinense: "Agpapaon na tayon ed bus.")
  ],
  ),

  Word(
  english: "rock",
  tagalog: "tagalog: umuga",
  ilocano: "ilocano: inmawet",
  pangasinense: "pangasinense: naguyugyog",
  examples: [
  WordExample(tagalog: "Ang bangka ay umuuga nang mahina sa tubig.", ilocano: "Say baloto so inmawet a maong ed danum.", pangasinense: "Siaannad a nagyugyugyog ti bangka iti rabaw ti danum."),
  WordExample(tagalog: "Umuga ang lupa kapag may lindol.", ilocano: "Umuga ti daga no adda linog.", pangasinense: "Naguyugyog so lupa no aglinog.")
  ],
  ),

  Word(
  english: "body",
  tagalog: "tagalog: katawan",
  ilocano: "ilocano: bagik",
  pangasinense: "pangasinense: katawan",
  examples: [
  WordExample(tagalog: "Natagpuan ang bangkay sa ilog.", ilocano: "Nalmo so bangkay diad ilog.", pangasinense: "Nasarakan ti bangkay iti karayan."),
  WordExample(tagalog: "Mahalin mo ang iyong katawan.", ilocano: "Ayaten mo ti bagim.", pangasinense: "Ayaten mo so katawan mo.")
  ],
  ),

  Word(
  english: "boil",
  tagalog: "tagalog: pakuluan",
  ilocano: "ilocano: pabukalen",
  pangasinense: "pangasinense: pabukel",
  examples: [
  WordExample(tagalog: "Kailangan nating pakuluan ang tubig bago gamitin ito.", ilocano: "Kaukolan tayon pabukalen so danum antis tayon usaren.", pangasinense: "Masapul nga ipaburektayo ti danum sakbay nga usarentayo."),
  WordExample(tagalog: "Pakuluan mo ang gatas bago inumin.", ilocano: "Pakuluan mo ti gatas sakbay nga inumem.", pangasinense: "Pabukel mo so gatas sakbay ed inumen.")
  ],
  ),

  Word(
  english: "bold",
  tagalog: "tagalog: matapang",
  ilocano: "ilocano: makpel",
  pangasinense: "pangasinense: makpel",
  examples: [
  WordExample(tagalog: "Matapang siyang magsalita.", ilocano: "Sikatoy makpel ya nansalita.", pangasinense: "Isu ket natured a nagsao."),
  WordExample(tagalog: "Kailangan natin ng matapang na lider.", ilocano: "Masapul tayo ti matapang a lider.", pangasinense: "Kaukolan tayon so makpel ya lider.")
  ],
  ),

  Word(
  english: "bolt",
  tagalog: "tagalog: bolt",
  ilocano: "ilocano: bolt",
  pangasinense: "pangasinense: bolt",
  examples: [
  WordExample(tagalog: "Nasira ang bolt ng pinto.", ilocano: "Nabuyak so bolt na puerta.", pangasinense: "Naburak ti bolt ti ridaw."),
  WordExample(tagalog: "Palitan mo ang sira na bolt.", ilocano: "Sukatan mo ti nabuyak a bolt.", pangasinense: "Ipalit mo so naburak na bolt.")
  ],
  ),

  Word(
  english: "break",
  tagalog: "tagalog: nabalian",
  ilocano: "ilocano: naburak",
  pangasinense: "pangasinense: aputer",
  examples: [
  WordExample(tagalog: "Nabalian ako ng buto sa braso.", ilocano: "Aputer so pukel ko ed taklay ko.", pangasinense: "Naburak ti tulang iti takiagko."),
  WordExample(tagalog: "Maging maingat upang hindi nabalian.", ilocano: "Agpakaingat tapno di mabaliwan.", pangasinense: "Agpakabit ka para di ka maputol.")
  ],
  ),

  Word(
  english: "borrow",
  tagalog: "tagalog: manghiram",
  ilocano: "ilocano: mangutang",
  pangasinense: "pangasinense: angutang",
  examples: [
  WordExample(tagalog: "Nanghiram ako ng libro sa library.", ilocano: "Angutang ak na libro ed library.", pangasinense: "Nakabulodak iti libro iti library."),
  WordExample(tagalog: "Manghiram ako ng pera sa iyo.", ilocano: "Mangutang ak ti kwarta kenka.", pangasinense: "Umutang ak ed kwarta mo.")
  ],
  ),

  Word(
  english: "border",
  tagalog: "tagalog: hangganan",
  ilocano: "ilocano: ketegan",
  pangasinense: "pangasinense: ketegan",
  examples: [
  WordExample(tagalog: "Ang ilog ang hangganan ng dalawang bansa.", ilocano: "Say ilog so ketegan na duaran bansa.", pangasinense: "Ti karayan ti beddeng ti dua a pagilian."),
  WordExample(tagalog: "Ang hangganan ng ating teritoryo ay maliwanag.", ilocano: "Ti ketegan ti teritoryo tayo ket klaro.", pangasinense: "So ketegan na teritoryo tayo ay klaro."),
  ],
  ),

  Word(
  english: "born",
  tagalog: "tagalog: ipinanganak",
  ilocano: "ilocano: nianak",
  pangasinense: "pangasinense: naipasngay",
  examples: [
  WordExample(tagalog: "Siya ay ipinanganak noong Mayo.", ilocano: "Nianak nen Mayo.", pangasinense: "Isu ket naipasngay idi Mayo."),
  WordExample(tagalog: "Nais kong malaman kung saan siya ipinanganak.", ilocano: "Kayatko a maammo no ayan na nianak.", pangasinense: "Kayat ko ed maamuan so yaan so naipasngay.")
  ],
  ),

  Word(
  english: "borrow",
  tagalog: "tagalog: humiram",
  ilocano: "ilocano: mangutang",
  pangasinense: "pangasinense: umutang",
  examples: [
  WordExample(tagalog: "Kailangan kong humiram ng lapis para sa pagsusulit.", ilocano: "Kaukolan koy mangutang na lapis parad test.", pangasinense: "Masapul nga umutang iti lapis para iti eksamen."),
  WordExample(tagalog: "Humiram ako ng pera sa aking kaibigan.", ilocano: "Mangutang ak ti kwarta iti kaibigan ko.", pangasinense: "Nangutang ak ed kwarta ed kakabsat ko.")
  ],
  ),
  Word(
  english: "raise",
  tagalog: "tagalog: pagtaas",
  ilocano: "ilocano: raise",
  pangasinense: "pangasinense: raise",
  examples: [
  WordExample(tagalog: "Binigyan ako ng amo ng pagtaas.", ilocano: "Inmatagey so sueldo na amo ko.", pangasinense: "Inikkannak ti boss iti raise."),
  WordExample(tagalog: "Dapat nating pag-usapan ang pagtaas ng sahod.", ilocano: "Masapul tayong agtungtungan ti raise ti sueldo.", pangasinense: "Kaukolan tayon agtungtungan so raise na sueldon.")
  ],
  ),

  Word(
  english: "viable",
  tagalog: "tagalog: mabubuhay",
  ilocano: "ilocano: nagawaan",
  pangasinense: "pangasinense: mabubuhay",
  examples: [
  WordExample(tagalog: "Ang parehong mga pagpipilian ay mabubuhay.", ilocano: "Parehon nagawaan so duaran opsyon.", pangasinense: "Agpada a maitutop dagiti pagpilian."),
  WordExample(tagalog: "Kailangan nating suriin kung viable ang proyekto.", ilocano: "Masapul tayong suruten no viable ti proyekto.", pangasinense: "Kaukolan tayon iladawan so proyekto no mabubuhay.")
  ],
  ),

  Word(
  english: "muddy",
  tagalog: "tagalog: napakaputik",
  ilocano: "ilocano: mapitek",
  pangasinense: "pangasinense: maputik",
  examples: [
  WordExample(tagalog: "Ang ilalim ng lawa ay napakaputik.", ilocano: "Say dalem na lawak et mapitek a tuloy.", pangasinense: "Naputik unay ti baba ti danaw."),
  WordExample(tagalog: "Mag-ingat ka, madulas ang maputik na daan.", ilocano: "Agpakaingat ka, madulas ti mapitek a dalan.", pangasinense: "Agpakabit ka, madulas so maputik na dalan.")
  ],
  ),

  Word(
  english: "bounce",
  tagalog: "tagalog: tatalbog",
  ilocano: "ilocano: ontumba",
  pangasinense: "pangasinense: ag-bounce",
  examples: [
  WordExample(tagalog: "Tatalbog ang basketball kapag nahulog.", ilocano: "Say bola na basket et ontumba no napelag.", pangasinense: "Ag-bounce ti basketball no maitumba."),
  WordExample(tagalog: "Subukan mong tumalon at tatalbog ka.", ilocano: "Subukan mo a tumalon ket ontumba ka.", pangasinense: "Sukatan mo so tumalon ya ag-bounce ka.")
  ],
  ),

  Word(
  english: "bow",
  tagalog: "tagalog: yumuko",
  ilocano: "ilocano: nan-bow",
  pangasinense: "pangasinense: nangala ti pana",
  examples: [
  WordExample(tagalog: "Yumuko siya pagkatapos ng performance.", ilocano: "Sikatoy nan-bow kayari na palabas.", pangasinense: "Nangala iti pana kalpasan ti pabuya."),
  WordExample(tagalog: "Dapat tayong yumuko bilang paggalang.", ilocano: "Masapul tayong nan-bow kas paggalang.", pangasinense: "Kaukolan tayon ag-yumuko kas paggalang.")
  ],
  ),

  Word(
  english: "bowling",
  tagalog: "tagalog: bowling",
  ilocano: "ilocano: bowling",
  pangasinense: "pangasinense: bowling",
  examples: [
  WordExample(tagalog: "Naglaro kami ng bowling kagabi.", ilocano: "Nan-bowling kami nen imbeneg a labi.", pangasinense: "Nagay-ayamkami iti bowling idi rabii."),
  WordExample(tagalog: "Mahilig ako sa bowling tuwing Linggo.", ilocano: "Napudot ak ti bowling kada Domingo.", pangasinense: "Sika'y masiglat ed bowling kada Domingo.")
  ],
  ),

  Word(
  english: "run",
  tagalog: "tagalog: tumakbo",
  ilocano: "ilocano: binmatik",
  pangasinense: "pangasinense: binmatog",
  examples: [
  WordExample(tagalog: "Tumakbo ang bata sa kalsada.", ilocano: "Binmatik so ugaw ed karsada.", pangasinense: "Binmatog so ubing ed kalsada."),
  WordExample(tagalog: "Tumakbo ako papunta sa paaralan.", ilocano: "Tumakbo ak pakan ed eskuela.", pangasinense: "Nagtarayak papunta ed eskuela.")
  ],
  ),

  Word(
  english: "brace",
  tagalog: "tagalog: brace",
  ilocano: "ilocano: brace",
  pangasinense: "pangasinense: brace",
  examples: [
  WordExample(tagalog: "Kailangan kong magsuot ng brace sa aking pulso.", ilocano: "Kaukolan kon isulong so brace ed pulso ko.", pangasinense: "Masapul nga agusarak iti brace iti pulsotko."),
  WordExample(tagalog: "May brace siya para sa kanyang tuhod.", ilocano: "Adda brace na para iti tuhod na.", pangasinense: "Adda brace na para ed tuhod na.")
  ],
  ),

  Word(
  english: "sharp",
  tagalog: "tagalog: matalas",
  ilocano: "ilocano: matalim",
  pangasinense: "pangasinense: matalas",
  examples: [
  WordExample(tagalog: "Siya ay may matalas na utak para sa paglutas ng mga problema.", ilocano: "Matalimbeng so utek to parad panresolbe na saray problema.", pangasinense: "Natadem ti utekna a mangrisut kadagiti parikut."),
  WordExample(tagalog: "Ang matalas na kutsilyo ay mas madaling gamitin.", ilocano: "Ti matalim a kutsilyo ket mas naparsua a usaren.", pangasinense: "Ti matalas na kutsilyo mas masimple ed gamitin.")
  ],
  ),

  Word(
  english: "brave",
  tagalog: "tagalog: matapang",
  ilocano: "ilocano: makpel",
  pangasinense: "pangasinense: makpel",
  examples: [
  WordExample(tagalog: "Siya ay may matapang na puso at hindi umaatras.", ilocano: "Sikatoy walaan na makpel a puso tan agbalot onatras.", pangasinense: "Isu ket addaan iti natured a puso ken pulos a di agsanud."),
  WordExample(tagalog: "Kailangan ng matapang na lider ang bayan.", ilocano: "Masapul ti makpel a lider ti ili.", pangasinense: "Kaukolan ti nainkabsatan a lider para ed bayan.")
  ],
  ),

  Word(
  english: "broad",
  tagalog: "tagalog: malawak",
  ilocano: "ilocano: malapar",
  pangasinense: "pangasinense: malapad",
  examples: [
  WordExample(tagalog: "Malawak at bukas ang landas.", ilocano: "Malapar tan lukas so dalan.", pangasinense: "Nalawa ken silulukat ti dalan."),
  WordExample(tagalog: "May malawak na espasyo para sa lahat.", ilocano: "Adda malapar a espasyo para kadagiti amin.", pangasinense: "Adda malapad na espasyo para ed amin.")
  ],
  ),

  Word(
  english: "brawl",
  tagalog: "tagalog: makipag-away",
  ilocano: "ilocano: nanlalaban",
  pangasinense: "pangasinense: nagriri",
  examples: [
  WordExample(tagalog: "Ang cat ay nagsimulang makipag-away sa dog.", ilocano: "Say pusa et ginmapon nanlalaban ed aso.", pangasinense: "Rinugian ti pusa ti nagriri iti aso."),
  WordExample(tagalog: "Huwag makipag-away sa kapwa.", ilocano: "Saan a makipag-away kadagiti kakadwa.", pangasinense: "Saan ka nga makipag-away ed kapwa mo.")
  ],
  ),

  Word(
  english: "broadly",
  tagalog: "tagalog: malapad",
  ilocano: "ilocano: malaknab",
  pangasinense: "pangasinense: malapad",
  examples: [
  WordExample(tagalog: "Lumakad siya ng malapad sa stage.", ilocano: "Sikatoy nanakar a malaknab ed entablado.", pangasinense: "Nalawa ti pannagnana iti ballasiw ti entablado."),
  WordExample(tagalog: "Tumingin siya nang malapad sa paligid.", ilocano: "Nangisigud isuna a malaknab ti paligid.", pangasinense: "Nangisigud so nagdanon na malapad.")
  ],
  ),

  Word(
  english: "brochure",
  tagalog: "tagalog: brosyur",
  ilocano: "ilocano: brosyur",
  pangasinense: "pangasinense: brosyur",
  examples: [
  WordExample(tagalog: "Nasa brochure ang lahat ng kinakailangang impormasyon.", ilocano: "Say brosyur so walaan na amin a nakaukolan ya impormasyon.", pangasinense: "Adda amin a kasapulan nga impormasion iti broshur."),
  WordExample(tagalog: "Ibinigay nila ang brochure tungkol sa kaganapan.", ilocano: "Ibinidang da ti brosyur maipanggep ti kaganapan.", pangasinense: "Ibinidang da so brosyur ed kaganapan.")
  ],
  ),

  Word(
  english: "broil",
  tagalog: "tagalog: iluluto",
  ilocano: "ilocano: i-broil",
  pangasinense: "pangasinense: i-broil",
  examples: [
  WordExample(tagalog: "Iluluto ko ang manok para sa hapunan.", ilocano: "Iluto ko so manok parad pangdem.", pangasinense: "I-broil-ko ti manok para iti pangrabii."),
  WordExample(tagalog: "Masarap ang broiled na isda.", ilocano: "Naimas ti i-broil a lames.", pangasinense: "Naimas so i-broil na isda.")
  ],
  ),

  Word(
  english: "broker",
  tagalog: "tagalog: broker",
  ilocano: "ilocano: broker",
  pangasinense: "pangasinense: broker",
  examples: [
  WordExample(tagalog: "Sila ang magwawagi sa deal sa susunod na linggo.", ilocano: "I-broker da so deal diad ontumbok a simba.", pangasinense: "Isuda ti ag-broker iti deal inton sumaruno a lawas."),
  WordExample(tagalog: "Ang broker ay tumutulong sa transaksyon.", ilocano: "Ti broker ket tumulong iti transaksyon.", pangasinense: "Ti broker ang makatulong ed transaksyon.")
  ],
  ),

  Word(
  english: "brotherly",
  tagalog: "tagalog: magkakapatid",
  ilocano: "ilocano: magkakabsat",
  pangasinense: "pangasinense: magkakapatid",
  examples: [
  WordExample(tagalog: "Nagkaroon kami ng magandang ugnayang magkakapatid sa aming paglaki.", ilocano: "Walaan kami na marakep a siglaotan na sanaagi nen ombabaleg kami.", pangasinense: "Nasayaat ti nainkabsatan a singgalutmi idi dumakdakkelkami."),
  WordExample(tagalog: "Ang pagmamahalan ay dapat na brotherly.", ilocano: "Ti ayat masapul a brotherly.", pangasinense: "Ti ayat kasapulan na maging magkakapatid.")
  ],
  ),

  Word(
  english: "broom",
  tagalog: "tagalog: walis",
  ilocano: "ilocano: walis",
  pangasinense: "pangasinense: walis",
  examples: [
  WordExample(tagalog: "Ang walis ay ginamit sa pagwawalis ng sahig.", ilocano: "Say walis so inusar ed panagpaliis ed datal.", pangasinense: "Ti walis ti nausar a nangwalis iti suelo."),
  WordExample(tagalog: "Kumuha siya ng walis para maglinis.", ilocano: "Naggatang isuna ti walis tapno aglinis.", pangasinense: "Nangala isuna so walis para ed maglinis.")
  ],
  ),

  Word(
  english: "bloom",
  tagalog: "tagalog: namumulaklak",
  ilocano: "ilocano: manbubulaklak",
  pangasinense: "pangasinense: manbubulaklak",
  examples: [
  WordExample(tagalog: "Namumulaklak ang hardin.", ilocano: "Say hardin et manbubulaklak.", pangasinense: "Naan-anay ti panagsabong ti hardin."),
  WordExample(tagalog: "Ang mga bulaklak ay namumulaklak sa tagsibol.", ilocano: "Ti bulaklak ket manbubulaklak idi tagsibol.", pangasinense: "So mga bulaklak ay namumulaklak ed tagsibol.")
  ],
  ),

  Word(
  english: "blunt",
  tagalog: "tagalog: mapurol",
  ilocano: "ilocano: natangken",
  pangasinense: "pangasinense: natangken",
  examples: [
  WordExample(tagalog: "Mayroon siyang mapurol na instrumento para sa paggupit.", ilocano: "Walay amputin instrumento to parad panagputot.", pangasinense: "Adda natangken nga instrumentona a pangputed."),
  WordExample(tagalog: "Ang mapurol na kutsilyo ay mahirap gamitin.", ilocano: "Ti natangken a kutsilyo ket napigsa a usaren.", pangasinense: "Ti natangken na kutsilyo mabigat ed gamitin.")
  ],
  ),
  Word(
  english: "brush",
  tagalog: "tagalog: brush",
  ilocano: "ilocano: brush",
  pangasinense: "pangasinense: brush",
  examples: [
  WordExample(tagalog: "Ang brush ay ginamit para sa pagpipinta.", ilocano: "Say brush et inusar ed panagpinta.", pangasinense: "Nausar ti brush a pagpintaan."),
  WordExample(tagalog: "Kumuha siya ng bagong brush para sa kanyang obra.", ilocano: "Nangala isuna ti baro a brush para iti obra na.", pangasinense: "Nangala isuna so baro a brush para ed obra na.")
  ],
  ),

  Word(
  english: "bubble",
  tagalog: "tagalog: bula",
  ilocano: "ilocano: bula",
  pangasinense: "pangasinense: bula",
  examples: [
  WordExample(tagalog: "Biglang pumutok ang bula.", ilocano: "Biglan binmetag so bula.", pangasinense: "Kellaat a bimtak ti bula."),
  WordExample(tagalog: "Ang mga bula ay lumilipad sa hangin.", ilocano: "Dagiti bula ket aglawlaw iti angin.", pangasinense: "So mga bula ay nalipad ed angin.")
  ],
  ),

  Word(
  english: "fabric",
  tagalog: "tagalog: tela",
  ilocano: "ilocano: tela",
  pangasinense: "pangasinense: tela",
  examples: [
  WordExample(tagalog: "Ang tela ay may buckled texture.", ilocano: "Say tela et walay buckled texture to.", pangasinense: "Ti tela ket addaan iti buckled texture."),
  WordExample(tagalog: "Ang piraso ng tela ay kinakailangan para sa proyekto.", ilocano: "Ti piraso ti tela ket masapul para ti proyekto.", pangasinense: "Ti piraso na tela masapul para ed proyekto.")
  ],
  ),

  Word(
  english: "budget",
  tagalog: "tagalog: badyet",
  ilocano: "ilocano: ibadyet",
  pangasinense: "pangasinense: ibadyet",
  examples: [
  WordExample(tagalog: "Magbabadyet siya ng mabuti para sa mga gastusin.", ilocano: "Ibadyet ton maong iray gastos.", pangasinense: "Siaannad ti panagbadyetna kadagiti gastos."),
  WordExample(tagalog: "Dapat tayong gumawa ng badyet bago magshopping.", ilocano: "Masapul tayong agaramid ti badyet sakbay a magshopping.", pangasinense: "Kaukolan tayon mangaramid so badyet sakbay ed pamimili.")
  ],
  ),

  Word(
  english: "bug",
  tagalog: "tagalog: surot",
  ilocano: "ilocano: bug",
  pangasinense: "pangasinense: bug",
  examples: [
  WordExample(tagalog: "Gumapang ang surot sa mesa.", ilocano: "Say bug so kinmamang ed tapew na lamisaan.", pangasinense: "Nagkarayam ti bug iti ballasiw ti lamisaan."),
  WordExample(tagalog: "May bug na kumagat sa akin.", ilocano: "Adda bug a nagagat kaniak.", pangasinense: "Adda bug na nagkagat ed sik-a.")
  ],
  ),

  Word(
  english: "building",
  tagalog: "tagalog: gusali",
  ilocano: "ilocano: bilding",
  pangasinense: "pangasinense: gusali",
  examples: [
  WordExample(tagalog: "Nagtayo sila ng isang maliit na gusali sa likod-bahay.", ilocano: "Angipaalagey ira na melag a bilding diad beneg na abung.", pangasinense: "Nangbangonda iti bassit a pasdek iti likud ti balay."),
  WordExample(tagalog: "Ang building na iyon ay mataas.", ilocano: "Dayta a bilding ket nangato.", pangasinense: "So bilding na eddi ay nangato.")
  ],
  ),

  Word(
  english: "bulk",
  tagalog: "tagalog: bulto",
  ilocano: "ilocano: bulk",
  pangasinense: "pangasinense: bulk",
  examples: [
  WordExample(tagalog: "Ang bulto ng proyekto ay kumpleto na.", ilocano: "Say karaklan ed proyekto et asumpal la.", pangasinense: "Nalpasen ti kaaduan a paset ti proyekto."),
  WordExample(tagalog: "Ang bulk ng mga kalakal ay dumating kanina.", ilocano: "Ti bulk dagiti kalakal ket immay idi kalman.", pangasinense: "Ti bulk na kalakal ay dumating itang aldaw.")
  ],
  ),

  Word(
  english: "bully",
  tagalog: "tagalog: bully",
  ilocano: "ilocano: bully",
  pangasinense: "pangasinense: bully",
  examples: [
  WordExample(tagalog: "Bu-bully nila ang sinumang iba ang hitsura.", ilocano: "Bullyen da so siopaman ya duma so itsura to.", pangasinense: "Bullyenda ti asinoman a naiduma ti langana."),
  WordExample(tagalog: "Huwag maging bully sa paaralan.", ilocano: "Saan a bumully ed eskuela.", pangasinense: "Saan ka nga mag-bully ed eskuela.")
  ],
  ),

  Word(
  english: "bump",
  tagalog: "tagalog: salpukin",
  ilocano: "ilocano: bump",
  pangasinense: "pangasinense: bump",
  examples: [
  WordExample(tagalog: "Mamaya sasampalin ko siya.", ilocano: "Naabet ko ed sikato diad saginonor.", pangasinense: "Masabatkonto inton agangay."),
  WordExample(tagalog: "Bumangga siya sa pader.", ilocano: "Bumangga isuna ed pader.", pangasinense: "Bumangga so taud.")
  ],
  ),

  Word(
  english: "bunch",
  tagalog: "tagalog: bungkos",
  ilocano: "ilocano: bungkos",
  pangasinense: "pangasinense: bungkos",
  examples: [
  WordExample(tagalog: "Ang bungkos ng mga ubas ay hinog na.", ilocano: "Aluto lay bunton na ubas.", pangasinense: "Naluom ti sangabukel nga ubas."),
  WordExample(tagalog: "Kumuha siya ng bungkos ng saging.", ilocano: "Nangala isuna ti bungkos ti saging.", pangasinense: "Nangala isuna so bungkos na saging.")
  ],
  ),

  Word(
  english: "bundle",
  tagalog: "tagalog: bunton",
  ilocano: "ilocano: bundle",
  pangasinense: "pangasinense: bunton",
  examples: [
  WordExample(tagalog: "Sila ay nagkaroon ng isang bundle ng kagalakan kapag ang kanilang sanggol ay ipinanganak.", ilocano: "Malikeliket ira nen nianak so anak da.", pangasinense: "Adda bunton ti ragsakda idi maipasngay ti maladagada."),
  WordExample(tagalog: "Mayroon silang bundle ng mga regalo para sa piyesta.", ilocano: "Adda bundle dagiti regalo para iti piyesta.", pangasinense: "Adda bunton na regalo para ed piyesta.")
  ],
  ),

  Word(
  english: "burn",
  tagalog: "tagalog: paso",
  ilocano: "ilocano: paso",
  pangasinense: "pangasinense: paso",
  examples: [
  WordExample(tagalog: "May paso ako sa kamay mula sa kalan.", ilocano: "Apoolan so limak lapud kalan.", pangasinense: "Napuoran ti imak gapu iti paglutuan."),
  WordExample(tagalog: "Dahil sa sunog, nakakuha siya ng paso.", ilocano: "Gapu iti apoy, nakakuana isuna ti paso.", pangasinense: "Gapu ed apoy, nakapaso isuna.")
  ],
  ),

  Word(
  english: "burner",
  tagalog: "tagalog: burner",
  ilocano: "ilocano: burner",
  pangasinense: "pangasinense: burner",
  examples: [
  WordExample(tagalog: "Masyadong mataas ang burner sa kalan.", ilocano: "Say burner ed kalan et atagey a tuloy.", pangasinense: "Nangato unay ti burner iti paglutuan."),
  WordExample(tagalog: "Suriin ang burner bago magluto.", ilocano: "Sukimatam ti burner sakbay a magluto.", pangasinense: "Sukimaten mo so burner sakbay ed panagluto.")
  ],
  ),

  Word(
  english: "burrow",
  tagalog: "tagalog: lungga",
  ilocano: "ilocano: ungib",
  pangasinense: "pangasinense: lungga",
  examples: [
  WordExample(tagalog: "Ang lungga ay tahanan ng maraming kuneho.", ilocano: "Say ungib so panaayaman na dakel a koneho.", pangasinense: "Adu a koneho ti pagtaengan ti abut."),
  WordExample(tagalog: "May lungga ang mga daga sa ilalim ng lupa.", ilocano: "Adda ungib dagiti daga idiay baba ti daga.", pangasinense: "Adda lungga so daga ed babalay.")
  ],
  ),

  Word(
  english: "bustle",
  tagalog: "tagalog: abala",
  ilocano: "ilocano: abala",
  pangasinense: "pangasinense: abala",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng abala sa palengke.", ilocano: "Nalikna toy inkagulo ed tindaan.", pangasinense: "Nariknana ti kinaariwawa iti merkado."),
  WordExample(tagalog: "Ang abala sa lungsod ay laging masigla.", ilocano: "Ti abala idiay siyudad ket kanayon a napigsa.", pangasinense: "So abala ed siyudad ay laging masigla.")
  ],
  ),

  Word(
  english: "but",
  tagalog: "tagalog: ngunit",
  ilocano: "ilocano: ngem",
  pangasinense: "pangasinense: ngem",
  examples: [
  WordExample(tagalog: "Ang ngunit ang tanging natitira sa amin.", ilocano: "Say balet so atilak ed sikami.", pangasinense: "Ti ngem ti laeng nabati kadakami."),
  WordExample(tagalog: "Nagustuhan ko siya, ngunit may iba pa akong iniisip.", ilocano: "Nagustuan ko isuna, ngem adda sabali a kunak.", pangasinense: "Nagustuhan ko siya, ngem adda pay sabali na inisip ko.")
  ],
  ),

  Word(
  english: "butcher",
  tagalog: "tagalog: katay",
  ilocano: "ilocano: patay",
  pangasinense: "pangasinense: katay",
  examples: [
  WordExample(tagalog: "Ako mismo ang katay ng karne.", ilocano: "Siak so manpatey na karne.", pangasinense: "Siak a mismo ti mangparti iti karne."),
  WordExample(tagalog: "Bumili siya ng karne mula sa butcher.", ilocano: "Nag-gatang isuna ti karne manipud ti patay.", pangasinense: "Naggatang isuna so karne ed butcher.")
  ],
  ),

  Word(
  english: "butter dish",
  tagalog: "tagalog: putahan ng mantikilya",
  ilocano: "ilocano: putahan ti mantikilya",
  pangasinense: "pangasinense: putahe na mantika",
  examples: [
  WordExample(tagalog: "Bumili siya ng butter dish para ihain.", ilocano: "Angaliw na putahin mantikilya parad pangiserbi.", pangasinense: "Gimmatang iti putahe a manteka a pangidasar."),
  WordExample(tagalog: "Kailangan ng butter dish para sa mga bisita.", ilocano: "Masapul ti putahan ti mantikilya para kadagiti bisita.", pangasinense: "Masapul so putahe na manteka para ed bisita.")
  ],
  ),

  Word(
  english: "grocery",
  tagalog: "tagalog: groceries",
  ilocano: "ilocano: groceries",
  pangasinense: "pangasinense: groceries",
  examples: [
  WordExample(tagalog: "Kailangan kong bumili ng ilang groceries.", ilocano: "Kaukolan koy mangaliw na naakan.", pangasinense: "Masapul a gumatangak iti sumagmamano a groseri."),
  WordExample(tagalog: "Nagdala siya ng mga groceries mula sa tindahan.", ilocano: "Nangala isuna dagiti groceries manipud ti tindahan.", pangasinense: "Nangala isuna so groceries ed tindahan.")
  ],
  ),

  Word(
  english: "buzzard",
  tagalog: "tagalog: buzzard",
  ilocano: "ilocano: buzzard",
  pangasinense: "pangasinense: buzzard",
  examples: [
  WordExample(tagalog: "Ang buzzard ay umikot nang mataas sa kalangitan.", ilocano: "Say buzzard et nanliber ed tagey na katawenan.", pangasinense: "Nagsirkulo ti buzzard iti nangato iti tangatang."),
  WordExample(tagalog: "Nakakita ako ng buzzard sa mga puno.", ilocano: "Nakitaak ti buzzard kadagiti kaykayo.", pangasinense: "Nakita ko so buzzard ed mga kahoy.")
  ],
  ),
  Word(
  english: "cage",
  tagalog: "tagalog: hawla",
  ilocano: "ilocano: kulungan",
  pangasinense: "pangasinense: kulungan",
  examples: [
  WordExample(tagalog: "Kumuha siya ng hawla para sa kanyang bagong alaga.", ilocano: "Nag-gatang isuna ti kulungan para iti baro a tarakenna.", pangasinense: "Nakaala iti kulungan para ed bagong alaga na."),
  WordExample(tagalog: "Ang hawla ay ginawa mula sa metal.", ilocano: "Ti kulungan ket aramid manipud ti metal.", pangasinense: "Ti kulungan ay naaramid ed metal.")
  ],
  ),

  Word(
  english: "cake",
  tagalog: "tagalog: cake",
  ilocano: "ilocano: cake",
  pangasinense: "pangasinense: cake",
  examples: [
  WordExample(tagalog: "Masarap ang cake na ito.", ilocano: "Naimas daytoy a cake.", pangasinense: "Masarap so cake na et."),
  WordExample(tagalog: "Bumili ako ng cake para sa kaarawan.", ilocano: "Naggatangak ti cake para iti kaarawan.", pangasinense: "Naggatang ak so cake para ed kaarawan.")
  ],
  ),

  Word(
  english: "camp",
  tagalog: "tagalog: kampo",
  ilocano: "ilocano: kampo",
  pangasinense: "pangasinense: kampo",
  examples: [
  WordExample(tagalog: "Pumunta sila sa kampo para sa katapusan ng linggo.", ilocano: "Napanda ed kampo para iti katapusan ti lawas.", pangasinense: "Napanda ed kampo para ed katapusan na lawas."),
  WordExample(tagalog: "Ang kampo ay puno ng mga bata.", ilocano: "Ti kampo ket napno dagiti ubing.", pangasinense: "So kampo ay napno so kabataan.")
  ],
  ),

  Word(
  english: "cancel",
  tagalog: "tagalog: kanselahin",
  ilocano: "ilocano: kanselaen",
  pangasinense: "pangasinense: kanselaen",
  examples: [
  WordExample(tagalog: "Kailangan nating kanselahin ang pagpupulong.", ilocano: "Masapul tayong kanselaen ti miting.", pangasinense: "Kaukolan tayon mangkansela so miting."),
  WordExample(tagalog: "Minsan, kailangan mong kanselahin ang mga plano.", ilocano: "Pagsapulan, masapul a kanselaen dagiti plano.", pangasinense: "Minsan, masapul mo rin mangkansela so plano.")
  ],
  ),

  Word(
  english: "cape",
  tagalog: "tagalog: kapa",
  ilocano: "ilocano: kapa",
  pangasinense: "pangasinense: kapa",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng kapa noong taglamig.", ilocano: "Nansulon isuna ti kapa idi kalam-ek.", pangasinense: "Nagsuot isuna so kapa no taglamig."),
  WordExample(tagalog: "Ang kapa ay gawa sa lana.", ilocano: "Ti kapa ket aramid manipud ti lana.", pangasinense: "Ti kapa ay naaramid ed lana.")
  ],
  ),

  Word(
  english: "car accident",
  tagalog: "tagalog: aksidente sa sasakyan",
  ilocano: "ilocano: aksidente ed lugan",
  pangasinense: "pangasinense: aksidente ed lugan",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang kakila-kilabot na aksidente sa sasakyan.", ilocano: "Nagkaruon isuna ti nakapapatay a aksidente ed lugan.", pangasinense: "Nakaam-amak isuna ed aksidente ed lugan."),
  WordExample(tagalog: "Maraming tao ang nasugatan sa aksidente.", ilocano: "Adu dagiti tao a naurnong ed aksidente.", pangasinense: "Adu tao ti natamaan ed aksidente.")
  ],
  ),

  Word(
  english: "card game",
  tagalog: "tagalog: laro ng baraha",
  ilocano: "ilocano: ay-ayam ti baraha",
  pangasinense: "pangasinense: ay-ayam ed baraha",
  examples: [
  WordExample(tagalog: "Masaya ang card game na ito.", ilocano: "Naragsak daytoy a ay-ayam ti baraha.", pangasinense: "Naragsak so ay-ayam na baraha na."),
  WordExample(tagalog: "Mahilig siyang maglaro ng card games.", ilocano: "Mahilig isuna ag-ay-ayam ti baraha.", pangasinense: "Mahilig ya magay-ayam ed baraha.")
  ],
  ),

  Word(
  english: "decision",
  tagalog: "tagalog: desisyon",
  ilocano: "ilocano: desisyon",
  pangasinense: "pangasinense: desisyon",
  examples: [
  WordExample(tagalog: "Gumawa sila ng maingat na desisyon.", ilocano: "Nagaramid da ti naannad a desisyon.", pangasinense: "Nangaramidda iti maingat a desisyon."),
  WordExample(tagalog: "Mahigpit ang kanilang desisyon.", ilocano: "Napigsa ti desisyon da.", pangasinense: "Napigsa so desisyon da.")
  ],
  ),

  Word(
  english: "carpet",
  tagalog: "tagalog: karpet",
  ilocano: "ilocano: alpombra",
  pangasinense: "pangasinense: alpombra",
  examples: [
  WordExample(tagalog: "Ang karpet ay naramdaman na malambot sa ilalim ng paa.", ilocano: "Ti alpombra ket narikna a nalukneng ed sako.", pangasinense: "Ti alpombra ay narikna a nalukneng ed sali."),
  WordExample(tagalog: "Naglinis siya ng karpet sa sala.", ilocano: "Naglinis isuna ti alpombra idiay sala.", pangasinense: "Nanglinis isuna ed alpombra ed sala.")
  ],
  ),

  Word(
  english: "carry",
  tagalog: "tagalog: dalhin",
  ilocano: "ilocano: awiten",
  pangasinense: "pangasinense: awiten",
  examples: [
  WordExample(tagalog: "Kailangan nating dalhin ang mga kahon na ito sa itaas.", ilocano: "Masapul tayon nga awiten dagitoy a kahon idiay ngato.", pangasinense: "Masapul tayon angawiten so mga kahon na ito ed pangato."),
  WordExample(tagalog: "Kaya niyang dalhin ang mabibigat na bagay.", ilocano: "Mabalin na nga awiten dagiti nabigat a banag.", pangasinense: "Mabalin na awiten so mabibigat na bagay.")
  ],
  ),

  Word(
  english: "cart",
  tagalog: "tagalog: kariton",
  ilocano: "ilocano: kariton",
  pangasinense: "pangasinense: kariton",
  examples: [
  WordExample(tagalog: "Ang kariton ay puno ng mga pamilihan.", ilocano: "Ti kariton ket napno dagiti pamilihan.", pangasinense: "Napno so kariton ed mga groseri."),
  WordExample(tagalog: "Nag-push siya ng kariton sa palengke.", ilocano: "Nangpush isuna ti kariton ed merkado.", pangasinense: "Nagpush isuna so kariton ed merkado.")
  ],
  ),

  Word(
  english: "case",
  tagalog: "tagalog: kaso",
  ilocano: "ilocano: kaso",
  pangasinense: "pangasinense: kaso",
  examples: [
  WordExample(tagalog: "Ang kaso ay naayos sa korte.", ilocano: "Naurnos ti kaso ed korte.", pangasinense: "Narisut so kaso ed korte."),
  WordExample(tagalog: "Ang kaso ay mahirap ipaliwanag.", ilocano: "Ti kaso ket narigat a ipaliwanag.", pangasinense: "Ti kaso ay masapul a ipaliwanag.")
  ],
  ),

  Word(
  english: "cat",
  tagalog: "tagalog: pusa",
  ilocano: "ilocano: pusa",
  pangasinense: "pangasinense: pusa",
  examples: [
  WordExample(tagalog: "Tumalon ang pusa sa windowsill.", ilocano: "Linmukso ti pusa idiay bintana.", pangasinense: "Naglukso so pusa ed tawa."),
  WordExample(tagalog: "Mahilig akong mag-alaga ng pusa.", ilocano: "Mahiligak nga agtaraken ti pusa.", pangasinense: "Mahilig ak magalaga so pusa.")
  ],
  ),

  Word(
  english: "beautiful",
  tagalog: "tagalog: maganda",
  ilocano: "ilocano: napintas",
  pangasinense: "pangasinense: napintas",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng magandang kapa sa kaganapan.", ilocano: "Nagsuot isuna ti napintas a kapa idiay ebento.", pangasinense: "Nagsuot isuna so napintas a kapa ed ebento."),
  WordExample(tagalog: "Ang magandang bulaklak ay nasa mesa.", ilocano: "Ti napintas a bulaklak ket adda idiay lamesa.", pangasinense: "So napintas a bulaklak ay ed mesa.")
  ],
  ),

  Word(
  english: "catch",
  tagalog: "tagalog: saluhin",
  ilocano: "ilocano: alaen",
  pangasinense: "pangasinense: tilikwen",
  examples: [
  WordExample(tagalog: "Sasaluhin ko ang bola kung ihagis mo ito.", ilocano: "Alaen ko ti bola no ibantak mo.", pangasinense: "Tilikwenko so bola no ibantak mo."),
  WordExample(tagalog: "Mahirap saluhin ang mabilis na bola.", ilocano: "Narigat nga alaen ti nagduduma a bola.", pangasinense: "Masapul a nain na tilikwen so bola."),
  ],
  ),

  Word(
  english: "celebrate",
  tagalog: "tagalog: ipagdiwang",
  ilocano: "ilocano: selebraran",
  pangasinense: "pangasinense: selebraran",
  examples: [
  WordExample(tagalog: "Gusto kong ipagdiwang ang aking kaarawan.", ilocano: "Kayat ko nga selebraran ti kaarawan ko.", pangasinense: "Gusto ko selebraran so kaarawan ko."),
  WordExample(tagalog: "Mag-ipon kami para sa selebrasyon.", ilocano: "Agipon kami para iti selebrasyon.", pangasinense: "Agipon kam para ed selebrasyon."),
  ],
  ),

  Word(
  english: "cell",
  tagalog: "tagalog: selula",
  ilocano: "ilocano: selula",
  pangasinense: "pangasinense: selula",
  examples: [
  WordExample(tagalog: "Patay ang cell sa baterya.", ilocano: "Patay ti selula ed baterya.", pangasinense: "Patay so selula ed baterya."),
  WordExample(tagalog: "Ang cell ng baterya ay kailangan palitan.", ilocano: "Ti selula ti baterya ket masapul a pagpalitan.", pangasinense: "So selula na baterya ay masapul a palitan.")
  ],
  ),

  Word(
  english: "center",
  tagalog: "tagalog: sentro",
  ilocano: "ilocano: sentro",
  pangasinense: "pangasinense: sentro",
  examples: [
  WordExample(tagalog: "Nakahanap ako ng isang sentro para sa mga aktibidad sa komunidad.", ilocano: "Nasarakak ti sentro para kadagiti aktibidad ti komunidad.", pangasinense: "Nakasarakan ak so sentro para ed mga aktibidad ed komunidad."),
  WordExample(tagalog: "Ang sentro ng lungsod ay puno ng tao.", ilocano: "Ti sentro ti siyudad ket napno dagiti tao.", pangasinense: "So sentro na siyudad ay napno so tao.")
  ],
  ),
  Word(
  english: "ceremony",
  tagalog: "tagalog: seremonya",
  ilocano: "ilocano: seremonia",
  pangasinense: "pangasinense: seremonya",
  examples: [
  WordExample(tagalog: "Ang seremonya ay ginanap sa labas.", ilocano: "Naangay ti seremonia iti ruar.", pangasinense: "Say seremonya et ginawa ed paway."),
  WordExample(tagalog: "Mahalaga ang seremonya sa kanilang kultura.", ilocano: "Napateg ti seremonia iti kultura da.", pangasinense: "Mahalaga so seremonya ed kultura da.")
  ],
  ),

  Word(
  english: "ceramic",
  tagalog: "tagalog: seramik",
  ilocano: "ilocano: seramiko",
  pangasinense: "pangasinense: seramiko",
  examples: [
  WordExample(tagalog: "Gumamit siya ng mga ceramic plate para sa hapunan.", ilocano: "Angusar na seramik iran plato parad pangdem.", pangasinense: "Inusarna dagiti seramiko a plato a pangrabii."),
  WordExample(tagalog: "Mahilig siyang kolektahin ang mga ceramic na tasa.", ilocano: "Mahilig isuna agkollekta dagiti seramiko a tasa.", pangasinense: "Mahilig isuna mangkolekta so seramiko a tasa.")
  ],
  ),

  Word(
  english: "certain",
  tagalog: "tagalog: tiyak",
  ilocano: "ilocano: segurado",
  pangasinense: "pangasinense: sigurado",
  examples: [
  WordExample(tagalog: "Ang tiyak na sagot ay hindi malinaw.", ilocano: "Say seguradon ebat et agmalinew.", pangasinense: "Saan a nalawag ti sigurado a sungbat."),
  WordExample(tagalog: "May mga tiyak na impormasyon na kailangan.", ilocano: "Adu dagiti segurado a impormasyon a masapul.", pangasinense: "Adu so sigurado a impormasyon na kailangan.")
  ],
  ),

  Word(
  english: "challenge",
  tagalog: "tagalog: hamon",
  ilocano: "ilocano: karit",
  pangasinense: "pangasinense: hamon",
  examples: [
  WordExample(tagalog: "Naramdaman niyang may darating na hamon sa kanya.", ilocano: "Nariknana ti maysa a karit nga umay iti dalanna.", pangasinense: "Nalikna toy sakey ya angat ya onsasabi ed sikato."),
  WordExample(tagalog: "Ang hamon ay dapat harapin nang may tapang.", ilocano: "Ti karit ket masapul a sangoen nga agkarkaray.", pangasinense: "So hamon ay masapul na labanan na may tapang.")
  ],
  ),

  Word(
  english: "change",
  tagalog: "tagalog: baguhin",
  ilocano: "ilocano: balbaliwan",
  pangasinense: "pangasinense: baliwan",
  examples: [
  WordExample(tagalog: "Babaguhin namin ang mga plano kung kinakailangan.", ilocano: "Umanen mi ray plano no nakaukolan.", pangasinense: "Baliwantayo dagiti plano no kasapulan."),
  WordExample(tagalog: "Minsan, kailangan nating baguhin ang ating mga layunin.", ilocano: "Kadi nga kasapulan a balbaliwan dagiti panggep tayo.", pangasinense: "Minsan, masapul tayon baliwan so layunin tayo.")
  ],
  ),

  Word(
  english: "chaotic",
  tagalog: "tagalog: magulo",
  ilocano: "ilocano: magulo",
  pangasinense: "pangasinense: magulo",
  examples: [
  WordExample(tagalog: "Magulo ang lapit niya.", ilocano: "Sikatoy magulo ed paraan na.", pangasinense: "Nariribuk ti panagasidegna."),
  WordExample(tagalog: "Ang kanyang buhay ay naging magulo dahil sa stress.", ilocano: "Ti biag na ket nagbalin a magulo gapu iti stress.", pangasinense: "So biag na ay nagiging magulo so stress.")
  ],
  ),

  Word(
  english: "chapter",
  tagalog: "tagalog: kabanata",
  ilocano: "ilocano: kapitulo",
  pangasinense: "pangasinense: kapitulo",
  examples: [
  WordExample(tagalog: "Ang kabanata sa aklat ay kawili-wili.", ilocano: "Makapainteres so kapitulo ed libro.", pangasinense: "Makapainteres ti kapitulo iti libro."),
  WordExample(tagalog: "Nagbigay siya ng magandang buod sa kabanata.", ilocano: "Nangted isuna ti nasayaat a buod ti kapitulo.", pangasinense: "Nangted isuna so nain a buod ed kapitulo.")
  ],
  ),

  Word(
  english: "charity",
  tagalog: "tagalog: kawanggawa",
  ilocano: "ilocano: kawanggawa",
  pangasinense: "pangasinense: kawanggawa",
  examples: [
  WordExample(tagalog: "Nagpunta sila sa isang charity run.", ilocano: "Linma ra ed sakey a charity run.", pangasinense: "Napanda iti charity run."),
  WordExample(tagalog: "Mahilig siya sa mga charity events.", ilocano: "Mahilig isuna kadagiti charity events.", pangasinense: "Mahilig so angga ed charity events.")
  ],
  ),

  Word(
  english: "charm",
  tagalog: "tagalog: alindog",
  ilocano: "ilocano: anting-anting",
  pangasinense: "pangasinense: anting-anting",
  examples: [
  WordExample(tagalog: "Nakakita siya ng magandang alindog para sa kanyang pulseras.", ilocano: "Nakasarak iti napintas a charm para iti pulserasna.", pangasinense: "Walay aromog ton marakep ya anting-anting parad pulseras to."),
  WordExample(tagalog: "Ang charm na ito ay may espesyal na kahulugan.", ilocano: "Daytoy a charm ket adda espisipiko a kayat na.", pangasinense: "So charm na et ada espesyal a kahulugan.")
  ],
  ),

  Word(
  english: "chart",
  tagalog: "tagalog: tsart",
  ilocano: "ilocano: tsart",
  pangasinense: "pangasinense: tsart",
  examples: [
  WordExample(tagalog: "Malinaw na ipinakita ng tsart ang impormasyon.", ilocano: "Malinew ya impanengneng na tsart so impormasyon.", pangasinense: "Nalawag nga impakita ti tsart ti impormasion."),
  WordExample(tagalog: "Ang tsart ay nagpapakita ng mga datos.", ilocano: "Ti tsart ket mangipakita ti datos.", pangasinense: "Ti tsart ay nagpakita so datos.")
  ],
  ),

  Word(
  english: "cheat sheet",
  tagalog: "tagalog: cheat sheet",
  ilocano: "ilocano: cheat sheet",
  pangasinense: "pangasinense: cheat sheet",
  examples: [
  WordExample(tagalog: "Nakatulong sa kanya ang cheat sheet na makapasa sa pagsusulit.", ilocano: "Ti cheat sheet ti nakatulong kenkuana a nakapasa iti eksamen.", pangasinense: "Say cheat sheet so tinmulong ed sikaton makapasa ed eksamin."),
  WordExample(tagalog: "Huwag umasa sa cheat sheet para makapasa.", ilocano: "Saan a pag-asaen ti cheat sheet tapno makapasa.", pangasinense: "Saan mo dapat asahan so cheat sheet para makapasa.")
  ],
  ),

  Word(
  english: "check",
  tagalog: "tagalog: tseke",
  ilocano: "ilocano: tseke",
  pangasinense: "pangasinense: tseke",
  examples: [
  WordExample(tagalog: "Gumawa siya ng tseke para sa pagbabayad.", ilocano: "Inaramidna ti tseke para iti bayad.", pangasinense: "Nanggawa na tseke parad bayar."),
  WordExample(tagalog: "Siguraduhin na maayos ang tseke bago ito ibigay.", ilocano: "Siguraduen a nasayaat ti tseke sakbay nga ited.", pangasinense: "Siguradua na nain so tseke baybay na ibigay.")
  ],
  ),

  Word(
  english: "cheese",
  tagalog: "tagalog: keso",
  ilocano: "ilocano: keso",
  pangasinense: "pangasinense: keso",
  examples: [
  WordExample(tagalog: "Ang keso ay nasa edad na anim na buwan.", ilocano: "Say keso et in-edad ed loob na anem bulan.", pangasinense: "Innem a bulan a nataengan ti keso."),
  WordExample(tagalog: "Mahilig ako sa keso sa aking sandwich.", ilocano: "Mahiligak ti keso iti sandwich ko.", pangasinense: "Mahilig ak ed keso ed sandwich ko.")
  ],
  ),

  Word(
  english: "chef",
  tagalog: "tagalog: chef",
  ilocano: "ilocano: chef",
  pangasinense: "pangasinense: chef",
  examples: [
  WordExample(tagalog: "Naghanda ang chef ng masarap na pagkain.", ilocano: "Nagsagana ti chef iti naimas a taraon.", pangasinense: "Say chef et angiparaan na mananam ya panangan."),
  WordExample(tagalog: "Ang chef ay nagtuturo ng mga bagong recipe.", ilocano: "Ti chef ket agtuturo kadagiti baro a recipe.", pangasinense: "So chef ay nagtuturo ed mga bago ya recipe.")
  ],
  ),

  Word(
  english: "cherish",
  tagalog: "tagalog: pagpapahalaga",
  ilocano: "ilocano: panangipateg",
  pangasinense: "pangasinense: panangaro",
  examples: [
  WordExample(tagalog: "Nagkaroon sila ng kahanga-hangang pagpapahalaga sa mga tradisyon ng pamilya.", ilocano: "Nagsayaat ti panangipategda kadagiti tradision ti pamilia.", pangasinense: "Balibali so panangaro ra ed saray tradisyon na pamilya."),
  WordExample(tagalog: "Dapat nating pahalagahan ang ating mga alaala.", ilocano: "Masapul a pategan ti lagip tayo.", pangasinense: "Masapul tayon pahalagahan so alaala tayo.")
  ],
  ),

  Word(
  english: "chic",
  tagalog: "tagalog: magarbo",
  ilocano: "ilocano: magarbo",
  pangasinense: "pangasinense: magarbo",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng chic outfit sa party.", ilocano: "Nansulong na magarbon kawes ed party.", pangasinense: "Nagsuot iti chic outfit a napan iti party."),
  WordExample(tagalog: "Ang kanyang chic na damit ay umani ng papuri.", ilocano: "Ti magarbo na damit na ket nakabati ti papuri.", pangasinense: "So chic na damit na ay nag-ani so papuri.")
  ],
  ),

  Word(
  english: "chief",
  tagalog: "tagalog: pinuno",
  ilocano: "ilocano: pangulo",
  pangasinense: "pangasinense: pangulo",
  examples: [
  WordExample(tagalog: "Nagsalita ang pinuno ng tribo sa pulong.", ilocano: "Nagsao ti panguluen ti tribu iti gimong.", pangasinense: "Say pangulo na tribu so nansalita ed miting."),
  WordExample(tagalog: "Ang chief ay nagbigay ng mga tagubilin.", ilocano: "Ti pangulo ket nagited ti dagiti tungtungan.", pangasinense: "So pangulo ay nagbigay so mga tagubilin.")
  ],
  ),

  Word(
  english: "child",
  tagalog: "tagalog: bata",
  ilocano: "ilocano: ubing",
  pangasinense: "pangasinense: bata",
  examples: [
  WordExample(tagalog: "Masayang tumawa ang bata.", ilocano: "Nagkatawa ti ubing a siraragsak.", pangasinense: "Malikeliket ya inmeyag so ugaw."),
  WordExample(tagalog: "Ang bata ay naglalaro sa parke.", ilocano: "Ti ubing ket agay-ayam iti parke.", pangasinense: "So bata ay naglalaro ed parke.")
  ],
  ),

  Word(
  english: "childhood",
  tagalog: "tagalog: pagkabata",
  ilocano: "ilocano: ubing",
  pangasinense: "pangasinense: pagkabata",
  examples: [
  WordExample(tagalog: "Ipinagdiwang nila ang kanilang mga alaala sa pagkabata.", ilocano: "Rinambakda dagiti lagipda idi ubingda.", pangasinense: "Sinelebraan da ray pakanodnonotan da nen ugaw ni ra."),
  WordExample(tagalog: "Ang pagkabata ay puno ng saya at ligaya.", ilocano: "Ti pagkabata ket napno ti ragsak ken pagayatan.", pangasinense: "So pagkabata ay napno so saya ya ligaya.")
  ],
  ),

  Word(
  english: "chilly",
  tagalog: "tagalog: lamig",
  ilocano: "ilocano: lamig",
  pangasinense: "pangasinense: lamig",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng lamig sa lamig ng panahon.", ilocano: "Nalikna toy ambetel ed ambetel a panaon.", pangasinense: "Nalamiis ti riknana iti nalamiis a panawen."),
  WordExample(tagalog: "Malamig ang hangin sa umaga.", ilocano: "Nalamig ti angin iti bigat.", pangasinense: "Malamig so hangin ed umaga.")
  ],
  ),
  Word(
  english: "chocolate",
  tagalog: "tsokolate",
  ilocano: "tsokolate",
  pangasinense: "tsokolate",
  examples: [
  WordExample(tagalog: "Ang tsokolate ay natunaw sa araw.", ilocano: "Say tsokolate et natunaw ed agew.", pangasinense: "Narunaw ti tsokolate iti init."),
  WordExample(tagalog: "Gusto kong kumain ng tsokolate.", ilocano: "Kayat ko ti mangan ti tsokolate.", pangasinense: "Ayat ko so mangangan ed tsokolate.")
  ],
  ),

  Word(
  english: "choice",
  tagalog: "pagpili",
  ilocano: "pili",
  pangasinense: "pili",
  examples: [
  WordExample(tagalog: "Ang pagpili ay mahirap gawin.", ilocano: "Mairap so manpili.", pangasinense: "Narigat nga aramiden ti pili."),
  WordExample(tagalog: "May maraming pagpili sa tindahan.", ilocano: "Adu ti pili iti tindahan.", pangasinense: "Adu so pili ed tindaan.")
  ],
  ),

  Word(
  english: "church",
  tagalog: "simbahan",
  ilocano: "simbaan",
  pangasinense: "simbaan",
  examples: [
  WordExample(tagalog: "Puno ang simbahan para sa serbisyo.", ilocano: "Napno so simbaan parad serbisyo.", pangasinense: "Napno ti simbaan para iti serbisio."),
  WordExample(tagalog: "Nagsimba sila sa simbahan.", ilocano: "Nagsimba da iti simbaan.", pangasinense: "Nagsimba da ed simbaan.")
  ],
  ),

  Word(
  english: "cloak",
  tagalog: "balabal",
  ilocano: "kawes",
  pangasinense: "kabal",
  examples: [
  WordExample(tagalog: "Nagsuot siya ng balabal para sa init.", ilocano: "Nansulong na kawes parad petang.", pangasinense: "Nakasuot iti kabal para iti kinabara."),
  WordExample(tagalog: "Ang balabal ay mabigat.", ilocano: "Nabigat ti kawes.", pangasinense: "Mabigat so kabal.")
  ],
  ),

  Word(
  english: "cloud",
  tagalog: "ulap",
  ilocano: "ulep",
  pangasinense: "ulep",
  examples: [
  WordExample(tagalog: "Tinakpan ng ulap ang araw.", ilocano: "Asakbongan na lurem so banwa.", pangasinense: "Inabbong ti ulep ti init."),
  WordExample(tagalog: "May mga ulap sa langit.", ilocano: "Adda dagiti ulep iti langit.", pangasinense: "Adu so ulep ed langit.")
  ],
  ),

  Word(
  english: "coat",
  tagalog: "amerikana",
  ilocano: "amerikana",
  pangasinense: "amerikana",
  examples: [
  WordExample(tagalog: "Nagsuot siya ng coat para manatiling mainit.", ilocano: "Nansulong na amerikana pian ag-onpetang.", pangasinense: "Nagsuot iti amerikana tapno agtalinaed a nabara."),
  WordExample(tagalog: "Ang amerikana ay bago.", ilocano: "Baro ti amerikana.", pangasinense: "Bago so amerikana.")
  ],
  ),

  Word(
  english: "code",
  tagalog: "kodigo",
  ilocano: "kodigo",
  pangasinense: "kodigo",
  examples: [
  WordExample(tagalog: "Mahirap i-crack ang code.", ilocano: "Mairap ya na-crack so kodigo.", pangasinense: "Narigat a ma-crack ti kodigo."),
  WordExample(tagalog: "May bagong kodigo sa sistema.", ilocano: "Adda baro a kodigo iti sistema.", pangasinense: "Adu so bago kodigo ed sistema.")
  ],
  ),
  Word(
  english: "coffee",
  tagalog: "kape",
  ilocano: "kape",
  pangasinense: "kape",
  examples: [
  WordExample(tagalog: "Bagong timpla ang kape.", ilocano: "Say kape et balon inluto.", pangasinense: "Kabarbaro ti kape."),
  WordExample(tagalog: "Masarap ang kape na ito.", ilocano: "Naimas daytoy a kape.", pangasinense: "Naimas so kape ya etey.")
  ],
  ),

  Word(
  english: "cold air",
  tagalog: "malamig na hangin",
  ilocano: "nalamiis a dagem",
  pangasinense: "malamig ya dagem",
  examples: [
  WordExample(tagalog: "Nakakapreskong pakiramdam ang malamig na hangin.", ilocano: "Makarepresko so ambetel ya dagem.", pangasinense: "Narikna ti nalamiis nga angin a makapabang-ar."),
  WordExample(tagalog: "Tinatamasa ko ang malamig na hangin sa umaga.", ilocano: "Naragsakak iti nalamiis a dagem iti bigat.", pangasinense: "Nakaladak ya agtamasa so malamig ya dagem ed kaal.")
  ],
  ),

  Word(
  english: "collection",
  tagalog: "koleksyon",
  ilocano: "koleksion",
  pangasinense: "koleksion",
  examples: [
  WordExample(tagalog: "Bumili ako ng bagong koleksyon ng mga libro.", ilocano: "Nansaliw ak na balon koleksion na libro.", pangasinense: "Gimmatangak iti baro a koleksion dagiti libro."),
  WordExample(tagalog: "Ang koleksyon ng mga larawan ay maganda.", ilocano: "Naimas ti koleksion dagiti ladawan.", pangasinense: "Marakep so koleksion na larawan.")
  ],
  ),

  Word(
  english: "color",
  tagalog: "kulay",
  ilocano: "kolor",
  pangasinense: "kolor",
  examples: [
  WordExample(tagalog: "Ang ganda ng kulay ng langit.", ilocano: "Marakep so kolor na tawen.", pangasinense: "Napintas ti maris ti langit."),
  WordExample(tagalog: "Anong kulay ang gusto mo?", ilocano: "Ania nga kolor ti kayat mo?", pangasinense: "Anong kolor so ayat mo?")
  ],
  ),

  Word(
  english: "combination",
  tagalog: "kumbinasyon",
  ilocano: "kombinasion",
  pangasinense: "kombinasion",
  examples: [
  WordExample(tagalog: "Nagsuot siya ng kumbinasyon ng mga kulay.", ilocano: "Nankasulong na kombinasyon na kolor.", pangasinense: "Nagsuot iti kombinasion dagiti kolor."),
  WordExample(tagalog: "Ang kumbinasyon ay dapat maging maayos.", ilocano: "Masapul a naurnos ti kombinasion.", pangasinense: "Masapul na umayos so kombinasyon.")
  ],
  ),

  Word(
  english: "comic",
  tagalog: "komiks",
  ilocano: "komiks",
  pangasinense: "komiks",
  examples: [
  WordExample(tagalog: "Nakakatuwa ang komiks.", ilocano: "Makapaliket so komiks.", pangasinense: "Nakakatkatawa ti komiks."),
  WordExample(tagalog: "Mahilig akong magbasa ng komiks.", ilocano: "Mahiligak nga agbasbasa ti komiks.", pangasinense: "Ayat ko ya magbasa ed komiks.")
  ],
  ),

  Word(
  english: "command",
  tagalog: "utos",
  ilocano: "bilin",
  pangasinense: "utos",
  examples: [
  WordExample(tagalog: "Ang utos ay ibinigay nang malinaw.", ilocano: "Malinew ya niiter so ganggan.", pangasinense: "Nalawag ti pannakaited ti bilin."),
  WordExample(tagalog: "Sundin mo ang utos.", ilocano: "Sundin mo ti bilin.", pangasinense: "Sundin mo so utos.")
  ],
  ),

  Word(
  english: "communicate",
  tagalog: "makikipag-ugnayan",
  ilocano: "mankomunikar",
  pangasinense: "makikapag-ugnayan",
  examples: [
  WordExample(tagalog: "Makikipag-ugnayan sila sa pamamagitan ng email.", ilocano: "Mankomunikar ira panamegley na email.", pangasinense: "Makikomunikarda babaen ti email."),
  WordExample(tagalog: "Mahalaga ang pakikipag-ugnayan sa kanila.", ilocano: "Napateg ti pakikipag-ugnayan kadakuada.", pangasinense: "Napateg ya makikpag-ugnayan ed sikara.")
  ],
  ),

  Word(
  english: "compassion",
  tagalog: "awa",
  ilocano: "panangngaasi",
  pangasinense: "awa",
  examples: [
  WordExample(tagalog: "Nakaramdam ako ng matinding awa sa kanyang sitwasyon.", ilocano: "Naliknak so aralem a panangabagey ed kipapasen to.", pangasinense: "Nariknak ti nauneg a panangngaasi iti kasasaadna."),
  WordExample(tagalog: "Dapat tayong magpakita ng awa sa kapwa.", ilocano: "Masapul a ipakitada ti panangngaasi kadagiti kakaduana.", pangasinense: "Dapat tayong magpakita ed awa ed kapwa.")
  ],
  ),

  Word(
  english: "compromise",
  tagalog: "kompromiso",
  ilocano: "kompromiso",
  pangasinense: "kompromiso",
  examples: [
  WordExample(tagalog: "Nagkaroon sila ng kompromiso pagkatapos ng pag-uusap.", ilocano: "Akapanpaknaan ira kayari ran nantongtongan.", pangasinense: "Nagkompromisoda kalpasan ti panagsaritada."),
  WordExample(tagalog: "Ang kompromiso ay mahalaga sa relasyon.", ilocano: "Napateg ti kompromiso iti relasyon.", pangasinense: "Napateg so kompromiso ed relasyon.")
  ],
  ),

  Word(
  english: "computer",
  tagalog: "kompyuter",
  ilocano: "kompyuter",
  pangasinense: "kompyuter",
  examples: [
  WordExample(tagalog: "Ang computer ay nag-crash nang hindi inaasahan.", ilocano: "Ag-inilaloan ya atumba so kompyuter.", pangasinense: "Di ninamnama a nag-crash ti computer."),
  WordExample(tagalog: "Mabilis ang kanyang computer.", ilocano: "Napigsa ti kompyuter na.", pangasinense: "Mabilis so kompyuter na.")
  ],
  ),

  Word(
  english: "conclusion",
  tagalog: "konklusyon",
  ilocano: "konklusion",
  pangasinense: "konklusyon",
  examples: [
  WordExample(tagalog: "Ang konklusyon ay ginawa pagkatapos ng pagsusuri.", ilocano: "Say konklusyon et ginawa kayari na impanaral.", pangasinense: "Naaramid ti konklusion kalpasan ti pananganalisar."),
  WordExample(tagalog: "Mahalaga ang konklusyon sa isang pagsasaliksik.", ilocano: "Napateg ti konklusyon iti maysa a panagsukisok.", pangasinense: "Napateg so konklusyon ed isang pagsasaliksik.")
  ],
  ),

  Word(
  english: "condition",
  tagalog: "kalagayan",
  ilocano: "kipapasen",
  pangasinense: "kalagayan",
  examples: [
  WordExample(tagalog: "Mahina ang kalagayan ng gusali.", ilocano: "Makapuy so kipapasen na bilding.", pangasinense: "Nakapuy ti kasasaad ti pasdek."),
  WordExample(tagalog: "Dapat natin ayusin ang kondisyon ng bahay.", ilocano: "Masapul a ayusenda ti kondisyon ti balay.", pangasinense: "Masapul tayong ayuson so kondisyon na balay.")
  ],
  ),

  Word(
  english: "connection",
  tagalog: "koneksyon",
  ilocano: "koneksion",
  pangasinense: "koneksion",
  examples: [
  WordExample(tagalog: "Kailangan nating gumawa ng koneksyon sa kanila.", ilocano: "Kaukolan tayoy mikonektaan ed sikara.", pangasinense: "Masapul nga adda koneksiontayo kadakuada."),
  WordExample(tagalog: "Ang koneksyon sa internet ay mabagal.", ilocano: "Nabagal ti koneksion iti internet.", pangasinense: "Mabagal so koneksyon na internet.")
  ],
  ),

  Word(
  english: "consequence",
  tagalog: "kinahinatnan",
  ilocano: "nansumpalan",
  pangasinense: "kinahinatnan",
  examples: [
  WordExample(tagalog: "Matindi ang kinahinatnan ng aksyon.", ilocano: "Grabe so nansumpalan na ginawa to.", pangasinense: "Nakaro ti pagbanagan ti tignay."),
  WordExample(tagalog: "Dapat tayong maging maingat sa ating mga aksyon.", ilocano: "Masapul a magin-ina tayo kadagiti aramid tayo.", pangasinense: "Dapat tayong maging maingat ed say aramid tayo.")
  ],
  ),

  Word(
  english: "consultant",
  tagalog: "konsultant",
  ilocano: "konsultant",
  pangasinense: "konsultant",
  examples: [
  WordExample(tagalog: "Ang consultant ay nagbigay ng mahalagang payo.", ilocano: "Say consultant so angiter na makanakanan simbawa.", pangasinense: "Nangipaay ti konsultant iti napateg a balakad."),
  WordExample(tagalog: "Mahalaga ang payo ng consultant.", ilocano: "Napateg ti balakad ti konsultant.", pangasinense: "Napateg so balakad na konsultant.")
  ],
  ),

  Word(
  english: "continue",
  tagalog: "ituloy",
  ilocano: "ituloy",
  pangasinense: "ituloy",
  examples: [
  WordExample(tagalog: "Itutuloy nila ang proyekto sa susunod na linggo.", ilocano: "Ituloy da so proyekto diad ontumbok a simba.", pangasinense: "Ituloyda ti proyekto inton sumaruno a lawas."),
  WordExample(tagalog: "Mahalaga na ituloy ang pagsasanay.", ilocano: "Napateg a ituloy ti panagsanay.", pangasinense: "Napateg ya ituloy so pagsasanay.")
  ],
  ),

  Word(
  english: "contrast",
  tagalog: "kaibahan",
  ilocano: "kaibahan",
  pangasinense: "kaibahan",
  examples: [
  WordExample(tagalog: "Ang kaibahan ay kapansin-pansin.", ilocano: "Makapadinayew so pandumaan.", pangasinense: "Nakadidillaw ti nagdumaanda."),
  WordExample(tagalog: "May malaking kaibahan ang dalawa.", ilocano: "Adda dakkel a kaibahan dagitoy dua.", pangasinense: "Adu so nagduma ti dua.")
  ],
  ),
  Word(
  english: "control panel",
  tagalog: "control panel",
  ilocano: "control panel",
  pangasinense: "control panel",
  examples: [
  WordExample(tagalog: "Ang control panel ay madaling gamitin.", ilocano: "Mainomay ya usaren so control panel.", pangasinense: "Nalaka nga usaren ti control panel."),
  WordExample(tagalog: "I-adjust mo ang mga setting sa control panel.", ilocano: "I-adjust mo dagiti setting iti control panel.", pangasinense: "I-adjust mo so setting ed control panel.")
  ],
  ),

  Word(
  english: "conviction",
  tagalog: "paninindigan",
  ilocano: "kombiksion",
  pangasinense: "kombiksion",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng paninindigan sa kanyang mga paniniwala.", ilocano: "Nalikna toy kombiksion ed saray sisiaen to.", pangasinense: "Nariknana ti kombiksion kadagiti patpatienna."),
  WordExample(tagalog: "Ang kanyang paninindigan ay hindi natitinag.", ilocano: "Di natitinag ti paninindigan na.", pangasinense: "Di natitinag so kombiksion na.")
  ],
  ),

  Word(
  english: "copy",
  tagalog: "kopya",
  ilocano: "kopia",
  pangasinense: "kopya",
  examples: [
  WordExample(tagalog: "Gumawa siya ng kopya ng dokumento.", ilocano: "Nanggawa na kopya na dokumento.", pangasinense: "Inaramidna ti kopia ti dokumento."),
  WordExample(tagalog: "Kailangan ko ng kopya ng ulat.", ilocano: "Masapulak ti kopya ti ulat.", pangasinense: "Masapul ko so kopya na ulat.")
  ],
  ),

  Word(
  english: "correct",
  tagalog: "itama",
  ilocano: "ipetek",
  pangasinense: "ipetek",
  examples: [
  WordExample(tagalog: "Kailangan nilang itama ang mga pagkakamali.", ilocano: "Kaukolan dan ipetek iray lingo.", pangasinense: "Masapul nga ilintegda dagiti biddut."),
  WordExample(tagalog: "Mahalaga ang pagwawasto ng mga pagkakamali.", ilocano: "Napateg ti panagwasto dagiti biddut.", pangasinense: "Napateg so pagwasto na biddut.")
  ],
  ),

  Word(
  english: "cost of living",
  tagalog: "halaga ng pamumuhay",
  ilocano: "gastos",
  pangasinense: "gastos",
  examples: [
  WordExample(tagalog: "Tumaas ang halaga ng pamumuhay.", ilocano: "Inmatagey so gastos ed panagbilay.", pangasinense: "Immadu ti gastos iti panagbiag."),
  WordExample(tagalog: "Mahal ang cost of living sa lungsod.", ilocano: "Naimbag ti gastos iti siyudad.", pangasinense: "Mahal so gastos ed siyudad.")
  ],
  ),

  Word(
  english: "couch",
  tagalog: "sopa",
  ilocano: "sopa",
  pangasinense: "sopa",
  examples: [
  WordExample(tagalog: "Kumportableng maupo ang sopa.", ilocano: "Say sopa et komportablen yurongan.", pangasinense: "Komportable ti pagtugawan ti sopa."),
  WordExample(tagalog: "Nasa sala ang bagong sopa.", ilocano: "Adda iti sala ti baro a sopa.", pangasinense: "Adda ed sala so baro ya sopa.")
  ],
  ),

  Word(
  english: "courageous",
  tagalog: "matapang",
  ilocano: "makpel",
  pangasinense: "makpel",
  examples: [
  WordExample(tagalog: "Naging matapang siya sa kanyang mga kilos.", ilocano: "Sikatoy makpel ed saray ginawa to.", pangasinense: "Natured iti inaramidna."),
  WordExample(tagalog: "Mahalaga ang pagiging matapang sa buhay.", ilocano: "Napateg ti panagmatapang iti biag.", pangasinense: "Napateg so panagmakpel ed biag.")
  ],
  ),

  Word(
  english: "court",
  tagalog: "korte",
  ilocano: "korte",
  pangasinense: "korte",
  examples: [
  WordExample(tagalog: "Nagsagawa ng sesyon ang korte kahapon.", ilocano: "Nanggawa na sesyon so korte nen kaplesan.", pangasinense: "Nangisayangkat ti korte iti session idi kalman."),
  WordExample(tagalog: "Mahalaga ang desisyon ng korte.", ilocano: "Napateg ti desisyon ti korte.", pangasinense: "Napateg so desisyon na korte.")
  ],
  ),

  Word(
  english: "cousin",
  tagalog: "pinsan",
  ilocano: "kapinsan",
  pangasinense: "kapinsan",
  examples: [
  WordExample(tagalog: "Bumisita ang pinsan noong bakasyon.", ilocano: "Say kapinsan so binmisita parad saray piesta opisyal.", pangasinense: "Bimmisita ti kasinsin para iti bakasion."),
  WordExample(tagalog: "Mahilig akong makipaglaro sa aking pinsan.", ilocano: "Mahiligak nga aglalo kadagiti kapinsan ko.", pangasinense: "Ayat ko ya makipaglaro ed kasinsin ko.")
  ],
  ),

  Word(
  english: "cow",
  tagalog: "baka",
  ilocano: "baka",
  pangasinense: "baka",
  examples: [
  WordExample(tagalog: "Ang baka ay nanginginain sa bukid.", ilocano: "Nankakabkab so baka ed uma.", pangasinense: "Nagarab ti baka iti kataltalonan."),
  WordExample(tagalog: "Mahalaga ang baka sa agrikultura.", ilocano: "Napateg ti baka iti agrikultura.", pangasinense: "Napateg so baka ed agrikultura.")
  ],
  ),

  Word(
  english: "credit card",
  tagalog: "credit card",
  ilocano: "credit card",
  pangasinense: "credit card",
  examples: [
  WordExample(tagalog: "Sumulat siya ng application ng credit card.", ilocano: "Nansulat na aplikasyon parad credit card.", pangasinense: "Nagsurat iti aplikasion iti credit card."),
  WordExample(tagalog: "Kailangan kong i-update ang aking credit card.", ilocano: "Masapulak nga i-update ti credit card ko.", pangasinense: "Masapul ko ya i-update so credit card ko.")
  ],
  ),

  Word(
  english: "crew",
  tagalog: "crew",
  ilocano: "tripulante",
  pangasinense: "crew",
  examples: [
  WordExample(tagalog: "Masigasig na nagtrabaho ang crew sa proyekto.", ilocano: "Saray tripulante so nansagpot a maong ed proyekto.", pangasinense: "Sigagaget a nagtrabaho dagiti tripulante iti proyekto."),
  WordExample(tagalog: "Mahalaga ang teamwork ng crew.", ilocano: "Napateg ti teamwork ti tripulante.", pangasinense: "Napateg so teamwork na crew.")
  ],
  ),

  Word(
  english: "crisis",
  tagalog: "krisis",
  ilocano: "krisis",
  pangasinense: "krisis",
  examples: [
  WordExample(tagalog: "Napangasiwaan ng maayos ang krisis.", ilocano: "Say krisis so naasikaso a maong.", pangasinense: "Nasayaat ti pannakatarawidwid ti krisis."),
  WordExample(tagalog: "Mahalaga ang tamang desisyon sa panahon ng krisis.", ilocano: "Napateg ti wagas a desisyon iti panawen ti krisis.", pangasinense: "Napateg so husto na desisyon ed panawen na krisis.")
  ],
  ),

  Word(
  english: "critique",
  tagalog: "kritika",
  ilocano: "kritiko",
  pangasinense: "kritika",
  examples: [
  WordExample(tagalog: "Gumawa sila ng kritika sa pelikula.", ilocano: "Nanggawa ra na kritisismo ed pelikula.", pangasinense: "Nangaramidda iti kritiko iti pelikula."),
  WordExample(tagalog: "Mahahalagang aspeto ang dapat isama sa kritika.", ilocano: "Napateg a paset ti masapul a isagana iti kritika.", pangasinense: "Napateg so aspeto ya masapul ed kritika.")
  ],
  ),

  Word(
  english: "crocodile",
  tagalog: "buwaya",
  ilocano: "buaya",
  pangasinense: "buaya",
  examples: [
  WordExample(tagalog: "Lumangoy ang buwaya sa ilog.", ilocano: "Nanlangoy so buaya ed ilog.", pangasinense: "Naglangoy ti buaya iti karayan."),
  WordExample(tagalog: "Ang buwaya ay isang mapanganib na hayop.", ilocano: "Ti buaya ket maysa nga nakapanganib a hayop.", pangasinense: "So buaya et mape-it a hayop.")
  ],
  ),
  Word(
  english: "cross examination",
  tagalog: "cross examination",
  ilocano: "cross examination",
  pangasinense: "cross examination",
  examples: [
  WordExample(tagalog: "Nagbigay siya ng cross examination sa panahon ng paglilitis.", ilocano: "Sikatoy angiter na cross examination legan na bista.", pangasinense: "Nangted iti cross examination bayat ti pannakabista."),
  WordExample(tagalog: "Mahalaga ang cross examination sa isang korte.", ilocano: "Napateg ti cross examination iti maysa a korte.", pangasinense: "Napateg so cross examination ed maysa ya korte.")
  ],
  ),

  Word(
  english: "crown",
  tagalog: "korona",
  ilocano: "korona",
  pangasinense: "korona",
  examples: [
  WordExample(tagalog: "Natagpuan nila ang korona sa kaban ng kayamanan.", ilocano: "Aromog da so korona ed kaban na kayamanan.", pangasinense: "Nasarakanda ti korona iti kahon ti gameng."),
  WordExample(tagalog: "Ang korona ay simbolo ng kapangyarihan.", ilocano: "Ti korona ket simbolo ti kapangyarihan.", pangasinense: "So korona et simbolo na kapangyarihan.")
  ],
  ),

  Word(
  english: "crush",
  tagalog: "crush",
  ilocano: "crush",
  pangasinense: "crush",
  examples: [
  WordExample(tagalog: "Ang hirap pakisamahan ng crush.", ilocano: "Say crush et mairap ya arapen.", pangasinense: "Narigat a tamingen ti crush."),
  WordExample(tagalog: "Naaapektuhan ako sa crush ko.", ilocano: "Naaapektaran ak idiay crush ko.", pangasinense: "Apektado ak ed crush ko.")
  ],
  ),

  Word(
  english: "cry",
  tagalog: "sigaw",
  ilocano: "ikis",
  pangasinense: "sigaw",
  examples: [
  WordExample(tagalog: "Ang sigaw ng sanggol ang gumising sa lahat.", ilocano: "Say akis na ugaw so amabiskeg ed amin.", pangasinense: "Ti ikkis ti maladaga ti nangriing iti amin."),
  WordExample(tagalog: "Narinig ko ang sigaw mula sa ibang kwarto.", ilocano: "Narinikak ti sigaw manipud sabali a kwarto.", pangasinense: "Narinig ko so sigaw ed ibang kwarto.")
  ],
  ),

  Word(
  english: "cuisine",
  tagalog: "pagkaing lutuin",
  ilocano: "panangan",
  pangasinense: "pagkaing lutuin",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng pagkaing lutuin mula sa kanyang tinubuang-bayan.", ilocano: "Nalikna toy panangan na nanlapud binalegan ton bansa.", pangasinense: "Nariknana ti rikna ti lutuen manipud iti pagilianna."),
  WordExample(tagalog: "Mahilig siya sa pagkaing lutuin ng ibang bansa.", ilocano: "Ay-ayaten na ti pagkaing lutuin dagiti sabali a pagilian.", pangasinense: "Ayat na so pagkaing lutuin na ibang bansa.")
  ],
  ),

  Word(
  english: "cup",
  tagalog: "tasa",
  ilocano: "kopa",
  pangasinense: "kopa",
  examples: [
  WordExample(tagalog: "Ang tasa ay puno ng kape.", ilocano: "Say kopa et napno na kape.", pangasinense: "Napno ti tasa iti kape."),
  WordExample(tagalog: "Kailangan ko ng tasa para sa tsaa.", ilocano: "Masapulak ti tasa para iti tsaa.", pangasinense: "Masapul ko so kopa para ed tsa.")
  ],
  ),

  Word(
  english: "curtain",
  tagalog: "kurtina",
  ilocano: "kurtina",
  pangasinense: "kurtina",
  examples: [
  WordExample(tagalog: "Nalaglag ang kurtina pagkatapos ng palabas.", ilocano: "Inmepas so kurtina kayari na palabas.", pangasinense: "Natinnag ti kurtina kalpasan ti pabuya."),
  WordExample(tagalog: "Bago ang palabas, binuksan ang kurtina.", ilocano: "Sakbay ti palabas, binuklat ti kurtina.", pangasinense: "Sakbay na pabuya, binuklat so kurtina.")
  ],
  ),

  Word(
  english: "curve",
  tagalog: "kurba",
  ilocano: "kurba",
  pangasinense: "kurba",
  examples: [
  WordExample(tagalog: "Matalim ang kurba ng kalsada.", ilocano: "Matalimbeng so kurba na karsada.", pangasinense: "Natadem ti kurbada ti kalsada."),
  WordExample(tagalog: "Iwasan ang matatalim na kurba.", ilocano: "Iwasan dagiti matatalim a kurba.", pangasinense: "Iwasan so matalimbeng kurba.")
  ],
  ),

  Word(
  english: "cure",
  tagalog: "gamutin",
  ilocano: "paabigen",
  pangasinense: "gamutin",
  examples: [
  WordExample(tagalog: "Gagamutin ko ang sakit na ito sa pamamagitan ng gamot.", ilocano: "Paabigen ko iyan sakit panamegley na tambal.", pangasinense: "Agasek daytoy a sakit babaen ti agas."),
  WordExample(tagalog: "Ang tamang gamot ay makakatulong sa pag-gamot.", ilocano: "Ti wagas a gamot ket makatulong iti panag-gamot.", pangasinense: "So husto ya agas et makatulong ed pag-gamot.")
  ],
  ),

  Word(
  english: "curiosity",
  tagalog: "pagkamausisa",
  ilocano: "anggapoy",
  pangasinense: "pagkamausisa",
  examples: [
  WordExample(tagalog: "Ang pagkamausisa ng mga bata ay walang katapusan.", ilocano: "Anggapoy anggaan na pan-usisa na ugugaw.", pangasinense: "Awan patinggana ti panagusiuso dagiti ubbing."),
  WordExample(tagalog: "Mahilig ang mga bata sa mga bagay na nakakatuwa dahil sa kanilang pagkamausisa.", ilocano: "Ay-ayaten dagiti ubbing dagiti banag a nakakatawa gapu iti panagkamauisda.", pangasinense: "Ayat dagiti ubbing so nakakatuwa ya bagay tan so pagkamausisa da.")
  ],
  ),

  Word(
  english: "custom",
  tagalog: "kaugalian",
  ilocano: "kaugali",
  pangasinense: "kustombre",
  examples: [
  WordExample(tagalog: "Ipinagdiwang nila ang kanilang kaugalian ng hapunan ng pamilya.", ilocano: "Sinelebraan da so kustombre ran pangdem na pamilya.", pangasinense: "Rinambakda ti kaugalianda a pangrabii ti pamilia."),
  WordExample(tagalog: "Ang mga kaugalian ay nagbabago sa paglipas ng panahon.", ilocano: "Dagiti kaugali ket agbalbaliw iti panawen.", pangasinense: "So kustombre et nagbabago ed panawen.")
  ],
  ),

  Word(
  english: "data",
  tagalog: "datos",
  ilocano: "datos",
  pangasinense: "datos",
  examples: [
  WordExample(tagalog: "Ang mga datos ay nakolekta para sa pagsusuri.", ilocano: "Say datos et tinipon parad panagsukimat.", pangasinense: "Naurnong ti datos para iti pannakaanalisar."),
  WordExample(tagalog: "Mahalaga ang datos sa anumang pagsasaliksik.", ilocano: "Napateg ti datos iti aniaman a panagsukimat.", pangasinense: "Napateg so datos ed anuman na pagsasaliksik.")
  ],
  ),

  Word(
  english: "debt",
  tagalog: "utang",
  ilocano: "utang",
  pangasinense: "utang",
  examples: [
  WordExample(tagalog: "Nabayaran na rin sa wakas ang utang.", ilocano: "Abayaran la ed kaunoran so utang.", pangasinense: "Nabayadan kamaudiananna ti utang."),
  WordExample(tagalog: "Minsan mahirap ang magbayad ng utang.", ilocano: "Sakbay nga agbayad ti utang ket narigat.", pangasinense: "Minsan narigat so magbayad ed utang.")
  ],
  ),

  Word(
  english: "decision",
  tagalog: "desisyon",
  ilocano: "desision",
  pangasinense: "mandesisyon",
  examples: [
  WordExample(tagalog: "Ang desisyon ay mahirap gawin.", ilocano: "Mairap so mandesisyon.", pangasinense: "Narigat nga aramiden ti desision."),
  WordExample(tagalog: "Kailangan mo ng matibay na desisyon.", ilocano: "Masapul mo ti napigsa a desision.", pangasinense: "Masapul mo so matibay na desisyon.")
  ],
  ),

  Word(
  english: "deed",
  tagalog: "gawa",
  ilocano: "gawa",
  pangasinense: "gawa",
  examples: [
  WordExample(tagalog: "Ang gawa ay naitala sa opisina.", ilocano: "Say gawa et inrekord ed opisina.", pangasinense: "Nairekord ti deed iti opisina."),
  WordExample(tagalog: "Mahalaga ang bawat gawa sa ating komunidad.", ilocano: "Napateg ti tunggal gawa iti komunidad tayo.", pangasinense: "Napateg so kada gawa ed komunidad tayo.")
  ],
  ),

  Word(
  english: "breath",
  tagalog: "hininga",
  ilocano: "aralem",
  pangasinense: "hininga",
  examples: [
  WordExample(tagalog: "Huminga siya ng malalim bago nagsalita.", ilocano: "Nan-ingas na aralem antis ya nansalita.", pangasinense: "Immanges iti nauneg sakbay a nagsao."),
  WordExample(tagalog: "Kailangan ng malalim na hininga upang makapagpahinga.", ilocano: "Masapul ti nauneg a hininga tapno makapagpahinga.", pangasinense: "Masapul so nauneg na hininga tan so makapagpahinga.")
  ],
  ),

  Word(
  english: "defect",
  tagalog: "depekto",
  ilocano: "depekto",
  pangasinense: "depekto",
  examples: [
  WordExample(tagalog: "Naayos agad ang depekto.", ilocano: "Naayos a tampol so depekto.", pangasinense: "Natarimaan a dagus ti depekto."),
  WordExample(tagalog: "Mahalaga na ituwid ang anumang depekto.", ilocano: "Napateg a ituwid dagiti depekto.", pangasinense: "Napateg so ituwid so anuman na depekto.")
  ],
  ),

  Word(
  english: "defiance",
  tagalog: "pagsuway",
  ilocano: "onsusumpad",
  pangasinense: "onsusumpad",
  examples: [
  WordExample(tagalog: "Sila ay lumalabag sa mga patakaran.", ilocano: "Sikaray onsusumpad saray totontonen.", pangasinense: "Sukirenda dagiti pagannurotan."),
  WordExample(tagalog: "Ang pagsuway sa batas ay may kapalit na parusa.", ilocano: "Ti pagsuway iti linteg ket adda kasapulan a parusa.", pangasinense: "So pagsuway ed batas et may kapalit na parusa.")
  ],
  ),

  Word(
  english: "delightful",
  tagalog: "kasiya-siya",
  ilocano: "maliket",
  pangasinense: "kasiya-siya",
  examples: [
  WordExample(tagalog: "Siya ay nasa isang kasiya-siyang mood ngayon.", ilocano: "Sikatoy walad maliket a kipapasen natan.", pangasinense: "Makaay-ayo ti riknana ita nga aldaw."),
  WordExample(tagalog: "Ang pagkaing ito ay napakasiyang tikman.", ilocano: "Daytoy a makan ket napakasiyang tilmon.", pangasinense: "So pagkaing et napakasiyang tikman.")
  ],
  ),

  Word(
  english: "demonstration",
  tagalog: "demonstrasyon",
  ilocano: "demostrasion",
  pangasinense: "demonstrasyon",
  examples: [
  WordExample(tagalog: "Gumamit siya ng isang demonstrasyon upang ipaliwanag.", ilocano: "Angusar na demostrasyon pian manpaliwawa.", pangasinense: "Inusarna ti demostrasion a mangilawlawag."),
  WordExample(tagalog: "Mahalaga ang demonstrasyon sa pagkatuto.", ilocano: "Napateg ti demostrasyon iti panagadal.", pangasinense: "Napateg so demonstrasyon ed panagadal.")
  ],
  ),

  Word(
  english: "deny",
  tagalog: "itaggi",
  ilocano: "iburi",
  pangasinense: "iburi",
  examples: [
  WordExample(tagalog: "Itatanggi nila ang mga paratang.", ilocano: "Iburi da ray akusasyon.", pangasinense: "Ilibakda dagiti alegasion."),
  WordExample(tagalog: "Minsan, mahirap itanggi ang katotohanan.", ilocano: "Sakbay, narigat a itanggi ti kinapudno.", pangasinense: "Minsan, narigat so itaggi so katotohanan.")
  ],
  ),

  Word(
  english: "departure",
  tagalog: "pag-alis",
  ilocano: "panagruar",
  pangasinense: "itaynan",
  examples: [
  WordExample(tagalog: "Ang pag-alis ay nakatakdang tanghali.", ilocano: "Say itaynan et akaeskedyul ed pegley-agew.", pangasinense: "Naituding ti panagruar iti tengnga ti aldaw."),
  WordExample(tagalog: "Dapat ay naroon ka bago ang pag-alis.", ilocano: "Masapul a masabtan ka sakbay ti panagruar.", pangasinense: "Dapat nandiyan ka sakbay na itaynan.")
  ],
  ),

  Word(
  english: "deposit",
  tagalog: "deposito",
  ilocano: "deposito",
  pangasinense: "deposito",
  examples: [
  WordExample(tagalog: "Ang deposito ay ginawa kahapon.", ilocano: "Say deposito et ginawa nen kaplesan.", pangasinense: "Naaramid ti deposito idi kalman."),
  WordExample(tagalog: "Kailangan ng deposito para sa bagong bahay.", ilocano: "Masapul ti deposito para iti baro a balay.", pangasinense: "Masapul so deposito para ed baro ya balay.")
  ],
  ),

  Word(
  english: "design",
  tagalog: "disenyo",
  ilocano: "disenio",
  pangasinense: "disenyo",
  examples: [
  WordExample(tagalog: "Ang disenyo ay simple ngunit eleganteng.", ilocano: "Simpli balet marakep so desinyo to.", pangasinense: "Simple ngem elegante ti disenio."),
  WordExample(tagalog: "Ang magandang disenyo ay nakakaakit.", ilocano: "Ti napintas a disenio ket nakakaakit.", pangasinense: "So maganda ya disenyo et nakakaakit.")
  ],
  ),

  Word(
  english: "detail",
  tagalog: "detalye",
  ilocano: "detalye",
  pangasinense: "detalye",
  examples: [
  WordExample(tagalog: "Napakaganda ng detalye ng painting.", ilocano: "Say detalye na painting et marakep.", pangasinense: "Napintas ti detalye ti painting."),
  WordExample(tagalog: "Dapat pagtuunan ng pansin ang detalye.", ilocano: "Masapul a pagtuunan ti pansin ti detalye.", pangasinense: "Dapat pagtutunan so pansin so detalye.")
  ],
  ),

  Word(
  english: "determination",
  tagalog: "determinasyon",
  ilocano: "determinasion",
  pangasinense: "nandesisyon",
  examples: [
  WordExample(tagalog: "Gumawa sila ng determinasyon na magtagumpay.", ilocano: "Nandesisyon iran ontalona.", pangasinense: "Nangaramidda iti determinasion nga agballigi."),
  WordExample(tagalog: "Ang determinasyon ay susi sa tagumpay.", ilocano: "Ti determinasyon ket susi ti balligi.", pangasinense: "So determinasyon et susi na tagumpay.")
  ],
  ),

  Word(
  english: "devoted",
  tagalog: "tapat",
  ilocano: "debosyonado",
  pangasinense: "tapat",
  examples: [
  WordExample(tagalog: "Siya ay tapat sa kanyang pamilya.", ilocano: "Sikatoy debosyonado ed pamilya to.", pangasinense: "Napeklan iti pamiliana."),
  WordExample(tagalog: "Mahalaga ang pagiging tapat sa mga kaibigan.", ilocano: "Napateg ti panagpudno kadagiti gagayyem.", pangasinense: "Napateg so panagpudno ed kaibigan.")
  ],
  ),

  Word(
  english: "device",
  tagalog: "kagamitan",
  ilocano: "kagawaan",
  pangasinense: "kagamitan",
  examples: [
  WordExample(tagalog: "Nag-malfunction ang device habang ginagamit.", ilocano: "Ag-inmabig so kagawaan legan ya uusaren.", pangasinense: "Nagmalfunction ti device bayat ti pannakausar."),
  WordExample(tagalog: "Mahalaga ang kagamitan sa anumang proyekto.", ilocano: "Napateg ti kagamitan iti aniaman a proyekto.", pangasinense: "Napateg so kagamitan ed anuman na proyekto.")
  ],
  ),

  Word(
  english: "dialogue",
  tagalog: "diologo",
  ilocano: "pantotongtong",
  pangasinense: "pantotongtong",
  examples: [
  WordExample(tagalog: "Nasiyahan sila sa isang dialogue tungkol sa sining.", ilocano: "Nanliketan day pantotongtong nipaakar ed arte.", pangasinense: "Tinagiragsakda ti maysa a dialogo maipapan iti arte."),
  WordExample(tagalog: "Ang dialogue ay mahalaga sa komunikasyon.", ilocano: "Ti dialogo ket napateg iti komunikasyon.", pangasinense: "So dialogo et napateg ed komunikasyon.")
  ],
  ),

  Word(
  english: "difference",
  tagalog: "pagkakaiba",
  ilocano: "nagdumaan",
  pangasinense: "nagkaiba",
  examples: [
  WordExample(tagalog: "Ang pagkakaiba ay malinaw na makita.", ilocano: "Malinew ya nanengneng so pandumaan.", pangasinense: "Nalawag a makita so nagkaiba."),
  WordExample(tagalog: "Dapat natin pahalagahan ang pagkakaiba.", ilocano: "Masapul nga pahalagahan ti pagkakaiba.", pangasinense: "Dapat tayon pahalagahan so nagkaiba.")
  ],
  ),
  Word(
  english: "choice",
  tagalog: "tagalog: pagpipilian",
  ilocano: "ilocano: desisyon",
  pangasinense: "pangasinense: pinili",
  examples: [
  WordExample(tagalog: "Gumawa siya ng isang mahirap na pagpipilian.", ilocano: "Mairap so ginawa ton desisyon.", pangasinense: "Narigat ti pinilina."),
  WordExample(tagalog: "May iba't ibang pagpipilian sa menu.", ilocano: "Adda nagduduma a desisyon iti menu.", pangasinense: "Ado so pinili ed menu."),
  ],
  ),

  Word(
  english: "dinner",
  tagalog: "tagalog: hapunan",
  ilocano: "ilocano: pangdem",
  pangasinense: "pangasinense: pangrabii",
  examples: [
  WordExample(tagalog: "Masarap ang hapunan.", ilocano: "Mananam so pangdem.", pangasinense: "Naimas ti pangrabii."),
  WordExample(tagalog: "Naghanda siya ng hapunan para sa pamilya.", ilocano: "Inaramid na ti pangdem para iti pamilya.", pangasinense: "Naghanda to ed pangrabii para ed pamilya."),
  ],
  ),

  Word(
  english: "disappointment",
  tagalog: "tagalog: pagkabigo",
  ilocano: "ilocano: pakadismayaan",
  pangasinense: "pangasinense: pannakaupay",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng malalim na pagkabigo sa kanyang koponan.", ilocano: "Sikatoy walaan na aralem a pakadismayaan ed grupo to.", pangasinense: "Nakaro ti pannakaupayna iti team-na."),
  WordExample(tagalog: "Ang pagkabigo ay bahagi ng buhay.", ilocano: "Ti pakadismayaan ket paset ti biag.", pangasinense: "Panunot so pannakaupay ket partey na biag."),
  ],
  ),

  Word(
  english: "disguise",
  tagalog: "tagalog: nakaka-disguise",
  ilocano: "ilocano: nan-disguise",
  pangasinense: "pangasinense: nagdisguise",
  examples: [
  WordExample(tagalog: "Naka-disguise sila sa party.", ilocano: "Nan-disguise ira ed party.", pangasinense: "Nagdisguise dagitoy iti party."),
  WordExample(tagalog: "Kailangan mong mag-disguise para sa Halloween.", ilocano: "Masapul nga ag-disguise ka para ti Halloween.", pangasinense: "Kailangan mo ed magdisguise para ed Halloween."),
  ],
  ),

  Word(
  english: "dismay",
  tagalog: "tagalog: pagkadismaya",
  ilocano: "ilocano: nadismaya",
  pangasinense: "pangasinense: pannakaupay",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng pagkadismaya sa balita.", ilocano: "Nadismaya ed balita.", pangasinense: "Nariknana ti pannakaupay iti damag."),
  WordExample(tagalog: "Ang balitang iyon ay nagdulot ng pagkadismaya.", ilocano: "Dayta a damag ket nagdulot ti nadismaya.", pangasinense: "Et akusasyon so nagdulot ed pannakaupay."),
  ],
  ),

  Word(
  english: "distance",
  tagalog: "tagalog: distansya",
  ilocano: "ilocano: distansya",
  pangasinense: "pangasinense: distansya",
  examples: [
  WordExample(tagalog: "Ang distansya ay mahirap sukatin.", ilocano: "Mairap ya sukaten so distansya.", pangasinense: "Narigat a rukoden ti distansia."),
  WordExample(tagalog: "Kailangan nating sukatin ang distansya.", ilocano: "Masapul tayo nga sukaten ti distansya.", pangasinense: "Kailangan tayo ed rukoden so distansya."),
  ],
  ),

  Word(
  english: "distribute",
  tagalog: "tagalog: ipapamahagi",
  ilocano: "ilocano: mangibunog",
  pangasinense: "pangasinense: mangiwaras",
  examples: [
  WordExample(tagalog: "Ipapamahagi nila ang mga materyales.", ilocano: "Sikara so mangibunog na saray materyales.", pangasinense: "Isuda ti mangiwaras kadagiti materiales."),
  WordExample(tagalog: "Dapat ipamahagi ang pagkain sa mga nangangailangan.", ilocano: "Masapul nga ipapa-distribute ti makan kadagiti agkasapulan.", pangasinense: "Dapat iwaras so makan ed saray agkasapulan."),
  ],
  ),

  Word(
  english: "divorce",
  tagalog: "tagalog: diborsyo",
  ilocano: "ilocano: diborsyo",
  pangasinense: "pangasinense: diborsyo",
  examples: [
  WordExample(tagalog: "Ang kanyang diborsyo ay natapos noong nakaraang linggo.", ilocano: "Say diborsyo to so asumpal nen imbeneg a simba.", pangasinense: "Nairingpas ti diborsiona idi napan a lawas."),
  WordExample(tagalog: "Ang diborsyo ay isang mahirap na proseso.", ilocano: "Ti diborsyo ket maysa a narigat a proseso.", pangasinense: "So diborsyo ay met narigat so proseso."),
  ],
  ),

  Word(
  english: "division",
  tagalog: "tagalog: dibisyon",
  ilocano: "ilocano: inkaapag-apag",
  pangasinense: "pangasinense: pannakabingbingay",
  examples: [
  WordExample(tagalog: "Ipinahayag nila ang kanilang dibisyon ng paggawa.", ilocano: "Imbalikas da so inkaapag-apag da ed kimey.", pangasinense: "Inyebkasda ti pannakabingbingay ti trabahoda."),
  WordExample(tagalog: "Ang dibisyon ng mga gawain ay mahalaga.", ilocano: "Ti dibisyon dagiti aramiden ket napateg.", pangasinense: "So pannakabingbingay ed mga obra ay importante."),
  ],
  ),

  Word(
  english: "doctor",
  tagalog: "tagalog: doktor",
  ilocano: "ilocano: doktor",
  pangasinense: "pangasinense: doktor",
  examples: [
  WordExample(tagalog: "Sinuri ng doktor ang pasyente.", ilocano: "Ineksamin na doktor so pasyente.", pangasinense: "Ineksamen ti doktor ti pasiente."),
  WordExample(tagalog: "Mahalaga ang papel ng doktor sa lipunan.", ilocano: "Napateg ti papel ti doktor iti sosiedad.", pangasinense: "Importante so papel na doktor ed lipunan."),
  ],
  ),
  Word(
  english: "doll",
  tagalog: "tagalog: manika",
  ilocano: "ilocano: munieka",
  pangasinense: "pangasinense: monyeka",
  examples: [
  WordExample(tagalog: "May manika siya mula pagkabata.", ilocano: "Adda muniekana manipud kinaubingna.", pangasinense: "Walay monyeka to nen ugaw ni."),
  WordExample(tagalog: "Ang manika niya ay paborito niya.", ilocano: "Ti munieka na ket paborito na.", pangasinense: "So monyeka na ay paborito na."),
  ],
  ),

  Word(
  english: "dollar",
  tagalog: "tagalog: dolyar",
  ilocano: "ilocano: doliar",
  pangasinense: "pangasinense: dolyar",
  examples: [
  WordExample(tagalog: "May hawak silang dollar bill.", ilocano: "Adda iggemda a papel de banko a doliar.", pangasinense: "Walay sankaegnaan dan dolyar."),
  WordExample(tagalog: "Kailangan ko ng dolyar para sa bili.", ilocano: "Masapul ko ti doliar para iti gumatang.", pangasinense: "Kailangan ko ed dolyar para ed bili."),
  ],
  ),

  Word(
  english: "door",
  tagalog: "tagalog: pinto",
  ilocano: "ilocano: ridaw",
  pangasinense: "pangasinense: puerta",
  examples: [
  WordExample(tagalog: "Kumalabog ang pinto nang bumukas.", ilocano: "Nagkir-in ti ridaw idi malukatan.", pangasinense: "Nankigkig so puerta nen nilukasan."),
  WordExample(tagalog: "Sira na ang pinto ng bahay.", ilocano: "Nabangsit ti ridaw ti balay.", pangasinense: "Naluya na so puerta na balay."),
  ],
  ),

  Word(
  english: "doubt",
  tagalog: "tagalog: pagdududa",
  ilocano: "ilocano: panagduadua",
  pangasinense: "pangasinense: panduaruwa",
  examples: [
  WordExample(tagalog: "Damang-dama sa hangin ang pagdududa.", ilocano: "Say panduaruwa et nalikna ed dagem.", pangasinense: "Mapalpalasin ti panagduadua iti angin."),
  WordExample(tagalog: "May pagdududa ako sa kanyang sinasabi.", ilocano: "Adda panagduadua ko iti kinuna na.", pangasinense: "Agyaman ak ed panduaruwa ko ed sinasabi na."),
  ],
  ),

  Word(
  english: "dread",
  tagalog: "tagalog: takot",
  ilocano: "ilocano: panagbuteng",
  pangasinense: "pangasinense: baleg a takot",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng matinding takot.", ilocano: "Alikna toy baleg a takot.", pangasinense: "Nariknana ti dakkel a panagbuteng."),
  WordExample(tagalog: "Ang takot ay hindi dapat balewalain.", ilocano: "Ti takot ket saan nga ikaskasaba.", pangasinense: "So takot ay saan so iballiw."),
  ],
  ),

  Word(
  english: "dream",
  tagalog: "tagalog: panaginip",
  ilocano: "ilocano: kugip",
  pangasinense: "pangasinense: tagtagainep",
  examples: [
  WordExample(tagalog: "Matingkad at kakaiba ang panaginip.", ilocano: "Say kugip et mabilabilay tan nikadkaduma.", pangasinense: "Nabiag ken karkarna ti tagtagainep."),
  WordExample(tagalog: "Ang panaginip ay tila totoo.", ilocano: "Ti kugip ket kasla totoo.", pangasinense: "So tagtagainep ay kasla totoong yaari."),
  ],
  ),

  Word(
  english: "dress",
  tagalog: "tagalog: damit",
  ilocano: "ilocano: kawes",
  pangasinense: "pangasinense: kawes",
  examples: [
  WordExample(tagalog: "Napakaganda ng damit sa kanya.", ilocano: "Makapadinayew so kawes to.", pangasinense: "Nakaskasdaaw ti kawesna."),
  WordExample(tagalog: "Bumili siya ng bagong damit.", ilocano: "Naggumatang isuna ti baro a kawes.", pangasinense: "Naggumatang to ed baro a kawes."),
  ],
  ),

  Word(
  english: "drink",
  tagalog: "tagalog: inumin",
  ilocano: "ilocano: iinumen",
  pangasinense: "pangasinense: inumen",
  examples: [
  WordExample(tagalog: "Ang inumin ay nakakapreskong sa isang mainit na araw.", ilocano: "Makarepresko so iinumen ed ambetel ya agew.", pangasinense: "Makapabang-ar ti inumen iti napudot nga aldaw."),
  WordExample(tagalog: "Kailangan kong uminom ng tubig.", ilocano: "Masapul ko nga uminum ti danum.", pangasinense: "Kailangan ko ed inumen so danum."),
  ],
  ),

  Word(
  english: "drive",
  tagalog: "tagalog: magda-drive",
  ilocano: "ilocano: agmaneho",
  pangasinense: "pangasinense: manmaneho",
  examples: [
  WordExample(tagalog: "Sila ay magda-drive sa mga bundok.", ilocano: "Agmanehodanto nga agturong iti kabambantayan.", pangasinense: "Manmaneho ira ya anggad kapalandeyan."),
  WordExample(tagalog: "Kailangan mo ng lisensya para mag-drive.", ilocano: "Masapul mo ti lisensiya tapno makagmaneho.", pangasinense: "Kailangan mo ed lisensya para ed manmaneho."),
  ],
  ),

  Word(
  english: "drop",
  tagalog: "tagalog: patak",
  ilocano: "ilocano: tedter",
  pangasinense: "pangasinense: tedted",
  examples: [
  WordExample(tagalog: "Bumagsak ang patak ng ulan sa bintana.", ilocano: "Inmepas so tedter na uran ed bintana.", pangasinense: "Nagtinnag ti tedted ti tudo iti tawa."),
  WordExample(tagalog: "May patak ng tubig sa kanyang kamay.", ilocano: "Adda patak ti danum iti ima na.", pangasinense: "Adda tedted so danum ed ima na."),
  ],
  ),

  Word(
  english: "drown",
  tagalog: "tagalog: malulunod",
  ilocano: "ilocano: malner",
  pangasinense: "pangasinense: nalner",
  examples: [
  WordExample(tagalog: "Malulunod siya kung hindi siya matutong lumangoy.", ilocano: "Nalner no agto naaralan so manlangoy.", pangasinense: "Malemmes no dina sursuruen ti aglangoy."),
  WordExample(tagalog: "Maging maingat para hindi malulunod.", ilocano: "Agannad tapno saan nga malner.", pangasinense: "Mag-ingat ka so di ka maging nalner."),
  ],
  ),

  Word(
  english: "drug",
  tagalog: "tagalog: gamot",
  ilocano: "ilocano: agas",
  pangasinense: "pangasinense: tambal",
  examples: [
  WordExample(tagalog: "Ang gamot ay epektibo sa paggamot sa sakit.", ilocano: "Epektibo so tambal ed panagtambal na sakit.", pangasinense: "Epektibo ti agas iti panangagas iti sakit."),
  WordExample(tagalog: "Kailangan ng tamang gamot para sa sakit na ito.", ilocano: "Masapul ti wagas a gamot para iti daytoy a sakit.", pangasinense: "Kailangan so masamang agas para ed sakit na."),
  ],
  ),

  Word(
  english: "drum",
  tagalog: "tagalog: tambol",
  ilocano: "ilocano: tambol",
  pangasinense: "pangasinense: tambol",
  examples: [
  WordExample(tagalog: "Malakas ang pagtugtog ng tambol habang nagtatanghal.", ilocano: "Maksil so pitik na tambol legan na palabas.", pangasinense: "Napigsa ti panagpitik ti tambol bayat ti pabuya."),
  WordExample(tagalog: "Nagsasanay siyang tumugtog ng tambol.", ilocano: "Agnanayon isuna a tumugtog ti tambol.", pangasinense: "Ag-aaral to ed tumugtog ed tambol."),
  ],
  ),

  Word(
  english: "dry",
  tagalog: "tagalog: tuyo",
  ilocano: "ilocano: natuyo",
  pangasinense: "pangasinense: natuyo",
  examples: [
  WordExample(tagalog: "Malapit na ang tagtuyot.", ilocano: "Say panaoy ambetel et asingger la.", pangasinense: "Addan kadatayo ti panawen ti tikag."),
  WordExample(tagalog: "Kailangan nating uminom ng tubig sa tuyo na panahon.", ilocano: "Masapul tayo nga uminum ti danum iti natuyo a panawen.", pangasinense: "Kailangan tayu ed inumen so danum ed natuyo ya panahon."),
  ],
  ),

  Word(
  english: "duck",
  tagalog: "tagalog: pato",
  ilocano: "ilocano: pato",
  pangasinense: "pangasinense: pato",
  examples: [
  WordExample(tagalog: "Ang pato ay kumatok ng malakas.", ilocano: "Napigsa ti panagkullayaw ti pato.", pangasinense: "Maksil ya inmeyag so pato."),
  WordExample(tagalog: "May maraming pato sa lawa.", ilocano: "Adda adu a pato iti danum.", pangasinense: "Ado so pato ed lawa."),
  ],
  ),
  Word(
  english: "duplicate",
  tagalog: "tagalog: doblehin",
  ilocano: "ilocano: doblaan",
  pangasinense: "pangasinense: doblen",
  examples: [
  WordExample(tagalog: "Doblehin nila ang pagsisikap sa susunod.", ilocano: "Duplikarendanto ti panagregget iti sumaganad.", pangasinense: "Dobleen da so sagpot ed ontumbok."),
  WordExample(tagalog: "Kailangan nilang doblehin ang trabaho.", ilocano: "Masapul da nga i-doblar ti trabaho.", pangasinense: "Kailangan da so doblehen so trabaho."),
  ],
  ),

  Word(
  english: "dust",
  tagalog: "tagalog: alikabok",
  ilocano: "ilocano: buli",
  pangasinense: "pangasinense: dabok",
  examples: [
  WordExample(tagalog: "Natatakpan ng alikabok ang lahat ng nasa silid.", ilocano: "Inabbong ti buli ti amin nga adda iti siled.", pangasinense: "Asakbongan na dabok so amin ya walad kuarto."),
  WordExample(tagalog: "Kailangan nating linisin ang alikabok sa sahig.", ilocano: "Masapul tayo nga i-clean ti buli iti salog.", pangasinense: "Kailangan tayu so linisan so dabok ed salog."),
  ],
  ),

  Word(
  english: "duty",
  tagalog: "tagalog: tungkulin",
  ilocano: "ilocano: tungkulin",
  pangasinense: "pangasinense: duty",
  examples: [
  WordExample(tagalog: "Nakatanggap siya ng tungkulin sa trabaho.", ilocano: "Nakaawat iti duty assignment iti trabahona.", pangasinense: "Akaawat na duty assignment ed trabaho."),
  WordExample(tagalog: "Mahalaga ang tungkulin sa bawat tao.", ilocano: "Importante ti tungkulin para iti tunggal tao.", pangasinense: "Importante so duty ed kada tao."),
  ],
  ),

  Word(
  english: "dwarf",
  tagalog: "tagalog: duwende",
  ilocano: "ilocano: enano",
  pangasinense: "pangasinense: dwarf",
  examples: [
  WordExample(tagalog: "Kilala ang duwende sa kanyang lakas.", ilocano: "Pagaammo ti enano gapu iti pigsana.", pangasinense: "Kabkabat so dwarf ed biskeg to."),
  WordExample(tagalog: "Ang duwende ay may kakaibang kapangyarihan.", ilocano: "Ti enano ket adda kinalaing na.", pangasinense: "So dwarf ay may kakaibang kapangyarihan."),
  ],
  ),

  Word(
  english: "dwelling",
  tagalog: "tagalog: tirahan",
  ilocano: "ilocano: pagtaengan",
  pangasinense: "pangasinense: ayaman",
  examples: [
  WordExample(tagalog: "Maliit lang ang tirahan ngunit maaliwalas.", ilocano: "Bassit ngem nanam-ay ti pagtaengan.", pangasinense: "Melag so ayaman balet ta maabig."),
  WordExample(tagalog: "Ang tirahan niya ay napakaaliwalas.", ilocano: "Ti pagtaengan na ket napakaaliwalas.", pangasinense: "So ayaman na ay napakaaliwalas."),
  ],
  ),

  Word(
  english: "dye",
  tagalog: "tagalog: tina",
  ilocano: "ilocano: tina",
  pangasinense: "pangasinense: tina",
  examples: [
  WordExample(tagalog: "Kumuha siya ng dye para kulayan ang buhok niya.", ilocano: "Angala na tina pian koloran toy buek to.", pangasinense: "Nangala iti tina a pangkolor iti buokna."),
  WordExample(tagalog: "Gusto niyang palitan ang kulay ng kanyang buhok gamit ang tina.", ilocano: "Kayat na a saratan ti kulay ti buek na babaen ti tina.", pangasinense: "Gusto na ed palitan so kulay na buok gamit so tina."),
  ],
  ),

  Word(
  english: "dynamo",
  tagalog: "tagalog: dynamo",
  ilocano: "ilocano: dinamo",
  pangasinense: "pangasinense: dynamo",
  examples: [
  WordExample(tagalog: "Ang dynamo ay nakabuo ng kapangyarihan para sa gusali.", ilocano: "Ti dinamo ti nangpataud iti koriente para iti pasdek.", pangasinense: "Say dynamo so nanggawa na kuryente parad bilding."),
  WordExample(tagalog: "Ang dynamo ay mahalaga sa pagbibigay ng kuryente.", ilocano: "Ti dinamo ket importante iti panangikarga ti kuryente.", pangasinense: "Importante so dynamo ed paghahatid so kuryente."),
  ],
  ),

  Word(
  english: "eagle",
  tagalog: "tagalog: agila",
  ilocano: "ilocano: agila",
  pangasinense: "pangasinense: agila",
  examples: [
  WordExample(tagalog: "Ang agila ay pumailanglang mataas sa langit.", ilocano: "Nagngato ti agila iti tangatang.", pangasinense: "Say agila et tinmatdang ed tagey na katawenan."),
  WordExample(tagalog: "Kilalang simbolo ng kalayaan ang agila.", ilocano: "Ti agila ket kas simbolo ti kinapudno.", pangasinense: "So agila ay simbolo so kalayaan."),
  ],
  ),

  Word(
  english: "ear",
  tagalog: "tagalog: tainga",
  ilocano: "ilocano: layag",
  pangasinense: "pangasinense: layag",
  examples: [
  WordExample(tagalog: "Ang tainga ay isang sensitibong organ.", ilocano: "Say layag et sakey a sensitibon organo.", pangasinense: "Ang layag ay sensitibo nga organo."),
  WordExample(tagalog: "Kailangan nating pangalagaan ang ating tainga.", ilocano: "Masapul tayong agannad iti layag tayo.", pangasinense: "Kailangan tayu ed pagalagaan so layag tayo."),
  ],
  ),

  Word(
  english: "earthy",
  tagalog: "tagalog: makalupa",
  ilocano: "ilocano: naindagaan",
  pangasinense: "pangasinense: makalupang",
  examples: [
  WordExample(tagalog: "Nagbahagi sila ng isang makalupang koneksyon sa kalikasan.", ilocano: "Nagbibingayanda ti naindagaan a koneksion iti nakaparsuaan.", pangasinense: "Walay koneksion da ed kalikasan."),
  WordExample(tagalog: "Mahalaga ang pagkakaroon ng makalupang koneksyon.", ilocano: "Importante ti agiwaras ti naindagaan a koneksion.", pangasinense: "Importante so pag-aduan so makalupang koneksyon."),
  ],
  ),

  Word(
  english: "elixir",
  tagalog: "tagalog: elixir",
  ilocano: "ilocano: elixir",
  pangasinense: "pangasinense: elixir",
  examples: [
  WordExample(tagalog: "Ang elixir ay nagpagaling ng maraming karamdaman.", ilocano: "Say elixir et amaabig na dakel a sakit.", pangasinense: "Adu a sakit ti naimbagan ti elixir."),
  WordExample(tagalog: "Ang elixir ay mahalaga sa mga manggagamot.", ilocano: "Ti elixir ket importante iti dagiti doktor.", pangasinense: "Importante so elixir ed mga manggagamot."),
  ],
  ),

  Word(
  english: "elusive",
  tagalog: "tagalog: mailap",
  ilocano: "ilocano: di magaw-at",
  pangasinense: "pangasinense: mairap",
  examples: [
  WordExample(tagalog: "Mayroon silang mailap na layunin upang makamit.", ilocano: "Adda di magaw-at a kalatda a maragpat.", pangasinense: "Walay mairap dan nadampot ya kalat."),
  WordExample(tagalog: "Minsan mahirap maabot ang mga mailap na layunin.", ilocano: "Adda dagiti mailap a layunin a kasla saan nga maabot.", pangasinense: "Minsan abala so maabot so mailap ya layunin."),
  ],
  ),

  Word(
  english: "emblem",
  tagalog: "tagalog: sagisag",
  ilocano: "ilocano: emblema",
  pangasinense: "pangasinense: emblema",
  examples: [
  WordExample(tagalog: "Ang sagisag ay kumakatawan sa organisasyon.", ilocano: "Inrepresentar ti emblema ti organisasion.", pangasinense: "Say emblema et mangirerepresenta ed organisasyon."),
  WordExample(tagalog: "Mahalaga ang sagisag sa pagkilala ng grupo.", ilocano: "Importante ti emblema para iti panakaammo ti grupo.", pangasinense: "Importante so emblema ed pagkilala so grupo."),
  ],
  ),

  Word(
  english: "emotion",
  tagalog: "tagalog: emosyon",
  ilocano: "ilocano: emosion",
  pangasinense: "pangasinense: emosyon",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng emosyon sa pagsasalita.", ilocano: "Nariknana ti emosion iti panagbitla.", pangasinense: "Alikna toy emosyon ed samay paliwawa."),
  WordExample(tagalog: "Madalas ang emosyon ay nagpapakita ng tunay na nararamdaman.", ilocano: "Kadawyan, ti emosion ket mangipakita iti pudno a rikna.", pangasinense: "Kadawyan, so emosyon ay nagpapakita so tunay na nararamdaman."),
  ],
  ),

  Word(
  english: "empire",
  tagalog: "tagalog: imperyo",
  ilocano: "ilocano: imperio",
  pangasinense: "pangasinense: empiryo",
  examples: [
  WordExample(tagalog: "Ang imperyo ay malawak at makapangyarihan.", ilocano: "Nalawa ken nabileg ti imperio.", pangasinense: "Baleg tan makapanyari so empiryo."),
  WordExample(tagalog: "Minsan ang imperyo ay nagiging dahilan ng digmaan.", ilocano: "Sakbay ti imperyo ket agbalin a rason ti giyera.", pangasinense: "Minsan so empiryo ay nagiging dahilan so giyera."),
  ],
  ),

  Word(
  english: "enigma",
  tagalog: "tagalog: enigma",
  ilocano: "ilocano: enigma",
  pangasinense: "pangasinense: enigma",
  examples: [
  WordExample(tagalog: "Ang enigma ay naguguluhan sa mga mananaliksik.", ilocano: "Ti enigma ti nangriro kadagiti managsirarak.", pangasinense: "Say enigma so amabigla ed saray managsukimat."),
  WordExample(tagalog: "Maraming enigma ang kailangang lutasin.", ilocano: "Adu a enigma ti masapul a masolbar.", pangasinense: "Ado enigma so kailangan a sarangton."),
  ],
  ),

  Word(
  english: "energy",
  tagalog: "tagalog: enerhiya",
  ilocano: "ilocano: likna",
  pangasinense: "pangasinense: liknaan",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang malakas na pakiramdam ng enerhiya.", ilocano: "Napigsa ti riknana iti pigsa.", pangasinense: "Sikatoy walaan na mabiskeg a liknaan na biskeg."),
  WordExample(tagalog: "Ang enerhiya ay mahalaga sa ating pang-araw-araw na buhay.", ilocano: "Ti enerhiya ket importante iti aldaw-aldao a biag tayo.", pangasinense: "Importante so enerhiya ed ating pang-araw-araw ya biag."),
  ],
  ),

  Word(
  english: "engine",
  tagalog: "tagalog: makina",
  ilocano: "ilocano: makina",
  pangasinense: "pangasinense: makina",
  examples: [
  WordExample(tagalog: "Buhay na umugong ang makina.", ilocano: "Inmeyag so makina.", pangasinense: "Nagngaretnget ti makina a sibibiag."),
  WordExample(tagalog: "Ang makina ay ang puso ng sasakyan.", ilocano: "Ti makina ket ti pusong ti lugan.", pangasinense: "So makina ay pusong so sasakyan."),
  ],
  ),

  Word(
  english: "enhance",
  tagalog: "tagalog: pinahusay",
  ilocano: "ilocano: napasayaat",
  pangasinense: "pangasinense: pinaaligwas",
  examples: [
  WordExample(tagalog: "Ang pinahusay na mga tampok ay naging mas madaling gamitin.", ilocano: "Dagiti napasayaat a feature ti namagbalin iti dayta a nalaklaka nga usaren.", pangasinense: "Lapud pinaaligwas iran features, mas mainomay ya usaren."),
  WordExample(tagalog: "Ang pag-enhance ng kalidad ay mahalaga.", ilocano: "Ti panangpasayaat ti kalidad ket importante.", pangasinense: "Importante so pagpinahusay so kalidad."),
  ],
  ),
  Word(
  english: "enjoyment",
  tagalog: "tagalog: kasiyahan",
  ilocano: "ilocano: ragsak",
  pangasinense: "pangasinense: panliket",
  examples: [
  WordExample(tagalog: "Nakaramdam sila ng kasiyahan sa kanilang trabaho.", ilocano: "Nariknada ti rikna ti ragsak iti trabahoda.", pangasinense: "Nalikna ra so panliket ed kimey da."),
  WordExample(tagalog: "Ang kasiyahan ay mahalaga sa bawat tao.", ilocano: "Ti ragsak ket napateg para iti tunggal tao.", pangasinense: "Importante so kasiyahan ed kada tao."),
  ],
  ),

  Word(
  english: "envelope",
  tagalog: "tagalog: sobre",
  ilocano: "ilocano: sobre",
  pangasinense: "pangasinense: sobre",
  examples: [
  WordExample(tagalog: "Ang sobre ay naglalaman ng mahahalagang dokumento.", ilocano: "Naglaon ti sobre kadagiti napateg a dokumento.", pangasinense: "Wala ray importantin dokumento ed samay sobre."),
  WordExample(tagalog: "Ilagay mo ang liham sa sobre.", ilocano: "Isukotmo ti surat iti sobre.", pangasinense: "Ilagay mo so liham ed sobre."),
  ],
  ),

  Word(
  english: "epic",
  tagalog: "tagalog: epiko",
  ilocano: "ilocano: epiko",
  pangasinense: "pangasinense: epiko",
  examples: [
  WordExample(tagalog: "Ang epikong kuwento ay mahusay na sinabi.", ilocano: "Nasayaat ti pannakaisalaysay ti epiko nga estoria.", pangasinense: "Say epikon istorya et maong ya insalaysay."),
  WordExample(tagalog: "Ang mga epiko ay bahagi ng kulturang Pilipino.", ilocano: "Dagiti epiko ket paset ti kulturana Pilipino.", pangasinense: "A parte so epiko ed kultura so Pilipino."),
  ],
  ),

  Word(
  english: "era",
  tagalog: "tagalog: panahon",
  ilocano: "ilocano: panawen",
  pangasinense: "pangasinense: panaon",
  examples: [
  WordExample(tagalog: "Binago ng panahon ng teknolohiya ang lipunan.", ilocano: "Binalbaliwan ti panawen ti teknolohia ti kagimongan.", pangasinense: "Say panaon na teknolohiya so anguman ed sosyedad."),
  WordExample(tagalog: "Ang bagong panahon ay nagdala ng pagbabago.", ilocano: "Ti baro a panawen ket nangited ti panagbaliw.", pangasinense: "Say bagong panaon ay nagdala so pagbabago."),
  ],
  ),

  Word(
  english: "enthusiasm",
  tagalog: "tagalog: sigasig",
  ilocano: "ilocano: kinagagar",
  pangasinense: "pangasinense: entusiasmo",
  examples: [
  WordExample(tagalog: "Nagpakita siya ng labis na sigasig para sa kanyang trabaho.", ilocano: "Adu ti impakitana a kinagagar iti trabahona.", pangasinense: "Impanengneng toy baleg ya entusiasmo ed trabaho to."),
  WordExample(tagalog: "Ang sigasig ay nagdudulot ng tagumpay.", ilocano: "Ti sigasig ket mangidudulot ti panagbalin a napudno.", pangasinense: "Importante so entusiasmo ed pagtawid so tagumpay."),
  ],
  ),

  Word(
  english: "environment",
  tagalog: "tagalog: kapaligiran",
  ilocano: "ilocano: aglawlaw",
  pangasinense: "pangasinense: kaliberliber",
  examples: [
  WordExample(tagalog: "Mahalagang protektahan ang kapaligiran.", ilocano: "Napateg a salakniban ti aglawlaw.", pangasinense: "Importante ya protektaan so kaliberliber."),
  WordExample(tagalog: "Dapat tayong magtulungan para sa kapaligiran.", ilocano: "Masapul nga agtutulungan tayo para iti aglawlaw.", pangasinense: "Dapat tayu ed magtulungan para ed kaliberliber."),
  ],
  ),

  Word(
  english: "equity",
  tagalog: "tagalog: katarungan",
  ilocano: "ilocano: kinapareho",
  pangasinense: "pangasinense: inkaparpareho",
  examples: [
  WordExample(tagalog: "Nadama niya ang isang pakiramdam ng katarungan sa lugar ng trabaho.", ilocano: "Nalikna toy inkaparpareho ed pantratrabahoan.", pangasinense: "Nariknana ti rikna ti kinapatas iti pagtrabahuan."),
  WordExample(tagalog: "Mahalaga ang katarungan sa lipunan.", ilocano: "Napateg ti katarungan iti sosyedad.", pangasinense: "Importante so katarungan ed sosyedad."),
  ],
  ),

  Word(
  english: "error",
  tagalog: "tagalog: error",
  ilocano: "ilocano: biddut",
  pangasinense: "pangasinense: lingo",
  examples: [
  WordExample(tagalog: "Mabilis na naitama ang error.", ilocano: "Napardas a nailinteg ti biddut.", pangasinense: "Maples ya nipetek so lingo."),
  WordExample(tagalog: "Ang error ay dapat agad ituwid.", ilocano: "Ti biddut ket masapul a maikorreher kadagiti uneg.", pangasinense: "Importante so error ed mapaliwanan."),
  ],
  ),

  Word(
  english: "escape",
  tagalog: "tagalog: pagtakas",
  ilocano: "ilocano: panaglibas",
  pangasinense: "pangasinense: itakas",
  examples: [
  WordExample(tagalog: "Ang pagtakas ay mahusay na binalak.", ilocano: "Nasayaat ti pannakaiplano ti panaglibas.", pangasinense: "Say itakas da et implanon maong."),
  WordExample(tagalog: "Planuhin mo ang iyong pagtakas.", ilocano: "Iplano ti panaglibas mo.", pangasinense: "I-plano so itakas mo."),
  ],
  ),

  Word(
  english: "essence",
  tagalog: "tagalog: diwa",
  ilocano: "ilocano: kabaliksan",
  pangasinense: "pangasinense: kabaliksan",
  examples: [
  WordExample(tagalog: "Malinaw ang diwa ng mensahe.", ilocano: "Nalawag ti esensia ti mensahe.", pangasinense: "Malinew so kabaliksan na mensahe."),
  WordExample(tagalog: "Ang diwa ng kasaysayan ay mahalaga.", ilocano: "Ti kabaliksan ti kasaysayan ket napateg.", pangasinense: "Importante so kabaliksan ed kasaysayan."),
  ],
  ),

  Word(
  english: "establishment",
  tagalog: "tagalog: pagtatatag",
  ilocano: "ilocano: establisyemento",
  pangasinense: "pangasinense: establisimiento",
  examples: [
  WordExample(tagalog: "Ang pagtatatag ay isang sikat na lugar.", ilocano: "Nalatak a lugar ti establisimiento.", pangasinense: "Say establisyemento et sakey a sikat a pasen."),
  WordExample(tagalog: "Ang pagtatatag ng negosyo ay hindi madali.", ilocano: "Ti panagtatatag ti negosyo ket saan a nalaka.", pangasinense: "So pagtatatag so negosyo ay bisi ya gawan."),
  ],
  ),

  Word(
  english: "etiquette",
  tagalog: "tagalog: kagandahang-asal",
  ilocano: "ilocano: etiketa",
  pangasinense: "pangasinense: etiketa",
  examples: [
  WordExample(tagalog: "Siya ay may isang mahusay na pakiramdam ng kagandahang-asal.", ilocano: "Dakkel ti riknana iti etiquette.", pangasinense: "Sikatoy walaan na baleg a pakatebek ed etiketa."),
  WordExample(tagalog: "Mahalaga ang etiquette sa mga pormal na okasyon.", ilocano: "Napateg ti etiketa iti formal a okasyon.", pangasinense: "Importante so etiketa ed mga pormal na okasyon."),
  ],
  ),

  Word(
  english: "eulogy",
  tagalog: "tagalog: eulogy",
  ilocano: "ilocano: eulogy",
  pangasinense: "pangasinense: eulogy",
  examples: [
  WordExample(tagalog: "Ang eulogy ay taos-puso at taos-puso.", ilocano: "Naimpusuan ken napasnek ti eulogy.", pangasinense: "Say eulogy et impapuso tan masimoon."),
  WordExample(tagalog: "Nagsalita siya ng eulogy para sa kanyang kaibigan.", ilocano: "Nagsao isuna ti eulogy para iti kaibigan na.", pangasinense: "Nagsalita so eulogy para ed kamey na."),
  ],
  ),

  Word(
  english: "evaluate",
  tagalog: "tagalog: suriin",
  ilocano: "ilocano: ebalwar",
  pangasinense: "pangasinense: e-evaluate",
  examples: [
  WordExample(tagalog: "Susuriin nila ang mga resulta bukas.", ilocano: "I-evaluate-da ti resulta inton bigat.", pangasinense: "I-ebalwar da so resulta nabuas."),
  WordExample(tagalog: "Kailangan nating suriin ang sitwasyon.", ilocano: "Masapul nga ebalwar ti sitwasyon.", pangasinense: "Importante so pag-evaluate so sitwasyon."),
  ],
  ),

  Word(
  english: "evening",
  tagalog: "tagalog: gabi",
  ilocano: "ilocano: rabii",
  pangasinense: "pangasinense: labi",
  examples: [
  WordExample(tagalog: "Masaya at malamig ang gabi.", ilocano: "Makaay-ayo ken nalamiis ti rabii.", pangasinense: "Makapaliket tan ambetel so labi."),
  WordExample(tagalog: "Gabi na at tayo'y uuwi na.", ilocano: "Rabii met ken agawid tayo.", pangasinense: "Labi na so tayo'y uuwi."),
  ],
  ),
  Word(
  english: "event",
  tagalog: "tagalog: kaganapan",
  ilocano: "ilocano: nasao nga aktibidad",
  pangasinense: "pangasinense: ebento",
  examples: [
  WordExample(tagalog: "Naging matagumpay ang kaganapan.", ilocano: "Nagballigi ti nasao nga aktibidad.", pangasinense: "Matalona so ebento."),
  WordExample(tagalog: "Ang kaganapan ay puno ng kasiyahan.", ilocano: "Ti kaganapan ket napno ti ragsak.", pangasinense: "So kaganapan ay puno so kasiyahan."),
  ],
  ),

  Word(
  english: "evidence",
  tagalog: "tagalog: ebidensya",
  ilocano: "ilocano: ebidensia",
  pangasinense: "pangasinense: ebidensya",
  examples: [
  WordExample(tagalog: "Ang ebidensya ay mapilit sa korte.", ilocano: "Makapilit ti ebidensia iti korte.", pangasinense: "Say ebidensya et makapasagyat ed korte."),
  WordExample(tagalog: "Ang ebidensya ay nagbibigay liwanag sa kaso.", ilocano: "Ti ebidensia ket mangited ti lawlawag iti kaso.", pangasinense: "Ang ebidensya ay nagtutulong sa kasong ito."),
  ],
  ),

  Word(
  english: "excitement",
  tagalog: "tagalog: excitement",
  ilocano: "ilocano: ragsak",
  pangasinense: "pangasinense: eksaytment",
  examples: [
  WordExample(tagalog: "Nakaramdam sila ng matinding excitement para sa palabas.", ilocano: "Nariknada ti dakkel a ragsak para iti pabuya.", pangasinense: "Alikna ra so baleg ya eksaytment parad palabas."),
  WordExample(tagalog: "Ang excitement ng mga bata ay kapansin-pansin.", ilocano: "Ti excitement dagiti ubbing ket makapansin.", pangasinense: "Kapansin-pansin so excitement so mga ubbing."),
  ],
  ),

  Word(
  english: "execute",
  tagalog: "tagalog: maisakatuparan",
  ilocano: "ilocano: ipatungpal",
  pangasinense: "pangasinense: gawaen",
  examples: [
  WordExample(tagalog: "Kailangan niyang maisakatuparan ang plano nang perpekto.", ilocano: "Masapul nga ipatungpalna a naan-anay ti plano.", pangasinense: "Kaukolan ton gawaen ya perpekto so plano to."),
  WordExample(tagalog: "Mahalaga ang tamang pag-execute ng proyekto.", ilocano: "Napateg ti umiso a pannakapatungpal ti proyekto.", pangasinense: "Importante so tama so pag-gawa so proyekto."),
  ],
  ),

  Word(
  english: "exhaust",
  tagalog: "tagalog: tambutso",
  ilocano: "ilocano: tambutso",
  pangasinense: "pangasinense: tambutso",
  examples: [
  WordExample(tagalog: "Malakas ang tambutso sa sasakyan.", ilocano: "Napigsa ti tambutso iti lugan.", pangasinense: "Maksil so tambutso na kotse."),
  WordExample(tagalog: "Ang tambutso ay nangangailangan ng pagsasaayos.", ilocano: "Ti tambutso ket agkasapulan ti aywan.", pangasinense: "So tambutso ay kinahanglan ed aywanan."),
  ],
  ),

  Word(
  english: "exhibit",
  tagalog: "tagalog: eksibit",
  ilocano: "ilocano: eksibit",
  pangasinense: "pangasinense: eksibit",
  examples: [
  WordExample(tagalog: "Ang eksibit ay kaakit-akit na makita.", ilocano: "Makaay-ayo a makita ti eksibit.", pangasinense: "Makapainteres ya nengnengen so eksibit."),
  WordExample(tagalog: "Nagkaroon ng bagong eksibit sa museo.", ilocano: "Adda baro a eksibit iti museo.", pangasinense: "Alao so bagong eksibit ed museo."),
  ],
  ),

  Word(
  english: "fable",
  tagalog: "tagalog: pabula",
  ilocano: "ilocano: sarsarita",
  pangasinense: "pangasinense: pabula",
  examples: [
  WordExample(tagalog: "Mayroon silang pabula na ibabahagi sa mga bata.", ilocano: "Adda sarsaritada nga ibinglay kadagiti ubbing.", pangasinense: "Walay sakey a pabula ya labay dan inabang ed saray ugugaw."),
  WordExample(tagalog: "Ang pabula ay may mahalagang aral.", ilocano: "Ti pabula ket adda napateg a leksion.", pangasinense: "Importante so aral so pabula."),
  ],
  ),

  Word(
  english: "fabric",
  tagalog: "tagalog: tela",
  ilocano: "ilocano: tela",
  pangasinense: "pangasinense: tela",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng tela na damit sa party.", ilocano: "Nakasuot iti tela a bado a napan iti party.", pangasinense: "Nansulong na tela ya kawes ed party."),
  WordExample(tagalog: "Ang tela ay dapat malinis.", ilocano: "Ti tela ket masapul a naurnos.", pangasinense: "Importante so tela ya nalinis."),
  ],
  ),

  Word(
  english: "fact",
  tagalog: "tagalog: katotohanan",
  ilocano: "ilocano: kinapudno",
  pangasinense: "pangasinense: katuaan",
  examples: [
  WordExample(tagalog: "Ang katotohanan ng bagay ay simple.", ilocano: "Simple laeng ti kinapudno ti banag.", pangasinense: "Say katuaan na pamaakaran et simpli."),
  WordExample(tagalog: "Ang mga katotohanan ay mahalaga sa pagpili.", ilocano: "Dagiti katotohanan ket napateg iti panagpili.", pangasinense: "Importante so mga katuaan ed pamili."),
  ],
  ),

  Word(
  english: "faith",
  tagalog: "tagalog: pananampalataya",
  ilocano: "ilocano: pammati",
  pangasinense: "pangasinense: pananisia",
  examples: [
  WordExample(tagalog: "Nakaramdam ako ng matinding pananampalataya.", ilocano: "Mariknak ti napigsa a rikna ti pammati.", pangasinense: "Naliliknak so mabiskeg a pananisia."),
  WordExample(tagalog: "Ang pananampalataya ay nagbibigay ng lakas.", ilocano: "Ti pammati ket mangited ti pateg.", pangasinense: "Ang pananisia ay nagtutulong sa pag-asenso."),
  ],
  ),

  Word(
  english: "fall",
  tagalog: "tagalog: pagbagsak",
  ilocano: "ilocano: pannakatnag",
  pangasinense: "pangasinense: inkagba",
  examples: [
  WordExample(tagalog: "Ang pagbagsak ay biglaan at hindi inaasahan.", ilocano: "Kellaat ken di ninamnama ti pannakatnag.", pangasinense: "Bigla tan ag-inilaloan so inkagba to."),
  WordExample(tagalog: "Ang pagbagsak ng ekonomiya ay nagdulot ng krisis.", ilocano: "Ti pannakatnag ti ekonomiya ket nagbalin a krisis.", pangasinense: "So pagbagsak na ekonomiya ay nagdulot so krisis."),
  ],
  ),

  Word(
  english: "fame",
  tagalog: "tagalog: kasikatan",
  ilocano: "ilocano: inkabantog",
  pangasinense: "pangasinense: kinalatak",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng kasikatan pagkatapos ng palabas.", ilocano: "Nariknana ti rikna ti kinalatak kalpasan ti pabuya.", pangasinense: "Alikna toy inkabantog kayari na palabas."),
  WordExample(tagalog: "Ang kasikatan ay may mga sakripisyo.", ilocano: "Ti kasikatan ket adda dagiti sakripisyo.", pangasinense: "So kasikatan ay may mga sakripisyo."),
  ],
  ),

  Word(
  english: "family",
  tagalog: "tagalog: pamilya",
  ilocano: "ilocano: pamilia",
  pangasinense: "pangasinense: pamilya",
  examples: [
  WordExample(tagalog: "Mahalaga sa kanya ang pamilya.", ilocano: "Napateg kenkuana ti pamilia.", pangasinense: "Importante ed sikato so pamilya."),
  WordExample(tagalog: "Ang pamilya ay nagbibigay ng suporta.", ilocano: "Ti pamilia ket mangited ti suporta.", pangasinense: "So pamilya ay nagtutulong ed suporta."),
  ],
  ),

  Word(
  english: "fan",
  tagalog: "tagalog: bentilador",
  ilocano: "ilocano: bentilador",
  pangasinense: "pangasinense: bentilador",
  examples: [
  WordExample(tagalog: "Mahina ang pag-inog ng fan sa background.", ilocano: "Nalamuyot ti panagwingiwing ti bentilador iti likudan.", pangasinense: "Say bentilador so nan-ingal ya maalwar ed beneg."),
  WordExample(tagalog: "Ang bentilador ay nakatulong sa init.", ilocano: "Ti bentilador ket nakatulong iti init.", pangasinense: "So bentilador ay nakatulong ed init."),
  ],
  ),

  Word(
  english: "farm",
  tagalog: "tagalog: lupa",
  ilocano: "ilocano: daga",
  pangasinense: "pangasinense: dalin",
  examples: [
  WordExample(tagalog: "Aayusin nila ang lupa para sa mga pananim.", ilocano: "Mantanem ira na dalin parad saray tanaman.", pangasinense: "Talonendanto ti daga a pagmulaan."),
  WordExample(tagalog: "Ang lupa ay mahalaga para sa mga ani.", ilocano: "Ti daga ket napateg para kadagiti ani.", pangasinense: "Importante so daga ed pang-ani."),
  ],
  ),

  Word(
  english: "farmer",
  tagalog: "tagalog: magsasaka",
  ilocano: "ilocano: mannalon",
  pangasinense: "pangasinense: mannalon",
  examples: [
  WordExample(tagalog: "Inaalagaan ng magsasaka ang kanyang mga bukid.", ilocano: "Inaywanan ti mannalon dagiti talonna.", pangasinense: "Inasikaso na dumaralos iray uma to."),
  WordExample(tagalog: "Ang mga magsasaka ay nagtatanim ng mga pananim.", ilocano: "Dagiti mannalon ket agtatanim dagiti tanaman.", pangasinense: "So mga mannalon ay nagtatanim so mga pananim."),
  ],
  ),

  Word(
  english: "faucet",
  tagalog: "tagalog: gripo",
  ilocano: "ilocano: gripo",
  pangasinense: "pangasinense: gripo",
  examples: [
  WordExample(tagalog: "Ang gripo ay tumagas buong gabi.", ilocano: "Nagmalmalem a nagruar ti gripo.", pangasinense: "Nan-agus so gripo ed interon labi."),
  WordExample(tagalog: "Ang gripo ay nangangailangan ng pagkukumpuni.", ilocano: "Ti gripo ket agkasapulan ti aywan.", pangasinense: "So gripo ay kinahanglan ed aywanan."),
  ],
  ),

  Word(
  english: "fear",
  tagalog: "tagalog: takot",
  ilocano: "ilocano: buteng",
  pangasinense: "pangasinense: buteng",
  examples: [
  WordExample(tagalog: "Labis ang takot sa sandaling iyon.", ilocano: "Nalapunos ti buteng iti dayta a kanito.", pangasinense: "Say takot so alablabas ed saman a bekta."),
  WordExample(tagalog: "Ang takot ay isang normal na reaksyon.", ilocano: "Ti buteng ket normal a reaksyon.", pangasinense: "So buteng ay normal a reaksyon."),
  ],
  ),

  Word(
  english: "feast",
  tagalog: "tagalog: piging",
  ilocano: "ilocano: padaya",
  pangasinense: "pangasinense: ponsia",
  examples: [
  WordExample(tagalog: "Sagana at masarap ang piging.", ilocano: "Nawadwad ken naimas ti padaya.", pangasinense: "Daakan tan mananam so ponsia."),
  WordExample(tagalog: "Ang piging ay puno ng masasarap na pagkain.", ilocano: "Ti padaya ket napno dagiti naimas a makan.", pangasinense: "So ponsia ay puno so masasarap na pagkain."),
  ],
  ),

  Word(
  english: "feeling",
  tagalog: "tagalog: liknaan",
  ilocano: "ilocano: rikna",
  pangasinense: "pangasinense: liknaan",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng saya.", ilocano: "Adda riknana a ragsak.", pangasinense: "Walay liknaan ton liket."),
  WordExample(tagalog: "Ang liknaan ng pagmamahal ay mahalaga.", ilocano: "Ti likna ti ayat ket napateg.", pangasinense: "Importante so liknaan na pagmamahal."),
  ],
  ),
  Word(
  english: "feather",
  tagalog: "tagalog: balahibo",
  ilocano: "ilocano: dutdot",
  pangasinense: "pangasinense: maong",
  examples: [
  WordExample(tagalog: "Malumanay na lumutang ang balahibo sa lupa.", ilocano: "Say bago et linmugan a maong ed dalin.", pangasinense: "Siaannad a naglugan ti dutdot iti daga."),
  WordExample(tagalog: "Ang balahibo ay napakagaan.", ilocano: "Ti dutdot ket napakagaan.", pangasinense: "Maanay so maong."),
  ],
  ),

  Word(
  english: "feature",
  tagalog: "tagalog: tampok",
  ilocano: "ilocano: feature",
  pangasinense: "pangasinense: feature",
  examples: [
  WordExample(tagalog: "Ang tampok ng telepono ay kahanga-hanga.", ilocano: "Makapadinayew so feature na telepono.", pangasinense: "Makaay-ayo ti feature ti telepono."),
  WordExample(tagalog: "Ang mga tampok ng bagong modelo ay napakahusay.", ilocano: "Dagiti feature ti baro a modelo ket naimbag.", pangasinense: "Say mga feature na bagong modelo ay nainam."),
  ],
  ),

  Word(
  english: "fence",
  tagalog: "tagalog: bakod",
  ilocano: "ilocano: alad",
  pangasinense: "pangasinense: alad",
  examples: [
  WordExample(tagalog: "Napapaligiran ng bakod ang bakuran.", ilocano: "Say alad so akapaliber ed sular.", pangasinense: "Ti alad ti nanglikmut iti paraangan."),
  WordExample(tagalog: "Ang bakod ay gawa sa kahoy.", ilocano: "Ti alad ket naaramid iti kahoy.", pangasinense: "So alad et gawad ed kayu."),
  ],
  ),

  Word(
  english: "ferry",
  tagalog: "tagalog: lantsa",
  ilocano: "ilocano: lantsa",
  pangasinense: "pangasinense: lantsa",
  examples: [
  WordExample(tagalog: "Sumakay sila ng lantsa sa kabila ng ilog.", ilocano: "Linmugan ira ed lantsa ya binmaliw ed ilog.", pangasinense: "Nagluganda iti lantsa a bimmallasiw iti karayan."),
  WordExample(tagalog: "Mabilis ang biyahe ng lantsa.", ilocano: "Napigsa ti biyahe ti lantsa.", pangasinense: "Mabilis so biyahe na lantsa."),
  ],
  ),

  Word(
  english: "field",
  tagalog: "tagalog: field",
  ilocano: "ilocano: talon",
  pangasinense: "pangasinense: uma",
  examples: [
  WordExample(tagalog: "Puno ng mga bulaklak ang field.", ilocano: "Say uma et napno na saray rosas.", pangasinense: "Napno ti talon kadagiti sabong."),
  WordExample(tagalog: "Ang field ay malawak at berde.", ilocano: "Ti field ket nalawag ken nalaglagip.", pangasinense: "So uma ay dakkel tan berde."),
  ],
  ),

  Word(
  english: "fighter",
  tagalog: "tagalog: manlalaban",
  ilocano: "ilocano: mibabakal",
  pangasinense: "pangasinense: mannakigubat",
  examples: [
  WordExample(tagalog: "Siya ay isang manlalaban para sa hustisya.", ilocano: "Sikatoy mibabakal parad hustisya.", pangasinense: "Isu ket mannakigubat iti hustisia."),
  WordExample(tagalog: "Ang mga manlalaban ay nagkaisa.", ilocano: "Nagkikinnabag dagiti mannalaban.", pangasinense: "Nagkaisa so mga mannakigubat."),
  ],
  ),

  Word(
  english: "figure",
  tagalog: "tagalog: pigura",
  ilocano: "ilocano: pigura",
  pangasinense: "pangasinense: pigura",
  examples: [
  WordExample(tagalog: "Ang pigura ay mahirap makita sa dilim.", ilocano: "Mairap ya nanengneng so pigura ed ambilunget.", pangasinense: "Narigat a makita ti pigura iti kasipngetan."),
  WordExample(tagalog: "Nakita ko ang pigura sa likod ng usok.", ilocano: "Nakitak ti pigura iti likudan ti usok.", pangasinense: "Nakita ya pigura ed laing na usok."),
  ],
  ),

  Word(
  english: "file",
  tagalog: "tagalog: file",
  ilocano: "ilocano: file",
  pangasinense: "pangasinense: file",
  examples: [
  WordExample(tagalog: "Matagumpay na na-save ang file.", ilocano: "Matalonan aka-save so file.", pangasinense: "Naballigi a naidulin ti file."),
  WordExample(tagalog: "Ang file ay may maraming impormasyon.", ilocano: "Ti file ket adu dagiti impormasyon.", pangasinense: "Say file ay adu so impormasyon."),
  ],
  ),

  Word(
  english: "fill in the blank",
  tagalog: "tagalog: punan sa blangko",
  ilocano: "ilocano: punno",
  pangasinense: "pangasinense: panangpunno",
  examples: [
  WordExample(tagalog: "Tama ang punan sa blangko.", ilocano: "Say insulat ed blangko et duga.", pangasinense: "Umiso ti panangpunno iti blangko."),
  WordExample(tagalog: "Kailangan punan ang mga blangko sa pagsusulit.", ilocano: "Masapul a punno dagiti blangko iti eksamin.", pangasinense: "Kaukolan ton punuandan so blangko ed eksamin."),
  ],
  ),

  Word(
  english: "fill",
  tagalog: "tagalog: punuin",
  ilocano: "ilocano: punno",
  pangasinense: "pangasinense: punnuen",
  examples: [
  WordExample(tagalog: "Gustung-gusto niyang punuin ng mga bulaklak ang kanyang hardin.", ilocano: "Labalabay ton panoen so hardin to na saray rosas.", pangasinense: "Pagay-ayatna a punnuen ti hardinna kadagiti sabong."),
  WordExample(tagalog: "Punuin mo ang baso ng tubig.", ilocano: "Punnoem ti baso ti danum.", pangasinense: "Punuan mo so baso na danum."),
  ],
  ),

  Word(
  english: "finality",
  tagalog: "tagalog: wakas",
  ilocano: "ilocano: pinalidad",
  pangasinense: "pangasinense: pinalidad",
  examples: [
  WordExample(tagalog: "Nadama nila ang isang malakas na wakas pagkatapos ng kasunduan.", ilocano: "Nalikna ra so mabiskeg a sampot kayari na impipaknaan.", pangasinense: "Nariknada ti napigsa a pinalidad kalpasan ti katulagan."),
  WordExample(tagalog: "Ang wakas ay hindi na maaring baligtarin.", ilocano: "Ti wakas ket di mabalin a baligtarin.", pangasinense: "Say pinalidad ay di makabalik."),
  ],
  ),

  Word(
  english: "finger",
  tagalog: "tagalog: daliri",
  ilocano: "ilocano: ramay",
  pangasinense: "pangasinense: gamegamet",
  examples: [
  WordExample(tagalog: "Nasugatan ang daliri sa laro.", ilocano: "Asugat so gamegamet to legan na galaw.", pangasinense: "Nasugatan ti ramay bayat ti ay-ayam."),
  WordExample(tagalog: "Ang daliri ay kailangan sa pagsusulat.", ilocano: "Ti daliri ket masapul iti panagsurat.", pangasinense: "So daliri ay kailangan ed panagsurat."),
  ],
  ),

  Word(
  english: "fire",
  tagalog: "tagalog: apoy",
  ilocano: "ilocano: apuy",
  pangasinense: "pangasinense: apuy",
  examples: [
  WordExample(tagalog: "Ang apoy ay mainit at nakakaakit.", ilocano: "Say apoy et makapal tan makapasagyat.", pangasinense: "Nabara ken makaawis ti apuy."),
  WordExample(tagalog: "Dapat iwasan ang apoy sa gubat.", ilocano: "Masapul a liklikan ti apoy iti kagudua.", pangasinense: "Kinahanglan liknawan so apoy ed gubat."),
  ],
  ),

  Word(
  english: "firmness",
  tagalog: "tagalog: katatagan",
  ilocano: "ilocano: kinatibker",
  pangasinense: "pangasinense: katatagan",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng katatagan sa kanyang desisyon.", ilocano: "Alikna toy inkapekder ed desisyon to.", pangasinense: "Nariknana ti kinatibker iti pangngeddengna."),
  WordExample(tagalog: "Ang katatagan ay mahalaga sa mga desisyon.", ilocano: "Ti katatagan ket napateg iti desisyon.", pangasinense: "Importante so katatagan ed desisyon."),
  ],
  ),

  Word(
  english: "fish",
  tagalog: "tagalog: isda",
  ilocano: "ilocano: ikan",
  pangasinense: "pangasinense: ikan",
  examples: [
  WordExample(tagalog: "Maganda ang paglangoy ng isda sa tubig.", ilocano: "Say sira et nanlangoy a maong ed danum.", pangasinense: "Naragsak ti panaglangoy dagiti ikan iti danum."),
  WordExample(tagalog: "Ang mga isda ay naglalaro sa lawa.", ilocano: "Dagiti ikan ket agay-ayam iti danum.", pangasinense: "Say mga ikan ay nagay-ayam ed lawang."),
  ],
  ),

  Word(
  english: "fix",
  tagalog: "tagalog: ayusin",
  ilocano: "ilocano: ayosen",
  pangasinense: "pangasinense: tampol",
  examples: [
  WordExample(tagalog: "Aayusin nila kaagad ang problema.", ilocano: "Ayosen dan tampol so problema.", pangasinense: "Dagus nga ilintegda ti parikut."),
  WordExample(tagalog: "Kailangan ayusin ang mga sirang kagamitan.", ilocano: "Masapul a ayosen dagiti nakasaganan.", pangasinense: "Kinahanglan ayusen so mga nabasag."),
  ],
  ),

  Word(
  english: "flag",
  tagalog: "tagalog: bandila",
  ilocano: "ilocano: bandera",
  pangasinense: "pangasinense: bandera",
  examples: [
  WordExample(tagalog: "Ang bandila ay iwinagayway sa hangin.", ilocano: "Say bandera et inmawet ed dagem.", pangasinense: "Nagtayyek ti bandera iti angin."),
  WordExample(tagalog: "Ang bandila ng bansa ay may sariling simbolo.", ilocano: "Ti bandera ti pagilian ket addaan ti bukod a simbolo.", pangasinense: "Say bandera na bansa ay adda so bukod na simbolo."),
  ],
  ),

  Word(
  english: "flood",
  tagalog: "tagalog: baha",
  ilocano: "ilocano: delap",
  pangasinense: "pangasinense: panamegley",
  examples: [
  WordExample(tagalog: "Naghanda sila para sa baha sa pamamagitan ng sandbagging.", ilocano: "Nanparaan ira parad delap diad panamegley na panag-sandbag.", pangasinense: "Nagsaganada iti layus babaen ti panag-sandbag."),
  WordExample(tagalog: "Ang baha ay nagdulot ng pinsala sa mga bahay.", ilocano: "Ti delap ket nagbunga ti dakes kadagiti balay.", pangasinense: "So baha ay nagdulot so dakes ed mga balay."),
  ],
  ),

  Word(
  english: "floor",
  tagalog: "tagalog: sahig",
  ilocano: "ilocano: datal",
  pangasinense: "pangasinense: suelo",
  examples: [
  WordExample(tagalog: "Ang sahig ay gawa sa kahoy.", ilocano: "Say datal et gawad kiew.", pangasinense: "Naaramid ti suelo iti kayo."),
  WordExample(tagalog: "Nilinis nila ang sahig pagkatapos ng kalat.", ilocano: "Inlinisan da ti datal kalpasan ti kan-kan.", pangasinense: "Inlinisan da so suelo kalpasen na linaglag."),
  ],
  ),

  Word(
  english: "flower",
  tagalog: "tagalog: bulaklak",
  ilocano: "ilocano: sabong",
  pangasinense: "pangasinense: rosas",
  examples: [
  WordExample(tagalog: "May magandang bulaklak siya sa buhok.", ilocano: "Walay marakep ya rosas ed buek to.", pangasinense: "Napintas ti sabongna iti buokna."),
  WordExample(tagalog: "Ang bulaklak ay nagbibigay ng saya.", ilocano: "Ti sabong ket mangited ti ragsak.", pangasinense: "Say rosas ay nagdadara so ragsak."),
  ],
  ),
  Word(
  english: "flute",
  tagalog: "tagalog: plauta",
  ilocano: "ilocano: plauta",
  pangasinense: "pangasinense: plauta",
  examples: [
  WordExample(tagalog: "Maganda niyang tinugtog ang plauta.", ilocano: "Marakep so panagtogtog to na plauta.", pangasinense: "Nagpintas ti panagtokarna iti plauta."),
  WordExample(tagalog: "Naghahanap siya ng plautang mabili.", ilocano: "Agsapa toy manayabong a plauta.", pangasinense: "Agaramid siya ti plauta a mabili."),
  ],
  ),

  Word(
  english: "fluff",
  tagalog: "tagalog: himulmol",
  ilocano: "ilocano: buek",
  pangasinense: "pangasinense: fluff",
  examples: [
  WordExample(tagalog: "Lumutang sa hangin ang himulmol mula sa unan.", ilocano: "Say buek na unan et linmugan ed dagem.", pangasinense: "Nagtaytayab iti angin ti fluff manipud iti unan."),
  WordExample(tagalog: "Kailangan nating alisin ang himulmol sa unan.", ilocano: "Masapul tayo a ikat ti himulmol iti unan.", pangasinense: "Kinahanglan tayong iliko so fluff ed unan."),
  ],
  ),

  Word(
  english: "fluff",
  tagalog: "tagalog: hilumin",
  ilocano: "ilocano: i-fluff",
  pangasinense: "pangasinense: i-fluff",
  examples: [
  WordExample(tagalog: "Sila ay hihilumin ang mga kumot bago matulog.", ilocano: "I-fluff da ray kubrekama antis iran onugip.", pangasinense: "I-fluff-da dagiti kubrekama sakbay a maturog."),
  WordExample(tagalog: "Ang mga kumot ay kailangang hilumin bago matulog.", ilocano: "Dagiti kumot ket masapul a i-fluff sakbay a maturog.", pangasinense: "Kinahanglan i-fluff so mga kubrekama sakbay maturog."),
  ],
  ),

  Word(
  english: "focus",
  tagalog: "tagalog: pokus",
  ilocano: "ilocano: pokus",
  pangasinense: "pangasinense: pokus",
  examples: [
  WordExample(tagalog: "Malinaw ang pokus ng pulong.", ilocano: "Malinew so pokus na miting.", pangasinense: "Nalawag ti nakaipamaysaan ti gimong."),
  WordExample(tagalog: "Kailangan natin ng pokus sa aming proyekto.", ilocano: "Masapul tayo ti pokus iti proyekto tayo.", pangasinense: "Kaukolan tayong ti pokus ed proyekto mi."),
  ],
  ),

  Word(
  english: "fold",
  tagalog: "tagalog: tupi",
  ilocano: "ilocano: tiklop",
  pangasinense: "pangasinense: tiklop",
  examples: [
  WordExample(tagalog: "Matalim ang tupi sa papel.", ilocano: "Matalimbeng so tiklop na papel.", pangasinense: "Natadem ti pilpil iti papel."),
  WordExample(tagalog: "Ang tupi ng damit ay dapat maayos.", ilocano: "Ti tiklop ti damit ket masapul a maayos.", pangasinense: "Importante so panagtiklop ti bayo."),
  ],
  ),

  Word(
  english: "forgiveness",
  tagalog: "tagalog: pagpapatawad",
  ilocano: "ilocano: panamerdona",
  pangasinense: "pangasinense: panamerdona",
  examples: [
  WordExample(tagalog: "Nakaramdam sila ng pagpapatawad.", ilocano: "Nalikna ra so panamerdona.", pangasinense: "Nariknada ti pannakapakawan."),
  WordExample(tagalog: "Mahalaga ang pagpapatawad sa ating buhay.", ilocano: "Napateg ti panamerdona iti biag tayo.", pangasinense: "Importante so panamerdona ed biag tayo."),
  ],
  ),

  Word(
  english: "formidable",
  tagalog: "tagalog: mabigat",
  ilocano: "ilocano: makapataktakot",
  pangasinense: "pangasinense: nakabutbuteng",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang mabigat na kalaban.", ilocano: "Walay makapataktakot ya kalaban to.", pangasinense: "Adda nakabutbuteng a kalabanna."),
  WordExample(tagalog: "Ang kanyang kalaban ay talagang mabigat.", ilocano: "Ti kalaban na ket talaga a nakapataktakot.", pangasinense: "Kalamangan so kalabanna."),
  ],
  ),

  Word(
  english: "fort",
  tagalog: "tagalog: kuta",
  ilocano: "ilocano: kuta",
  pangasinense: "pangasinense: kuta",
  examples: [
  WordExample(tagalog: "Ang kuta ay itinayo para sa proteksyon.", ilocano: "Say kuta et impaalagey parad proteksion.", pangasinense: "Naibangon ti sarikedked para iti proteksion."),
  WordExample(tagalog: "Mayroong malaking kuta sa bayan.", ilocano: "Adda dakkel a kuta ed ili.", pangasinense: "Adda dakkel na kuta ed bayan."),
  ],
  ),

  Word(
  english: "foster",
  tagalog: "tagalog: pagyamanin",
  ilocano: "ilocano: paaligwasen",
  pangasinense: "pangasinense: patanoren",
  examples: [
  WordExample(tagalog: "Kailangan niyang pagyamanin ang kanyang pagkamalikhain.", ilocano: "Kaukolan ton paaligwasen so inkamapalsa to.", pangasinense: "Masapul a patanorenna ti kinamanagpartuatna."),
  WordExample(tagalog: "Dapat nating pagyamanin ang mga talento ng mga bata.", ilocano: "Masapul tayo a pagyamanen dagiti talento dagiti ubing.", pangasinense: "Kaukolan tayong pagyamanen so mga talento dagiti ubing."),
  ],
  ),

  Word(
  english: "fountain",
  tagalog: "tagalog: fountain",
  ilocano: "ilocano: fountain",
  pangasinense: "pangasinense: fountain",
  examples: [
  WordExample(tagalog: "May fountain sila sa kanilang bakuran.", ilocano: "Walay subol da ed sular da.", pangasinense: "Adda ubbogda iti paraanganda."),
  WordExample(tagalog: "Ang fountain sa park ay napakaganda.", ilocano: "Ti fountain ed park ket napintas.", pangasinense: "Naimas so fountain ed parke."),
  ],
  ),

  Word(
  english: "frame",
  tagalog: "tagalog: frame",
  ilocano: "ilocano: frame",
  pangasinense: "pangasinense: frame",
  examples: [
  WordExample(tagalog: "Ang frame ng larawan ay gayak.", ilocano: "Say frame na litrato et mararakep.", pangasinense: "Naarkosan ti kuadro ti ladawan."),
  WordExample(tagalog: "Nawawalan ng frame ang mga litrato.", ilocano: "Nawawalan ti frame dagiti litrato.", pangasinense: "Dawaton so frame dagiti ladawan."),
  ],
  ),

  Word(
  english: "freedom",
  tagalog: "tagalog: kalayaan",
  ilocano: "ilocano: kawayangan",
  pangasinense: "pangasinense: wayawaya",
  examples: [
  WordExample(tagalog: "Naramdaman niya ang kalayaan sa wakas.", ilocano: "Diad kaunoran et alikna toy kawayangan.", pangasinense: "Nariknana ti wayawaya kamaudiananna."),
  WordExample(tagalog: "Ang kalayaan ay isang mahalagang karapatan.", ilocano: "Ti kawayangan ket napateg a karapatan.", pangasinense: "Importante so wayawaya."),
  ],
  ),

  Word(
  english: "friendship",
  tagalog: "tagalog: pagkakaibigan",
  ilocano: "ilocano: panaggayyem",
  pangasinense: "pangasinense: pagkakaibigan",
  examples: [
  WordExample(tagalog: "Nagkaroon sila ng pagkakaibigan na tumagal ng ilang taon.", ilocano: "Pigaran taon so impankaaro ra.", pangasinense: "Adda panaggayyemda a nagpaut iti adu a tawen."),
  WordExample(tagalog: "Ang pagkakaibigan ay mahalaga sa buhay.", ilocano: "Ti panaggayyem ket napateg iti biag.", pangasinense: "Importante so pagkakaibigan ed biag."),
  ],
  ),

  Word(
  english: "frost",
  tagalog: "tagalog: hamog",
  ilocano: "ilocano: yelo",
  pangasinense: "pangasinense: yelo",
  examples: [
  WordExample(tagalog: "Tinakpan ng hamog na nagyelo ang lupa sa umaga.", ilocano: "Say yelo so nansakbong ed dalin nen kabuasan.", pangasinense: "Inabbong ti yelo ti daga iti agsapa."),
  WordExample(tagalog: "Nakita ko ang hamog sa mga dahon ng puno.", ilocano: "Nakita ak ti yelo ed dagiti deddeng ti kayo.", pangasinense: "Nakita ko so yelo ed mga deddeng ti kayo."),
  ],
  ),

  Word(
  english: "fruit",
  tagalog: "tagalog: prutas",
  ilocano: "ilocano: bunga",
  pangasinense: "pangasinense: prutas",
  examples: [
  WordExample(tagalog: "Kumuha siya ng prutas sa basket.", ilocano: "Angala na prutas ed baskit.", pangasinense: "Nangala iti bunga manipud iti basket."),
  WordExample(tagalog: "Mahalaga ang prutas sa ating kalusugan.", ilocano: "Napateg ti bunga iti salun-at tayo.", pangasinense: "Importante so prutas ed salun-at tayo."),
  ],
  ),

  Word(
  english: "fugitive",
  tagalog: "tagalog: takas",
  ilocano: "ilocano: takas",
  pangasinense: "pangasinense: takas",
  examples: [
  WordExample(tagalog: "Tumakas ang takas.", ilocano: "Say takas et ombabatik.", pangasinense: "Agtataray ti naglibas."),
  WordExample(tagalog: "Ang fugitive ay nahuli ng mga pulis.", ilocano: "Ti fugitive ket naaresto dagiti pulis.", pangasinense: "Nakuha so fugitive ed mga pulis."),
  ],
  ),

  Word(
  english: "fulfill",
  tagalog: "tagalog: tutuparin",
  ilocano: "ilocano: tooren",
  pangasinense: "pangasinense: matungpaldanto",
  examples: [
  WordExample(tagalog: "Tutuparin nila ang kanilang pangako.", ilocano: "Tooren da so insipan da.", pangasinense: "Matungpaldanto ti karida."),
  WordExample(tagalog: "Mahalaga ang pagtupad sa mga pangako.", ilocano: "Napateg ti panagtupad kadagiti insipan.", pangasinense: "Importante so pagtupad ed mga pangako."),
  ],
  ),

  Word(
  english: "funeral",
  tagalog: "tagalog: libing",
  ilocano: "ilocano: libing",
  pangasinense: "pangasinense: libing",
  examples: [
  WordExample(tagalog: "Ang libing ay dinaluhan ng marami.", ilocano: "Dakel so inmatendi ed ponpon.", pangasinense: "Adu ti tinabunuan ti pumpon."),
  WordExample(tagalog: "Ang libing ay isang mahalagang seremonya.", ilocano: "Ti libing ket napateg a seremonya.", pangasinense: "Importante so libing."),
  ],
  ),

  Word(
  english: "fury",
  tagalog: "tagalog: galit",
  ilocano: "ilocano: galit",
  pangasinense: "pangasinense: pungtot",
  examples: [
  WordExample(tagalog: "Malaki ang galit niya sa sitwasyon.", ilocano: "Sikatoy walaan na baleg a sanok ed situasyon.", pangasinense: "Dakkel ti pungtotna maipapan iti kasasaad."),
  WordExample(tagalog: "Ang kanyang galit ay nauwi sa hidwaan.", ilocano: "Ti galit na ket nagbalin a nagbato.", pangasinense: "Nawalan so pungtotna ed panagububra."),
  ],
  ),

  Word(
  english: "fuse",
  tagalog: "tagalog: fuse",
  ilocano: "ilocano: fuse",
  pangasinense: "pangasinense: fuse",
  examples: [
  WordExample(tagalog: "Ang fuse ay humihip sa panahon ng bagyo.", ilocano: "Say fuse so pinmaway legan na bagyo.", pangasinense: "Nagpuyot ti fuse bayat ti bagyo."),
  WordExample(tagalog: "Kailangan palitan ang fuse kung ito ay masira.", ilocano: "Masapul a palitan ti fuse no napukaw.", pangasinense: "Kinahanglan nga ilinteg ti fuse no natibker."),
  ],
  ),
  Word(
  english: "gadget",
  tagalog: "tagalog: gadget",
  ilocano: "ilocano: gadyet",
  pangasinense: "pangasinense: gadyet",
  examples: [
  WordExample(tagalog: "Ang gadget ay bago at makabago.", ilocano: "Say gadyet et balo tan makabayon tuloy.", pangasinense: "Baro ken makabaro ti gadget."),
  WordExample(tagalog: "Mahalaga ang gadget sa modernong buhay.", ilocano: "Napateg ti gadyet iti moderno a biag.", pangasinense: "Importante so gadyet ed moderno a biag."),
  ],
  ),

  Word(
  english: "gain",
  tagalog: "tagalog: pakinabang",
  ilocano: "ilocano: nagun-od",
  pangasinense: "pangasinense: nagun-od",
  examples: [
  WordExample(tagalog: "Sulit ang pakinabang sa pagsisikap.", ilocano: "Say nagamoran et makanakana ed sagpot.", pangasinense: "Maitutop ti nagun-odna."),
  WordExample(tagalog: "Ang pakinabang ay nakasalalay sa ating pagsisikap.", ilocano: "Ti pakinabang ket nakasaganad iti panagsikap tayo.", pangasinense: "Nakasalalay so nagun-od ed panagsikap mi."),
  ],
  ),

  Word(
  english: "gallantry",
  tagalog: "tagalog: katapangan",
  ilocano: "ilocano: liknaan",
  pangasinense: "pangasinense: gallantry",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang mahusay na pakiramdam ng katapangan.", ilocano: "Sikatoy walaan na baleg a liknaan na inka-galangan.", pangasinense: "Dakkel ti riknana iti kinagagar."),
  WordExample(tagalog: "Ang kanyang katapangan ay humanga sa lahat.", ilocano: "Ti katapangan na ket nakapukaw ti amin.", pangasinense: "Nangyare so gallantry na ed amin."),
  ],
  ),

  Word(
  english: "game",
  tagalog: "tagalog: laro",
  ilocano: "ilocano: ay-ayam",
  pangasinense: "pangasinense: ay-ayam",
  examples: [
  WordExample(tagalog: "Matindi at kapana-panabik ang laro.", ilocano: "Say galaw et mabiskeg tan makapalikliket.", pangasinense: "Nakaro ken makapagagar ti ay-ayam."),
  WordExample(tagalog: "Ang laro ay puno ng saya.", ilocano: "Ti ay-ayam ket napno ti ragsak.", pangasinense: "Napno so ay-ayam ti kasayaatan."),
  ],
  ),

  Word(
  english: "garment",
  tagalog: "tagalog: damit",
  ilocano: "ilocano: kawes",
  pangasinense: "pangasinense: kawes",
  examples: [
  WordExample(tagalog: "Mayroon siyang damit na maganda ang pagkakagawa.", ilocano: "Walay kawes to ya marakep so inkagawa to.", pangasinense: "Adda kawesna a napintas ti pannakaaramidna."),
  WordExample(tagalog: "Ang damit ay angkop sa okasyon.", ilocano: "Ti kawes ket angkop ed okasyon.", pangasinense: "Naimbag so kawes ed okasyon."),
  ],
  ),

  Word(
  english: "gathering",
  tagalog: "tagalog: pagtitipon",
  ilocano: "ilocano: pantitipon",
  pangasinense: "pangasinense: pantitipon",
  examples: [
  WordExample(tagalog: "Naging matagumpay ang pagtitipon.", ilocano: "Matalona so pantitipon.", pangasinense: "Nagballigi ti panagtitipon."),
  WordExample(tagalog: "Ang pagtitipon ay puno ng kasiyahan.", ilocano: "Ti pantitipon ket napno ti ragsak.", pangasinense: "Napno so panagtitipon ti kasayaatan."),
  ],
  ),

  Word(
  english: "gear",
  tagalog: "tagalog: kagamitan",
  ilocano: "ilocano: kagawaan",
  pangasinense: "pangasinense: kagawaan",
  examples: [
  WordExample(tagalog: "Mayroon siyang kagamitan para sa bawat okasyon.", ilocano: "Walay kagawaan to parad kada okasyon.", pangasinense: "Adda gear-na para iti tunggal okasion."),
  WordExample(tagalog: "Ang mga kagamitan ay mahalaga sa ating buhay.", ilocano: "Dagiti kagawaan ket napateg iti biag tayo.", pangasinense: "Importante so kagawaan ed biag tayo."),
  ],
  ),

  Word(
  english: "gem",
  tagalog: "tagalog: hiyas",
  ilocano: "ilocano: hiyas",
  pangasinense: "pangasinense: hiyas",
  examples: [
  WordExample(tagalog: "Ang hiyas ay kumikinang sa liwanag.", ilocano: "Say hiyas so mankirlap ed liwawa.", pangasinense: "Nagkir-in ti perlas iti lawag."),
  WordExample(tagalog: "Mahalaga ang hiyas sa kultura.", ilocano: "Napateg ti hiyas iti kultura.", pangasinense: "Importante so hiyas ed kultura."),
  ],
  ),

  Word(
  english: "generosity",
  tagalog: "tagalog: pagkabukas-palad",
  ilocano: "ilocano: inkamabunlok",
  pangasinense: "pangasinense: pagkabukas-palad",
  examples: [
  WordExample(tagalog: "Nadama nila ang isang pakiramdam ng pagkabukas-palad sa panahon ng bakasyon.", ilocano: "Nalikna ra so inkamabunlok legan na saray piesta opisyal.", pangasinense: "Nariknada ti rikna ti kinaparabur bayat ti bakasion."),
  WordExample(tagalog: "Ang pagkabukas-palad ay mahalaga sa ating lipunan.", ilocano: "Ti pagkabukas-palad ket napateg iti sosyedad tayo.", pangasinense: "Importante so pagkabukas-palad ed lipunan tayo."),
  ],
  ),

  Word(
  english: "breeze",
  tagalog: "tagalog: simoy",
  ilocano: "ilocano: dagem",
  pangasinense: "pangasinense: dagem",
  examples: [
  WordExample(tagalog: "Nakakapanibago ang banayad na simoy ng hangin.", ilocano: "Makarepresko so maamot a dagem.", pangasinense: "Makapabang-ar ti naalumamay nga angin."),
  WordExample(tagalog: "Ang simoy ng hangin ay nakakapresko.", ilocano: "Ti dagem ket nakarepresko.", pangasinense: "Ti dagem ay makarepresko."),
  ],
  ),

  Word(
  english: "gesture",
  tagalog: "tagalog: kilos",
  ilocano: "ilocano: tignay",
  pangasinense: "pangasinense: tignay",
  examples: [
  WordExample(tagalog: "Ang kilos ay pinahahalagahan.", ilocano: "Inapresya so ginawa to.", pangasinense: "Naapresiar ti tignay."),
  WordExample(tagalog: "Ang magandang kilos ay nagbibigay inspirasyon.", ilocano: "Ti napintas a tignay ket mangted inspirasyon.", pangasinense: "Ti makapainspire a tignay ay nakapapabukel."),
  ],
  ),

  Word(
  english: "gift",
  tagalog: "tagalog: regalo",
  ilocano: "ilocano: regalo",
  pangasinense: "pangasinense: regalo",
  examples: [
  WordExample(tagalog: "Nag-isip ang regalo.", ilocano: "Say regalo et makapanonot.", pangasinense: "Nainpanunotan ti sagut."),
  WordExample(tagalog: "Ang regalo ay simbolo ng pagmamahal.", ilocano: "Ti regalo ket simbolo ti ayat.", pangasinense: "Ti regalo ay simbolo ti panagyaman."),
  ],
  ),

  Word(
  english: "glory",
  tagalog: "tagalog: kaluwalhatian",
  ilocano: "ilocano: dayag",
  pangasinense: "pangasinense: gloria",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang mahusay na pakiramdam ng kaluwalhatian.", ilocano: "Sikatoy walaan na baleg a pakalikna na gloria.", pangasinense: "Dakkel ti riknana iti dayag."),
  WordExample(tagalog: "Ang kaluwalhatian ay dapat ipagmalaki.", ilocano: "Ti kaluwalhatian ket masapul a ipangpangruna.", pangasinense: "Importante so gloria."),
  ],
  ),

  Word(
  english: "glove",
  tagalog: "tagalog: guwantes",
  ilocano: "ilocano: gwantis",
  pangasinense: "pangasinense: guantes",
  examples: [
  WordExample(tagalog: "Ang guwantes ay ganap na magkasya.", ilocano: "Say gwantis et perpekton onkana.", pangasinense: "Naan-anay a maibagay ti guantes."),
  WordExample(tagalog: "Mahalaga ang guwantes sa malamig na panahon.", ilocano: "Napateg ti gwantis iti nabanglo a tiempo.", pangasinense: "Importante so guantes ed malamig a tiempo."),
  ],
  ),

  Word(
  english: "goal",
  tagalog: "tagalog: layunin",
  ilocano: "ilocano: kalat",
  pangasinense: "pangasinense: layunin",
  examples: [
  WordExample(tagalog: "Ang layunin ay sa wakas ay nakamit.", ilocano: "Nadampot la so kalat.", pangasinense: "Naragpat kamaudiananna ti kalat."),
  WordExample(tagalog: "Mahalaga ang layunin sa bawat proyekto.", ilocano: "Napateg ti kalat iti tunggal proyekto.", pangasinense: "Importante so layunin ed tunggal proyekto."),
  ],
  ),

  Word(
  english: "golf",
  tagalog: "tagalog: golf",
  ilocano: "ilocano: golf",
  pangasinense: "pangasinense: golf",
  examples: [
  WordExample(tagalog: "Masaya ang larong golf.", ilocano: "Makapaliket so galaw na golf.", pangasinense: "Makaay-ayo ti ay-ayam iti golf."),
  WordExample(tagalog: "Ang golf ay isang magandang libangan.", ilocano: "Ti golf ket napintas a pampanunot.", pangasinense: "Ti golf ay magandang libangan."),
  ],
  ),

  Word(
  english: "gossip",
  tagalog: "tagalog: tsismis",
  ilocano: "ilocano: tsismis",
  pangasinense: "pangasinense: tsismis",
  examples: [
  WordExample(tagalog: "Mabilis kumalat ang tsismis.", ilocano: "Maples ya kinmayat so tsismis.", pangasinense: "Napartak ti panagsaknap ti tsismis."),
  WordExample(tagalog: "Ang tsismis ay madalas na hindi totoo.", ilocano: "Ti tsismis ket madalas saan a pudno.", pangasinense: "Saan a tunay so tsismis."),
  ],
  ),

  Word(
  english: "gown",
  tagalog: "tagalog: gown",
  ilocano: "ilocano: gown",
  pangasinense: "pangasinense: gown",
  examples: [
  WordExample(tagalog: "Naka-gown siya sa gala.", ilocano: "Nansulong na gown ed gala.", pangasinense: "Nagsuot iti gown iti gala."),
  WordExample(tagalog: "Ang gown ay napaka eleganteng isuot.", ilocano: "Ti gown ket napaka-elegante a isuot.", pangasinense: "Ti gown ay napaka-elegante ed isusuot."),
  ],
  ),

  Word(
  english: "grace",
  tagalog: "tagalog: biyaya",
  ilocano: "ilocano: grasya",
  pangasinense: "pangasinense: grasya",
  examples: [
  WordExample(tagalog: "Nakakabighani ang biyaya ng mananayaw.", ilocano: "Makapasagyat so grasya na managsayaw.", pangasinense: "Makaawis ti parabur ti sumasala."),
  WordExample(tagalog: "Ang biyaya ay tila nag-aanyaya.", ilocano: "Ti grasya ket kasla ag-aanyaya.", pangasinense: "Ti grasya ay kasla nag-aanyaya."),
  ],
  ),

  Word(
  english: "grade",
  tagalog: "tagalog: grado",
  ilocano: "ilocano: grado",
  pangasinense: "pangasinense: grado",
  examples: [
  WordExample(tagalog: "May grade siya sa mathematics.", ilocano: "Walay grado to ed matematika.", pangasinense: "Adda gradona iti matematika."),
  WordExample(tagalog: "Mataas ang kanyang grado sa paaralan.", ilocano: "Naimbag ti grado na ed eskuela.", pangasinense: "Napintas so grado na ed eskuela."),
  ],
  ),
  Word(
  english: "grain",
  tagalog: "tagalog: butil",
  ilocano: "ilocano: ilik",
  pangasinense: "pangasinense: bukbukel",
  examples: [
  WordExample(tagalog: "Ang butil ay inani sa taglagas.", ilocano: "Say ilik et naani ed panaoy ambetel.", pangasinense: "Naapit ti bukbukel iti panagtutudo."),
  WordExample(tagalog: "Mahalaga ang butil sa ating pagkain.", ilocano: "Napateg ti ilik iti pagkaen tayo.", pangasinense: "Importante so butil ed pagkain tayo."),
  ],
  ),

  Word(
  english: "grant",
  tagalog: "tagalog: pagbigyan",
  ilocano: "ilocano: kerew",
  pangasinense: "pangasinense: pagbigyan",
  examples: [
  WordExample(tagalog: "Binalak nilang pagbigyan ang kahilingan.", ilocano: "Implano dan iter so kerew da.", pangasinense: "Implanoda nga ipaay ti kiddaw."),
  WordExample(tagalog: "Ang pagbigyan ay dapat maging tapat.", ilocano: "Ti pagbigyan masapul a natibker.", pangasinense: "Importante so pagbigyan na maging totoo."),
  ],
  ),

  Word(
  english: "grasp",
  tagalog: "tagalog: pagkakahawak",
  ilocano: "ilocano: panangipeket",
  pangasinense: "pangasinense: panangiggem",
  examples: [
  WordExample(tagalog: "Mahigpit ang pagkakahawak ng bata.", ilocano: "Malet so panangipeket na ugaw.", pangasinense: "Natibker ti panangiggem ti ubing."),
  WordExample(tagalog: "Ang pagkakahawak ay mahalaga sa pagtuturo.", ilocano: "Ti panangipeket ket napateg iti panagadal.", pangasinense: "Importante so panangiggem ed pagtuturo."),
  ],
  ),

  Word(
  english: "grave",
  tagalog: "tagalog: libingan",
  ilocano: "ilocano: lubok",
  pangasinense: "pangasinense: lubok",
  examples: [
  WordExample(tagalog: "Ang libingan ay pinalamutian nang maganda.", ilocano: "Marakep so inkadekorasyon na lubok.", pangasinense: "Napintas ti pannakaarkos ti tanem."),
  WordExample(tagalog: "Dapat iginagalang ang libingan ng mga yumaong.", ilocano: "Masapul a galangan ti lubok dagiti napatay.", pangasinense: "Dapat galangan so lubok na mga yumaong."),
  ],
  ),

  Word(
  english: "grief",
  tagalog: "tagalog: kalungkutan",
  ilocano: "ilocano: ermen",
  pangasinense: "pangasinense: ermen",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng matinding kalungkutan.", ilocano: "Alikna toy aralem a ermen.", pangasinense: "Nariknana ti nauneg a panagleddaang."),
  WordExample(tagalog: "Ang kalungkutan ay bahagi ng buhay.", ilocano: "Ti ermen ket paset ti biag.", pangasinense: "Parte so ermen ed biag."),
  ],
  ),

  Word(
  english: "greeting",
  tagalog: "tagalog: pagbati",
  ilocano: "ilocano: kablaaw",
  pangasinense: "pangasinense: kablaaw",
  examples: [
  WordExample(tagalog: "Mainit ang pagbati.", ilocano: "Makapaliket so panangibano.", pangasinense: "Nabara ti kablaaw."),
  WordExample(tagalog: "Dapat palaging may magandang pagbati.", ilocano: "Masapul a permi ada napintas a kablaaw.", pangasinense: "Importante so maganda so kablaaw."),
  ],
  ),

  Word(
  english: "grief",
  tagalog: "tagalog: kalungkutan",
  ilocano: "ilocano: ermen",
  pangasinense: "pangasinense: ermen",
  examples: [
  WordExample(tagalog: "Ang kalungkutan ay napakalaki minsan.", ilocano: "Say ermen et alablabas no maminsan.", pangasinense: "Nakaro ti ladingit no dadduma."),
  WordExample(tagalog: "Ang kalungkutan ay nahahawakan sa ating puso.", ilocano: "Ti ermen ket nabati iti pusok.", pangasinense: "Ti ermen ay naawat ed puso mi."),
  ],
  ),

  Word(
  english: "group",
  tagalog: "tagalog: grupo",
  ilocano: "ilocano: grupo",
  pangasinense: "pangasinense: grupo",
  examples: [
  WordExample(tagalog: "Nagkaroon sila ng group project malapit na.", ilocano: "Walay grupo ran proyekto ya magano lan gawaen.", pangasinense: "Adda grupoda a proyekto a maudi iti mabiit."),
  WordExample(tagalog: "Mahalaga ang pagkakaisa ng grupo.", ilocano: "Napateg ti panagkaykaysa ti grupo.", pangasinense: "Importante so pagkakaisa na grupo."),
  ],
  ),

  Word(
  english: "guarantee",
  tagalog: "tagalog: garantiya",
  ilocano: "ilocano: garantiya",
  pangasinense: "pangasinense: garantiya",
  examples: [
  WordExample(tagalog: "Ang garantiya ay nakapagpapatibay.", ilocano: "Makapaseguro so garantiya.", pangasinense: "Makapatalged ti garantia."),
  WordExample(tagalog: "Mahalaga ang garantiya sa mga produkto.", ilocano: "Napateg ti garantiya kadagiti produkto.", pangasinense: "Importante so garantiya ed mga produkto."),
  ],
  ),

  Word(
  english: "gift",
  tagalog: "tagalog: regalo",
  ilocano: "ilocano: regalo",
  pangasinense: "pangasinense: regalo",
  examples: [
  WordExample(tagalog: "Nakatanggap siya ng regalo mula sa kanyang kaibigan.", ilocano: "Akaawat na regalo manlapud kaaro to.", pangasinense: "Nakaawat iti sagut manipud iti gayyemna."),
  WordExample(tagalog: "Ang regalo ay tanda ng pagkakaibigan.", ilocano: "Ti regalo ket tanda ti panagkikadua.", pangasinense: "Ti regalo ay simbolo na pagkakaibigan."),
  ],
  ),

  Word(
  english: "guitar",
  tagalog: "tagalog: gitara",
  ilocano: "ilocano: gitara",
  pangasinense: "pangasinense: gitara",
  examples: [
  WordExample(tagalog: "Ang gitara ay tumugtog ng magandang himig.", ilocano: "Say gitara so nantogtog na marakep a melodiya.", pangasinense: "Nagtokar ti gitara iti napintas a melodia."),
  WordExample(tagalog: "Mahalaga ang gitara sa musika.", ilocano: "Napateg ti gitara iti musika.", pangasinense: "Importante so gitara ed musika."),
  ],
  ),

  Word(
  english: "gusto",
  tagalog: "tagalog: sarap",
  ilocano: "ilocano: liket",
  pangasinense: "pangasinense: liket",
  examples: [
  WordExample(tagalog: "Nasiyahan sila sa sarap ng buhay.", ilocano: "Nanggayagaan da so liket na bilay.", pangasinense: "Tinagiragsakda ti kinaragsak ti biag."),
  WordExample(tagalog: "Ang sarap ng pagkain ay nagbibigay kasiyahan.", ilocano: "Ti liket ti pagkaen ket mangted ragsak.", pangasinense: "Ti sarap na pagkain ay nakapagpapasaya."),
  ],
  ),

  Word(
  english: "habit",
  tagalog: "tagalog: ugali",
  ilocano: "ilocano: ugali",
  pangasinense: "pangasinense: ugali",
  examples: [
  WordExample(tagalog: "Ang ugali ay mahirap tanggalin.", ilocano: "Mairap ya itunda so ugali.", pangasinense: "Narigat a ikkaten ti ugali."),
  WordExample(tagalog: "Mahalaga ang pagbabago ng ugali.", ilocano: "Napateg ti panagbaliw ti ugali.", pangasinense: "Importante so panagbaliw na ugali."),
  ],
  ),

  Word(
  english: "haughty",
  tagalog: "tagalog: pagmamataas",
  ilocano: "ilocano: mapaatagey",
  pangasinense: "pangasinense: pagmamataas",
  examples: [
  WordExample(tagalog: "Siya ay may pagmamataas sa iba.", ilocano: "Sikatoy walaan na mapaatagey ya awawey ed arum.", pangasinense: "Natangsit ti kababalinna kadagiti sabsabali."),
  WordExample(tagalog: "Ang pagmamataas ay hindi kanais-nais.", ilocano: "Ti pagmamataas ket saan a napateg.", pangasinense: "Importante so pagmamataas a saan na maganda."),
  ],
  ),

  Word(
  english: "heal",
  tagalog: "tagalog: gagaling",
  ilocano: "ilocano: agimbag",
  pangasinense: "pangasinense: gagaling",
  examples: [
  WordExample(tagalog: "Sila ay gagaling pagkatapos ng panahon.", ilocano: "Onabig ira kayari na panaon.", pangasinense: "Agimbagdanto kalpasan ti panawen."),
  WordExample(tagalog: "Mahalaga ang oras sa pagpagaling.", ilocano: "Napateg ti tiempo iti panagimbag.", pangasinense: "Importante so tiempo ed pagaling."),
  ],
  ),

  Word(
  english: "hearing",
  tagalog: "tagalog: pagdinig",
  ilocano: "ilocano: bista",
  pangasinense: "pangasinense: bista",
  examples: [
  WordExample(tagalog: "Ang pagdinig ay isinagawa nang pribado.", ilocano: "Say bista et ginawa ed pribado.", pangasinense: "Naisayangkat ti hearing iti pribado."),
  WordExample(tagalog: "Mahalaga ang tamang pagdinig sa usapan.", ilocano: "Napateg ti usto a bista iti usapan.", pangasinense: "Importante so bista ed usapan."),
  ],
  ),

  Word(
  english: "heaviness",
  tagalog: "tagalog: bigat",
  ilocano: "ilocano: belat",
  pangasinense: "pangasinense: bigat",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng bigat sa dibdib.", ilocano: "Nalikna toy belat ed pagew to.", pangasinense: "Nariknana ti kinadagsen ti barukongna."),
  WordExample(tagalog: "Ang bigat ay maaaring maging sintomas ng stress.", ilocano: "Ti belat ket mabalin nga agbalin a sintoma ti stress.", pangasinense: "Ti bigat ay mabalin na simbolo na stress."),
  ],
  ),

  Word(
  english: "helicopter",
  tagalog: "tagalog: helikopter",
  ilocano: "ilocano: helikopter",
  pangasinense: "pangasinense: helikopter",
  examples: [
  WordExample(tagalog: "Ang helicopter ay nag-hover sa itaas.", ilocano: "Say helikopter so onlelereg ed tagey.", pangasinense: "Nagtaytayab ti helikopter iti ngato."),
  WordExample(tagalog: "Mabilis ang paglipad ng helicopter.", ilocano: "Napartak ti panaglipad ti helikopter.", pangasinense: "Napartak so panaglipad na helikopter."),
  ],
  ),

  Word(
  english: "help",
  tagalog: "tagalog: tulong",
  ilocano: "ilocano: tulong",
  pangasinense: "pangasinense: tulong",
  examples: [
  WordExample(tagalog: "Ang tulong ay pinahahalagahan.", ilocano: "Inapresya so tulong.", pangasinense: "Naapresiar ti tulong."),
  WordExample(tagalog: "Mahalaga ang tulong sa oras ng pangangailangan.", ilocano: "Napateg ti tulong iti oras ti kasapulan.", pangasinense: "Importante so tulong ed oras na kasapulan."),
  ],
  ),

  Word(
  english: "hero",
  tagalog: "tagalog: bayani",
  ilocano: "ilocano: bannuar",
  pangasinense: "pangasinense: bayani",
  examples: [
  WordExample(tagalog: "Iniligtas ng bayani ang araw.", ilocano: "Insalba na bayani so agew.", pangasinense: "Insalakan ti bannuar ti aldaw."),
  WordExample(tagalog: "Ang bayani ay dapat pahalagahan.", ilocano: "Ti bannuar ket masapul a pahalagahan.", pangasinense: "Importante so bayani."),
  ],
  ),
  Word(
  english: "hiding spot",
  tagalog: "tagalog: pinagtataguan",
  ilocano: "ilocano: panagamotan",
  pangasinense: "pangasinense: paglemmengan",
  examples: [
  WordExample(tagalog: "Matalino ang pinagtataguan.", ilocano: "Say panagamotan et matalino.", pangasinense: "Nasirib ti paglemmengan."),
  WordExample(tagalog: "Dapat maging maingat sa pagpili ng pinagtataguan.", ilocano: "Masapul a magtinudong iti panagpili ti panagamotan.", pangasinense: "Importante so mag-atensyon ed paglemmengan."),
  ],
  ),

  Word(
  english: "history",
  tagalog: "tagalog: kasaysayan",
  ilocano: "ilocano: awaran",
  pangasinense: "pangasinense: pakasaritaan",
  examples: [
  WordExample(tagalog: "Ang kasaysayan ng lugar ay mayaman.", ilocano: "Mayaman so awaran na lugar.", pangasinense: "Nabaknang ti pakasaritaan ti lugar."),
  WordExample(tagalog: "Dapat pahalagahan ang kasaysayan ng ating bansa.", ilocano: "Masapul a pahalagahan ti kasaysayan ti pagilian tayo.", pangasinense: "Importante so pahalagahan so pakasaritaan na bansa."),
  ],
  ),

  Word(
  english: "humor",
  tagalog: "tagalog: pagkamapagpatawa",
  ilocano: "ilocano: pakatebek",
  pangasinense: "pangasinense: pagkamapagpatawa",
  examples: [
  WordExample(tagalog: "Siya ay may mahusay na pagkamapagpatawa.", ilocano: "Sikatoy walaan na baleg a pakatebek.", pangasinense: "Dakkel ti kinamanagpakatawana."),
  WordExample(tagalog: "Ang magandang pagkamapagpatawa ay nakakapagpasaya.", ilocano: "Ti nasayaat a pagkamapagpatawa ket nakapagsaya.", pangasinense: "Importante so pagkamapagpatawa na makapagpasaya."),
  ],
  ),

  Word(
  english: "hunt",
  tagalog: "tagalog: pamamaril",
  ilocano: "ilocano: panag-anop",
  pangasinense: "pangasinense: panaganup",
  examples: [
  WordExample(tagalog: "Naging matagumpay ang pamamaril.", ilocano: "Matalona so panag-anop.", pangasinense: "Naballigi ti panaganup."),
  WordExample(tagalog: "Mahigpit ang kompetisyon sa pamamaril.", ilocano: "Nakatakder ti kompetisyon iti pamamaril.", pangasinense: "Naiiba so kompetisyon ed panaganup."),
  ],
  ),

  Word(
  english: "idea",
  tagalog: "tagalog: ideya",
  ilocano: "ilocano: ideya",
  pangasinense: "pangasinense: ideya",
  examples: [
  WordExample(tagalog: "Ang ideya ay napakatalino.", ilocano: "Makapadinayew so ideya.", pangasinense: "Naraniag ti ideya."),
  WordExample(tagalog: "Minsan, ang simpleng ideya ay nagdadala ng malaking pagbabago.", ilocano: "Sakbay, ti simple a ideya ket nagdudulot ti dakkel a panagbalbaliw.", pangasinense: "Minsan, so simple so ideya ay nakagagawa so dakkel na pagbabago."),
  ],
  ),

  Word(
  english: "identification",
  tagalog: "tagalog: pagkakakilanlan",
  ilocano: "ilocano: pakabidbiran",
  pangasinense: "pangasinense: pagkakakilanlan",
  examples: [
  WordExample(tagalog: "Ang pagkakakilanlan ay kinakailangan para sa pagpasok.", ilocano: "Kaukolan so pakabidbiran pian makaloob.", pangasinense: "Masapul ti identification para iti iseserrek."),
  WordExample(tagalog: "Mahalaga ang wastong pagkakakilanlan sa mga transaksyon.", ilocano: "Napateg ti usto a pagkakakilanlan kadagiti transaksyon.", pangasinense: "Importante so tamang pagkakakilanlan ed mga transaksyon."),
  ],
  ),

  Word(
  english: "image",
  tagalog: "tagalog: imahe",
  ilocano: "ilocano: imahen",
  pangasinense: "pangasinense: imahen",
  examples: [
  WordExample(tagalog: "Ang imahe ay maganda at matingkad.", ilocano: "Marakep tan mabilabilay so imahen.", pangasinense: "Napintas ken nabiag ti ladawan."),
  WordExample(tagalog: "Dapat malinaw ang imahe sa mga presentasyon.", ilocano: "Masapul a nalawag ti imahen kadagiti presentasyon.", pangasinense: "Importante so nalawag so imahen ed mga presentasyon."),
  ],
  ),

  Word(
  english: "impact",
  tagalog: "tagalog: epekto",
  ilocano: "ilocano: epektona",
  pangasinense: "pangasinense: epekto",
  examples: [
  WordExample(tagalog: "Naramdaman ang epekto sa buong bansa.", ilocano: "Say epekto to et alikna ed interon bansa.", pangasinense: "Narikna ti epektona iti intero a pagilian."),
  WordExample(tagalog: "Ang epekto ng climate change ay ramdam sa lahat.", ilocano: "Ti epekto ti climate change ket maamuan ti amin.", pangasinense: "Ti epekto na climate change ay nararamdaman so amin."),
  ],
  ),

  Word(
  english: "importance",
  tagalog: "tagalog: kahalagahan",
  ilocano: "ilocano: kaimportantian",
  pangasinense: "pangasinense: kinapateg",
  examples: [
  WordExample(tagalog: "Malinaw ang kahalagahan ng kaganapan.", ilocano: "Malinew so kaimportantian na ebento.", pangasinense: "Nalawag ti kinapateg ti pasamak."),
  WordExample(tagalog: "Dapat pahalagahan ang kahalagahan ng edukasyon.", ilocano: "Masapul a pahalagahan ti kaimportantian ti edukasyon.", pangasinense: "Importante so pahalagahan so kinapateg na edukasyon."),
  ],
  ),

  Word(
  english: "impression",
  tagalog: "tagalog: impresyon",
  ilocano: "ilocano: impresion",
  pangasinense: "pangasinense: impresion",
  examples: [
  WordExample(tagalog: "Gumawa sila ng impresyon sa lahat.", ilocano: "Anggawa ira na impresyon ed amin.", pangasinense: "Nangaramidda iti impresion iti amin."),
  WordExample(tagalog: "Mahalaga ang unang impresyon sa pakikisalamuha.", ilocano: "Napateg ti umuna a impresion iti panagkikadua.", pangasinense: "Importante so umuna a impresion ed pakikisalamuha."),
  ],
  ),

  Word(
  english: "inch",
  tagalog: "tagalog: pulgada",
  ilocano: "ilocano: pulgada",
  pangasinense: "pangasinense: pulgada",
  examples: [
  WordExample(tagalog: "Ang pulgada ay isang maliit na sukat.", ilocano: "Say pulgada et melag a sukat.", pangasinense: "Bassit a rukod ti pulgada."),
  WordExample(tagalog: "Ginagamit ang pulgada sa sukat ng mga bagay.", ilocano: "Usaren ti pulgada iti sukat dagiti banag.", pangasinense: "Inusara so pulgada ed sukat na mga bagay."),
  ],
  ),

  Word(
  english: "increase",
  tagalog: "tagalog: pagtaas",
  ilocano: "ilocano: indakel",
  pangasinense: "pangasinense: iyaadu",
  examples: [
  WordExample(tagalog: "Malaki ang pagtaas.", ilocano: "Makatantanda so indakel.", pangasinense: "Dakkel ti iyaadu."),
  WordExample(tagalog: "Ang pagtaas ng presyo ay hindi maiiwasan.", ilocano: "Ti pagtaas ti presyo ket saan a maiwasan.", pangasinense: "Ti pagtaas na presyo ay di matatakasan."),
  ],
  ),

  Word(
  english: "incredulity",
  tagalog: "tagalog: hindi makapaniwala",
  ilocano: "ilocano: panisiaan",
  pangasinense: "pangasinense: di mamati",
  examples: [
  WordExample(tagalog: "Nagbahagi sila ng hindi makapaniwala tungkol sa balita.", ilocano: "Angibaga ra na ag da panisiaan ed balita.", pangasinense: "Nagbibinninglayda iti di mamati maipapan iti damag."),
  WordExample(tagalog: "Ang kanyang reaksyon ay puno ng hindi makapaniwala.", ilocano: "Ti reaksyona ket napno ti panisiaan.", pangasinense: "Aking reaksyon ay napuno na di mamati."),
  ],
  ),

  Word(
  english: "index",
  tagalog: "tagalog: index",
  ilocano: "ilocano: index",
  pangasinense: "pangasinense: index",
  examples: [
  WordExample(tagalog: "Nakatulong ang index sa paghahanap ng impormasyon.", ilocano: "Makatulong so index ed pananap na impormasyon.", pangasinense: "Nakatulong ti index iti panangbirok iti impormasion."),
  WordExample(tagalog: "Ang index ay nagbibigay ng gabay sa mga mambabasa.", ilocano: "Ti index ket mangited ti patnubay kadagiti agbasa.", pangasinense: "Ti index ay nagbibigay so patnubay ed mga mambabasa."),
  ],
  ),

  Word(
  english: "indifference",
  tagalog: "tagalog: kawalang-interes",
  ilocano: "ilocano: inkaandi-interes",
  pangasinense: "pangasinense: kinaawan panagraem",
  examples: [
  WordExample(tagalog: "Napansin ang kawalang-interes.", ilocano: "Naimano so inkaandi-interes.", pangasinense: "Napaliiw ti kinaawan panagraem."),
  WordExample(tagalog: "Ang kawalang-interes ay hindi kanais-nais.", ilocano: "Ti kawalang-interes ket saan a napateg.", pangasinense: "Importante so kawalang-interes a di napintas."),
  ],
  ),

  Word(
  english: "indoor plants",
  tagalog: "tagalog: panloob na halaman",
  ilocano: "ilocano: tanaman ed loob",
  pangasinense: "pangasinense: tanaman ed loob",
  examples: [
  WordExample(tagalog: "Ang mga panloob na halaman ay nangangailangan ng pagtutubig.", ilocano: "Saray tanaman ed loob na abung et kaukolan ya diligan.", pangasinense: "Kasapulan ti panagsibug dagiti mula iti uneg ti balay."),
  WordExample(tagalog: "Ang mga panloob na halaman ay nagbibigay ng sariwang hangin.", ilocano: "Ti panloob a tanaman ket mangited ti nababagas a angin.", pangasinense: "Saray tanaman ed loob ay nag-aambag so sariwang hangin."),
  ],
  ),

  Word(
  english: "inference",
  tagalog: "tagalog: hinuha",
  ilocano: "ilocano: konklusyon",
  pangasinense: "pangasinense: inference",
  examples: [
  WordExample(tagalog: "Ang hinuha ay nakuha mula sa ebidensya.", ilocano: "Say konklusyon et nanlapud ebidensya.", pangasinense: "Naala ti inference manipud kadagiti ebidensia."),
  WordExample(tagalog: "Ang tamang hinuha ay nakabatay sa sapat na impormasyon.", ilocano: "Ti usto a hinuha ket nakabasar iti napateg a impormasyon.", pangasinense: "Importante so tamang inference a nakabatay ed sapat na impormasion."),
  ],
  ),

  Word(
  english: "influence",
  tagalog: "tagalog: impluwensya",
  ilocano: "ilocano: impluensya",
  pangasinense: "pangasinense: impluensya",
  examples: [
  WordExample(tagalog: "Malakas ang impluwensya ng media.", ilocano: "Mabiskeg so impluensya na media.", pangasinense: "Napigsa ti impluensia ti media."),
  WordExample(tagalog: "Ang impluwensya ng pamilya ay mahalaga.", ilocano: "Ti impluensya ti pamilya ket napateg.", pangasinense: "Importante so impluensya na pamilya."),
  ],
  ),

  Word(
  english: "information",
  tagalog: "tagalog: impormasyon",
  ilocano: "ilocano: impormasyon",
  pangasinense: "pangasinense: impormasyon",
  examples: [
  WordExample(tagalog: "Ang impormasyon ay tumpak at napapanahon.", ilocano: "Susto tan sankabaloan so impormasyon.", pangasinense: "Umiso ken napabaro ti impormasion."),
  WordExample(tagalog: "Mahalaga ang tamang impormasyon sa desisyon.", ilocano: "Napateg ti usto a impormasyon iti desisyon.", pangasinense: "Importante so tamang impormasyon ed desisyon."),
  ],
  ),

  Word(
  english: "initial reaction",
  tagalog: "tagalog: unang reaksyon",
  ilocano: "ilocano: inmunan reaksion",
  pangasinense: "pangasinense: damo a reaksion",
  examples: [
  WordExample(tagalog: "Ang unang reaksyon ay shock.", ilocano: "Say inmunan reaksion et abigla.", pangasinense: "Nakigtot ti damo a reaksion."),
  WordExample(tagalog: "Minsan ang unang reaksyon ay hindi mapigilan.", ilocano: "Maminsan ti umuna a reaksion ket saan a mapukaw.", pangasinense: "Minsan, so umuna a reaksion ay di mapigilan."),
  ],
  ),
  Word(
  english: "initiative",
  tagalog: "tagalog: inisyatiba",
  ilocano: "ilocano: inisyatiba",
  pangasinense: "pangasinense: inisyatiba",
  examples: [
  WordExample(tagalog: "Ang inisyatiba ay tinanggap ng komunidad.", ilocano: "Say inisyatiba et inabrasa na komunidad.", pangasinense: "Ti gannuat ket inabrasa ti komunidad."),
  WordExample(tagalog: "Ang inisyatiba ay nagdala ng pagbabago.", ilocano: "Ti inisyatiba ket nangiturturong ti panagbalbaliw.", pangasinense: "So inisyatiba ay nakatulong sa pagbabago."),
  ],
  ),

  Word(
  english: "injury",
  tagalog: "tagalog: pinsala",
  ilocano: "ilocano: pannakadangran",
  pangasinense: "pangasinense: sugat",
  examples: [
  WordExample(tagalog: "Malubha ang pinsala at kailangan ng operasyon.", ilocano: "Nakaro ti pannakadangran ken kasapulan ti operasion.", pangasinense: "Grabe so sugat to tan kaukolan toy operaan."),
  WordExample(tagalog: "Ang pinsala ay nagdulot ng sakit.", ilocano: "Ti pannakadangran ket nagdulot ti sakit.", pangasinense: "Ti sugat ay nagbunga so sakit."),
  ],
  ),

  Word(
  english: "inmate",
  tagalog: "tagalog: preso",
  ilocano: "ilocano: preso",
  pangasinense: "pangasinense: preso",
  examples: [
  WordExample(tagalog: "Maagang pinalaya ang preso.", ilocano: "Masakbay ya nibulos so priso.", pangasinense: "Nasapa a nawayawayaan ti balud."),
  WordExample(tagalog: "Ang preso ay nagbago at umalis.", ilocano: "Ti preso ket nagbalbaliw ken umalis.", pangasinense: "Ti preso ay nagbago na umalis."),
  ],
  ),

  Word(
  english: "innovation",
  tagalog: "tagalog: pagbabago",
  ilocano: "ilocano: panagbalbaliw",
  pangasinense: "pangasinense: pagbabago",
  examples: [
  WordExample(tagalog: "Mayroon silang malakas na pakiramdam ng pagbabago sa kanilang proyekto.", ilocano: "Walaan ira na mabiskeg a liknaan na pananguman ed proyekto ra.", pangasinense: "Napigsa ti riknada iti panagbalbaliw iti proyektoda."),
  WordExample(tagalog: "Ang pagbabago ay nagdudulot ng pag-unlad.", ilocano: "Ti panagbalbaliw ket mangturturong ti pag-unlad.", pangasinense: "Ang pagbabago ay nagdadala ng pag-unlad."),
  ],
  ),

  Word(
  english: "input",
  tagalog: "tagalog: input",
  ilocano: "ilocano: input",
  pangasinense: "pangasinense: input",
  examples: [
  WordExample(tagalog: "Ang input mula sa lahat ay mahalaga.", ilocano: "Say input na balang sakey et makana.", pangasinense: "Napateg ti input manipud iti amin."),
  WordExample(tagalog: "Dapat pahalagahan ang input ng lahat.", ilocano: "Masapul a pahalagahan ti input dagiti amin.", pangasinense: "Importante so pahalagahan so input na amin."),
  ],
  ),

  Word(
  english: "inquiry",
  tagalog: "tagalog: pagtatanong",
  ilocano: "ilocano: imbestigasyon",
  pangasinense: "pangasinense: panagtanong",
  examples: [
  WordExample(tagalog: "Ang pagtatanong ay pinangangasiwaan nang propesyonal.", ilocano: "Say imbestigasyon et inasikaso ed propesyonal a paraan.", pangasinense: "Propesional ti pannakataming ti panagimbestigar."),
  WordExample(tagalog: "Mahalaga ang tamang pagtatanong sa imbestigasyon.", ilocano: "Napateg ti usto a pagtatanong iti imbestigasyon.", pangasinense: "Importante so tamang panagtanong ed imbestigasyon."),
  ],
  ),

  Word(
  english: "insect",
  tagalog: "tagalog: insekto",
  ilocano: "ilocano: insekto",
  pangasinense: "pangasinense: insekto",
  examples: [
  WordExample(tagalog: "Gumapang ang insekto sa mesa.", ilocano: "Inmamot so insekto ed tapew na lamisaan.", pangasinense: "Nagkarayam ti insekto a bimmallasiw iti lamisaan."),
  WordExample(tagalog: "Ang insekto ay nagdala ng sakit.", ilocano: "Ti insekto ket nagdala ti sakit.", pangasinense: "Ti insekto ay nagbunga so sakit."),
  ],
  ),

  Word(
  english: "inside",
  tagalog: "tagalog: loob",
  ilocano: "ilocano: uneg",
  pangasinense: "pangasinense: uneg",
  examples: [
  WordExample(tagalog: "Maaliwalas ang loob ng bahay.", ilocano: "Say loob na abung et maabig.", pangasinense: "Nanam-ay ti uneg ti balay."),
  WordExample(tagalog: "Dapat maaliwalas ang loob ng tahanan.", ilocano: "Masapul a maaliwalas ti uneg ti balay.", pangasinense: "Importante so maaliwalas so uneg na tahanan."),
  ],
  ),

  Word(
  english: "insight",
  tagalog: "tagalog: insight",
  ilocano: "ilocano: pakatalos",
  pangasinense: "pangasinense: insight",
  examples: [
  WordExample(tagalog: "Malalim ang insight.", ilocano: "Aralem so pakatalos to.", pangasinense: "Nauneg ti pannakaawat."),
  WordExample(tagalog: "Ang insight ay nakakatulong sa pag-unawa.", ilocano: "Ti pakatalos ket nakatulong iti panakaawat.", pangasinense: "Ti insight ay nakatulong sa pag-unawa."),
  ],
  ),

  Word(
  english: "installation",
  tagalog: "tagalog: pag-install",
  ilocano: "ilocano: pannakaipasdek",
  pangasinense: "pangasinense: pag-install",
  examples: [
  WordExample(tagalog: "Naging maayos ang pag-install.", ilocano: "Maabig so impan-install.", pangasinense: "Naannayas ti pannakaipasdekna."),
  WordExample(tagalog: "Ang pag-install ay mabilis at madali.", ilocano: "Ti pag-install ket naggawid ken nalaka.", pangasinense: "Dali so pag-install."),
  ],
  ),

  Word(
  english: "instance",
  tagalog: "tagalog: pagkakataon",
  ilocano: "ilocano: instansia",
  pangasinense: "pangasinense: pagkakataon",
  examples: [
  WordExample(tagalog: "Ang pagkakataon ay bihira.", ilocano: "Matalag so inkagawa.", pangasinense: "Manmano ti instansia."),
  WordExample(tagalog: "Dapat samantalahin ang pagkakataon.", ilocano: "Masapul a guntungan ti pagkakataon.", pangasinense: "Dapat i-utilize so pagkakataon."),
  ],
  ),

  Word(
  english: "instruction manual",
  tagalog: "tagalog: instruction manual",
  ilocano: "ilocano: instruction manual",
  pangasinense: "pangasinense: instruction manual",
  examples: [
  WordExample(tagalog: "Malinaw ang instruction manual.", ilocano: "Malinew so instruction manual.", pangasinense: "Nalawag ti instruction manual."),
  WordExample(tagalog: "Dapat sundin ang instruction manual.", ilocano: "Masapul a surotan ti instruction manual.", pangasinense: "Importante so sundin so instruction manual."),
  ],
  ),

  Word(
  english: "instruct",
  tagalog: "tagalog: ituro",
  ilocano: "ilocano: mangisuro",
  pangasinense: "pangasinense: mangisuro",
  examples: [
  WordExample(tagalog: "Ituturo nila sa mga mag-aaral ang mga bagong alituntunin.", ilocano: "Ibangat da ray estudyante ed saray balon totontonen.", pangasinense: "Isuda ti mangisuro kadagiti estudiante kadagiti baro a pagannurotan."),
  WordExample(tagalog: "Mahalaga ang tamang pag-instruct.", ilocano: "Napateg ti usto a mangisuro.", pangasinense: "Importante so tamang mangisuro."),
  ],
  ),

  Word(
  english: "instrument",
  tagalog: "tagalog: instrumento",
  ilocano: "ilocano: instrumento",
  pangasinense: "pangasinense: instrumento",
  examples: [
  WordExample(tagalog: "Ang instrumento ay mahirap tugtugin.", ilocano: "Mairap ya togtogen so instrumento.", pangasinense: "Narigat a matokar ti instrumento."),
  WordExample(tagalog: "Dapat ayusin ang instrumento bago gamitin.", ilocano: "Masapul a aywanan ti instrumento sakbay nga usaren.", pangasinense: "Importante so ayusin so instrumento bago gamitin."),
  ],
  ),

  Word(
  english: "intention",
  tagalog: "tagalog: intensyon",
  ilocano: "ilocano: getma",
  pangasinense: "pangasinense: getma",
  examples: [
  WordExample(tagalog: "Ang intensyon ay tumulong.", ilocano: "Say getma et ontulong.", pangasinense: "Ti panggep ket tumulong."),
  WordExample(tagalog: "Mahalaga ang tamang intensyon.", ilocano: "Napateg ti usto a getma.", pangasinense: "Importante so tamang getma."),
  ],
  ),

  Word(
  english: "interest",
  tagalog: "tagalog: interes",
  ilocano: "ilocano: interes",
  pangasinense: "pangasinense: interes",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng interes sa paksa.", ilocano: "Walay alikna ton interes ed tema.", pangasinense: "Nariknana ti panaginteres iti topiko."),
  WordExample(tagalog: "Mahalaga ang interes sa pag-aaral.", ilocano: "Napateg ti interes iti panagadal.", pangasinense: "Importante so interes ed pag-adal."),
  ],
  ),

  Word(
  english: "interview",
  tagalog: "tagalog: interbyu",
  ilocano: "ilocano: interbiu",
  pangasinense: "pangasinense: interbyu",
  examples: [
  WordExample(tagalog: "Nakaka-nerbiyos ang interview.", ilocano: "Makapaermen so interbyu.", pangasinense: "Makanerbios ti interbiu."),
  WordExample(tagalog: "Dapat maging handa sa interview.", ilocano: "Masapul a maging handa iti interbiu.", pangasinense: "Importante so maging handa ed interbyu."),
  ],
  ),

  Word(
  english: "invention",
  tagalog: "tagalog: imbensyon",
  ilocano: "ilocano: imbension",
  pangasinense: "pangasinense: imbension",
  examples: [
  WordExample(tagalog: "Binago ng imbensyon ang mundo.", ilocano: "Say imbension so anguman ed mundo.", pangasinense: "Binalbaliwan ti imbension ti lubong."),
  WordExample(tagalog: "Ang imbensyon ay nagdala ng progreso.", ilocano: "Ti imbension ket nangiturturong ti progreso.", pangasinense: "Ti imbension ay nagdala ng progreso."),
  ],
  ),

  Word(
  english: "invest",
  tagalog: "tagalog: mamuhunan",
  ilocano: "ilocano: manpuon",
  pangasinense: "pangasinense: mamuhunan",
  examples: [
  WordExample(tagalog: "Mamumuhunan sila sa kumpanya.", ilocano: "Manpuonan ira ed kompanya.", pangasinense: "Pumuonandanto iti kompania."),
  WordExample(tagalog: "Mahalaga ang tamang pamumuhunan.", ilocano: "Napateg ti usto a pamumuhunan.", pangasinense: "Importante so tamang pamumuhunan."),
  ],
  ),

  Word(
  english: "invitation",
  tagalog: "tagalog: imbitasyon",
  ilocano: "ilocano: imbitasion",
  pangasinense: "pangasinense: imbitasyon",
  examples: [
  WordExample(tagalog: "Ang imbitasyon ay ipinadala noong nakaraang linggo.", ilocano: "Say imbitasyon et impawit nen imbeneg a simba.", pangasinense: "Naipatulod ti imbitasion idi napan a lawas."),
  WordExample(tagalog: "Dapat ayusin ang imbitasyon bago ipadala.", ilocano: "Masapul a aywanan ti imbitasyon sakbay nga ipawit.", pangasinense: "Importante so ayusin so imbitasyon bago ipatulod."),
  ],
  ),
  Word(
  english: "invisible",
  tagalog: "tagalog: hindi nakikita",
  ilocano: "ilocano: agnanengneng",
  pangasinense: "pangasinense: di makita",
  examples: [
  WordExample(tagalog: "Ang hindi nakikitang tao ay isang misteryo.", ilocano: "Say agnanengneng a too et sakey a misteryo.", pangasinense: "Maysa a misterio ti di makita a tao."),
  WordExample(tagalog: "Minsan ang mga hindi nakikita ay mas mahirap intindihin.", ilocano: "Sakbay ti agnanengneng ket mas narigat a maawatan.", pangasinense: "Minsan so di makita ay mas malumit tan pangingkat."),
  ],
  ),

  Word(
  english: "island",
  tagalog: "tagalog: isla",
  ilocano: "ilocano: isla",
  pangasinense: "pangasinense: isla",
  examples: [
  WordExample(tagalog: "Ang isla ay maganda at liblib.", ilocano: "Marakep tan nisulinek so isla.", pangasinense: "Napintas ken nasulinek ti isla."),
  WordExample(tagalog: "Maraming mga isla ang matatagpuan sa paligid.", ilocano: "Adu a isla ti masarakan iti sirkulo.", pangasinense: "Marami so isla na matatagpuan ed paligid."),
  ],
  ),

  Word(
  english: "issue",
  tagalog: "tagalog: isyu",
  ilocano: "ilocano: isyu",
  pangasinense: "pangasinense: isyu",
  examples: [
  WordExample(tagalog: "Ang isyu ay nalutas nang maayos.", ilocano: "Say isyu et naresolbe ed maabig a paraan.", pangasinense: "Narisut ti isyu a nainggayyeman."),
  WordExample(tagalog: "Dapat pag-usapan ang mga isyu.", ilocano: "Masapul a pagtalakayan dagiti isyu.", pangasinense: "Dapat usapan so isyu."),
  ],
  ),

  Word(
  english: "jacket",
  tagalog: "tagalog: dyaket",
  ilocano: "ilocano: dyaket",
  pangasinense: "pangasinense: dyaket",
  examples: [
  WordExample(tagalog: "Ang jacket ay mainit at komportable.", ilocano: "Say dyaket et makapal tan komportable.", pangasinense: "Nabara ken komportable ti dyaket."),
  WordExample(tagalog: "Mahalaga ang tamang jacket sa taglamig.", ilocano: "Napateg ti usto a dyaket iti taglamig.", pangasinense: "Importante so tamang dyaket ed tag-lamig."),
  ],
  ),

  Word(
  english: "jam",
  tagalog: "tagalog: jam",
  ilocano: "ilocano: jam",
  pangasinense: "pangasinense: jam",
  examples: [
  WordExample(tagalog: "Ang jam ay masarap sa toast.", ilocano: "Mananam so jam ed tinapay.", pangasinense: "Naimas ti jam iti toast."),
  WordExample(tagalog: "Gustong-gusto ko ang strawberry jam.", ilocano: "Kayat ko ti strawberry jam.", pangasinense: "Gusto ko so strawberry jam."),
  ],
  ),

  Word(
  english: "jar",
  tagalog: "tagalog: garapon",
  ilocano: "ilocano: garapon",
  pangasinense: "pangasinense: garapon",
  examples: [
  WordExample(tagalog: "Ang garapon ay puno ng cookies.", ilocano: "Say garapon et napno na biskwit.", pangasinense: "Napno ti garapon iti cookies."),
  WordExample(tagalog: "Dapat masira ang garapon upang makuha ang laman.", ilocano: "Masapul a masarakan ti garapon tapno makuha ti laman.", pangasinense: "Importante so masira so garapon para makuha so laman."),
  ],
  ),

  Word(
  english: "jewel",
  tagalog: "tagalog: hiyas",
  ilocano: "ilocano: alahas",
  pangasinense: "pangasinense: hiyas",
  examples: [
  WordExample(tagalog: "Ang hiyas ay kumikinang sa liwanag.", ilocano: "Say alahas so mankirlap ed liwawa.", pangasinense: "Nagkir-in ti alahas iti lawag."),
  WordExample(tagalog: "Mahalaga ang mga hiyas sa kasal.", ilocano: "Napateg dagiti alahas iti kasal.", pangasinense: "Importante so hiyas ed kasal."),
  ],
  ),

  Word(
  english: "journey",
  tagalog: "tagalog: paglalakbay",
  ilocano: "ilocano: panagdaliasat",
  pangasinense: "pangasinense: paglalakbay",
  examples: [
  WordExample(tagalog: "Ang paglalakbay ay mahaba ngunit kapaki-pakinabang.", ilocano: "Andukey so biahe balet ta makagunggona.", pangasinense: "Atiddog ti panagdaliasat ngem makagunggona."),
  WordExample(tagalog: "Ang paglalakbay ay puno ng karanasan.", ilocano: "Ti panagdaliasat ket napno ti karanasan.", pangasinense: "Ti paglalakbay ay napuno ng karanasan."),
  ],
  ),

  Word(
  english: "judge",
  tagalog: "tagalog: hukom",
  ilocano: "ilocano: hues",
  pangasinense: "pangasinense: hukom",
  examples: [
  WordExample(tagalog: "Ang hukom ay gumawa ng isang patas na desisyon.", ilocano: "Patas so desisyon na huis.", pangasinense: "Nalinteg ti desision ti hues."),
  WordExample(tagalog: "Dapat respetuhin ang desisyon ng hukom.", ilocano: "Masapul a respitwen ti desisyon ti hukom.", pangasinense: "Importante so respetar so desisyon na hukom."),
  ],
  ),

  Word(
  english: "jungle",
  tagalog: "tagalog: gubat",
  ilocano: "ilocano: kabakiran",
  pangasinense: "pangasinense: gubat",
  examples: [
  WordExample(tagalog: "Ang gubat ay masukal at ligaw.", ilocano: "Say katakelan et makapal tan atap.", pangasinense: "Napuskol ken naatap ti kabakiran."),
  WordExample(tagalog: "Maraming hayop ang naninirahan sa gubat.", ilocano: "Adu a hayop ti agnanaed iti gubat.", pangasinense: "Marami so hayop na naninirahan ed gubat."),
  ],
  ),

  Word(
  english: "justice",
  tagalog: "tagalog: katarungan",
  ilocano: "ilocano: hustisia",
  pangasinense: "pangasinense: katarungan",
  examples: [
  WordExample(tagalog: "Naramdaman nila ang katarungan sa mundo.", ilocano: "Nalikna ra so inkahustisya ed mundo.", pangasinense: "Nariknada ti rikna ti hustisia iti lubong."),
  WordExample(tagalog: "Dapat ipaglaban ang katarungan.", ilocano: "Masapul a ipaglaban ti hustisia.", pangasinense: "Importante so ipaglaban so katarungan."),
  ],
  ),

  Word(
  english: "joke",
  tagalog: "tagalog: biro",
  ilocano: "ilocano: angaw",
  pangasinense: "pangasinense: joke",
  examples: [
  WordExample(tagalog: "Nakakatawa ang biro na ikinatawa ng lahat.", ilocano: "Makapalek so joke tan akatawa so amin.", pangasinense: "Nakakatkatawa ti angaw ken nangpakatawa iti amin."),
  WordExample(tagalog: "Minsan ang mga biro ay nakakasakit.", ilocano: "Sakbay dagiti biro ket makaperdi.", pangasinense: "Minsan so joke ay nakakasakit."),
  ],
  ),

  Word(
  english: "journal",
  tagalog: "tagalog: dyurnal",
  ilocano: "ilocano: journal",
  pangasinense: "pangasinense: dyurnal",
  examples: [
  WordExample(tagalog: "Ang journal ay puno ng mga kaisipan.", ilocano: "Say dyurnal et napno na saray kanonotan.", pangasinense: "Napno ti journal kadagiti kapanunotan."),
  WordExample(tagalog: "Mahalaga ang pagsusulat sa journal.", ilocano: "Napateg ti panagsurat iti journal.", pangasinense: "Importante so pagsusulat ed dyurnal."),
  ],
  ),

  Word(
  english: "journey of life",
  tagalog: "tagalog: paglalakbay ng buhay",
  ilocano: "ilocano: panagdaliasat ti biag",
  pangasinense: "pangasinense: paglalakbay na buhay",
  examples: [
  WordExample(tagalog: "Ang paglalakbay sa buhay ay natatangi para sa lahat.", ilocano: "Say biahe na bilay et nikadkaduma ed balang sakey.", pangasinense: "Naisangsangayan ti panagdaliasat ti biag para iti tunggal maysa."),
  WordExample(tagalog: "Dapat tamasahin ang paglalakbay ng buhay.", ilocano: "Masapul a enjoy-en ti panagdaliasat ti biag.", pangasinense: "Importante so tamasahin so paglalakbay na buhay."),
  ],
  ),

  Word(
  english: "jubilant",
  tagalog: "tagalog: masaya",
  ilocano: "ilocano: naragsak",
  pangasinense: "pangasinense: masaya",
  examples: [
  WordExample(tagalog: "Ang masayang tao ay nagbunyi para sa kanilang koponan.", ilocano: "Saray manliliket a karaklan so nanliket parad team da.", pangasinense: "Nagrag-o ti naragsak a bunggoy para iti team-da."),
  WordExample(tagalog: "Masaya ang lahat sa tagumpay.", ilocano: "Naragsak amin iti pannakabaknang.", pangasinense: "Masaya so amin ed panagwawagi."),
  ],
  ),

  Word(
  english: "juggle",
  tagalog: "tagalog: juggle",
  ilocano: "ilocano: juggle",
  pangasinense: "pangasinense: juggle",
  examples: [
  WordExample(tagalog: "Siya ay nagkaroon ng isang mahusay na juggle sa kanyang oras.", ilocano: "Sikatoy walaan na baleg a panag-juggle ed panaon to.", pangasinense: "Dakkel ti juggle-na iti panawenna."),
  WordExample(tagalog: "Minsan mahirap mag-juggle ng maraming gawain.", ilocano: "Sakbay narigat a panag-juggle ti adu a trabaho.", pangasinense: "Minsan so mahirap mag-juggle ed adu a gawain."),
  ],
  ),

  Word(
  english: "jumpy",
  tagalog: "tagalog: tumatalon-talon",
  ilocano: "ilocano: aglukluksaw",
  pangasinense: "pangasinense: tumatalon-talon",
  examples: [
  WordExample(tagalog: "Ang tumatalon-talon na kuneho ay tumakbo palayo.", ilocano: "Say malukso a kuneho so binmatik.", pangasinense: "Nagdardaras a pimmanaw ti aglukluksaw a koneho."),
  WordExample(tagalog: "Minsan ang mga jumpy na hayop ay nakakatakot.", ilocano: "Sakbay dagiti jumpy a hayop ket nakakapangilabot.", pangasinense: "Minsan so jumpy na hayop ay nakakatakot."),
  ],
  ),

  Word(
  english: "keep",
  tagalog: "tagalog: itago",
  ilocano: "ilocano: pansiansiaen",
  pangasinense: "pangasinense: itago",
  examples: [
  WordExample(tagalog: "Itatago nila ang sikreto.", ilocano: "Pansiansiaen da so sekreto.", pangasinense: "Ilimeddanto ti sekreto."),
  WordExample(tagalog: "Dapat itago ang mga mahalagang bagay.", ilocano: "Masapul a itago dagiti napateg a banag.", pangasinense: "Importante so itago so mahalagang bagay."),
  ],
  ),

  Word(
  english: "key",
  tagalog: "tagalog: susi",
  ilocano: "ilocano: tombok",
  pangasinense: "pangasinense: susi",
  examples: [
  WordExample(tagalog: "Binuksan ng susi ang pinto.", ilocano: "Say tombok so angilukas ed puerta.", pangasinense: "Ti tulbek ti nanglukat iti ridaw."),
  WordExample(tagalog: "Minsan mahirap hanapin ang susi.", ilocano: "Sakbay narigat a masarakan ti tombok.", pangasinense: "Minsan so mahirap hanapin so susi."),
  ],
  ),

  Word(
  english: "kid",
  tagalog: "tagalog: bata",
  ilocano: "ilocano: ubing",
  pangasinense: "pangasinense: bata",
  examples: [
  WordExample(tagalog: "Naglaro ang bata sa bakuran.", ilocano: "Nan-games so ugaw ed sular.", pangasinense: "Nagay-ayam ti ubing iti paraangan."),
  WordExample(tagalog: "Mahilig ang bata sa mga laruan.", ilocano: "Kayat ti ubing dagiti toy.", pangasinense: "Gusto so bata so mga laruan."),
  ],
  ),
  Word(
  english: "killer",
  tagalog: "pumatay",
  ilocano: "managpatey",
  pangasinense: "mammapatay",
  examples: [
  WordExample(tagalog: "Nahuli ang pumatay sa kanyang biktima.", ilocano: "Nakitang ti managpatey ed biktima na.", pangasinense: "Naghuli so mammapatay ed biktima na."),
  WordExample(tagalog: "Ang pumatay ay nahatulan ng habang buhay na pagkabilanggo.", ilocano: "Ti managpatey ket nahatulan ti kasangay a panagkurang.", pangasinense: "Ti mammapatay ay nahatulan na magtagal ed bilanggohan.")
  ],
  ),

  Word(
  english: "kindness",
  tagalog: "kabaitan",
  ilocano: "kinaimbag",
  pangasinense: "kinaimbagan",
  examples: [
  WordExample(tagalog: "Ang kabaitan ng mga estranghero ay mahalaga.", ilocano: "Ti kinaimbag dagiti estranghero ket napateg.", pangasinense: "Napateg so kinaimbagan dagiti estranghero."),
  WordExample(tagalog: "Nagpakita siya ng kabaitan sa kanyang kapwa.", ilocano: "Nagpakita isuna ti kinaimbag na ed kapwa na.", pangasinense: "Nangipakita na so kinaimbagan ed kapwa na.")
  ],
  ),

  Word(
  english: "kingdom",
  tagalog: "kaharian",
  ilocano: "panarian",
  pangasinense: "pagarian",
  examples: [
  WordExample(tagalog: "Ang kaharian ay pinamunuan ng isang matalinong hari.", ilocano: "Ti panarian ket inuleyan ti maysa a makabat a ari.", pangasinense: "Ti pagarian ay pinamunuan na maysa a matalino na hari."),
  WordExample(tagalog: "Maraming mga tao ang namuhay sa kaharian.", ilocano: "Adu a tao ti namaymaysa ed panarian.", pangasinense: "Marami so tao na namuhay ed pagarian.")
  ],
  ),

  Word(
  english: "kitchen",
  tagalog: "kusina",
  ilocano: "kusina",
  pangasinense: "kosina",
  examples: [
  WordExample(tagalog: "Ang kusina ay puno ng mga masasarap na pagkain.", ilocano: "Ti kusina ket napno dagiti naimas a makan.", pangasinense: "Naariwawa ti kosina ed mga naimas na makan."),
  WordExample(tagalog: "Nagluto siya sa kusina ng kanyang paboritong ulam.", ilocano: "Nagluto isuna ed kusina ti paborito na a ulam.", pangasinense: "Nagluto na ed kosina ti paborito na na ulam.")
  ],
  ),

  Word(
  english: "kite",
  tagalog: "saranggola",
  ilocano: "saranggola",
  pangasinense: "kite",
  examples: [
  WordExample(tagalog: "Ang saranggola ay lumilipad nang mataas sa langit.", ilocano: "Ti saranggola ket aglup-lupad ed nangato ti langit.", pangasinense: "Nagtayab ti kite ed nangato ed langit."),
  WordExample(tagalog: "Masaya ang mga bata habang naglalaro ng saranggola.", ilocano: "Naragsak dagiti ubing bayat ti aglup-lupad ti saranggola.", pangasinense: "Masaya so mga bata habang naglalaro ti kite.")
  ],
  ),

  Word(
  english: "knee",
  tagalog: "tuho",
  ilocano: "pueg",
  pangasinense: "tulang",
  examples: [
  WordExample(tagalog: "Nasugatan ang kanyang tuhod sa laro.", ilocano: "Nasugatan ti pueg na ed ay-ayam.", pangasinense: "Nasugatan so tulang na ed ay-ayam."),
  WordExample(tagalog: "Maging maingat sa iyong tuhod habang naglalaro.", ilocano: "Agpayso a maingat ed pueg mo bayat ti ay-ayam.", pangasinense: "Maging maingat ka ed tulang mo habang naglalaro.")
  ],
  ),

  Word(
  english: "knock",
  tagalog: "katok",
  ilocano: "tuktok",
  pangasinense: "tuktok",
  examples: [
  WordExample(tagalog: "May katok sa pinto na nagulat sa kanya.", ilocano: "Adda tuktok ed puerta a nagulat kadakuada.", pangasinense: "Adda tuktok ed ridaw na nagulat ed sikato."),
  WordExample(tagalog: "Nagkatok siya sa pinto ng mahina.", ilocano: "Nagtuktok isuna ed puerta nga nalaka.", pangasinense: "Nagtuktok na ed ridaw na maaw-awag.")
  ],
  ),

  Word(
  english: "knowledge",
  tagalog: "kaalaman",
  ilocano: "pannakaammo",
  pangasinense: "pannakaammo",
  examples: [
  WordExample(tagalog: "Ang kaalaman na kanyang ibinahagi ay mahalaga.", ilocano: "Ti pannakaammo na inranudna ket napateg.", pangasinense: "Napateg ti pannakaammo na inranudna."),
  WordExample(tagalog: "Mahalaga ang kaalaman sa pag-unlad.", ilocano: "Napateg ti pannakaammo ed panag-unlad.", pangasinense: "Napateg so pannakaammo ed pag-unlad.")
  ],
  ),

  Word(
  english: "labor",
  tagalog: "paggawa",
  ilocano: "kimey",
  pangasinense: "panagtrabaho",
  examples: [
  WordExample(tagalog: "Ang paggawa ay mahirap ngunit kapaki-pakinabang.", ilocano: "Mairap ti kimey ngem makagunggona.", pangasinense: "Narigat ti panagtrabaho ngem makagunggona."),
  WordExample(tagalog: "Ang kanyang paggawa ay nagbunga ng magandang resulta.", ilocano: "Ti kimey na nagbunga ti nasayaat a resulta.", pangasinense: "Ti panagtrabaho na nagbunga ti magandang resulta.")
  ],
  ),

  Word(
  english: "lack",
  tagalog: "kakulangan",
  ilocano: "kakulangan",
  pangasinense: "kakulangan",
  examples: [
  WordExample(tagalog: "Ang kakulangan ng mga mapagkukunan ay isang problema.", ilocano: "Ti kakulangan dagiti rekurso ket maysa a problema.", pangasinense: "Ti kakulangan na mga rekurso ay maysa a problema."),
  WordExample(tagalog: "Kailangan itong ayusin upang matugunan ang kakulangan.", ilocano: "Kasapulan daytoy a maayos tapno masolbar ti kakulangan.", pangasinense: "Kailangan so ayusin daytoy tapno masolusyonan so kakulangan.")
  ],
  ),

  Word(
  english: "ladder",
  tagalog: "hagdan",
  ilocano: "agdan",
  pangasinense: "agdan",
  examples: [
  WordExample(tagalog: "Ang hagdan ay nakasandal sa pader.", ilocano: "Ti agdan ket nakasandal ed padir.", pangasinense: "Ti agdan ay nakasandal ed dingding."),
  WordExample(tagalog: "Gumagamit siya ng hagdan upang umakyat.", ilocano: "Gumagamit isuna ti agdan tapno umakyat.", pangasinense: "Gumagamit na so agdan para umakyat.")
  ],
  ),

  Word(
  english: "lake",
  tagalog: "lawa",
  ilocano: "danaw",
  pangasinense: "danaw",
  examples: [
  WordExample(tagalog: "Ang lawa ay tahimik at payapa.", ilocano: "Ti danaw ket natalna ken payapa.", pangasinense: "Ti danaw ay tahimik tan payapa."),
  WordExample(tagalog: "Maraming isda ang makikita sa lawa.", ilocano: "Adu a lames ti makita ed danaw.", pangasinense: "Marami so isda na makikita ed danaw.")
  ],
  ),

  Word(
  english: "lamp",
  tagalog: "lampara",
  ilocano: "lampara",
  pangasinense: "lampara",
  examples: [
  WordExample(tagalog: "Nailawan ng lampara ang silid.", ilocano: "Nailawan ti lampara ti silid.", pangasinense: "Nailawan so lampara ed kuarto."),
  WordExample(tagalog: "Pinatay niya ang lampara bago matulog.", ilocano: "Pinatayna ti lampara sakbay ti maturog.", pangasinense: "Pinatay na so lampara bayat ti matulog.")
  ],
  ),

  Word(
  english: "land",
  tagalog: "lupa",
  ilocano: "daga",
  pangasinense: "lupa",
  examples: [
  WordExample(tagalog: "Ang lupa ay pinagtataniman ng mga gulay.", ilocano: "Ti daga ket pagtanuman dagiti utong.", pangasinense: "Ti lupa ay pagtaniman na mga gulay."),
  WordExample(tagalog: "May mga hayop na nakatira sa lupa.", ilocano: "Adda dagiti hayop a nakatir ed daga.", pangasinense: "Adda so mga hayop na nakatira ed lupa.")
  ],
  ),
  Word(
  english: "language",
  tagalog: "wika",
  ilocano: "lenguahe",
  pangasinense: "lenguahe",
  examples: [
  WordExample(tagalog: "Ang wika ay mahirap matutunan.", ilocano: "Mairap ya aralen so lenguahe.", pangasinense: "Narigat nga adalen ti pagsasao."),
  WordExample(tagalog: "Mahilig siyang matuto ng ibang wika.", ilocano: "Naimbag a matutunan isuna dagiti sabali a lenguahe.", pangasinense: "Masaya so mangkatutok ed ibang lenguahe.")
  ],
  ),

  Word(
  english: "lap",
  tagalog: "pagtakbo",
  ilocano: "panliber",
  pangasinense: "panliber",
  examples: [
  WordExample(tagalog: "Ang lap sa paligid ng track ay nakakapagod.", ilocano: "Makapakesaw so panliber ed track.", pangasinense: "Makabannog ti lap iti aglawlaw ti riles."),
  WordExample(tagalog: "Ang mga atleta ay tumakbo ng maraming lap.", ilocano: "Dagiti atleta ket immarami ti panliber.", pangasinense: "Naglap so mga atleta ed maraming laps.")
  ],
  ),

  Word(
  english: "launch",
  tagalog: "paglulunsad",
  ilocano: "pangilunsad",
  pangasinense: "pangilunsad",
  examples: [
  WordExample(tagalog: "Pumunta sila sa paglulunsad ng bagong produkto.", ilocano: "Linma ra ed pangilunsad na balon produkto.", pangasinense: "Napanda iti pannakairuar ti baro a produkto."),
  WordExample(tagalog: "Ang paglulunsad ng proyekto ay matagumpay.", ilocano: "Ti pangilunsad ti proyekto ket napagpatingga.", pangasinense: "Naging matagumpay so paglulunsad ti proyekto.")
  ],
  ),

  Word(
  english: "law",
  tagalog: "batas",
  ilocano: "linteg",
  pangasinense: "batas",
  examples: [
  WordExample(tagalog: "Mahigpit na ipinatupad ang batas.", ilocano: "Malet ya impaakseb so ganggan.", pangasinense: "Nainget ti pannakaipatungpal ti linteg."),
  WordExample(tagalog: "Kailangang sundin ang batas ng bansa.", ilocano: "Kasapulan a suruten ti linteg ti pagilian.", pangasinense: "Kaukolan so suuden so batas na bansa.")
  ],
  ),

  Word(
  english: "lead",
  tagalog: "pangunguna",
  ilocano: "pangidaulo",
  pangasinense: "pangidaulo",
  examples: [
  WordExample(tagalog: "Napakahalaga ng pangunguna sa proyekto.", ilocano: "Say pangidaulo ed proyekto et importante.", pangasinense: "Napateg unay ti panangidaulo iti proyekto."),
  WordExample(tagalog: "Ang kanyang pangunguna ay nagdala ng tagumpay.", ilocano: "Ti pangidaulo na ket nagda iti kadaklan a tagumpay.", pangasinense: "Ti pangidaulo na ay nagdala ed kasangayan.")
  ],
  ),

  Word(
  english: "leaf",
  tagalog: "dahon",
  ilocano: "bulong",
  pangasinense: "dahon",
  examples: [
  WordExample(tagalog: "Dahan-dahang nahulog ang dahon sa lupa.", ilocano: "Say bulong et kalmadon atumba ed dalin.", pangasinense: "Siaannad a natnag ti bulong iti daga."),
  WordExample(tagalog: "Ang mga dahon ay nalaglag sa taglagas.", ilocano: "Dagiti bulong ket nagdalus ed panawen ti taglagas.", pangasinense: "Dagiti dahon ay nalaglag ed taglagas.")
  ],
  ),

  Word(
  english: "learning",
  tagalog: "pag-aaral",
  ilocano: "panagadal",
  pangasinense: "panag-aaral",
  examples: [
  WordExample(tagalog: "Ang proseso ng pag-aaral ay tumatagal ng oras.", ilocano: "Say proseso na panagaral et mankaukolan na panaon.", pangasinense: "Kasapulan ti panawen ti proseso ti panagsursuro."),
  WordExample(tagalog: "Ang pag-aaral ay isang mahalagang bahagi ng buhay.", ilocano: "Ti panagadal ket maysa a napateg a paset ti biag.", pangasinense: "Ti pag-aaral ay maysa na napateg na bahagi na biag.")
  ],
  ),

  Word(
  english: "lesson",
  tagalog: "aral",
  ilocano: "leksion",
  pangasinense: "leksyon",
  examples: [
  WordExample(tagalog: "Naging maliwanag ang aral.", ilocano: "Makapaliwawa so leksion.", pangasinense: "Makalawlawag ti leksion."),
  WordExample(tagalog: "Mahalaga ang bawat aral na natutunan.", ilocano: "Napateg ti tunggal aral a naadal.", pangasinense: "Napateg so bawa leksyon na natutunan.")
  ],
  ),

  Word(
  english: "letter",
  tagalog: "liham",
  ilocano: "sulat",
  pangasinense: "sulat",
  examples: [
  WordExample(tagalog: "Ang liham ay isinulat nang may pag-iingat.", ilocano: "Maalwar ya insulat so sulat.", pangasinense: "Naisurat a siaannad ti surat."),
  WordExample(tagalog: "Isinulat ko ang liham para sa aking kaibigan.", ilocano: "Naisurat ko ti sulat para iti gayyem ko.", pangasinense: "Naisurat ko so sulat para ed kaibigan ko.")
  ],
  ),

  Word(
  english: "level",
  tagalog: "antas",
  ilocano: "lebel",
  pangasinense: "lebel",
  examples: [
  WordExample(tagalog: "Mataas ang antas ng kahirapan.", ilocano: "Atagey so lebel na kairapan.", pangasinense: "Nangato ti lebel ti rigat."),
  WordExample(tagalog: "Kailangan ng mas mataas na antas ng edukasyon.", ilocano: "Kasapulan ti mas nangato a lebel ti edukasyon.", pangasinense: "Kaukolan so mas mataas na lebel na edukasyon.")
  ],
  ),

  Word(
  english: "library",
  tagalog: "library",
  ilocano: "libraria",
  pangasinense: "library",
  examples: [
  WordExample(tagalog: "Tahimik at payapa ang library.", ilocano: "Mareen tan mareen so library.", pangasinense: "Naulimek ken natalna ti libraria."),
  WordExample(tagalog: "Maraming libro ang makikita sa library.", ilocano: "Adu a libro ti makita ed library.", pangasinense: "Marami so libro na makikita ed library.")
  ],
  ),

  Word(
  english: "license",
  tagalog: "lisensya",
  ilocano: "lisensya",
  pangasinense: "lisensia",
  examples: [
  WordExample(tagalog: "Kinakailangan ang lisensya para sa pagmamaneho.", ilocano: "Kaukolan so lisensya parad panagmaneho.", pangasinense: "Masapul ti lisensia para iti panagmaneho."),
  WordExample(tagalog: "Nawala ang aking lisensya.", ilocano: "Nawawanan ti lisensya ko.", pangasinense: "Nawala so lisensia ko.")
  ],
  ),

  Word(
  english: "life",
  tagalog: "buhay",
  ilocano: "biag",
  pangasinense: "biag",
  examples: [
  WordExample(tagalog: "Masigla ang buhay ng party.", ilocano: "Say bilay na partido et maseseg.", pangasinense: "Nasikap ti biag ti partido."),
  WordExample(tagalog: "Ang buhay ay puno ng mga pagsubok.", ilocano: "Ti biag ket napno dagiti pagsubok.", pangasinense: "Ti biag ay napno so mga pagsubok.")
  ],
  ),

  Word(
  english: "lightness",
  tagalog: "magaan",
  ilocano: "inkagaan",
  pangasinense: "kaagahan",
  examples: [
  WordExample(tagalog: "Nakaramdam sila ng magaan sa kanilang mga puso.", ilocano: "Nalikna ra so inkagaan ed kapusoan da.", pangasinense: "Nariknada ti kinalag-an iti pusoda."),
  WordExample(tagalog: "Ang pakiramdam ng magaan ay nakakabuti.", ilocano: "Ti panagpakpakaammo ti inkagaan ket nasayaat.", pangasinense: "Ti pamagkaagahan ay makakapagpabuti.")
  ],
  ),

  Word(
  english: "line",
  tagalog: "linya",
  ilocano: "linia",
  pangasinense: "linya",
  examples: [
  WordExample(tagalog: "Ang linya ay iginuhit sa buhangin.", ilocano: "Say linya et inguhit ed buer.", pangasinense: "Naidrowing ti linia iti darat."),
  WordExample(tagalog: "Huwag lumabas ng linya.", ilocano: "Saan a bumangon ti linia.", pangasinense: "Saan mo labayan so linya.")
  ],
  ),

  Word(
  english: "link",
  tagalog: "kawing",
  ilocano: "silpo",
  pangasinense: "singsing",
  examples: [
  WordExample(tagalog: "Naputol ang kawing sa kadena.", ilocano: "Aputer so singsing ed kadena.", pangasinense: "Naburak ti silpo iti kawar."),
  WordExample(tagalog: "Ipinagkabit ang mga kawing ng kadena.", ilocano: "Inikkan dagiti kawing ti kadena.", pangasinense: "Inikkan so kawing na kadena.")
  ],
  ),

  Word(
  english: "list",
  tagalog: "listahan",
  ilocano: "listaan",
  pangasinense: "listaan",
  examples: [
  WordExample(tagalog: "Mayroon silang listahan ng mga bagay na bibilhin.", ilocano: "Walay listaan da na saray saliwen da.", pangasinense: "Adda listaan dagiti banag a gatangenda."),
  WordExample(tagalog: "Gumawa ako ng listahan ng mga gawain.", ilocano: "Naggatangak ti listaan dagiti aramid.", pangasinense: "Naggawa so listaan na mga gawain.")
  ],
  ),

  Word(
  english: "literature",
  tagalog: "panitikan",
  ilocano: "literatura",
  pangasinense: "literatura",
  examples: [
  WordExample(tagalog: "Naging inspirasyon ang panitikan.", ilocano: "Makapasagyat so literatura.", pangasinense: "Makaallukoy dagiti literatura."),
  WordExample(tagalog: "Mahilig akong magbasa ng panitikan.", ilocano: "Mahirap ti agbasa ti literatura.", pangasinense: "Gustong-gusto ko so magbasa ed literatura.")
  ],
  ),

  Word(
  english: "location",
  tagalog: "lokasyon",
  ilocano: "lokasion",
  pangasinense: "lokasyon",
  examples: [
  WordExample(tagalog: "Tamang-tama ang lokasyon para sa kaganapan.", ilocano: "Say lokasyon et marakep parad sayan ebento.", pangasinense: "Nasayaat ti lokasionna para iti pasamak."),
  WordExample(tagalog: "Ang lokasyon ay madaling mahanap.", ilocano: "Ti lokasion ket mabalin a masarakan.", pangasinense: "Madali so lokasyon na mahanap.")
  ],
  ),

  Word(
  english: "lock",
  tagalog: "kandado",
  ilocano: "kandado",
  pangasinense: "kandado",
  examples: [
  WordExample(tagalog: "Kinalawang ang kandado at kailangang palitan.", ilocano: "Say kandado et alawang tan kaukolan ya salatan.", pangasinense: "Narusaten ti kandado ket kasapulan a masukatan."),
  WordExample(tagalog: "Nawala ang susi ng kandado.", ilocano: "Nawawanan ti yawe ti kandado.", pangasinense: "Nawala so susi na kandado.")
  ],
  ),

  Word(
  english: "music",
  tagalog: "musika",
  ilocano: "maksil",
  pangasinense: "musika",
  examples: [
  WordExample(tagalog: "Ang malakas na musika ay kasiya-siya.", ilocano: "Makapaliket so maksil a musika.", pangasinense: "Makaay-ayo ti napigsa a musika."),
  WordExample(tagalog: "Mahilig ako sa iba't ibang uri ng musika.", ilocano: "Ay-ayaten ti nadumaduma a klase ti maksil.", pangasinense: "Gustong-gusto ko so iba't-ibang klase na musika.")
  ],
  ),
  Word(
  english: "music",
  tagalog: "musika",
  ilocano: "maksil",
  pangasinense: "musika",
  examples: [
  WordExample(tagalog: "Ang malakas na musika ay kasiya-siya.", ilocano: "Makapaliket so maksil a musika.", pangasinense: "Makaay-ayo ti napigsa a musika."),
  WordExample(tagalog: "Mahilig akong makinig sa iba't ibang uri ng musika.", ilocano: "Ay-ayaten ko ti panagdingeg kadagiti nadumaduma a klase ti maksil.", pangasinense: "Gusto ko so makinig ed iba't ibang klase na musika.")
  ],
  ),

  Word(
  english: "surprise",
  tagalog: "sorpresa",
  ilocano: "sorpresa",
  pangasinense: "sorpresa",
  examples: [
  WordExample(tagalog: "Magugustuhan nila ang sorpresa.", ilocano: "Labalabay da so sorpresa.", pangasinense: "Ay-ayatendanto ti sorpresa."),
  WordExample(tagalog: "Ang sorpresa ay inihanda ng kanilang pamilya.", ilocano: "Ti sorpresa ket naihanda ti pamilya da.", pangasinense: "Inihanda so sorpresa na pamilya da.")
  ],
  ),

  Word(
  english: "loyalty",
  tagalog: "katapatan",
  ilocano: "katooran",
  pangasinense: "kinasungdo",
  examples: [
  WordExample(tagalog: "Kahanga-hanga ang katapatan ng aso.", ilocano: "Makapadinayew so katooran na aso.", pangasinense: "Nadayaw ti kinasungdo ti aso."),
  WordExample(tagalog: "Ang katapatan ng mga kaibigan ay mahalaga.", ilocano: "Ti katapatan dagiti gayyem ket napateg.", pangasinense: "Napateg so kinasungdo na mga kaibigan.")
  ],
  ),

  Word(
  english: "luck",
  tagalog: "suwerte",
  ilocano: "kapalaran",
  pangasinense: "gasat",
  examples: [
  WordExample(tagalog: "Ang suwerte ay pabor sa kanila noong araw na iyon.", ilocano: "Say kapalaran et pabor ed sikara ed saman ya agew.", pangasinense: "Pabor kadakuada ti gasat iti dayta nga aldaw."),
  WordExample(tagalog: "Sa tingin ko, suwerte ang gumabay sa kanila.", ilocano: "Aglalo a pabor ti kapalaran kadakuada.", pangasinense: "Sa tingin ko, ang gasat ay nakatulong kadakuada.")
  ],
  ),

  Word(
  english: "lunch",
  tagalog: "tanghalian",
  ilocano: "panangan",
  pangasinense: "pangngaldaw",
  examples: [
  WordExample(tagalog: "Inihain kaagad ang tanghalian.", ilocano: "Say panangan so niserbi a tampol.", pangasinense: "Dagus a naidasar ti pangngaldaw."),
  WordExample(tagalog: "Masarap ang tanghalian na inihanda.", ilocano: "Naimas ti panangan a naihanda.", pangasinense: "Masarap so pangngaldaw na inihanda.")
  ],
  ),

  Word(
  english: "machine",
  tagalog: "makina",
  ilocano: "makina",
  pangasinense: "makina",
  examples: [
  WordExample(tagalog: "Nasira ang makina nang hindi inaasahan.", ilocano: "Ag-inilaloan ya aderal so makina.", pangasinense: "Di ninamnama a nadadael ti makina."),
  WordExample(tagalog: "Kailangan ng bagong makina para sa proyekto.", ilocano: "Kasapulan ti baro a makina para iti proyekto.", pangasinense: "Masapul so baro na makina para ed proyekto.")
  ],
  ),

  Word(
  english: "magic",
  tagalog: "mahiko",
  ilocano: "mahiko",
  pangasinense: "mahiko",
  examples: [
  WordExample(tagalog: "Kahanga-hanga ang magic show.", ilocano: "Makapakelaw so palabas na mahiko.", pangasinense: "Nakaskasdaaw ti magic show."),
  WordExample(tagalog: "Ang mahiko ay palaging nakakaaliw.", ilocano: "Ti mahiko ket agtultuloy a nakakaaliw.", pangasinense: "Ti mahiko ay nakakaaliw so bagat.")
  ],
  ),

  Word(
  english: "magnet",
  tagalog: "magnet",
  ilocano: "magnet",
  pangasinense: "magnet",
  examples: [
  WordExample(tagalog: "Naakit ng magnet ang metal.", ilocano: "Inakit na magnet so metal.", pangasinense: "Naallukoy ti magnet ti metal."),
  WordExample(tagalog: "Gumagana ang magnet sa mga metal na bagay.", ilocano: "Agaramid ti magnet kadagiti metal a banag.", pangasinense: "Agtrabaho so magnet ed metal na bagay.")
  ],
  ),

  Word(
  english: "mail",
  tagalog: "koreo",
  ilocano: "koreo",
  pangasinense: "koreo",
  examples: [
  WordExample(tagalog: "Late dumating ang mail ngayon.", ilocano: "Atrasado lan sinmabi so koreo natan.", pangasinense: "Naladaw a simmangpet ti koreo ita nga aldaw."),
  WordExample(tagalog: "Dapat suriin ang mga sulat sa mail.", ilocano: "Dapat suruten dagiti surat ed koreo.", pangasinense: "Dapat so suriin so mga sulat ed koreo.")
  ],
  ),

  Word(
  english: "man",
  tagalog: "lalaki",
  ilocano: "laki",
  pangasinense: "laki",
  examples: [
  WordExample(tagalog: "Ang lalaki ay matalino at maalalahanin.", ilocano: "Marunong tan manonot so laki.", pangasinense: "Masirib ken managpanunot ti lalaki."),
  WordExample(tagalog: "Ang mga lalaki ay nagtutulungan sa trabaho.", ilocano: "Dagiti laki ket agtutulungan ed trabaho.", pangasinense: "Dagiti lalaki ay nagtutulungan ed trabaho.")
  ],
  ),

  Word(
  english: "map",
  tagalog: "mapa",
  ilocano: "mapa",
  pangasinense: "mapa",
  examples: [
  WordExample(tagalog: "Ang mapa ay luma at sira na.", ilocano: "Say mapa et daan tan abalang la.", pangasinense: "Daan ken nasuot ti mapa."),
  WordExample(tagalog: "Kailangan nating tingnan ang mapa bago umalis.", ilocano: "Kasapulan tayo a kitaen ti mapa sakbay a mapan.", pangasinense: "Masapul tayong tumingin ed mapa bago umalis.")
  ],
  ),

  Word(
  english: "mark",
  tagalog: "marka",
  ilocano: "marka",
  pangasinense: "marka",
  examples: [
  WordExample(tagalog: "Naiwan ang marka sa dingding.", ilocano: "Say marka so atilak ed padir.", pangasinense: "Nabati ti marka iti diding."),
  WordExample(tagalog: "Ang marka sa papel ay mahalaga.", ilocano: "Ti marka ed papel ket napateg.", pangasinense: "Napateg so marka na papel.")
  ],
  ),

  Word(
  english: "market",
  tagalog: "merkado",
  ilocano: "tindaan",
  pangasinense: "merkado",
  examples: [
  WordExample(tagalog: "Ang merkado ay abala sa aktibidad.", ilocano: "Say tindaan et napno na aktibidad.", pangasinense: "Naariwawa ti merkado iti aktibidad."),
  WordExample(tagalog: "Maraming tao ang nag-shopping sa merkado.", ilocano: "Adu a tattao ti nag-shopping ed merkado.", pangasinense: "Marami so tao na nag-shopping ed merkado.")
  ],
  ),

  Word(
  english: "master",
  tagalog: "master",
  ilocano: "master",
  pangasinense: "master",
  examples: [
  WordExample(tagalog: "Nakakaengganyo ang master of ceremonies.", ilocano: "Say master of ceremony et makapasagyat.", pangasinense: "Makaawis ti master of ceremonies."),
  WordExample(tagalog: "Ang master ng seremonya ay mahusay.", ilocano: "Ti master ti seremonya ket napintas.", pangasinense: "Ti master na seremonya ay mahusay.")
  ],
  ),

  Word(
  english: "meal",
  tagalog: "pagkain",
  ilocano: "panangan",
  pangasinense: "pannangan",
  examples: [
  WordExample(tagalog: "Ang pagkain ay nakabubusog at nakakabusog.", ilocano: "Say panangan et makapaliket tan makapenek.", pangasinense: "Nasustansia ken makapnek ti pannangan."),
  WordExample(tagalog: "Ang pamilya ay nagtipon para sa kanilang pagkain.", ilocano: "Nagtipon ti pamilya para iti panangan da.", pangasinense: "Nagtipon so pamilya para ed pannangan da.")
  ],
  ),

  Word(
  english: "measure",
  tagalog: "sukat",
  ilocano: "sukat",
  pangasinense: "sukat",
  examples: [
  WordExample(tagalog: "Ang sukatan ng tagumpay ay subjective.", ilocano: "Say sukat na itatalona et subjective.", pangasinense: "Ti rukod ti balligi ket suhetibo."),
  WordExample(tagalog: "Kailangan natin ng tamang sukat para sa proyekto.", ilocano: "Kasapulan tayo ti umiso a sukat para iti proyekto.", pangasinense: "Masapul tayong tamang sukat para ed proyekto.")
  ],
  ),
  Word(
  english: "media",
  tagalog: "media",
  ilocano: "media",
  pangasinense: "media",
  examples: [
  WordExample(tagalog: "Ang media ay gumaganap ng isang mahalagang papel sa lipunan.", ilocano: "Say media et walaan na importantin betang ed sosyedad.", pangasinense: "Napateg ti akem ti media iti kagimongan."),
  WordExample(tagalog: "Mahusay ang ginawang coverage ng media sa balita.", ilocano: "Nasayaat ti inaramid a coverage ti media ed balita.", pangasinense: "Mabilis so ginawang coverage na media ed balita.")
  ],
  ),

  Word(
  english: "mediation",
  tagalog: "pamamagitan",
  ilocano: "panagpaarap",
  pangasinense: "mediasion",
  examples: [
  WordExample(tagalog: "Naging matagumpay ang pamamagitan sa paglutas ng mga isyu.", ilocano: "Say panagpaarap so tinmalona ed panresolbe na saray isyu.", pangasinense: "Naballigi ti mediasion a nangrisut kadagiti isyu."),
  WordExample(tagalog: "Ang mediation ay nakatulong sa pag-ayos ng hidwaan.", ilocano: "Ti panagpaarap ket nakatulong iti panang-ayos ti hidwaan.", pangasinense: "Nakatulong so mediasion ed pag-ayos na hidwaan.")
  ],
  ),

  Word(
  english: "medicine",
  tagalog: "gamot",
  ilocano: "tambal",
  pangasinense: "agas",
  examples: [
  WordExample(tagalog: "Mabisa ang gamot.", ilocano: "Epektibo so tambal.", pangasinense: "Epektibo ti agas."),
  WordExample(tagalog: "Kailangan ng reseta para sa gamot na ito.", ilocano: "Kasapulan ti reseta para iti daytoy a tambal.", pangasinense: "Masapul so reseta para ed agas na ito.")
  ],
  ),

  Word(
  english: "meeting",
  tagalog: "pagpupulong",
  ilocano: "miting",
  pangasinense: "miting",
  examples: [
  WordExample(tagalog: "Naging produktibo ang pagpupulong.", ilocano: "Mabunga so miting.", pangasinense: "Nabunga ti gimong."),
  WordExample(tagalog: "Dapat ayusin ang agenda para sa susunod na pagpupulong.", ilocano: "Kasapulan a ayuson ti agenda para iti sumaruno a miting.", pangasinense: "Dapat ayusin so agenda para ed masusunod na miting.")
  ],
  ),

  Word(
  english: "melody",
  tagalog: "himig",
  ilocano: "melodiya",
  pangasinense: "melodia",
  examples: [
  WordExample(tagalog: "Ang himig ay kaakit-akit at masaya.", ilocano: "Say melodiya et makapasagyat tan makapaliket.", pangasinense: "Makaawis ken makaparagsak ti melodia."),
  WordExample(tagalog: "Nakatutok ako sa magagandang himig ng mga awitin.", ilocano: "Agtutokak kadagiti napintas a himig dagiti kantang.", pangasinense: "Nakatutok ak ed magagandang melodia na awitin.")
  ],
  ),

  Word(
  english: "memory",
  tagalog: "alaala",
  ilocano: "pakanodnonotan",
  pangasinense: "alaala",
  examples: [
  WordExample(tagalog: "Ang alaala ay itinatangi magpakailanman.", ilocano: "Say pakanodnonotan et pinabpabli ed andi-anggaan.", pangasinense: "Naipatpateg ti lagip iti agnanayon."),
  WordExample(tagalog: "Ang magandang alaala ay laging mananatili sa puso.", ilocano: "Ti napintas a pakanodnonotan ket agnanayon a mannalon iti pusok.", pangasinense: "Ti magagandang alaala ay mananatili sa puso.")
  ],
  ),

  Word(
  english: "message",
  tagalog: "mensahe",
  ilocano: "mensahe",
  pangasinense: "mensahe",
  examples: [
  WordExample(tagalog: "Ang mensahe ay malinaw at maigsi.", ilocano: "Malinew tan antikey so mensahe.", pangasinense: "Nalawag ken ababa ti mensahe."),
  WordExample(tagalog: "Mahalaga ang mensahe ng liham na ito.", ilocano: "Napateg ti mensahe ti daytoy a surat.", pangasinense: "Napateg so mensahe na surat na ito.")
  ],
  ),

  Word(
  english: "method",
  tagalog: "paraan",
  ilocano: "paraan",
  pangasinense: "paraan",
  examples: [
  WordExample(tagalog: "Ang paraan ng pagtuturo ay makabago.", ilocano: "Makabayon paraan na panagbangat.", pangasinense: "Nakabaro ti pamay-an ti panangisuro."),
  WordExample(tagalog: "Ang tamang paraan ay mahalaga para sa tagumpay.", ilocano: "Ti umiso a paraan ket napateg para iti balligi.", pangasinense: "Napateg so tamang paraan para ed balligi.")
  ],
  ),

  Word(
  english: "middle",
  tagalog: "gitna",
  ilocano: "tengnga",
  pangasinense: "tengnga",
  examples: [
  WordExample(tagalog: "Makitid ang gitna ng kalsada.", ilocano: "Mainget so pegley na karsada.", pangasinense: "Akikid ti tengnga ti dalan."),
  WordExample(tagalog: "Dapat maging maingat sa gitna ng daan.", ilocano: "Kasapulan a maingat iti tengnga ti dalan.", pangasinense: "Dapat maging maingat ed tengnga na daan.")
  ],
  ),

  Word(
  english: "migration",
  tagalog: "paglipat",
  ilocano: "inyalis",
  pangasinense: "paglipat",
  examples: [
  WordExample(tagalog: "Ang paglipat ay isang makabuluhang kaganapan.", ilocano: "Say inyalis da et sakey a makabkabaliksan ya ebento.", pangasinense: "Ti panagakar ket maysa a napateg a pasamak."),
  WordExample(tagalog: "Ang migration ay may malaking epekto sa lipunan.", ilocano: "Ti panagakar ket adda dakkel a epekto iti sosyedad.", pangasinense: "Ang paglipat ay may malaking epekto ed lipunan.")
  ],
  ),

  Word(
  english: "milestone",
  tagalog: "milestone",
  ilocano: "milestone",
  pangasinense: "milestone",
  examples: [
  WordExample(tagalog: "Ipinagdiwang ang milestone.", ilocano: "Sinelebraan so milestone.", pangasinense: "Naselebraran ti milestone."),
  WordExample(tagalog: "Ang bawat milestone ay mahalagang bahagi ng ating buhay.", ilocano: "Ti tunggal milestone ket napateg a paset ti biag tayo.", pangasinense: "Bawat milestone ay mahalagang bahagi na buhay tayo.")
  ],
  ),

  Word(
  english: "mind",
  tagalog: "isip",
  ilocano: "nonot",
  pangasinense: "isip",
  examples: [
  WordExample(tagalog: "Ang isip ay isang makapangyarihang kasangkapan.", ilocano: "Say nonot et mabiskeg a kagawaan.", pangasinense: "Nabileg nga alikamen ti isip."),
  WordExample(tagalog: "Dapat malinaw ang isip sa paggawa ng desisyon.", ilocano: "Kasapulan a nalawag ti nonot iti panagaramid ti desisyon.", pangasinense: "Dapat malinaw so isip ed paggawa na desisyon.")
  ],
  ),

  Word(
  english: "mine",
  tagalog: "minahan",
  ilocano: "minas",
  pangasinense: "minahan",
  examples: [
  WordExample(tagalog: "Ang minahan ay mayaman sa mga mapagkukunan.", ilocano: "Say minas et mayaman ed kayamanan.", pangasinense: "Nabaknang ti pagminasan kadagiti gameng."),
  WordExample(tagalog: "Ang mga minahan ay mahalaga sa ekonomiya.", ilocano: "Dagiti minas ket napateg iti ekonomiya.", pangasinense: "Napateg so minahan ed ekonomiya.")
  ],
  ),

  Word(
  english: "mirror",
  tagalog: "salamin",
  ilocano: "espiho",
  pangasinense: "salamin",
  examples: [
  WordExample(tagalog: "Ang ganda ng salamin sa kwarto.", ilocano: "Say espiho so mangipapatnag na maong ed kuarto.", pangasinense: "Napintas ti panangyanninaw ti sarming iti siled."),
  WordExample(tagalog: "Tumingin ako sa salamin bago umalis.", ilocano: "Nagtutokak iti espiho sakbay a mapan.", pangasinense: "Tumingin ak ed salamin bago umalis.")
  ],
  ),

  Word(
  english: "mission",
  tagalog: "misyon",
  ilocano: "mision",
  pangasinense: "mision",
  examples: [
  WordExample(tagalog: "Natapos ang misyon.", ilocano: "Asumpal so misyon.", pangasinense: "Natungpal ti mision."),
  WordExample(tagalog: "Mahigpit ang misyon ng ating grupo.", ilocano: "Nainget ti misyon ti grupo tayo.", pangasinense: "Mahalaga so misyon na grupo tayo.")
  ],
  ),

  Word(
  english: "mistake",
  tagalog: "pagkakamali",
  ilocano: "biddut",
  pangasinense: "biddut",
  examples: [
  WordExample(tagalog: "Ang pagkakamali ay inamin.", ilocano: "Inamin so lingo.", pangasinense: "Nabigbig ti biddut."),
  WordExample(tagalog: "Mahalaga ang pagtanggap ng pagkakamali.", ilocano: "Napateg ti panangawat ti biddut.", pangasinense: "Napateg so pagtanggap na biddut.")
  ],
  ),

  Word(
  english: "mixture",
  tagalog: "timpla",
  ilocano: "laok",
  pangasinense: "mixture",
  examples: [
  WordExample(tagalog: "Ang timpla ay mahusay na pinaghalo.", ilocano: "Say laok et maong ya inlaok.", pangasinense: "Nasayaat ti panaglaok ti mixture."),
  WordExample(tagalog: "Dapat ayusin ang timpla para sa mas masarap na pagkain.", ilocano: "Kasapulan a ayuson ti laok para iti mas masarap a pannangan.", pangasinense: "Dapat ayusin so timpla para ed mas masarap na pagkain.")
  ],
  ),

  Word(
  english: "model",
  tagalog: "modelo",
  ilocano: "modelo",
  pangasinense: "modelo",
  examples: [
  WordExample(tagalog: "Ang modelo ay makatotohanan at detalyado.", ilocano: "Say modelo et realistiko tan detalyado.", pangasinense: "Realistiko ken detalyado ti modelo."),
  WordExample(tagalog: "Ang bagong modelo ng sasakyan ay napakahusay.", ilocano: "Ti baro a modelo ti sasakyan ket napakahusay.", pangasinense: "Napakabango so bagong modelo na sasakyan.")
  ],
  ),

  Word(
  english: "moment",
  tagalog: "sandali",
  ilocano: "kanito",
  pangasinense: "sandali",
  examples: [
  WordExample(tagalog: "Ang sandali ay mahalaga.", ilocano: "Mabmabli so bekta.", pangasinense: "Napateg ti kanito."),
  WordExample(tagalog: "Minsan, ang mga sandali ay nagiging alaala.", ilocano: "Adda dagiti kanito a nagbalin a pakanodnonotan.", pangasinense: "Minsan, ang mga sandali ay nagiging alaala.")
  ],
  ),

  Word(
  english: "money",
  tagalog: "pera",
  ilocano: "kuarta",
  pangasinense: "kuarta",
  examples: [
  WordExample(tagalog: "Maingat na binilang ang pera.", ilocano: "Say kuarta et binilang a maong.", pangasinense: "Nabilang a naimbag ti kuarta."),
  WordExample(tagalog: "Ang pera ay mahalaga sa ating buhay.", ilocano: "Ti kuarta ket napateg iti biag tayo.", pangasinense: "Napateg so kuarta ed buhay tayo.")
  ],
  ),
  Word(
  english: "monitor",
  tagalog: "monitor",
  ilocano: "monitor",
  pangasinense: "monitor",
  examples: [
  WordExample(tagalog: "Malinaw na ipinakita ng monitor ang impormasyon.", ilocano: "Malinew so impanengneng na monitor ed impormasyon.", pangasinense: "Nalawag nga impakita ti monitor ti impormasion."),
  WordExample(tagalog: "Dapat suriin ang monitor bago simulan ang presentasyon.", ilocano: "Kasapulan a suruten ti monitor sakbay ti panagsimula ti presentasyon.", pangasinense: "Dapat suriin so monitor bago simulan so presentasyon.")
  ],
  ),

  Word(
  english: "mood",
  tagalog: "mood",
  ilocano: "liknaan",
  pangasinense: "rikna",
  examples: [
  WordExample(tagalog: "Masaya ang mood.", ilocano: "Malikeliket so liknaan.", pangasinense: "Naragsak ti rikna."),
  WordExample(tagalog: "Ang mood ng grupo ay positibo.", ilocano: "Ti mood ti grupo ket positibo.", pangasinense: "Positibo so mood na grupo.")
  ],
  ),

  Word(
  english: "morning",
  tagalog: "umaga",
  ilocano: "kabuasan",
  pangasinense: "kabuasan",
  examples: [
  WordExample(tagalog: "Mainit ang araw sa umaga.", ilocano: "Mainit so agew ed kabuasan.", pangasinense: "Nabara ti init iti agsapa."),
  WordExample(tagalog: "Ang umaga ay isang magandang simula.", ilocano: "Ti kabuasan ket maysa a napintas a simula.", pangasinense: "Ang kabuasan ay magandang simula.")
  ],
  ),

  Word(
  english: "mother",
  tagalog: "ina",
  ilocano: "ina",
  pangasinense: "ina",
  examples: [
  WordExample(tagalog: "Ang ina ay lubos na nagmamalasakit sa kanyang mga anak.", ilocano: "Inasikaso na ina so ananak to.", pangasinense: "Napalalo ti panangaywan ti ina kadagiti annakna."),
  WordExample(tagalog: "Mahalaga ang papel ng ina sa pamilya.", ilocano: "Napateg ti papel ti ina iti pamilya.", pangasinense: "Mahalaga so papel na ina ed pamilya.")
  ],
  ),

  Word(
  english: "motion",
  tagalog: "galaw",
  ilocano: "galaw",
  pangasinense: "galaw",
  examples: [
  WordExample(tagalog: "Makinis ang galaw ng sasakyan.", ilocano: "Say galaw na luluganan et maabig.", pangasinense: "Naannayas ti panaggaraw ti lugan."),
  WordExample(tagalog: "Ang motion ng robot ay kahanga-hanga.", ilocano: "Ti galaw ti robot ket nakakabilbilang.", pangasinense: "Kahanga-hanga so galaw na robot.")
  ],
  ),

  Word(
  english: "mountain",
  tagalog: "bundok",
  ilocano: "palandey",
  pangasinense: "bantay",
  examples: [
  WordExample(tagalog: "Ang bundok ay matarik at mahirap.", ilocano: "Say palandey et maksil tan mairap.", pangasinense: "Narangkis ken makakarit ti bantay."),
  WordExample(tagalog: "Ang pag-akyat sa bundok ay nakakapagod ngunit rewarding.", ilocano: "Ti panag-akyat iti bundok ket nakapoy ngem rewarding.", pangasinense: "Ang pag-akyat ed bantay ay nakakapagod pero rewarding.")
  ],
  ),

  Word(
  english: "movie",
  tagalog: "pelikula",
  ilocano: "pelikula",
  pangasinense: "pelikula",
  examples: [
  WordExample(tagalog: "Nakakaaliw ang pelikula.", ilocano: "Makapaliket so pelikula.", pangasinense: "Makalinglingay ti pelikula."),
  WordExample(tagalog: "Ang bagong pelikula ay patok sa mga tao.", ilocano: "Ti baro a pelikula ket patok kadagiti tao.", pangasinense: "Patok so bagong pelikula ed mga tao.")
  ],
  ),

  Word(
  english: "music",
  tagalog: "musika",
  ilocano: "musika",
  pangasinense: "musika",
  examples: [
  WordExample(tagalog: "Ang musika ay nakapagpapasigla.", ilocano: "Makapaligsa so musika.", pangasinense: "Makapabileg ti musika."),
  WordExample(tagalog: "Mahilig ako sa iba't ibang klase ng musika.", ilocano: "Mahiligak iti sabali a klase ti musika.", pangasinense: "Mahilig ak ed iba-ibang klase na musika.")
  ],
  ),

  Word(
  english: "nail",
  tagalog: "pako",
  ilocano: "pako",
  pangasinense: "pako",
  examples: [
  WordExample(tagalog: "Ang pako ay namartilyo nang ligtas.", ilocano: "Say pako et pinaltog a maong.", pangasinense: "Natalged a namartilio ti lansa."),
  WordExample(tagalog: "Kailangan ng malalaking pako para sa proyektong ito.", ilocano: "Kasapulan ti dakkel a pako para iti daytoy a proyekto.", pangasinense: "Masapul so malalaking pako para ed proyektong ito.")
  ],
  ),

  Word(
  english: "name",
  tagalog: "pangalan",
  ilocano: "ngaran",
  pangasinense: "ngaran",
  examples: [
  WordExample(tagalog: "Pamilyar ang pangalan ng libro.", ilocano: "Say ngaran na libro et pamilyar.", pangasinense: "Pamiliar ti nagan ti libro."),
  WordExample(tagalog: "Mahalaga ang pangalan sa pagkakakilanlan.", ilocano: "Napateg ti ngaran iti panagkilala.", pangasinense: "Napateg so pangalan ed pagkakakilanlan.")
  ],
  ),

  Word(
  english: "nation",
  tagalog: "bansa",
  ilocano: "bansa",
  pangasinense: "bansa",
  examples: [
  WordExample(tagalog: "Ang bansa ay nagsama-sama sa pagkakaisa.", ilocano: "Nankakasakey so bansa.", pangasinense: "Nagkaykaysa ti nasion."),
  WordExample(tagalog: "Mahalaga ang pagkakaisa ng bawat bansa.", ilocano: "Napateg ti pagkakaisa ti tunggal bansa.", pangasinense: "Mahalaga so pagkakaisa na bawat bansa.")
  ],
  ),

  Word(
  english: "nature",
  tagalog: "kalikasan",
  ilocano: "inkagawa",
  pangasinense: "kalikasan",
  examples: [
  WordExample(tagalog: "Ang kalikasan ng problema ay kumplikado.", ilocano: "Say inkagawa na problema et komplikado.", pangasinense: "Komplikado ti kinasiasino ti parikut."),
  WordExample(tagalog: "Mahalaga ang pangangalaga sa kalikasan.", ilocano: "Napateg ti panangsalimetmet iti kalikasan.", pangasinense: "Napateg so pangangalaga ed kalikasan.")
  ],
  ),

  Word(
  english: "park",
  tagalog: "parke",
  ilocano: "parke",
  pangasinense: "parke",
  examples: [
  WordExample(tagalog: "Ang kalapit na parke ay isang magandang lugar upang makapagpahinga.", ilocano: "Say asingger a parke et balibalin pasen a panrelaksan.", pangasinense: "Ti asideg a parke ket nagsayaat a lugar a pagrelaks."),
  WordExample(tagalog: "Maraming tao sa parke sa katapusan ng linggo.", ilocano: "Adu dagiti tao iti parke idi kalpasanna ti lawas.", pangasinense: "Adu so tao ed parke ed katapusan na linggo.")
  ],
  ),

  Word(
  english: "need",
  tagalog: "pangangailangan",
  ilocano: "pankaukolan",
  pangasinense: "pangangailangan",
  examples: [
  WordExample(tagalog: "Ang pangangailangan para sa pagbabago ay apurahan.", ilocano: "Say pankaukolan na pananguman et apuraan.", pangasinense: "Naganat ti panagkasapulan iti panagbalbaliw."),
  WordExample(tagalog: "Ang pagkakaroon ng pangangailangan ay normal sa lahat.", ilocano: "Ti pagkakakitan ti pankaukolan ket normal iti amin.", pangasinense: "Normal so pagkakaroon na pangangailangan ed lahat.")
  ],
  ),

  Word(
  english: "neglect",
  tagalog: "pagpapabaya",
  ilocano: "inkaandiay-panangasikaso",
  pangasinense: "pagpapabaya",
  examples: [
  WordExample(tagalog: "Ang kapabayaan ng hardin ay maliwanag.", ilocano: "Mapatnag so inkaandiay-panangasikaso ed hardin.", pangasinense: "Nabatad ti pannakabaybay-a ti hardin."),
  WordExample(tagalog: "Mahalaga ang atensyon para maiwasan ang pagpapabaya.", ilocano: "Napateg ti atensyon tapno maliklikan ti pagpapabaya.", pangasinense: "Mahalaga so atensyon para ed maliwasan so pagpapabaya.")
  ],
  ),

  Word(
  english: "neighbor",
  tagalog: "kapitbahay",
  ilocano: "kaabay",
  pangasinense: "kaarruba",
  examples: [
  WordExample(tagalog: "Ang kapitbahay ay palakaibigan at matulungin.", ilocano: "Makaaro tan matulong so kaabay mi.", pangasinense: "Mannakigayyem ken manangtulong ti kaarruba."),
  WordExample(tagalog: "Mahalaga ang magandang relasyon sa kapitbahay.", ilocano: "Napateg ti nasayaat a relasyon kadagiti kaabay.", pangasinense: "Mahalaga so nasayaat na relasyon ed kaarruba.")
  ],
  ),

  Word(
  english: "news",
  tagalog: "balita",
  ilocano: "balita",
  pangasinense: "balita",
  examples: [
  WordExample(tagalog: "Nakakabigla ang balita.", ilocano: "Makapabigla so balita.", pangasinense: "Nakigtot ti damag."),
  WordExample(tagalog: "Mahilig akong manood ng balita sa telebisyon.", ilocano: "Mahiligak nga agbuya ti balita iti telebisyon.", pangasinense: "Mahilig ak ed manood so balita ed telebisyon.")
  ],
  ),

  Word(
  english: "night",
  tagalog: "gabi",
  ilocano: "rabii",
  pangasinense: "gabi",
  examples: [
  WordExample(tagalog: "Madilim at tahimik ang gabi.", ilocano: "Say labi et ambilunget tan mareen.", pangasinense: "Nasipnget ken naulimek ti rabii."),
  WordExample(tagalog: "Ang gabi ay panahon para magpahinga.", ilocano: "Ti rabii ket panawen para agpahinga.", pangasinense: "Ang gabi ay panahon para ed magpahinga.")
  ],
  ),

  Word(
  english: "noise",
  tagalog: "ingay",
  ilocano: "ungol",
  pangasinense: "ungol",
  examples: [
  WordExample(tagalog: "Nakakabingi ang ingay.", ilocano: "Makapaengel so ungol.", pangasinense: "Makatuleng ti arimbangaw."),
  WordExample(tagalog: "Minsan, ang ingay ay nakakaabala sa trabaho.", ilocano: "Dadduma, ti ungol ket makadistorbo iti trabaho.", pangasinense: "Minsan, ang ingay ay nakakaabala ed trabaho.")
  ],
  ),
  Word(
  english: "note",
  tagalog: "tala",
  ilocano: "nota",
  pangasinense: "nota",
  examples: [
  WordExample(tagalog: "Ang tala ay isinulat nang may pag-iingat.", ilocano: "Say nota et insulat a maalwar.", pangasinense: "Naisurat a siaannad ti nota."),
  WordExample(tagalog: "Mahalaga ang tala sa aming proyekto.", ilocano: "Napateg ti nota iti proyekto mi.", pangasinense: "Mahalaga so nota para ed proyekto mi.")
  ],
  ),

  Word(
  english: "number",
  tagalog: "numero",
  ilocano: "bilang",
  pangasinense: "bilang",
  examples: [
  WordExample(tagalog: "Ang numero ay mahirap tandaan.", ilocano: "Mairap ya tandaan so bilang.", pangasinense: "Narigat a malagip ti bilang."),
  WordExample(tagalog: "Kailangan kong isulat ang numero para hindi makalimutan.", ilocano: "Kasapulan a isurat ti numero tapno saan a malipatan.", pangasinense: "Kailangan ko so isulat so numero para di malimutan.")
  ],
  ),

  Word(
  english: "obstacle",
  tagalog: "balakid",
  ilocano: "babeng",
  pangasinense: "babeng",
  examples: [
  WordExample(tagalog: "Mahirap lampasan ang balakid.", ilocano: "Mairap ya talonaan so babeng.", pangasinense: "Narigat a parmeken ti lapped."),
  WordExample(tagalog: "Ang balakid ay kailangan pagtagumpayan.", ilocano: "Ti balakid ket kasapulan a pagtagumpayan.", pangasinense: "Ang babeng ay kailangan pagtagumpayan.")
  ],
  ),

  Word(
  english: "occasion",
  tagalog: "okasyon",
  ilocano: "okasion",
  pangasinense: "okasion",
  examples: [
  WordExample(tagalog: "Naging masaya ang okasyon.", ilocano: "Makapaliket so okasyon.", pangasinense: "Naragsak ti okasion."),
  WordExample(tagalog: "Ang okasyon ay ipinagdiwang ng mas marami pang tao.", ilocano: "Ti okasyon ket naipagdiwang dagiti adu pay a tao.", pangasinense: "Inipagdiwang so okasion ed mas marami pang tao.")
  ],
  ),

  Word(
  english: "ocean",
  tagalog: "karagatan",
  ilocano: "dayat",
  pangasinense: "taaw",
  examples: [
  WordExample(tagalog: "Malawak at maganda ang karagatan.", ilocano: "Say dayat et malaknab tan marakep.", pangasinense: "Nalawa ken napintas ti taaw."),
  WordExample(tagalog: "Ang karagatan ay tahanan ng maraming uri ng isda.", ilocano: "Ti karagatan ket pagtaengan dagiti adu a klase ti ikan.", pangasinense: "Ang karagatan ay tahanan na adu na klase na isda.")
  ],
  ),

  Word(
  english: "offense",
  tagalog: "pagkakasala",
  ilocano: "kasalanan",
  pangasinense: "kasalanan",
  examples: [
  WordExample(tagalog: "Ang pagkakasala ay menor de edad.", ilocano: "Melag labat so kasalanan to.", pangasinense: "Bassit laeng ti basol."),
  WordExample(tagalog: "Kahit menor, ang pagkakasala ay dapat pag-usapan.", ilocano: "Ur-uray nga menor, ti kasalanan ket kasapulan a pag-usapan.", pangasinense: "Maski bassit, ang kasalanan ay dapat pag-usapan.")
  ],
  ),

  Word(
  english: "offer",
  tagalog: "alok",
  ilocano: "opresi",
  pangasinense: "tukon",
  examples: [
  WordExample(tagalog: "Ang alok ay mapagbigay.", ilocano: "Say opresi et mabunlok.", pangasinense: "Naparabur ti tukon."),
  WordExample(tagalog: "Madalas siyang tumanggap ng alok mula sa mga kaibigan.", ilocano: "Kadawyan nga agawat isuna ti opresi manipud kadagiti gagayyem na.", pangasinense: "Adu so alok na natanggap na ed mga kaibigan.")
  ],
  ),

  Word(
  english: "office",
  tagalog: "opisina",
  ilocano: "opisina",
  pangasinense: "opisina",
  examples: [
  WordExample(tagalog: "Naging abala ang opisina.", ilocano: "Okupado so opisina.", pangasinense: "Okupado ti opisina."),
  WordExample(tagalog: "Maraming gawain sa opisina ang dapat tapusin.", ilocano: "Adu a trabaho iti opisina ti kasapulan a matapos.", pangasinense: "Maraming gawain ed opisina ang dapat tapusin.")
  ],
  ),

  Word(
  english: "opinion",
  tagalog: "opinyon",
  ilocano: "opinyon",
  pangasinense: "opinion",
  examples: [
  WordExample(tagalog: "Ang opinyon ay ibinahagi nang bukas.", ilocano: "Say opinyon et inabang ya maparungtal.", pangasinense: "Sipapanayag a naibinglay ti opinion."),
  WordExample(tagalog: "Mahalaga ang opinyon ng lahat sa desisyon.", ilocano: "Napateg ti opinyon ti amin iti desisyon.", pangasinense: "Mahalaga so opinyon na lahat ed desisyon.")
  ],
  ),

  Word(
  english: "opportunity",
  tagalog: "pagkakataon",
  ilocano: "pankanawnawa",
  pangasinense: "gundaway",
  examples: [
  WordExample(tagalog: "Napakagandang palampasin ang pagkakataon.", ilocano: "Say pankanawnawa et masyadon maong ya agko nalingwanan.", pangasinense: "Nasayaat unay ti gundaway a di maliwayan."),
  WordExample(tagalog: "Ang pagkakataon na ito ay hindi dapat palagpasin.", ilocano: "Daytoy a gundaway ket saan a kasapulan a palagpasin.", pangasinense: "Dapat di palagpasin so gundaway a ito.")
  ],
  ),

  Word(
  english: "organization",
  tagalog: "organisasyon",
  ilocano: "organisasyon",
  pangasinense: "organisasyon",
  examples: [
  WordExample(tagalog: "Maayos ang pagkakaayos ng organisasyon.", ilocano: "Say organisasyon et marakep so inkauksoy to.", pangasinense: "Nasayaat ti pannakaistruktura ti organisasion."),
  WordExample(tagalog: "Ang organisasyon ay may malinaw na layunin.", ilocano: "Ti organisasyon ket addaan ti nasayaat a panggep.", pangasinense: "May malinaw na layunin so organisasyon.")
  ],
  ),

  Word(
  english: "ornament",
  tagalog: "palamuti",
  ilocano: "alahas",
  pangasinense: "arkos",
  examples: [
  WordExample(tagalog: "Ang palamuti ay maganda.", ilocano: "Marakep so alahas.", pangasinense: "Napintas ti arkos."),
  WordExample(tagalog: "Nais kong bumili ng mga palamuti para sa Pasko.", ilocano: "Kayat ko a gatangen dagiti palamuti para ti Pasko.", pangasinense: "Gusto ko so bumili ed mga arkos para ed Pasko.")
  ],
  ),

  Word(
  english: "outcome",
  tagalog: "kinalabasan",
  ilocano: "resulta",
  pangasinense: "resulta",
  examples: [
  WordExample(tagalog: "Ang kinalabasan ay paborable.", ilocano: "Paborabli so resulta.", pangasinense: "Paborable ti nagbanaganna."),
  WordExample(tagalog: "Nakatutuwang makita ang magandang kinalabasan.", ilocano: "Naragsak a kitaen ti napintas a resulta.", pangasinense: "Nakakatuwa so makita so magandang resulta.")
  ],
  ),

  Word(
  english: "outside",
  tagalog: "labas",
  ilocano: "paway",
  pangasinense: "ruar",
  examples: [
  WordExample(tagalog: "Ang labas ng gusali ay naingatan.", ilocano: "Say paway na bilding et maong so inkaasikaso to.", pangasinense: "Nasayaat ti pannakataripato ti ruar ti pasdek."),
  WordExample(tagalog: "Madalas kaming maglaro sa labas ng bahay.", ilocano: "Kadawyan kaming aglugan idiay paway ti balay.", pangasinense: "Adu so kami ed maglaro ed labas na bahay.")
  ],
  ),

  Word(
  english: "overcome",
  tagalog: "pagtagumpayan",
  ilocano: "impanalo",
  pangasinense: "pagtakumpay",
  examples: [
  WordExample(tagalog: "Ang pagtagumpayan ng mga hamon ang nagpalakas sa kanila.", ilocano: "Say impanalo ed saray angat so amabiskeg ed sikara.", pangasinense: "Ti pannakaparmek dagiti karit ti nangpapigsa kadakuada."),
  WordExample(tagalog: "Kailangan nating pagtagumpayan ang mga hadlang.", ilocano: "Kasapulan tayong agpangato kadagiti hadlang.", pangasinense: "Kailangan tayo so pagtakumpayan so hadlang.")
  ],
  ),

  Word(
  english: "pain",
  tagalog: "sakit",
  ilocano: "ot-ot",
  pangasinense: "saem",
  examples: [
  WordExample(tagalog: "Ang sakit ay hindi matiis.", ilocano: "Agnaanosan so ot-ot.", pangasinense: "Di maibturan ti saem."),
  WordExample(tagalog: "Minsan ang sakit ay bahagi ng proseso ng paghilom.", ilocano: "Dadduma, ti sakit ket paset ti proseso ti panagpatingga.", pangasinense: "Minsan ang sakit ay parte na proseso na paghilom.")
  ],
  ),

  Word(
  english: "pair",
  tagalog: "pares",
  ilocano: "paris",
  pangasinense: "pares",
  examples: [
  WordExample(tagalog: "Kumportable ang pares ng sapatos.", ilocano: "Komportable so paris na sapatos.", pangasinense: "Komportable ti paris ti sapatos."),
  WordExample(tagalog: "Gusto ko ng bagong pares ng sapatos.", ilocano: "Kayat ko ti baro a paris na sapatos.", pangasinense: "Gusto ko so bagong pares na sapatos.")
  ],
  ),

  Word(
  english: "panic",
  tagalog: "gulat",
  ilocano: "takot",
  pangasinense: "panbuteng",
  examples: [
  WordExample(tagalog: "Kitang-kita ang gulat.", ilocano: "Mapatnag so takot.", pangasinense: "Nabatad ti panagbuteng."),
  WordExample(tagalog: "Ang gulat ay natural na reaksyon sa takot.", ilocano: "Ti gulat ket natural a reaksyon iti takot.", pangasinense: "Ang gulat ay natural na reaksyon ed panbuteng.")
  ],
  ),

  Word(
  english: "panel",
  tagalog: "grupo",
  ilocano: "grupo",
  pangasinense: "grupo",
  examples: [
  WordExample(tagalog: "Masusing tinalakay ng panel ang isyu.", ilocano: "Say grupo so nantongtongan a maong nipaakar ed isyu.", pangasinense: "Napagsasaritaan a naimbag ti panel ti isyu."),
  WordExample(tagalog: "Ang panel ay nagbigay ng mahusay na mungkahi.", ilocano: "Ti grupo ket nagkakaasi ti naimbag a rekomendasyon.", pangasinense: "Ang grupo ay nagbigay ed mahusay na mungkahi.")
  ],
  ),

  Word(
  english: "paper",
  tagalog: "papel",
  ilocano: "papel",
  pangasinense: "papel",
  examples: [
  WordExample(tagalog: "Lukot ang papel.", ilocano: "Arumog so papel.", pangasinense: "Nakurkuros ti papel."),
  WordExample(tagalog: "Kailangan kong ayusin ang lukot na papel.", ilocano: "Kasapulan ko a ayusen ti arumog a papel.", pangasinense: "Kailangan ko so ayusin so lukot na papel.")
  ],
  ),
  Word(
  english: "parade",
  tagalog: "parada",
  ilocano: "parada",
  pangasinense: "parada",
  examples: [
  WordExample(tagalog: "Makulay at masigla ang parada.", ilocano: "Say parada et makolor tan mabilabilay.", pangasinense: "Namaris ken nabiag ti parada."),
  WordExample(tagalog: "Maraming tao ang nanood ng parada.", ilocano: "Adu dagiti tao nga inpan nangkita iti parada.", pangasinense: "Adu so tao ya inpin panlopan ed parada.")
  ],
  ),

  Word(
  english: "park",
  tagalog: "parke",
  ilocano: "parke",
  pangasinense: "parke",
  examples: [
  WordExample(tagalog: "Ang parke ay isang magandang lugar upang makapagpahinga.", ilocano: "Say parke et balibalin pasen ya panrelaksan.", pangasinense: "Nasayaat a lugar a pagrelaks ti parke."),
  WordExample(tagalog: "Naglaro ang mga bata sa parke.", ilocano: "Nagluganan dagiti ubbing iti parke.", pangasinense: "Naglilako so kabataan ed parke.")
  ],
  ),

  Word(
  english: "part",
  tagalog: "bahagi",
  ilocano: "parte",
  pangasinense: "paset",
  examples: [
  WordExample(tagalog: "Ginampanan ng maayos ang bahagi.", ilocano: "Maong so inkagawa na parte.", pangasinense: "Nasayaat ti pannakaay-ayam ti paset."),
  WordExample(tagalog: "Mahalaga ang bawat bahagi ng proyekto.", ilocano: "Napateg ti tunggal paset ti proyekto.", pangasinense: "Mahalaga so balang paset na proyekto.")
  ],
  ),

  Word(
  english: "party",
  tagalog: "party",
  ilocano: "party",
  pangasinense: "party",
  examples: [
  WordExample(tagalog: "Masaya at exciting ang party.", ilocano: "Makapaliket tan makapalikliket so party.", pangasinense: "Naragsak ken makapagagar ti party."),
  WordExample(tagalog: "Nag-enjoy ang lahat sa party.", ilocano: "Nag-enjoy dagiti amin iti party.", pangasinense: "Nag-enjoy so amin ed party.")
  ],
  ),

  Word(
  english: "pass",
  tagalog: "daan",
  ilocano: "dalan",
  pangasinense: "labsan",
  examples: [
  WordExample(tagalog: "Ang daanan ay matarik ngunit mapapamahalaan.", ilocano: "Say dalan et maksil balet ta mainomay ya asikasoen.", pangasinense: "Narangkis ti labsan ngem makontrol."),
  WordExample(tagalog: "Mapanganib ang matarik na daan.", ilocano: "Delikado ti maksil nga dalan.", pangasinense: "Delikado so labsan ya narangkis.")
  ],
  ),

  Word(
  english: "peace",
  tagalog: "kapayapaan",
  ilocano: "kareenan",
  pangasinense: "talna",
  examples: [
  WordExample(tagalog: "Nanumbalik ang kapayapaan.", ilocano: "Nipawil so kareenan.", pangasinense: "Naisubli ti talna."),
  WordExample(tagalog: "Mahalaga ang kapayapaan sa bansa.", ilocano: "Napateg ti kareenan iti pagilian.", pangasinense: "Mahalaga so talna ed nasyon.")
  ],
  ),

  Word(
  english: "pear",
  tagalog: "peras",
  ilocano: "peras",
  pangasinense: "peras",
  examples: [
  WordExample(tagalog: "Ang peras ay hinog at makatas.", ilocano: "Say peras et maluto tan mataba.", pangasinense: "Naluom ken natabtaba ti peras."),
  WordExample(tagalog: "Matamis ang peras na ito.", ilocano: "Natamis daytoy a peras.", pangasinense: "Matamis so peras na ito.")
  ],
  ),

  Word(
  english: "pen",
  tagalog: "panulat",
  ilocano: "pluma",
  pangasinense: "pluma",
  examples: [
  WordExample(tagalog: "Ang panulat ay mas makapangyarihan kaysa sa espada.", ilocano: "Mas mabiskeg so pluma nen say espada.", pangasinense: "Nabilbileg ti pluma ngem ti kampilan."),
  WordExample(tagalog: "Maraming nagagawa ang isang panulat.", ilocano: "Adu ti magun-od ti maysa a pluma.", pangasinense: "Marakey ya magawa na isa ya pluma.")
  ],
  ),

  Word(
  english: "pencil",
  tagalog: "lapis",
  ilocano: "lapis",
  pangasinense: "lapis",
  examples: [
  WordExample(tagalog: "Pinahasa ang lapis.", ilocano: "Say lapis et pinatadem.", pangasinense: "Natadem ti lapis."),
  WordExample(tagalog: "Bago ang lapis na ito.", ilocano: "Baro daytoy a lapis.", pangasinense: "Bago so lapis na ito.")
  ],
  ),

  Word(
  english: "people",
  tagalog: "tao",
  ilocano: "ttoo",
  pangasinense: "tattao",
  examples: [
  WordExample(tagalog: "Magiliw at magiliw ang mga tao.", ilocano: "Makaaro tan mapangasi iray totoo.", pangasinense: "Mannakigayyem ken managpadagus dagiti tattao."),
  WordExample(tagalog: "Masaya ang mga tao sa kaganapan.", ilocano: "Naragsak dagiti totoo iti okasion.", pangasinense: "Makapaliket so tattao ed okasyon.")
  ],
  ),

  Word(
  english: "performance",
  tagalog: "performance",
  ilocano: "palabas",
  pangasinense: "pabuya",
  examples: [
  WordExample(tagalog: "Outstanding ang performance.", ilocano: "Makapadinayew so palabas.", pangasinense: "Naisangsangayan ti pabuya."),
  WordExample(tagalog: "Nagustuhan ng lahat ang performance.", ilocano: "Nagustuan dagiti amin ti palabas.", pangasinense: "Inliket so amin ed pabuya.")
  ],
  ),

  Word(
  english: "period",
  tagalog: "panahon",
  ilocano: "panaon",
  pangasinense: "panawen",
  examples: [
  WordExample(tagalog: "Ang panahon ng paglago ay makabuluhan.", ilocano: "Say panaon na imbulaslas et makabkabaliksan.", pangasinense: "Nakapatpateg ti panawen ti panagdakkel."),
  WordExample(tagalog: "May tamang panahon para sa lahat.", ilocano: "Adda a napateg nga panaon para kadagiti amin.", pangasinense: "Adu so tamang panawen para ed amin.")
  ],
  ),

  Word(
  english: "person",
  tagalog: "tao",
  ilocano: "ttoo",
  pangasinense: "tao",
  examples: [
  WordExample(tagalog: "Ang tao ay mabait at maalalahanin.", ilocano: "Maomaong tan makonsidera so too.", pangasinense: "Naasi ken managpanunot ti tao."),
  WordExample(tagalog: "Ang tao ay may mabuting kalooban.", ilocano: "Ti tao ket naasi ken ad-adu ti panagpanunot.", pangasinense: "May mabuting puso so tao.")
  ],
  ),

  Word(
  english: "place",
  tagalog: "lugar",
  ilocano: "pasen",
  pangasinense: "lugar",
  examples: [
  WordExample(tagalog: "Matahimik ang lugar.", ilocano: "Mareen so pasen.", pangasinense: "Natalna ti lugar."),
  WordExample(tagalog: "Maganda ang lugar para sa mga turista.", ilocano: "Naimbag a lugar para kadagiti turista.", pangasinense: "Maganda so lugar para ed turista.")
  ],
  ),

  Word(
  english: "plan",
  tagalog: "plano",
  ilocano: "plano",
  pangasinense: "plano",
  examples: [
  WordExample(tagalog: "Pinag-isipang mabuti ang plano.", ilocano: "Inisip a maong so plano.", pangasinense: "Napanunot a naimbag ti plano."),
  WordExample(tagalog: "Naisakatuparan ang plano.", ilocano: "Napasardeng ti plano.", pangasinense: "Natupad so plano.")
  ],
  ),

  Word(
  english: "plant",
  tagalog: "halaman",
  ilocano: "tanaman",
  pangasinense: "mula",
  examples: [
  WordExample(tagalog: "Ang halaman ay malusog at umuunlad.", ilocano: "Say tanaman et mabunigas tan ombubulaslas.", pangasinense: "Nasalun-at ken narang-ay ti mula."),
  WordExample(tagalog: "Nangangailangan ng araw ang halaman.", ilocano: "Kasapulan ti init ti halaman.", pangasinense: "Nangangailangan so init ed halaman.")
  ],
  ),

  Word(
  english: "plate",
  tagalog: "plato",
  ilocano: "plato",
  pangasinense: "plato",
  examples: [
  WordExample(tagalog: "Napuno ng pagkain ang plato.", ilocano: "Napno na naakan so plato.", pangasinense: "Napno ti plato iti taraon."),
  WordExample(tagalog: "Kailangan kong hugasan ang plato.", ilocano: "Kasapulan ko nga agdalus iti plato.", pangasinense: "Kailangan ko ya labnasan so plato.")
  ],
  ),

  Word(
  english: "plea",
  tagalog: "pakiusap",
  ilocano: "kerew",
  pangasinense: "panagpakaasi",
  examples: [
  WordExample(tagalog: "Taos-puso ang pakiusap.", ilocano: "Say kerew et nanlapud puso.", pangasinense: "Naimpusuan ti panagpakaasi."),
  WordExample(tagalog: "Malugod niyang tinanggap ang pakiusap.", ilocano: "Naragsak na naawat ti kerew.", pangasinense: "Makatunog so panagpakaasi na tinanggap.")
  ],
  ),

  Word(
  english: "plenty",
  tagalog: "marami",
  ilocano: "adu",
  pangasinense: "adu",
  examples: [
  WordExample(tagalog: "Ang maraming pagkain ay pinahahalagahan.", ilocano: "Inapresya so dakel a naakan.", pangasinense: "Naapresiar ti adu a taraon."),
  WordExample(tagalog: "Maraming tao ang dumalo sa kaganapan.", ilocano: "Adu dagiti tao nga immay idiay kaganapan.", pangasinense: "Adu so tao ya dumalo ed kaganapan.")
  ],
  ),

  Word(
  english: "point",
  tagalog: "punto",
  ilocano: "punto",
  pangasinense: "punto",
  examples: [
  WordExample(tagalog: "Ang punto ay ginawang malinaw.", ilocano: "Nipalinew so punto.", pangasinense: "Nalawag ti punto."),
  WordExample(tagalog: "Inulit ang punto para sa mga hindi nakaintindi.", ilocano: "Inulit na ti punto para kadagiti saan a nakaawat.", pangasinense: "Inulit so punto para ed di nakaawat.")
  ],
  ),

  Word(
  english: "pool",
  tagalog: "pool",
  ilocano: "pool",
  pangasinense: "pool",
  examples: [
  WordExample(tagalog: "Ang pool ay nakakapreskong.", ilocano: "Makarepresko so pool.", pangasinense: "Makapabang-ar ti pool."),
  WordExample(tagalog: "Malinis ang tubig sa pool.", ilocano: "Nadalus ti danum ti pool.", pangasinense: "Malinis so danum ed pool.")
  ],
  ),

  Word(
  english: "popularity",
  tagalog: "kasikatan",
  ilocano: "kabantog",
  pangasinense: "kinalatak",
  examples: [
  WordExample(tagalog: "Kitang-kita ang kasikatan ng kaganapan.", ilocano: "Napatnagan so inkabantog na ebento.", pangasinense: "Nabatad ti kinalatak ti pasamak."),
  WordExample(tagalog: "Dumami ang kasikatan ng aktor.", ilocano: "Naparigat ti inkabantog ti aktor.", pangasinense: "Dumami ti kinalatak na aktor.")
  ],
  ),

  Word(
  english: "portion",
  tagalog: "bahagi",
  ilocano: "porsyon",
  pangasinense: "paset",
  examples: [
  WordExample(tagalog: "Ang bahagi ay mapagbigay.", ilocano: "Say porsyon et mabunlok.", pangasinense: "Naparabur ti paset."),
  WordExample(tagalog: "Mahalaga ang bawat bahagi ng trabaho.", ilocano: "Napateg ti tunggal paset ti trabaho.", pangasinense: "Mahalaga so balang paset na trabaho.")
  ],
  ),

  Word(
  english: "position",
  tagalog: "posisyon",
  ilocano: "posisyon",
  pangasinense: "posision",
  examples: [
  WordExample(tagalog: "Bakante ang posisyon.", ilocano: "Bakante so posisyon.", pangasinense: "Bakante ti posision."),
  WordExample(tagalog: "Pinaglalabanan ang posisyon.", ilocano: "Pagsapolan ti posisyon.", pangasinense: "Pinalabanan so posision.")
  ],
  ),

  Word(
  english: "positive outlook",
  tagalog: "positibong pananaw",
  ilocano: "positibon panmoria",
  pangasinense: "positibo a panangmatmat",
  examples: [
  WordExample(tagalog: "Ang positibong pananaw ay nagre-refresh.", ilocano: "Makarepresko so positibon panmoria.", pangasinense: "Makapabang-ar ti positibo a panangmatmat."),
  WordExample(tagalog: "Ang positibong pananaw ay nakakatulong sa pag-asenso.", ilocano: "Ti positibo a panangmatmat ket makatulong iti panagmulmula.", pangasinense: "Ang positibo a pananaw makabigbigay ed asenso.")
  ],
  ),
  Word(
  english: "power",
  tagalog: "tagalog: kuryente",
  ilocano: "ilocano: koriente",
  pangasinense: "pangasinense: kuryente",
  examples: [
  WordExample(tagalog: "Naibalik ang kuryente pagkatapos ng pagkawala.", ilocano: "Naisubli ti koriente kalpasan ti pannakapukaw ti koriente.", pangasinense: "Nipawil so kuryente kayari na inkaandi na kuryente."),
  WordExample(tagalog: "Ang kuryente ay nawalan sa kalagitnaan ng gabi.", ilocano: "Nawawanan ti koriente iti tengnga ti rabii.", pangasinense: "Inkaandi na so kuryente so kalagitan na bilay.")
  ],
  ),

  Word(
  english: "practice",
  tagalog: "tagalog: praktis",
  ilocano: "ilocano: praktis",
  pangasinense: "pangasinense: panagpraktis",
  examples: [
  WordExample(tagalog: "Nakakapagod ang praktis.", ilocano: "Makabannog ti praktis.", pangasinense: "Makapakesaw so panagpraktis."),
  WordExample(tagalog: "Kailangan ang praktis upang magtagumpay.", ilocano: "Kasapulan ti praktis tapno agbalin nga napigsa.", pangasinense: "Kailangan so panagpraktis ed sakey nan tagumpay.")
  ],
  ),
  Word(
  english: "precedent",
  tagalog: "tagalog: alimbawa",
  ilocano: "ilocano: pagtuladan",
  pangasinense: "pangasinense: alimbawa",
  examples: [
  WordExample(tagalog: "Ang precedent ay itinakda.", ilocano: "Naisaad ti pagtuladan.", pangasinense: "Say alimbawa so niletneg."),
  WordExample(tagalog: "Ang kanyang aksyon ay naging precedent para sa iba.", ilocano: "Naging pagtuladan dagiti aramidna para kadagiti dadduma.", pangasinense: "So aramid na so imbaling alimbawa para iba.")
  ],
  ),

  Word(
  english: "pressure",
  tagalog: "tagalog: presyon",
  ilocano: "ilocano: pressure",
  pangasinense: "pangasinense: pressure",
  examples: [
  WordExample(tagalog: "Ang presyon ay napakalaki.", ilocano: "Dakkel ti pressure.", pangasinense: "Baleg so pressure."),
  WordExample(tagalog: "Nai-stress siya dahil sa presyon sa trabaho.", ilocano: "Agda ti stress na gapu iti pressure ti trabaho.", pangasinense: "Na-stress siya tan baleg so pressure na trabaho.")
  ],
  ),

  Word(
  english: "pride",
  tagalog: "tagalog: pagmamalaki",
  ilocano: "ilocano: panagpannakkel",
  pangasinense: "pangasinense: inkamapaatagey",
  examples: [
  WordExample(tagalog: "Kitang-kita ang pagmamalaki ng pamilya.", ilocano: "Nabatad ti panagpannakkel ti pamilia.", pangasinense: "Napatnagan so inkamapaatagey na pamilya."),
  WordExample(tagalog: "Malaki ang pagmamalaki niya sa kanyang mga anak.", ilocano: "Dakkel ti pannakkelna kadagiti annakna.", pangasinense: "Baleg so inkamapaatagey na so anak na.")
  ],
  ),

  Word(
  english: "priority",
  tagalog: "tagalog: prayuridad",
  ilocano: "ilocano: prioridad",
  pangasinense: "pangasinense: prayuridad",
  examples: [
  WordExample(tagalog: "Malinaw ang priority.", ilocano: "Nalawag ti prioridad.", pangasinense: "Malinew so prayuridad."),
  WordExample(tagalog: "Ang kanyang pamilya ang kanyang prayuridad.", ilocano: "Ti pamilya na ti prioridad na.", pangasinense: "So pamilya na so prayuridad na.")
  ],
  ),

  Word(
  english: "prison",
  tagalog: "tagalog: bilangguan",
  ilocano: "ilocano: pagbaludan",
  pangasinense: "pangasinense: prisoan",
  examples: [
  WordExample(tagalog: "Ang bilangguan ay ligtas.", ilocano: "Natalged ti pagbaludan.", pangasinense: "Maligen so prisoan."),
  WordExample(tagalog: "Maraming bilanggo ang nasa bilangguan.", ilocano: "Ado dagiti nakabilanggo iti pagbaludan.", pangasinense: "Dakol so nakapriso so prisoan.")
  ],
  ),

  Word(
  english: "problem",
  tagalog: "tagalog: problema",
  ilocano: "ilocano: parikut",
  pangasinense: "pangasinense: problema",
  examples: [
  WordExample(tagalog: "Nalutas ang problema.", ilocano: "Narisut ti parikut.", pangasinense: "Nasolbar so problema."),
  WordExample(tagalog: "Ang problema ay napakalaki.", ilocano: "Dakkel ti parikut.", pangasinense: "Baleg so problema.")
  ],
  ),

  Word(
  english: "process",
  tagalog: "tagalog: proseso",
  ilocano: "ilocano: proseso",
  pangasinense: "pangasinense: proseso",
  examples: [
  WordExample(tagalog: "Ang proseso ay masinsinan.", ilocano: "Naan-anay ti proseso.", pangasinense: "Say proseso et sigpot."),
  WordExample(tagalog: "Kailangan ng oras ang proseso.", ilocano: "Kasapulan ti oras ti proseso.", pangasinense: "Kailangan so oras so proseso.")
  ],
  ),

  Word(
  english: "product",
  tagalog: "tagalog: produkto",
  ilocano: "ilocano: produkto",
  pangasinense: "pangasinense: produkto",
  examples: [
  WordExample(tagalog: "Ang produkto ay mataas ang kalidad.", ilocano: "Nangato ti kalidad ti produkto.", pangasinense: "Atagey so kalidad na produkto."),
  WordExample(tagalog: "Ang produkto ay mabenta sa merkado.", ilocano: "Adu ti pagbenta iti merkado.", pangasinense: "Dakol so benta so produkto ed merkado.")
  ],
  ),

  Word(
  english: "profession",
  tagalog: "tagalog: propesyon",
  ilocano: "ilocano: propesion",
  pangasinense: "pangasinense: propesyon",
  examples: [
  WordExample(tagalog: "Ang propesyon ay nangangailangan ng kasanayan.", ilocano: "Kasapulan ti propesion ti kinalaing.", pangasinense: "Say propesyon et mankaukolan na dunong."),
  WordExample(tagalog: "Ang pagiging doktor ay isang propesyon.", ilocano: "Ti panag-doktor ket propesion.", pangasinense: "So pagiging doktor so propesyon.")
  ],
  ),

  Word(
  english: "progress",
  tagalog: "tagalog: pag-unlad",
  ilocano: "ilocano: panagrang-ay",
  pangasinense: "pangasinense: iyaaligwas",
  examples: [
  WordExample(tagalog: "Ang pag-unlad ay matatag.", ilocano: "Natibker ti panagrang-ay.", pangasinense: "Mansiansia so iyaaligwas."),
  WordExample(tagalog: "Ang kanyang pag-unlad ay kapansin-pansin.", ilocano: "Makita ti panagrang-ayna.", pangasinense: "Makapansin so iyaaligwas na.")
  ],
  ),
  Word(
  english: "project",
  tagalog: "tagalog: proyekto",
  ilocano: "ilocano: proyekto",
  pangasinense: "pangasinense: proyekto",
  examples: [
  WordExample(tagalog: "Ang proyekto ay ambisyoso.", ilocano: "Ambisioso ti proyekto.", pangasinense: "Say proyekto et ambisyoso."),
  WordExample(tagalog: "Magsisimula na ang malaking proyekto.", ilocano: "Agsasaruno ti dakkel nga proyekto.", pangasinense: "Magsilawan so baleg na proyekto.")
  ],
  ),

  Word(
  english: "promise",
  tagalog: "tagalog: pangako",
  ilocano: "ilocano: kari",
  pangasinense: "pangasinense: sipan",
  examples: [
  WordExample(tagalog: "Ang pangako ay tinupad.", ilocano: "Natungpal ti kari.", pangasinense: "Nasumpal so sipan."),
  WordExample(tagalog: "Tinupad niya ang kanyang pangako.", ilocano: "Natungpalna ti karina.", pangasinense: "Sinumpal na so sipan na.")
  ],
  ),

  Word(
  english: "proof",
  tagalog: "tagalog: patunay",
  ilocano: "ilocano: pammaneknek",
  pangasinense: "pangasinense: prueba",
  examples: [
  WordExample(tagalog: "Ang patunay ay hindi maikakaila.", ilocano: "Di mailibak ti pammaneknek.", pangasinense: "Say prueba et agnasuppiat."),
  WordExample(tagalog: "Nagpakita siya ng patunay sa kanyang kakayahan.", ilocano: "Nagipakita iti pammaneknek iti kinatalna.", pangasinense: "Impakita na so prueba na dunong.")
  ],
  ),

  Word(
  english: "property",
  tagalog: "tagalog: ari-arian",
  ilocano: "ilocano: sanikua",
  pangasinense: "pangasinense: lote",
  examples: [
  WordExample(tagalog: "Ang ari-arian ay mahusay na pinananatili.", ilocano: "Nasayaat ti pannakamantener ti sanikua.", pangasinense: "Say lote et maong so inkaasikaso to."),
  WordExample(tagalog: "Binabantayan niya ang kanyang ari-arian.", ilocano: "Inaalalaena ti sanikwana.", pangasinense: "Babantayan na so lote na.")
  ],
  ),

  Word(
  english: "proposal",
  tagalog: "tagalog: panukala",
  ilocano: "ilocano: singasing",
  pangasinense: "pangasinense: propesyon",
  examples: [
  WordExample(tagalog: "Ang panukala ay mahusay na tinanggap.", ilocano: "Nasayaat ti pannakaawat ti singasing.", pangasinense: "Say propesyon et inawat na maong."),
  WordExample(tagalog: "Pinag-isipan ang kanyang panukala.", ilocano: "Pinanunot ti singasingna.", pangasinense: "Pagtuyuan so propesyon na.")
  ],
  ),

  Word(
  english: "prospect",
  tagalog: "tagalog: inaasam-asam",
  ilocano: "ilocano: namnama",
  pangasinense: "pangasinense: ilalo",
  examples: [
  WordExample(tagalog: "Ang inaasam-asam ay kapana-panabik.", ilocano: "Makaparagsak ti namnama.", pangasinense: "Makapaliliket so ilalo."),
  WordExample(tagalog: "Ang prospect na magtagumpay ay mataas.", ilocano: "Nangato ti namnama a magun-od.", pangasinense: "Baleg so ilalo na panagtagumpay.")
  ],
  ),

  Word(
  english: "protection",
  tagalog: "tagalog: pangangalaga",
  ilocano: "ilocano: pannakasalaknib",
  pangasinense: "pangasinense: proteksion",
  examples: [
  WordExample(tagalog: "Ang pangangalaga ng wildlife ay mahalaga.", ilocano: "Napateg ti pannakasalaknib dagiti atap nga animal.", pangasinense: "Importante so proteksion ed saray atap ya ayayep."),
  WordExample(tagalog: "Nangako siyang pangangalagaan ang kalikasan.", ilocano: "Inkari na nga salakniban ti kinabaknang ti daga.", pangasinense: "Sumpal na so proteksion na kalikasan.")
  ],
  ),

  Word(
  english: "protest",
  tagalog: "tagalog: protesta",
  ilocano: "ilocano: protesta",
  pangasinense: "pangasinense: protesta",
  examples: [
  WordExample(tagalog: "Naging mapayapa ang protesta.", ilocano: "Natalna ti protesta.", pangasinense: "Mareen so protesta."),
  WordExample(tagalog: "Nagdaos sila ng tahimik na protesta.", ilocano: "Nagdadael dagiti talna nga protesta.", pangasinense: "Mareen ed protesta ya kinalna.")
  ],
  ),
  Word(
  english: "moment",
  tagalog: "tagalog: sandali",
  ilocano: "ilocano: kanito",
  pangasinense: "pangasinense: bekta",
  examples: [
  WordExample(tagalog: "Ipinagdiwang ang ipinagmamalaking sandali.", ilocano: "Narambakan ti maipagpannakkel a kanito.", pangasinense: "Say makapadinayew a bekta so sinelebraan."),
  WordExample(tagalog: "Isang masayang sandali ang kanilang naranasan.", ilocano: "Isang naragsak a kanito ti narikna da.", pangasinense: "Say maliket a bekta so narasanan na.")
  ],
  ),

  Word(
  english: "purpose",
  tagalog: "tagalog: layunin",
  ilocano: "ilocano: panggep",
  pangasinense: "pangasinense: gagala",
  examples: [
  WordExample(tagalog: "Malinaw ang layunin ng pagpupulong.", ilocano: "Nalawag ti panggep ti gimong.", pangasinense: "Malinew so gagala na miting."),
  WordExample(tagalog: "Ang layunin ng proyekto ay makatulong sa komunidad.", ilocano: "Ti panggep ti proyekto ket makatulong iti komunidad.", pangasinense: "So gagala na proyekto et makatulong ed komunidad.")
  ],
  ),

  Word(
  english: "quality",
  tagalog: "tagalog: kalidad",
  ilocano: "ilocano: kalidad",
  pangasinense: "pangasinense: kalidad",
  examples: [
  WordExample(tagalog: "Mataas ang kalidad ng trabaho.", ilocano: "Nangato ti kalidad ti trabaho.", pangasinense: "Atagey so kalidad na trabaho."),
  WordExample(tagalog: "Ang kalidad ng produkto ay mahalaga.", ilocano: "Napateg ti kalidad ti produkto.", pangasinense: "Importante so kalidad na produkto.")
  ],
  ),

  Word(
  english: "question",
  tagalog: "tagalog: tanong",
  ilocano: "ilocano: saludsod",
  pangasinense: "pangasinense: tepet",
  examples: [
  WordExample(tagalog: "Naghahamon ang tanong.", ilocano: "Makakarit ti saludsod.", pangasinense: "Makapaangat so tepet."),
  WordExample(tagalog: "Ang tanong niya ay mahirap sagutin.", ilocano: "Narigat nga isungbat ti saludsodna.", pangasinense: "Mabigat so tepet na.")
  ],
  ),

  Word(
  english: "queue",
  tagalog: "tagalog: pila",
  ilocano: "ilocano: pila",
  pangasinense: "pangasinense: pila",
  examples: [
  WordExample(tagalog: "Mahaba ang pila.", ilocano: "Atiddog ti pila.", pangasinense: "Andukey so pila."),
  WordExample(tagalog: "Sumali siya sa pila para sa tiket.", ilocano: "Simrek isuna iti pila para iti tiket.", pangasinense: "Pumanig ya pila para tiket.")
  ],
  ),

  Word(
  english: "response",
  tagalog: "tagalog: tugon",
  ilocano: "ilocano: sungbat",
  pangasinense: "pangasinense: ebat",
  examples: [
  WordExample(tagalog: "Ang mabilis na tugon ay pinahahalagahan.", ilocano: "Naapresiar ti napartak a sungbat.", pangasinense: "Inapresya so maples ya ebat."),
  WordExample(tagalog: "Naghintay siya ng tugon sa kanyang tanong.", ilocano: "Nagururay isuna iti sungbat iti saludsodna.", pangasinense: "Agururay so ebat na tepet.")
  ],
  ),

  Word(
  english: "quiet",
  tagalog: "tagalog: katahimikan",
  ilocano: "ilocano: kinaulimek",
  pangasinense: "pangasinense: kareenan",
  examples: [
  WordExample(tagalog: "Ang katahimikan ay tinanggap pagkatapos ng ingay.", ilocano: "Naabrasa ti kinaulimek kalpasan ti arimbangaw.", pangasinense: "Say kareenan so naawat kayari na ungol."),
  WordExample(tagalog: "Nagustuhan niya ang katahimikan ng gabi.", ilocano: "Nagustuan na ti kinaulimek ti rabii.", pangasinense: "Gusto na so kareenan ya bilay.")
  ],
  ),

  Word(
  english: "race",
  tagalog: "tagalog: karera",
  ilocano: "ilocano: lumba",
  pangasinense: "pangasinense: lumba",
  examples: [
  WordExample(tagalog: "Nakakakilig ang karera.", ilocano: "Makaparagsak ti lumba.", pangasinense: "Makapalikliket so lumba."),
  WordExample(tagalog: "Sumali siya sa isang matinding karera.", ilocano: "Sumrek isuna iti nainget nga lumba.", pangasinense: "Pumanig so baleg ya lumba.")
  ],
  ),

  Word(
  english: "rain",
  tagalog: "tagalog: ulan",
  ilocano: "ilocano: tudo",
  pangasinense: "pangasinense: uran",
  examples: [
  WordExample(tagalog: "Nakakapanibago ang ulan.", ilocano: "Makapabang-ar ti tudo.", pangasinense: "Makarepresko so uran."),
  WordExample(tagalog: "Malakas ang ulan kahapon.", ilocano: "Napigsa ti tudo idi kalman.", pangasinense: "Baleg so uran ya bilay.")
  ],
  ),

  Word(
  english: "range",
  tagalog: "tagalog: hanay",
  ilocano: "ilocano: saklawen",
  pangasinense: "pangasinense: nanduruman",
  examples: [
  WordExample(tagalog: "Ang hanay ng mga produkto ay kahanga-hanga.", ilocano: "Nakaskasdaaw ti saklawen dagiti produkto.", pangasinense: "Makapadinayew so nanduruman produkto."),
  WordExample(tagalog: "Maraming pagpipilian sa hanay ng mga produkto.", ilocano: "Ado dagiti pagpili iti saklawen dagiti produkto.", pangasinense: "Dakol so nanduruman produkto.")
  ],
  ),

  Word(
  english: "rate",
  tagalog: "tagalog: rate",
  ilocano: "ilocano: rate",
  pangasinense: "pangasinense: bili",
  examples: [
  WordExample(tagalog: "Ang rate ay abot-kaya.", ilocano: "Makabael ti rate.", pangasinense: "Say bili et abot-abot."),
  WordExample(tagalog: "Tumaas ang rate ng serbisyong ito.", ilocano: "Nangato ti rate ti serbisio daytoy.", pangasinense: "Bumababa so bili na serbisyo.")
  ],
  ),
  Word(
  english: "reaction",
  tagalog: "tagalog: reaksyon",
  ilocano: "ilocano: reaksion",
  pangasinense: "pangasinense: reaksion",
  examples: [
  WordExample(tagalog: "Ang reaksyon ay kaagad.", ilocano: "Dagus ti reaksion.", pangasinense: "Tampol so reaksion to."),
  WordExample(tagalog: "Nakita ko ang kanyang reaksyon sa balita.", ilocano: "Nakita ko ti reaksionna iti damag.", pangasinense: "Nakita na so reaksion na ed balita.")
  ],
  ),

  Word(
  english: "read",
  tagalog: "tagalog: nabasa",
  ilocano: "ilocano: nabasa",
  pangasinense: "pangasinense: babasaen",
  examples: [
  WordExample(tagalog: "Nakakaengganyo ang nabasa.", ilocano: "Makaawis ti nabasa.", pangasinense: "Makapainteres so babasaen."),
  WordExample(tagalog: "Ang nabasang libro ay kahanga-hanga.", ilocano: "Ti nabasak a libro ket nakaka-amaze.", pangasinense: "Say nabasa na libro et nakapukaw.")
  ],
  ),

  Word(
  english: "reason",
  tagalog: "tagalog: dahilan",
  ilocano: "ilocano: rason",
  pangasinense: "pangasinense: rason",
  examples: [
  WordExample(tagalog: "Ang dahilan ay lohikal.", ilocano: "Lohikal ti rason.", pangasinense: "Makatunongan so rason."),
  WordExample(tagalog: "Marami ang dahilan kung bakit siya umalis.", ilocano: "Ado dagiti rason nu apay nga immalis isuna.", pangasinense: "Dakol so rason ya agalay ya pumanaw.")
  ],
  ),

  Word(
  english: "record",
  tagalog: "tagalog: rekord",
  ilocano: "ilocano: rekord",
  pangasinense: "pangasinense: rekord",
  examples: [
  WordExample(tagalog: "Nasira ang record.", ilocano: "Nadadael ti rekord.", pangasinense: "Asumpal so rekord."),
  WordExample(tagalog: "Nagawa niyang basagin ang kanyang sariling rekord.", ilocano: "Naimbagna nga napasamak ti bukod na a rekord.", pangasinense: "Nagkabael ya sumudlot so sariling rekord na.")
  ],
  ),

  Word(
  english: "recovery",
  tagalog: "tagalog: pagbawi",
  ilocano: "ilocano: panagimbag",
  pangasinense: "pangasinense: impamaabig",
  examples: [
  WordExample(tagalog: "Ang pagbawi ay mabagal ngunit matatag.", ilocano: "Nainayad ngem natalged ti panagimbagna.", pangasinense: "Mabaybayag balet ta tuloytuloy so impamaabig to."),
  WordExample(tagalog: "Kailangan ang oras para sa pagbawi.", ilocano: "Kasapulan ti tiempo para iti panagimbag.", pangasinense: "Kasapulan so tiempo para ed impamaabig.")
  ],
  ),

  Word(
  english: "reduction",
  tagalog: "tagalog: pagbawas",
  ilocano: "ilocano: pannakakissayna",
  pangasinense: "pangasinense: impanbabawas",
  examples: [
  WordExample(tagalog: "Malaki ang pagbawas.", ilocano: "Dakkel ti pannakakissayna.", pangasinense: "Makatantanda so impanbabawas."),
  WordExample(tagalog: "Ang pagbawas ng gastos ay mahalaga.", ilocano: "Napateg ti pannakakissayna ti gastos.", pangasinense: "Importante so impanbabawas na gastos.")
  ],
  ),

  Word(
  english: "reference",
  tagalog: "tagalog: sanggunian",
  ilocano: "ilocano: reperensya",
  pangasinense: "pangasinense: reperensya",
  examples: [
  WordExample(tagalog: "Nakatulong ang sanggunian.", ilocano: "Nakatulong ti reperensia.", pangasinense: "Makatulong so reperensya."),
  WordExample(tagalog: "Mahalaga ang sanggunian sa pananaliksik.", ilocano: "Napateg ti reperensia iti panagsukisok.", pangasinense: "Importante so reperensya ed pananaliksik.")
  ],
  ),

  Word(
  english: "reflection",
  tagalog: "tagalog: repleksyon",
  ilocano: "ilocano: panagnonot",
  pangasinense: "pangasinense: panagnonot",
  examples: [
  WordExample(tagalog: "Malalim ang repleksyon.", ilocano: "Nauneg ti panagmennamenna.", pangasinense: "Say panagnonot et aralem."),
  WordExample(tagalog: "Ang repleksyon ay nagbibigay ng kaalaman.", ilocano: "Ti panagnonot ket mangited ti adal.", pangasinense: "Say panagnonot et mangitinged so kaalaman.")
  ],
  ),

  Word(
  english: "regard",
  tagalog: "tagalog: paggalang",
  ilocano: "ilocano: panangigalang",
  pangasinense: "pangasinense: panangipateg",
  examples: [
  WordExample(tagalog: "Kitang-kita ang paggalang sa iba.", ilocano: "Napatnagan so panangigalang ed arum.", pangasinense: "Nabatad ti panangipateg iti sabsabali."),
  WordExample(tagalog: "Dapat may paggalang sa lahat.", ilocano: "Masapul ti panangigalang iti amin.", pangasinense: "Dapat so panangipateg ed atang.")
  ],
  ),
  Word(
  english: "region",
  tagalog: "tagalog: rehiyon",
  ilocano: "ilocano: rehyon",
  pangasinense: "pangasinense: rehion",
  examples: [
  WordExample(tagalog: "Ang rehiyon ay magkakaiba.", ilocano: "Nanduruma so rehyon.", pangasinense: "Nadumaduma ti rehion."),
  WordExample(tagalog: "Maraming kultura ang nasa rehiyon na ito.", ilocano: "Adu dagiti kultura iti daytoy a rehyon.", pangasinense: "Dakol so kultura ed rehion ya ito.")
  ],
  ),

  Word(
  english: "relation",
  tagalog: "tagalog: relasyon",
  ilocano: "ilocano: relasyon",
  pangasinense: "pangasinense: relasyon",
  examples: [
  WordExample(tagalog: "Ang relasyon ay mahalaga.", ilocano: "Importante so relasyon.", pangasinense: "Napateg ti relasion."),
  WordExample(tagalog: "Mahalaga ang relasyon sa negosyo.", ilocano: "Napateg ti relasyon iti negosyo.", pangasinense: "Importante so relasyon ed negosyo.")
  ],
  ),

  Word(
  english: "relationship",
  tagalog: "tagalog: relasyon",
  ilocano: "ilocano: relasyon",
  pangasinense: "pangasinense: relasion",
  examples: [
  WordExample(tagalog: "Matibay ang relasyon.", ilocano: "Mabiskeg so relasyon da.", pangasinense: "Natibker ti relasion."),
  WordExample(tagalog: "Ang magandang relasyon ay nagdudulot ng tagumpay.", ilocano: "Ti nasayaat a relasyon ket mangited ti panagbaligi.", pangasinense: "Say masayang relasyon et mangidudulot so tagumpay.")
  ],
  ),

  Word(
  english: "release",
  tagalog: "tagalog: paglabas",
  ilocano: "ilocano: pannakawayawaya",
  pangasinense: "pangasinense: paglabas",
  examples: [
  WordExample(tagalog: "Ang paglabas ay sabik na hinihintay.", ilocano: "Say kibulos to et magunaet ya aalagaren.", pangasinense: "Sigagagar a naur-uray ti pannakawayawaya."),
  WordExample(tagalog: "Inaasahan ang paglabas ng bagong pelikula.", ilocano: "Mangalat a paglabas ti baro a pelikula.", pangasinense: "Mangaasa so paglabas na baro na pelikula.")
  ],
  ),

  Word(
  english: "reliability",
  tagalog: "tagalog: pagiging maaasahan",
  ilocano: "ilocano: kinamapagtalkan",
  pangasinense: "pangasinense: pagkaasaligan",
  examples: [
  WordExample(tagalog: "Ang pagiging maaasahan ng pinagmulan ay kinuwestiyon.", ilocano: "Nakuestion so inkamatoor na lapuan.", pangasinense: "Nabalanse so pagkaasaligan na gubuan."),
  WordExample(tagalog: "Dapat i-verify ang pagiging maaasahan ng impormasyon.", ilocano: "Masapul a ma-verify ti kinamapagtalkan ti impormasyon.", pangasinense: "Dapat na verify so pagkaasaligan na impormasyon.")
  ],
  ),

  Word(
  english: "reminder",
  tagalog: "tagalog: paalala",
  ilocano: "ilocano: palagip",
  pangasinense: "pangasinense: paalala",
  examples: [
  WordExample(tagalog: "Nakatulong ang paalala.", ilocano: "Nakatulong ti palagip.", pangasinense: "Makatulong so paalala."),
  WordExample(tagalog: "Ang paalala ay mahalaga sa lahat.", ilocano: "Napateg ti palagip iti amin.", pangasinense: "Importante so paalala ed atang.")
  ],
  ),

  Word(
  english: "repair",
  tagalog: "tagalog: pag-aayos",
  ilocano: "ilocano: pannakatarimaan",
  pangasinense: "pangasinense: pag-aayos",
  examples: [
  WordExample(tagalog: "Ang pag-aayos ay matagumpay.", ilocano: "Naballigi ti pannakatarimaan.", pangasinense: "Matalona so impamaabig."),
  WordExample(tagalog: "Kailangan ng pag-aayos sa mga sirang kagamitan.", ilocano: "Kasapulan ti pannakatarimaan dagiti napukaw a gamit.", pangasinense: "Kasapulan so pag-aayos ed sirang kagamitan.")
  ],
  ),

  Word(
  english: "replacement",
  tagalog: "tagalog: kapalit",
  ilocano: "ilocano: pansalat",
  pangasinense: "pangasinense: kapalit",
  examples: [
  WordExample(tagalog: "Kinailangan ang kapalit.", ilocano: "Kaukolan so pansalat.", pangasinense: "Kasapulan ti kasukatna."),
  WordExample(tagalog: "Naghanap kami ng kapalit na produkto.", ilocano: "Nagkarkar ti kapalit a produkto.", pangasinense: "Naghanap kami ed kapalit na produkto.")
  ],
  ),

  Word(
  english: "reply",
  tagalog: "tagalog: tugon",
  ilocano: "ilocano: sungbat",
  pangasinense: "pangasinense: ebat",
  examples: [
  WordExample(tagalog: "Mabilis ang tugon.", ilocano: "Napartak ti sungbat.", pangasinense: "Say ebat et tampol."),
  WordExample(tagalog: "Nakatanggap ako ng mabilis na tugon mula sa kanila.", ilocano: "Nakatanggapak ti napartak a sungbat manipud kadakuada.", pangasinense: "Nakatanggap na so napartak na ebat manipud kadakuada.")
  ],
  ),

  Word(
  english: "report",
  tagalog: "tagalog: ulat",
  ilocano: "ilocano: report",
  pangasinense: "pangasinense: report",
  examples: [
  WordExample(tagalog: "Ang ulat ay masinsinan.", ilocano: "Naan-anay ti report.", pangasinense: "Say report et sigpot."),
  WordExample(tagalog: "Inihanda ko ang ulat para sa pagpupulong.", ilocano: "Inaramidko ti report para iti gimong.", pangasinense: "Inihanda na so report para ed miting.")
  ],
  ),

  Word(
  english: "reputation",
  tagalog: "tagalog: reputasyon",
  ilocano: "ilocano: reputasion",
  pangasinense: "pangasinense: reputasyon",
  examples: [
  WordExample(tagalog: "Ang reputasyon ay nakataya.", ilocano: "Nakataya ti reputasion.", pangasinense: "Say reputasyon so walad kapeligroan."),
  WordExample(tagalog: "Mahalaga ang reputasyon ng isang tao.", ilocano: "Napateg ti reputasion ti maysa a tao.", pangasinense: "Napateg so reputasyon na tao.")
  ],
  ),

  Word(
  english: "request",
  tagalog: "tagalog: kahilingan",
  ilocano: "ilocano: kiddaw",
  pangasinense: "pangasinense: kerew",
  examples: [
  WordExample(tagalog: "Ang kahilingan ay pinagbigyan.", ilocano: "Napatgan ti kiddaw.", pangasinense: "Inabobonan so kerew."),
  WordExample(tagalog: "Nagpadala ako ng kahilingan sa kanilang opisina.", ilocano: "Nangipatulodak ti kiddaw iti opisina da.", pangasinense: "Nagpadala na so kerew ed opisina da.")
  ],
  ),

  Word(
  english: "requirement",
  tagalog: "tagalog: pangangailangan",
  ilocano: "ilocano: kakaukolanen",
  pangasinense: "pangasinense: kasapulan",
  examples: [
  WordExample(tagalog: "Natugunan ang pangangailangan.", ilocano: "Nasumpal so kakaukolanen.", pangasinense: "Natungpal ti kasapulan."),
  WordExample(tagalog: "Ang mga pangangailangan ng proyekto ay isinagawa.", ilocano: "Ti dagiti kakaukolanen ti proyekto ket naipatumpal.", pangasinense: "Say mga kasapulan na proyekto et naipatumpal.")
  ],
  ),

  Word(
  english: "research",
  tagalog: "tagalog: pananaliksik",
  ilocano: "ilocano: panagsukisok",
  pangasinense: "pangasinense: pananaliksik",
  examples: [
  WordExample(tagalog: "Ang pananaliksik ay groundbreaking.", ilocano: "Nakarang-ay ti panagsirarak.", pangasinense: "Makapadinayew so impansukimat."),
  WordExample(tagalog: "Kailangan ng masusing pananaliksik sa isyung ito.", ilocano: "Kasapulan ti naparsua a panagsukisok iti daytoy a isyu.", pangasinense: "Kasapulan so masusing pananaliksik ed isyu ya ito.")
  ],
  ),

  Word(
  english: "resolution",
  tagalog: "tagalog: resolusyon",
  ilocano: "ilocano: resolusion",
  pangasinense: "pangasinense: resolusyon",
  examples: [
  WordExample(tagalog: "Ang resolusyon ay naipasa nang nagkakaisa.", ilocano: "Nagkaykaysa a naipasa ti resolusion.", pangasinense: "Say resolusyon et inmabobon ya amin."),
  WordExample(tagalog: "Kailangan ang suporta para sa pagpasa ng resolusyon.", ilocano: "Kasapulan ti suporta para iti panagpasa ti resolusion.", pangasinense: "Kasapulan so suporta para ed pagpas na resolusyon.")
  ],
  ),

  Word(
  english: "resource",
  tagalog: "tagalog: mapagkukunan",
  ilocano: "ilocano: rekurso",
  pangasinense: "pangasinense: kayamanan",
  examples: [
  WordExample(tagalog: "Ang mapagkukunan ay mahalaga.", ilocano: "Napateg ti rekurso.", pangasinense: "Makana so kayamanan."),
  WordExample(tagalog: "Kailangan natin ng mapagkukunan para sa proyekto.", ilocano: "Kasapulan tayo ti rekurso para iti proyekto.", pangasinense: "Kasapulan tayo so kayamanan para ed proyekto.")
  ],
  ),

  Word(
  english: "respect",
  tagalog: "tagalog: paggalang",
  ilocano: "ilocano: panangigalang",
  pangasinense: "pangasinense: respeto",
  examples: [
  WordExample(tagalog: "Ang paggalang ay kapwa.", ilocano: "Nagpipinnatay ti panagraem.", pangasinense: "Say respeto et parad balang sakey."),
  WordExample(tagalog: "Ang paggalang sa mga matatanda ay mahalaga.", ilocano: "Napateg ti panangigalang kadagiti matatanda.", pangasinense: "Importante so respeto ed matatanda.")
  ],
  ),

  Word(
  english: "response",
  tagalog: "tagalog: tugon",
  ilocano: "ilocano: sungbat",
  pangasinense: "pangasinense: ebat",
  examples: [
  WordExample(tagalog: "Ang tugon ay positibo.", ilocano: "Positibo ti sungbat.", pangasinense: "Positibo so ebat."),
  WordExample(tagalog: "Ang kanyang tugon sa tanong ay nakabibighani.", ilocano: "Ti sungbatna iti saludsod ket nakakaganyak.", pangasinense: "Say ebat na ed tepet et nakakapukaw.")
  ],
  ),

  Word(
  english: "result",
  tagalog: "tagalog: resulta",
  ilocano: "ilocano: resulta",
  pangasinense: "pangasinense: resulta",
  examples: [
  WordExample(tagalog: "Ang resulta ay kasiya-siya.", ilocano: "Makapenek ti resulta.", pangasinense: "Makapnek ti resultana."),
  WordExample(tagalog: "Ang resulta ng pagsusuri ay nakabibighani.", ilocano: "Ti resulta ti panagsusuri ket nakakaganyak.", pangasinense: "Say resulta na ed pagsusuri et nakakapukaw.")
  ],
  ),

  Word(
  english: "reveal",
  tagalog: "tagalog: pagbubunyag",
  ilocano: "ilocano: imparungtal",
  pangasinense: "pangasinense: pagbubunyag",
  examples: [
  WordExample(tagalog: "Ang pagbubunyag ay nakakagulat.", ilocano: "Nakaskasdaaw ti pannakaipalgakna.", pangasinense: "Makapakelaw so imparungtal."),
  WordExample(tagalog: "Inihayag niya ang katotohanan sa kanyang pagbubunyag.", ilocano: "Inimayagna ti kinapudno iti pannakabunyagna.", pangasinense: "Ininayag na so katotohanan ed pagbubunyag na.")
  ],
  ),
  Word(
  english: "revenue",
  tagalog: "tagalog: kita",
  ilocano: "ilocano: naala",
  pangasinense: "pangasinense: kita",
  examples: [
  WordExample(tagalog: "Ang kita ay kahanga-hanga.", ilocano: "Makapadinayew so naala.", pangasinense: "Nakaskasdaaw ti kita."),
  WordExample(tagalog: "Tumaas ang kita ng kumpanya ngayong taon.", ilocano: "Tumaas ti kita ti kumpanya itoy tawen.", pangasinense: "Umangat so kita na kumpanya ed taon ya ito.")
  ],
  ),

  Word(
  english: "review",
  tagalog: "tagalog: pagsusuri",
  ilocano: "ilocano: repaso",
  pangasinense: "pangasinense: repaso",
  examples: [
  WordExample(tagalog: "Ang pagsusuri ay paborable.", ilocano: "Paborabli so repaso.", pangasinense: "Paborable ti repaso."),
  WordExample(tagalog: "Ang pagsusuri ng libro ay positibo.", ilocano: "Ti pagsusuri ti libro ket positibo.", pangasinense: "Say repaso na libro et positibo.")
  ],
  ),

  Word(
  english: "revolution",
  tagalog: "tagalog: rebolusyon",
  ilocano: "ilocano: rebolusyon",
  pangasinense: "pangasinense: rebolusyon",
  examples: [
  WordExample(tagalog: "Binago ng rebolusyon ang mundo.", ilocano: "Say rebolusyon so anguman ed mundo.", pangasinense: "Binalbaliwan ti rebolusion ti lubong."),
  WordExample(tagalog: "Ang rebolusyon ay nagdala ng pagbabago.", ilocano: "Ti rebolusyon ket nagdala ti panagbaliw.", pangasinense: "Say rebolusyon et nagdala so pagbabago.")
  ],
  ),

  Word(
  english: "role",
  tagalog: "tagalog: tungkulin",
  ilocano: "ilocano: betang",
  pangasinense: "pangasinense: tungkulin",
  examples: [
  WordExample(tagalog: "Napakahalaga ng tungkulin ng pinuno.", ilocano: "Importante so betang na lider.", pangasinense: "Napateg ti akem ti lider."),
  WordExample(tagalog: "Ang kanyang tungkulin ay magbigay ng inspirasyon.", ilocano: "Ti betangna ket mangited ti inspirasyon.", pangasinense: "Say tungkulin na et mangitak ti inspirasyon.")
  ],
  ),

  Word(
  english: "room",
  tagalog: "tagalog: silid",
  ilocano: "ilocano: kuarto",
  pangasinense: "pangasinense: kuarto",
  examples: [
  WordExample(tagalog: "Maluwag at maliwanag ang silid.", ilocano: "Maawang tan maliwawa so kuarto.", pangasinense: "Nalawa ken naraniag ti kuarto."),
  WordExample(tagalog: "Ang silid ay may magandang tanawin.", ilocano: "Ti kuarto ket adda nasayaat a tanawin.", pangasinense: "Say kuarto et mayat so tanawin.")
  ],
  ),

  Word(
  english: "route",
  tagalog: "tagalog: ruta",
  ilocano: "ilocano: rota",
  pangasinense: "pangasinense: ruta",
  examples: [
  WordExample(tagalog: "Ang ruta ay maganda.", ilocano: "Say rota et marakep.", pangasinense: "Napintas ti ruta."),
  WordExample(tagalog: "Planuhin ang pinakamabilis na ruta.", ilocano: "Planuhen ti kadaklan a ruta.", pangasinense: "Iplano so kadaklan na ruta.")
  ],
  ),

  Word(
  english: "safety",
  tagalog: "tagalog: kaligtasan",
  ilocano: "ilocano: seguridad",
  pangasinense: "pangasinense: seguridad",
  examples: [
  WordExample(tagalog: "Ang mga hakbang sa kaligtasan ay epektibo.", ilocano: "Epektibo iray paraan na seguridad.", pangasinense: "Epektibo dagiti pamay-an ti kinatalged."),
  WordExample(tagalog: "Mahalaga ang mga hakbang para sa kaligtasan.", ilocano: "Napateg dagiti hakbang para iti seguridad.", pangasinense: "Importante so mga pamay-an para ed seguridad.")
  ],
  ),

  Word(
  english: "satisfaction",
  tagalog: "tagalog: kasiyahan",
  ilocano: "ilocano: inkapnek",
  pangasinense: "pangasinense: kasiyahan",
  examples: [
  WordExample(tagalog: "Kitang-kita ang kasiyahan.", ilocano: "Napatnagan so inkapnek.", pangasinense: "Nabatad ti pannakapnek."),
  WordExample(tagalog: "Ang kasiyahan ng mga tao ay mahalaga.", ilocano: "Napateg ti kasiyahan dagiti tao.", pangasinense: "Importante so kasiyahan na tao.")
  ],
  ),

  Word(
  english: "scale",
  tagalog: "tagalog: sukat",
  ilocano: "ilocano: sukat",
  pangasinense: "pangasinense: sukat",
  examples: [
  WordExample(tagalog: "Malaki ang sukat ng proyekto.", ilocano: "Baleg so sukat na proyekto.", pangasinense: "Dakkel ti kadakkel ti proyekto."),
  WordExample(tagalog: "Ang sukat ng bahay ay angkop para sa pamilya.", ilocano: "Ti sukat ti balay ket angkop para iti pamilya.", pangasinense: "Say sukat na balay et angkop para ed pamilya.")
  ],
  ),

  Word(
  english: "scene",
  tagalog: "tagalog: eksena",
  ilocano: "ilocano: eksena",
  pangasinense: "pangasinense: eksena",
  examples: [
  WordExample(tagalog: "Napakaganda ng eksena.", ilocano: "Makapadinayew so eksena.", pangasinense: "Napintas ti eksena."),
  WordExample(tagalog: "Ang eksena sa pelikula ay nakakaaliw.", ilocano: "Ti eksena iti pelikula ket nakakaaliw.", pangasinense: "Say eksena na pelikula et nakakapukaw.")
  ],
  ),

  Word(
  english: "schedule",
  tagalog: "tagalog: iskedyul",
  ilocano: "ilocano: eskedyul",
  pangasinense: "pangasinense: iskedyul",
  examples: [
  WordExample(tagalog: "Mahigpit ang schedule.", ilocano: "Mairap so eskedyul.", pangasinense: "Nairut ti eskediul."),
  WordExample(tagalog: "Dapat ayusin ang iskedyul para sa proyekto.", ilocano: "Masapul a ayuson ti eskedyul para iti proyekto.", pangasinense: "Dapat ayuson so iskedyul para ed proyekto.")
  ],
  ),

  Word(
  english: "school",
  tagalog: "tagalog: paaralan",
  ilocano: "ilocano: eskuelaan",
  pangasinense: "pangasinense: eskuelaan",
  examples: [
  WordExample(tagalog: "Ang paaralan ay iginagalang.", ilocano: "Say eskuelaan et ipapasen a maong.", pangasinense: "Nasayaat ti pannakaibilang ti eskuelaan."),
  WordExample(tagalog: "Mahalaga ang edukasyon sa paaralan.", ilocano: "Napateg ti edukasyon iti eskuelaan.", pangasinense: "Importante so edukasyon ed eskuelaan.")
  ],
  ),

  Word(
  english: "science",
  tagalog: "tagalog: agham",
  ilocano: "ilocano: siensia",
  pangasinense: "pangasinense: siensia",
  examples: [
  WordExample(tagalog: "Ang agham ay kaakit-akit.", ilocano: "Makapainteres so siensia.", pangasinense: "Makaay-ayo ti siensia."),
  WordExample(tagalog: "Maraming tuklas ang agham sa ating buhay.", ilocano: "Adu dagiti tuklas ti siensia iti biag tayo.", pangasinense: "Dakol so tuklas na siensia ed buhay tayo.")
  ],
  ),

  Word(
  english: "scoop",
  tagalog: "tagalog: scoop",
  ilocano: "ilocano: scoop",
  pangasinense: "pangasinense: scoop",
  examples: [
  WordExample(tagalog: "Nakakaexcite ang scoop.", ilocano: "Makapalikliket so scoop.", pangasinense: "Makaparagsak ti scoop."),
  WordExample(tagalog: "Ang scoop ng balita ay nakakaaliw.", ilocano: "Ti scoop ti damag ket nakakaaliw.", pangasinense: "Say scoop na balita et nakakapukaw.")
  ],
  ),

  Word(
  english: "score",
  tagalog: "tagalog: iskor",
  ilocano: "ilocano: iskor",
  pangasinense: "pangasinense: iskor",
  examples: [
  WordExample(tagalog: "Malapit na ang score.", ilocano: "Asingger so iskor.", pangasinense: "Asideg ti iskor."),
  WordExample(tagalog: "Ang score ng laro ay nakakaaliw.", ilocano: "Ti iskor ti laro ket nakakaaliw.", pangasinense: "Say iskor na laro et nakakapukaw.")
  ],
  ),

  Word(
  english: "screen",
  tagalog: "tagalog: screen",
  ilocano: "ilocano: iskrin",
  pangasinense: "pangasinense: screen",
  examples: [
  WordExample(tagalog: "Malaki ang screen.", ilocano: "Baleg so screen.", pangasinense: "Dakkel ti iskrin."),
  WordExample(tagalog: "Ang screen ng telebisyon ay malinaw.", ilocano: "Ti screen ti telebisyon ket nalawag.", pangasinense: "Say screen na telebisyon et malinaw.")
  ],
  ),

  Word(
  english: "search",
  tagalog: "tagalog: paghahanap",
  ilocano: "ilocano: panag-anap",
  pangasinense: "pangasinense: panag-anap",
  examples: [
  WordExample(tagalog: "Ang paghahanap ay masinsinan.", ilocano: "Sigpot so panag-anap.", pangasinense: "Naan-anay ti panagbirok."),
  WordExample(tagalog: "Mahirap ang paghahanap ng tamang sagot.", ilocano: "Mahirap ti panag-anap ti umiso a sungbat.", pangasinense: "Mahirap so panag-anap na tamang ebat.")
  ],
  ),

  Word(
  english: "season",
  tagalog: "tagalog: panahon",
  ilocano: "ilocano: panaon",
  pangasinense: "pangasinense: panaon",
  examples: [
  WordExample(tagalog: "Ang panahon ay maganda.", ilocano: "Marakep so panaon.", pangasinense: "Napintas ti panawen."),
  WordExample(tagalog: "Ang bawat panahon ay may kanya-kanyang ganda.", ilocano: "Ti tunggal panaon ket adda bukod a ganda.", pangasinense: "Say kada panaon et may saray-saray ya ganda.")
  ],
  ),

  Word(
  english: "secret",
  tagalog: "tagalog: sikreto",
  ilocano: "ilocano: sekreto",
  pangasinense: "pangasinense: sikreto",
  examples: [
  WordExample(tagalog: "Sa wakas ay nabunyag na ang sikreto.", ilocano: "Diad kaunoran et niparungtal so sekreto.", pangasinense: "Naipalgak kamaudiananna ti sekreto."),
  WordExample(tagalog: "Ang sikreto ay dapat itago.", ilocano: "Ti sekreto ket masapul a itago.", pangasinense: "Say sikreto et dapat itago.")
  ],
  ),

  Word(
  english: "selection",
  tagalog: "tagalog: pagpili",
  ilocano: "ilocano: pannakapili",
  pangasinense: "pangasinense: pinili",
  examples: [
  WordExample(tagalog: "Ang pagpili ay kahanga-hanga.", ilocano: "Makapadinayew so pinili.", pangasinense: "Nakaskasdaaw ti pannakapili."),
  WordExample(tagalog: "Ang tamang pagpili ay mahalaga.", ilocano: "Napateg ti umiso a pannakapili.", pangasinense: "Importante so umiso na pagpili.")
  ],
  ),
  Word(
  english: "sense",
  tagalog: "tagalog: pakiramdam",
  ilocano: "ilocano: liknaan",
  pangasinense: "pangasinense: pakiramdam",
  examples: [
  WordExample(tagalog: "Malakas ang pakiramdam ng komunidad.", ilocano: "Mabiskeg so liknaan na komunidad.", pangasinense: "Napigsa ti rikna ti komunidad."),
  WordExample(tagalog: "Ang pakiramdam ng pagkakaisa ay mahalaga.", ilocano: "Ti pakiramdam ti panagkaykaysa ket napateg.", pangasinense: "Importante so pakiramdam na pagkakaisa.")
  ],
  ),

  Word(
  english: "sentence",
  tagalog: "tagalog: pangungusap",
  ilocano: "ilocano: sentensia",
  pangasinense: "pangasinense: sentence",
  examples: [
  WordExample(tagalog: "Binasa nang malakas ang pangungusap.", ilocano: "Say sentence et binasa ed maksil.", pangasinense: "Naibasa iti napigsa ti sentensia."),
  WordExample(tagalog: "Ang pangungusap ay malinaw at tuwid.", ilocano: "Ti pangungusap ket nalawag ken tuwid.", pangasinense: "Say sentence et malinaw tan tuwid.")
  ],
  ),

  Word(
  english: "series",
  tagalog: "tagalog: serye",
  ilocano: "ilocano: serye",
  pangasinense: "pangasinense: serye",
  examples: [
  WordExample(tagalog: "Nakakabighani ang serye.", ilocano: "Makapasagyat so serye.", pangasinense: "Makaawis ti serye."),
  WordExample(tagalog: "Ang serye ay puno ng nakakaintrigang kwento.", ilocano: "Ti serye ket napno ti nakakaintrigang istorya.", pangasinense: "Say serye et puno so nakakaintrigang kwento.")
  ],
  ),

  Word(
  english: "service",
  tagalog: "tagalog: serbisyo",
  ilocano: "ilocano: serbisio",
  pangasinense: "pangasinense: serbisyo",
  examples: [
  WordExample(tagalog: "Napakahusay ng serbisyo.", ilocano: "Maong so serbisyo.", pangasinense: "Nagsayaat ti serbisio."),
  WordExample(tagalog: "Mabilis ang serbisyo sa tindahan.", ilocano: "Napardas ti serbisyo iti tindaan.", pangasinense: "Mabilis so serbisyo ed tiendaan.")
  ],
  ),

  Word(
  english: "session",
  tagalog: "tagalog: sesyon",
  ilocano: "ilocano: sesion",
  pangasinense: "pangasinense: sesyon",
  examples: [
  WordExample(tagalog: "Naging produktibo ang session.", ilocano: "Mabunga so sesyon.", pangasinense: "Nabunga ti sesion."),
  WordExample(tagalog: "Ang sesyon ay nagbigay ng maraming kaalaman.", ilocano: "Ti sesyon ket nagited ti adu a kaalaman.", pangasinense: "Say sesyon et nagbigay so dakol na kaalaman.")
  ],
  ),

  Word(
  english: "set",
  tagalog: "tagalog: set",
  ilocano: "ilocano: set",
  pangasinense: "pangasinense: set",
  examples: [
  WordExample(tagalog: "Kumpleto ang set.", ilocano: "Kompleto lay set.", pangasinense: "Nakompleto ti set."),
  WordExample(tagalog: "Ang set ng kagamitan ay handa na.", ilocano: "Ti set ti kagamitan ket nakahanda.", pangasinense: "Say set na kagamitan et handa na.")
  ],
  ),

  Word(
  english: "share",
  tagalog: "tagalog: pagbabahagi",
  ilocano: "ilocano: impan-share",
  pangasinense: "pangasinense: pagbabahagi",
  examples: [
  WordExample(tagalog: "Ang pagbabahagi ay pinahahalagahan.", ilocano: "Inapresya so impan-share.", pangasinense: "Naapresiar ti bingay."),
  WordExample(tagalog: "Mahalaga ang pagbabahagi ng kaalaman.", ilocano: "Napateg ti pagbabahagi ti kaalaman.", pangasinense: "Importante so pagbabahagi na kaalaman.")
  ],
  ),

  Word(
  english: "shelter",
  tagalog: "tagalog: kanlungan",
  ilocano: "ilocano: pagkamangan",
  pangasinense: "pangasinense: kanlungan",
  examples: [
  WordExample(tagalog: "Ligtas at mainit ang kanlungan.", ilocano: "Say ayaman et maligen tan malimpek.", pangasinense: "Natalged ken nabara ti pagkamangan."),
  WordExample(tagalog: "Ang kanlungan ay nagbibigay ng seguridad.", ilocano: "Ti kanlungan ket mangted ti seguridad.", pangasinense: "Say kanlungan et nagbigay so seguridad.")
  ],
  ),

  Word(
  english: "shift",
  tagalog: "tagalog: shift",
  ilocano: "ilocano: panagbalbaliw",
  pangasinense: "pangasinense: shift",
  examples: [
  WordExample(tagalog: "Ang shift ay mahirap ngunit kapaki-pakinabang.", ilocano: "Mairap so impanguman balet ta makagunggona.", pangasinense: "Narigat ti panagbalbaliw ngem makagunggona."),
  WordExample(tagalog: "Minsan ang shift ay nagiging matagal.", ilocano: "Sakbay ti shift ket nagbalin a napigsa.", pangasinense: "Ususal so shift et nagiging matagal.")
  ],
  ),

  Word(
  english: "shirt",
  tagalog: "tagalog: kamiseta",
  ilocano: "ilocano: kamiseta",
  pangasinense: "pangasinense: kamiseta",
  examples: [
  WordExample(tagalog: "Ang shirt ay naka-istilong.", ilocano: "Say kamiseta et marakep.", pangasinense: "Estilo ti kamisadentro."),
  WordExample(tagalog: "Bumili ako ng bagong kamiseta.", ilocano: "Nag-gatangak ti baro a kamiseta.", pangasinense: "Naggatang so baro na kamiseta.")
  ],
  ),

  Word(
  english: "shock",
  tagalog: "tagalog: pagkabigla",
  ilocano: "ilocano: inkabigla",
  pangasinense: "pangasinense: pagkabigla",
  examples: [
  WordExample(tagalog: "Ang pagkabigla ay hindi inaasahan.", ilocano: "Ag-inilaloan so inkabigla.", pangasinense: "Di ninamnama ti pannakakigtot."),
  WordExample(tagalog: "Ang pagkabigla ay nagdulot ng takot.", ilocano: "Ti inkabigla ket nagdulot ti takut.", pangasinense: "Say pagkabigla et nagdulot so takot.")
  ],
  ),

  Word(
  english: "shop",
  tagalog: "tagalog: tindahan",
  ilocano: "ilocano: tindaan",
  pangasinense: "pangasinense: tindaan",
  examples: [
  WordExample(tagalog: "Busy ang shop.", ilocano: "Okupado so tindaan.", pangasinense: "Okupado ti tiendaan."),
  WordExample(tagalog: "Maraming tao sa tindahan.", ilocano: "Adu a tao iti tindaan.", pangasinense: "Dakol so tao ed tiendaan.")
  ],
  ),

  Word(
  english: "short story",
  tagalog: "tagalog: maikling kuwento",
  ilocano: "ilocano: antikey ya istorya",
  pangasinense: "pangasinense: maikling kuwento",
  examples: [
  WordExample(tagalog: "Mahusay ang pagkakasulat ng maikling kuwento.", ilocano: "Say antikey ya istorya et maong so inkisulat to.", pangasinense: "Nasayaat ti pannakaisurat ti ababa a sarita."),
  WordExample(tagalog: "Ang maikling kuwento ay nakakatawa.", ilocano: "Ti antikey ya istorya ket nakakatawa.", pangasinense: "Say maikling kuwento et nakakatawa.")
  ],
  ),

  Word(
  english: "sight",
  tagalog: "tagalog: tanawin",
  ilocano: "ilocano: nanenengneng",
  pangasinense: "pangasinense: tanawin",
  examples: [
  WordExample(tagalog: "Ang tanawin ay makapigil-hininga.", ilocano: "Makapadinayew so nanenengneng.", pangasinense: "Nakaanges ti buya."),
  WordExample(tagalog: "Magandang tanawin ang makikita dito.", ilocano: "Napintas a tanawin ti makitam ditoy.", pangasinense: "Napintas so tanawin et makikita ditoy.")
  ],
  ),

  Word(
  english: "sign",
  tagalog: "tagalog: tanda",
  ilocano: "ilocano: tanda",
  pangasinense: "pangasinense: tanda",
  examples: [
  WordExample(tagalog: "Malinaw ang tanda.", ilocano: "Malinew so tanda.", pangasinense: "Nalawag ti karatula."),
  WordExample(tagalog: "Ang tanda ng pagbawas ay malinaw.", ilocano: "Ti tanda ti panagbaba ket nalawag.", pangasinense: "Say tanda na pag-imbes et malinaw.")
  ],
  ),

  Word(
  english: "signal",
  tagalog: "tagalog: signal",
  ilocano: "ilocano: signal",
  pangasinense: "pangasinense: signal",
  examples: [
  WordExample(tagalog: "Mahina ang signal.", ilocano: "Makapuy so signal.", pangasinense: "Nakapuy ti signal."),
  WordExample(tagalog: "Kailangan ng mas malakas na signal.", ilocano: "Masapul ti mas napigsa a signal.", pangasinense: "Kailangan so mas balin na signal.")
  ],
  ),

  Word(
  english: "significance",
  tagalog: "tagalog: kahalagahan",
  ilocano: "ilocano: kabaliksan",
  pangasinense: "pangasinense: kahalagahan",
  examples: [
  WordExample(tagalog: "Malaki ang kahalagahan.", ilocano: "Baleg so kabaliksan to.", pangasinense: "Dakkel ti kaipapanan dayta."),
  WordExample(tagalog: "Ang kahalagahan ng edukasyon ay di matatawaran.", ilocano: "Ti kahalagahan ti edukasyon ket di mamatangan.", pangasinense: "Di matatawaran so kahalagahan na edukasyon.")
  ],
  ),

  Word(
  english: "situation",
  tagalog: "tagalog: sitwasyon",
  ilocano: "ilocano: situasyon",
  pangasinense: "pangasinense: sitwasyon",
  examples: [
  WordExample(tagalog: "Ang sitwasyon ay tense.", ilocano: "Makapaermen so situasyon.", pangasinense: "Nakaro ti kasasaad."),
  WordExample(tagalog: "Mahirap ang sitwasyon natin ngayon.", ilocano: "Narigat ti sitwasyon tayo ita.", pangasinense: "Mahirap so sitwasyon tayon ed sikato.")
  ],
  ),

  Word(
  english: "size",
  tagalog: "tagalog: laki",
  ilocano: "ilocano: kadakkel",
  pangasinense: "pangasinense: laki",
  examples: [
  WordExample(tagalog: "Kahanga-hanga ang laki ng mga tao.", ilocano: "Makapadinayew so karakel na totoo.", pangasinense: "Nakaskasdaaw ti kadakkel ti bunggoy."),
  WordExample(tagalog: "Ang laki ng bahay ay nakakabighani.", ilocano: "Ti kadakkel ti balay ket nakakabighani.", pangasinense: "Say laki na bahay et nakakabighani.")
  ],
  ),

  Word(
  english: "skill",
  tagalog: "tagalog: kasanayan",
  ilocano: "ilocano: dunong",
  pangasinense: "pangasinense: kasanayan",
  examples: [
  WordExample(tagalog: "Ang kasanayan ay nahasa sa paglipas ng panahon.", ilocano: "Say dunong so inmaligwas legay ilalabas na panaon.", pangasinense: "Napaysayaat ti paglaingan bayat ti panaglabas ti panawen."),
  WordExample(tagalog: "Kailangan ng kasanayan sa trabaho.", ilocano: "Masapul ti kasanayan iti trabaho.", pangasinense: "Kailangan so kasanayan ed trabaho.")
  ],
  ),
  Word(
  english: "sleep",
  tagalog: "tagalog: tulog",
  ilocano: "ilocano: turog",
  pangasinense: "pangasinense: ugip",
  examples: [
  WordExample(tagalog: "Ang tulog ay mahimbing.", ilocano: "Makapainawa so ugip.", pangasinense: "Nagin-inana ti turog."),
  WordExample(tagalog: "Kailangan ko ng sapat na tulog.", ilocano: "Masapulak ti napigsa a turog.", pangasinense: "Kailangan ko so madali na ugip.")
  ],
  ),

  Word(
  english: "movement",
  tagalog: "tagalog: paggalaw",
  ilocano: "ilocano: galaw",
  pangasinense: "pangasinense: galaw",
  examples: [
  WordExample(tagalog: "Napansin ang bahagyang paggalaw.", ilocano: "Naimano so daiset ya galaw.", pangasinense: "Nadlaw ti bassit a panaggaraw."),
  WordExample(tagalog: "Ang paggalaw ng mga tao ay mabilis.", ilocano: "Ti galaw dagiti tao ket napardas.", pangasinense: "Bilis so galaw na tao.")
  ],
  ),

  Word(
  english: "smile",
  tagalog: "tagalog: ngiti",
  ilocano: "ilocano: imis",
  pangasinense: "pangasinense: ngiti",
  examples: [
  WordExample(tagalog: "Nakakahawa ang ngiti.", ilocano: "Makaalis so imis to.", pangasinense: "Makaakar ti isem."),
  WordExample(tagalog: "Ang ngiti niya ay nakakaaliw.", ilocano: "Ti imis na ket nakakaaliw.", pangasinense: "Say ngiti na et nakakaaliw.")
  ],
  ),

  Word(
  english: "smoke",
  tagalog: "tagalog: usok",
  ilocano: "ilocano: asewek",
  pangasinense: "pangasinense: asuk",
  examples: [
  WordExample(tagalog: "Makapal ang usok.", ilocano: "Makapal so asewek.", pangasinense: "Napuskol ti asuk."),
  WordExample(tagalog: "Ang usok ay nagmula sa apoy.", ilocano: "Ti usok ket naggapu iti apoy.", pangasinense: "Say asuk et naggapu ed apoy.")
  ],
  ),

  Word(
  english: "snow",
  tagalog: "tagalog: niyebe",
  ilocano: "ilocano: niebe",
  pangasinense: "pangasinense: niebe",
  examples: [
  WordExample(tagalog: "Ang niyebe ay maganda.", ilocano: "Marakep so niebe.", pangasinense: "Napintas ti niebe."),
  WordExample(tagalog: "Malamig ang panahon kapag may niyebe.", ilocano: "Nagpudot ti tiempo no adda niebe.", pangasinense: "Malamig so panahon no may niebe.")
  ],
  ),

  Word(
  english: "solution",
  tagalog: "tagalog: solusyon",
  ilocano: "ilocano: solusyon",
  pangasinense: "pangasinense: solusyon",
  examples: [
  WordExample(tagalog: "Ang solusyon ay simple.", ilocano: "Simpli labat so solusyon.", pangasinense: "Simple laeng ti solusion."),
  WordExample(tagalog: "Kailangan ng tamang solusyon.", ilocano: "Masapul ti umiso a solusyon.", pangasinense: "Kailangan so uray na solusyon.")
  ],
  ),

  Word(
  english: "song",
  tagalog: "tagalog: kanta",
  ilocano: "ilocano: kanta",
  pangasinense: "pangasinense: kanta",
  examples: [
  WordExample(tagalog: "Ang kanta ay isang hit.", ilocano: "Sikat so kanta.", pangasinense: "Nag-hit ti kanta."),
  WordExample(tagalog: "Mahal ko ang kantang ito.", ilocano: "Ay-ayatenko daytoy a kanta.", pangasinense: "Berkes ko so kantang to.")
  ],
  ),

  Word(
  english: "sorrow",
  tagalog: "tagalog: kalungkutan",
  ilocano: "ilocano: ermen",
  pangasinense: "pangasinense: ladingit",
  examples: [
  WordExample(tagalog: "Malalim ang kalungkutan.", ilocano: "Aralem so ermen.", pangasinense: "Nauneg ti ladingit."),
  WordExample(tagalog: "Ang kalungkutan ay bahagi ng buhay.", ilocano: "Ti kalungkutan ket parte ti biag.", pangasinense: "Say ladingit et parte na buhay.")
  ],
  ),

  Word(
  english: "space",
  tagalog: "tagalog: espasyo",
  ilocano: "ilocano: pasen",
  pangasinense: "pangasinense: pasen",
  examples: [
  WordExample(tagalog: "Ang espasyo ay bukas at maaliwalas.", ilocano: "Say pasen et lukas tan maawang.", pangasinense: "Silulukat ken naangep ti espasio."),
  WordExample(tagalog: "Mahalaga ang espasyo sa buhay.", ilocano: "Napateg ti espasyo iti biag.", pangasinense: "Importante so espasyo ed buhay.")
  ],
  ),

  Word(
  english: "special treatment",
  tagalog: "tagalog: espesyal na pagtrato",
  ilocano: "ilocano: espisyal ya impantrato",
  pangasinense: "pangasinense: espesyal na pagtrato",
  examples: [
  WordExample(tagalog: "Ang espesyal na pagtrato ay pinahahalagahan.", ilocano: "Inapresya so espisyal ya impantrato.", pangasinense: "Naapresiar ti naisangsangayan a pannakatrato."),
  WordExample(tagalog: "Kailangan natin ng espesyal na pagtrato.", ilocano: "Masapul tayo ti espisyal a pagtrato.", pangasinense: "Kailangan tayon so espesyal na pagtrato.")
  ],
  ),

  Word(
  english: "species",
  tagalog: "tagalog: mga species",
  ilocano: "ilocano: klase",
  pangasinense: "pangasinense: klase",
  examples: [
  WordExample(tagalog: "Nanganganib ang mga species.", ilocano: "Say klase na ayayep et napepeligro lan naandi.", pangasinense: "Agpegpeggad ti kita."),
  WordExample(tagalog: "Maraming uri ng mga species ang dapat protektahan.", ilocano: "Adu a uri dagiti species a masapul nga protektaran.", pangasinense: "Dakol so uri na species et dapat protektahan.")
  ],
  ),

  Word(
  english: "speech",
  tagalog: "tagalog: pananalita",
  ilocano: "ilocano: paliwawa",
  pangasinense: "pangasinense: pananalita",
  examples: [
  WordExample(tagalog: "Makapangyarihan ang pananalita.", ilocano: "Mabiskeg so paliwawa.", pangasinense: "Nabileg ti palawag."),
  WordExample(tagalog: "Ang pananalita niya ay puno ng emosyon.", ilocano: "Ti pananalita na ket napno ti emosyon.", pangasinense: "Say pananalita na et puno so emosyon.")
  ],
  ),

  Word(
  english: "speed",
  tagalog: "tagalog: bilis",
  ilocano: "ilocano: kapeles",
  pangasinense: "pangasinense: bilis",
  examples: [
  WordExample(tagalog: "Ang bilis ng sasakyan ay kahanga-hanga.", ilocano: "Makapadinayew so kapeles na kotse.", pangasinense: "Nakaskasdaaw ti kapartak ti lugan."),
  WordExample(tagalog: "Mabilis ang mga sasakyan sa kalsada.", ilocano: "Napardas dagiti kotse iti kalsada.", pangasinense: "Bilis so mga lugan ed kalsada.")
  ],
  ),

  Word(
  english: "spirit",
  tagalog: "tagalog: espiritu",
  ilocano: "ilocano: espiritu",
  pangasinense: "pangasinense: espiritu",
  examples: [
  WordExample(tagalog: "Malakas ang espiritu ng koponan.", ilocano: "Mabiskeg so espiritu na grupo.", pangasinense: "Napigsa ti espiritu ti team."),
  WordExample(tagalog: "Ang espiritu ng pagkakaisa ay mahalaga.", ilocano: "Ti espiritu ti panagkaykaysa ket napateg.", pangasinense: "Importante so espiritu na pagkakaisa.")
  ],
  ),

  Word(
  english: "spot",
  tagalog: "tagalog: lugar",
  ilocano: "ilocano: pasen",
  pangasinense: "pangasinense: lugar",
  examples: [
  WordExample(tagalog: "Ang lugar ay perpekto para sa isang picnic.", ilocano: "Perpekto so pasen parad piknik.", pangasinense: "Perpekto ti lugar a pagpiknikan."),
  WordExample(tagalog: "May magandang spot sa parke.", ilocano: "Adda napintas a pasen iti parke.", pangasinense: "Adda magandang lugar ed parke.")
  ],
  ),

  Word(
  english: "spring",
  tagalog: "tagalog: tagsibol",
  ilocano: "ilocano: primabera",
  pangasinense: "pangasinense: tagsibol",
  examples: [
  WordExample(tagalog: "Ang tagsibol ay nakakapreskong.", ilocano: "Makarepresko so primabera.", pangasinense: "Makapabang-ar ti ubbog."),
  WordExample(tagalog: "Gusto ko ang tagsibol dahil sa mga bulaklak.", ilocano: "Kayatko ti primabera gapu kadagiti bulaklak.", pangasinense: "Gusto ko so tagsibol et anangabulaklak.")
  ],
  ),

  Word(
  english: "stability",
  tagalog: "tagalog: katatagan",
  ilocano: "ilocano: kinatalged",
  pangasinense: "pangasinense: katatagan",
  examples: [
  WordExample(tagalog: "Ang katatagan ng istraktura ay nasubok.", ilocano: "Nasubok so inkapekder na istruktura.", pangasinense: "Nasubok ti kinatalged ti estruktura."),
  WordExample(tagalog: "Mahalaga ang katatagan ng isang sistema.", ilocano: "Napateg ti katatagan ti maysa a sistema.", pangasinense: "Importante so katatagan na sistema.")
  ],
  ),

  Word(
  english: "stage",
  tagalog: "tagalog: entablado",
  ilocano: "ilocano: entablado",
  pangasinense: "pangasinense: entablado",
  examples: [
  WordExample(tagalog: "Nakatakda na ang entablado para sa pagtatanghal.", ilocano: "Say entablado so akaparaan parad palabas.", pangasinense: "Naisagana ti entablado para iti pabuya."),
  WordExample(tagalog: "Ang entablado ay pinalamutian.", ilocano: "Nailatan ti entablado.", pangasinense: "Napalamutian so entablado.")
  ],
  ),

  Word(
  english: "stake",
  tagalog: "tagalog: stake",
  ilocano: "ilocano: taya",
  pangasinense: "pangasinense: stake",
  examples: [
  WordExample(tagalog: "Malaki ang stake sa proyekto.", ilocano: "Say interes ed proyekto et baleg.", pangasinense: "Dakkel ti taya iti proyekto."),
  WordExample(tagalog: "Ang stake ng negosyo ay mahalaga.", ilocano: "Ti stake ti negosyo ket napateg.", pangasinense: "Importante so stake na negosyo.")
  ],
  ),

  Word(
  english: "statement",
  tagalog: "tagalog: pahayag",
  ilocano: "ilocano: imbaga",
  pangasinense: "pangasinense: statement",
  examples: [
  WordExample(tagalog: "Malinaw ang pahayag.", ilocano: "Malinew so imbaga to.", pangasinense: "Nalawag ti statement."),
  WordExample(tagalog: "Ang pahayag niya ay makabuluhan.", ilocano: "Ti imbaga na ket makabuluhan.", pangasinense: "Say statement na et makabuluhan.")
  ],
  ),

  Word(
  english: "station",
  tagalog: "tagalog: istasyon",
  ilocano: "ilocano: estasion",
  pangasinense: "pangasinense: istasyon",
  examples: [
  WordExample(tagalog: "Naging abala ang istasyon.", ilocano: "Okupado so istasyon.", pangasinense: "Okupado ti estasion."),
  WordExample(tagalog: "Ang istasyon ay puno ng tao.", ilocano: "Ti istasyon ket napno dagiti tao.", pangasinense: "Ti estasion et puno so tao.")
  ],
  ),

  Word(
  english: "status",
  tagalog: "tagalog: katayuan",
  ilocano: "ilocano: kipapasen",
  pangasinense: "pangasinense: status",
  examples: [
  WordExample(tagalog: "Ang katayuan ng proyekto ay hindi malinaw.", ilocano: "Say kipapasen na proyekto et agmalinew.", pangasinense: "Saan a nalawag ti kasasaad ti proyekto."),
  WordExample(tagalog: "Mahalaga ang katayuan ng isang tao.", ilocano: "Napateg ti katayuan ti maysa a tao.", pangasinense: "Importante so status na tao.")
  ],
  ),

  Word(
  english: "step",
  tagalog: "tagalog: hakbang",
  ilocano: "ilocano: addang",
  pangasinense: "pangasinense: hakbang",
  examples: [
  WordExample(tagalog: "Ang hakbang ay maingat na binalak.", ilocano: "Say kundang et maalwar ya implano.", pangasinense: "Siaannad a naiplano ti addang."),
  WordExample(tagalog: "Kailangan ng tamang hakbang sa problema.", ilocano: "Masapul ti umiso a hakbang iti problema.", pangasinense: "Kailangan so uray na hakbang ed problema.")
  ],
  ),

  Word(
  english: "story",
  tagalog: "tagalog: kuwento",
  ilocano: "ilocano: istorya",
  pangasinense: "pangasinense: estoria",
  examples: [
  WordExample(tagalog: "Ang kuwento ay nakakabighani.", ilocano: "Makapasagyat so istorya.", pangasinense: "Makaawis ti estoria."),
  WordExample(tagalog: "Mahilig akong makinig sa mga kuwento.", ilocano: "Kayatko nga agdingeg kadagiti istorya.", pangasinense: "Mahilig akon ed makinig ed mga estoria.")
  ],
  ),

  Word(
  english: "strength",
  tagalog: "tagalog: tibay",
  ilocano: "ilocano: sigla",
  pangasinense: "pangasinense: pigsa",
  examples: [
  WordExample(tagalog: "Kitang-kita ang tibay ng pagkakatali.", ilocano: "Napatnagan so biskeg na siglaotan.", pangasinense: "Nabatad ti pigsa ti singgalut."),
  WordExample(tagalog: "Ang tibay ng pagkakaibigan ay mahalaga.", ilocano: "Ti tibay ti panagkakaibigan ket napateg.", pangasinense: "Importante so tibay na pagkakaibigan.")
  ],
  ),
  Word(
  english: "conclusive",
  tagalog: "tagalog: konklusyon",
  ilocano: "ilocano: nankonklusyon",
  pangasinense: "pangasinense: konklusion",
  examples: [
  WordExample(tagalog: "Ang pag-aaral ay konklusyon.", ilocano: "Say impanaral so nankonklusyon.", pangasinense: "Konklusion ti panagadal."),
  WordExample(tagalog: "Naging konklusyon ang resulta ng pagsusuri.", ilocano: "Nankonklusyon ti resulta ti panagadal.", pangasinense: "Naging konklusion so resulta na panag-analisis.")
  ],
  ),

  Word(
  english: "unique",
  tagalog: "tagalog: kakaiba",
  ilocano: "ilocano: nikadkaduma",
  pangasinense: "pangasinense: naisangsangayan",
  examples: [
  WordExample(tagalog: "Kakaiba ang istilo ng damit.", ilocano: "Nikadkaduma so estilo na kawes to.", pangasinense: "Naisangsangayan ti estilo ti kawes."),
  WordExample(tagalog: "May kakaibang disenyo ang produktong ito.", ilocano: "Adda nikadkaduma a disenyo daytoy a produkto.", pangasinense: "Adda naisangsangayan a disenyo et tong produkto.")
  ],
  ),

  Word(
  english: "interesting",
  tagalog: "tagalog: kawili-wili",
  ilocano: "ilocano: makapainteres",
  pangasinense: "pangasinense: makapainteres",
  examples: [
  WordExample(tagalog: "Ang paksa ay kawili-wili.", ilocano: "Ang tema ket makapainteres.", pangasinense: "Makapainteres ti suheto."),
  WordExample(tagalog: "May mga kawili-wiling impormasyon sa libro.", ilocano: "Adu nga makapainteres a impormasyon iti libro.", pangasinense: "Adda makapainteres na impormasyon ed libro.")
  ],
  ),

  Word(
  english: "celebrate",
  tagalog: "tagalog: ipagdiwang",
  ilocano: "ilocano: sinelebraan",
  pangasinense: "pangasinense: narambakan",
  examples: [
  WordExample(tagalog: "Ipinagdiwang ang tagumpay.", ilocano: "Say itatalona so sinelebraan.", pangasinense: "Narambakan ti balligi."),
  WordExample(tagalog: "Maganda ang pagdiriwang ng kaarawan.", ilocano: "Napintas ti sinelebrar ti kaarawan.", pangasinense: "Magandang pagdiriwang ed kaarawan.")
  ],
  ),

  Word(
  english: "shocking",
  tagalog: "tagalog: nakakabigla",
  ilocano: "ilocano: makapabigla",
  pangasinense: "pangasinense: nakigtot",
  examples: [
  WordExample(tagalog: "Nakakabigla ang biglaang pagbabago.", ilocano: "Makapabigla so biglan impanguman.", pangasinense: "Nakigtot ti kellaat a panagbalbaliw."),
  WordExample(tagalog: "Ang balita ay nakakabigla.", ilocano: "Ti balita ket makapabigla.", pangasinense: "Say balita et nakakabigla.")
  ],
  ),

  Word(
  english: "welcomed",
  tagalog: "tagalog: tinatanggap",
  ilocano: "ilocano: inabrasa",
  pangasinense: "pangasinense: naabrasa",
  examples: [
  WordExample(tagalog: "Ang mungkahi ay tinatanggap.", ilocano: "Inabrasa so suhestion.", pangasinense: "Naabrasa ti singasing."),
  WordExample(tagalog: "Tinatanggap ang mga ideya ng lahat.", ilocano: "Inabrasa dagiti ideya ti amin.", pangasinense: "Naabrasa so ideya na lahat.")
  ],
  ),

  Word(
  english: "running low",
  tagalog: "tagalog: ubos",
  ilocano: "ilocano: onkakapuy",
  pangasinense: "pangasinense: agkurkurang",
  examples: [
  WordExample(tagalog: "Ubos na ang suplay.", ilocano: "Say suplay et onkakapuy la.", pangasinense: "Agkurkurang ti suplay."),
  WordExample(tagalog: "Mabilis na nauubos ang pagkain.", ilocano: "Napardas a nagkurkurang ti makan.", pangasinense: "Agkurkurang so pagkain.")
  ],
  ),

  Word(
  english: "appreciated",
  tagalog: "tagalog: pinahahalagahan",
  ilocano: "ilocano: inapresya",
  pangasinense: "pangasinense: naapresiar",
  examples: [
  WordExample(tagalog: "Ang suporta ay pinahahalagahan.", ilocano: "Inapresya so suporta.", pangasinense: "Naapresiar ti suporta."),
  WordExample(tagalog: "Pinahahalagahan ko ang iyong tulong.", ilocano: "Inapresyako ti tulong mo.", pangasinense: "Naapresiar ko so tulong mo.")
  ],
  ),

  Word(
  english: "smooth",
  tagalog: "tagalog: makinis",
  ilocano: "ilocano: makinis",
  pangasinense: "pangasinense: nalannas",
  examples: [
  WordExample(tagalog: "Ang ibabaw ay makinis.", ilocano: "Makinis so tapew to.", pangasinense: "Nalannas ti rabawna."),
  WordExample(tagalog: "Makinis ang kalsada.", ilocano: "Makinis ti kalsada.", pangasinense: "Nalannas ti kalsada.")
  ],
  ),

  Word(
  english: "successful",
  tagalog: "tagalog: matagumpay",
  ilocano: "ilocano: matalona",
  pangasinense: "pangasinense: naballigi",
  examples: [
  WordExample(tagalog: "Naging matagumpay ang operasyon.", ilocano: "Matalona so operasyon.", pangasinense: "Naballigi ti operasion."),
  WordExample(tagalog: "Magandang matagumpay na negosyo.", ilocano: "Napintas a matagumpay a negosyo.", pangasinense: "Naballigi so negosyo.")
  ],
  ),

  Word(
  english: "peaceful",
  tagalog: "tagalog: mapayapa",
  ilocano: "ilocano: mareen",
  pangasinense: "pangasinense: natalna",
  examples: [
  WordExample(tagalog: "Ang pagsuko ay mapayapa.", ilocano: "Say insuko et mareen.", pangasinense: "Natalna ti panagsuko."),
  WordExample(tagalog: "Isang mapayapang komunidad.", ilocano: "Maysa a mareen a komunidad.", pangasinense: "Makatagil ti komunidad.")
  ],
  ),

  Word(
  english: "beautiful",
  tagalog: "tagalog: maganda",
  ilocano: "ilocano: marakep",
  pangasinense: "pangasinense: napintas",
  examples: [
  WordExample(tagalog: "Ang ganda ng paligid.", ilocano: "Marakep so kaliberliber.", pangasinense: "Napintas ti aglawlaw."),
  WordExample(tagalog: "Maganda ang tanawin sa bukirin.", ilocano: "Marakep ti tanawen iti bukirin.", pangasinense: "Napintas so tanaw ed bukirin.")
  ],
  ),

  Word(
  english: "informative",
  tagalog: "tagalog: nagbibigay-kaalaman",
  ilocano: "ilocano: makapangiter",
  pangasinense: "pangasinense: makaisuro",
  examples: [
  WordExample(tagalog: "Naging informative ang survey.", ilocano: "Say survey et makapangiter na impormasyon.", pangasinense: "Makaisuro ti surbey."),
  WordExample(tagalog: "Ang mga dokumento ay nagbibigay-kaalaman.", ilocano: "Dagiti dokumento ket makapangiter na impormasyon.", pangasinense: "Dagiti dokumento et makaisuro.")
  ],
  ),

  Word(
  english: "thrilling",
  tagalog: "tagalog: nakakakilig",
  ilocano: "ilocano: makapalikliket",
  pangasinense: "pangasinense: makapagagar",
  examples: [
  WordExample(tagalog: "Nakakakilig yung suspense.", ilocano: "Makapalikliket so suspense.", pangasinense: "Makapagagar ti suspense."),
  WordExample(tagalog: "Ang pelikula ay nakakakilig.", ilocano: "Ti pelikula ket nakakakilig.", pangasinense: "Say pelikula et nakakakilig.")
  ],
  ),

  Word(
  english: "powerful",
  tagalog: "tagalog: makapangyarihan",
  ilocano: "ilocano: mabiskeg",
  pangasinense: "pangasinense: nabileg",
  examples: [
  WordExample(tagalog: "Ang simbolo ng pag-asa ay makapangyarihan.", ilocano: "Mabiskeg so simbolo na ilalo.", pangasinense: "Nabileg ti simbolo ti namnama."),
  WordExample(tagalog: "Isang makapangyarihang lider.", ilocano: "Maysa a mabiskeg a lider.", pangasinense: "Maka-bileg so lider.")
  ],
  ),

  Word(
  english: "beautiful",
  tagalog: "tagalog: maganda",
  ilocano: "ilocano: marakep",
  pangasinense: "pangasinense: napintas",
  examples: [
  WordExample(tagalog: "Ang ganda ng symphony.", ilocano: "Marakep so symphony.", pangasinense: "Napintas ti simponia."),
  WordExample(tagalog: "Isang magandang tanawin ang nakikita ko.", ilocano: "Maysa a napintas a tanawin ti makitam.", pangasinense: "Makatang tenggati et nakikita ko.")
  ],
  ),

  Word(
  english: "efficient",
  tagalog: "tagalog: mahusay",
  ilocano: "ilocano: epektibo",
  pangasinense: "pangasinense: episiente",
  examples: [
  WordExample(tagalog: "Ang sistema ay mahusay.", ilocano: "Epektibo so sistema.", pangasinense: "Episiente ti sistema."),
  WordExample(tagalog: "Isang mahusay na proseso.", ilocano: "Maysa a mahusay a proseso.", pangasinense: "Makatang na proseso.")
  ],
  ),

  Word(
  english: "set",
  tagalog: "tagalog: inihanda",
  ilocano: "ilocano: akaparaan",
  pangasinense: "pangasinense: naisada",
  examples: [
  WordExample(tagalog: "Ang mesa ay inihanda para sa hapunan.", ilocano: "Akaparaan lay lamisaan parad pangdem.", pangasinense: "Naisaad ti lamisaan a pangrabii."),
  WordExample(tagalog: "Inihanda ang mga kagamitan.", ilocano: "Inihanda dagiti kagamitan.", pangasinense: "Naisada so kagamitan.")
  ],
  ),

  Word(
  english: "completed",
  tagalog: "tagalog: natapos",
  ilocano: "ilocano: asumpal",
  pangasinense: "pangasinense: nalpas",
  examples: [
  WordExample(tagalog: "Natapos ang gawain sa takdang oras.", ilocano: "Asumpal so kimey ed dugan panaon.", pangasinense: "Nalpas ti trabaho iti umiso a tiempo."),
  WordExample(tagalog: "Ang proyekto ay natapos na.", ilocano: "Ti proyekto ket asumpal to.", pangasinense: "Napalpas so proyekto.")
  ],
  ),

  Word(
  english: "worked together",
  tagalog: "tagalog: nagtrabaho nang magkasama",
  ilocano: "ilocano: nankimey a maong",
  pangasinense: "pangasinense: nasayaat",
  examples: [
  WordExample(tagalog: "Ang koponan ay nagtrabaho nang maayos nang magkasama.", ilocano: "Nankimey a maong so grupo.", pangasinense: "Nasayaat ti panagtitinnulong ti team."),
  WordExample(tagalog: "Nagtulungan ang mga miyembro ng koponan.", ilocano: "Nagkakadua dagiti miyembro ti grupo.", pangasinense: "Nagtulungan so miyembro na team.")
  ],
  ),

  Word(
  english: "innovative",
  tagalog: "tagalog: makabago",
  ilocano: "ilocano: nakabaro",
  pangasinense: "pangasinense: nakabaro",
  examples: [
  WordExample(tagalog: "Ang pamamaraan ay makabago.", ilocano: "Say teknik et makabayon tuloy.", pangasinense: "Nakabaro ti teknik."),
  WordExample(tagalog: "Isang makabago na ideya.", ilocano: "Maysa a nakabaro a ideya.", pangasinense: "Maka-bago so ideya.")
  ],
  ),

  Word(
  english: "comfortable",
  tagalog: "tagalog: komportable",
  ilocano: "ilocano: komportable",
  pangasinense: "pangasinense: komportable",
  examples: [
  WordExample(tagalog: "Ang temperatura ay komportable.", ilocano: "Komportable so temperatura.", pangasinense: "Komportable ti temperatura."),
  WordExample(tagalog: "Nasa komportable akong upuan.", ilocano: "Adu a komportable ti upuan ko.", pangasinense: "Adu so komportable na upuan.")
  ],
  ),

  Word(
  english: "palpable",
  tagalog: "tagalog: damang-dama",
  ilocano: "ilocano: nalikna",
  pangasinense: "pangasinense: mapalpalasin",
  examples: [
  WordExample(tagalog: "Damang-dama ang tensyon.", ilocano: "Nalikna so tensyon.", pangasinense: "Mapalpalasin ti tension."),
  WordExample(tagalog: "Ang tensyon sa kwarto ay damang-dama.", ilocano: "Damang-dama ti tensyon iti kwarto.", pangasinense: "Say tensyon ed kwarto et mapalpalasin.")
  ],
  ),

  Word(
  english: "agreed upon",
  tagalog: "tagalog: napagkasunduan",
  ilocano: "ilocano: inmabobon",
  pangasinense: "pangasinense: napagnunumuan",
  examples: [
  WordExample(tagalog: "Napagkasunduan ang termino.", ilocano: "Say termino so inmabobon.", pangasinense: "Napagnunumuan ti termino."),
  WordExample(tagalog: "Napagkasunduan na ang mga kondisyon.", ilocano: "Napagkasunduan dagiti kondisyon.", pangasinense: "Napagnunumuan so kondisyon.")
  ],
  ),

  Word(
  english: "challenging",
  tagalog: "tagalog: mahirap",
  ilocano: "ilocano: mairap",
  pangasinense: "pangasinense: makakarit",
  examples: [
  WordExample(tagalog: "Ang pagsubok ay mahirap.", ilocano: "Mairap so subok.", pangasinense: "Makakarit ti pannubok."),
  WordExample(tagalog: "Mahirap ang sitwasyon.", ilocano: "Mairap ti sitwasyon.", pangasinense: "Makakarit so sitwasyon.")
  ],
  ),

  Word(
  english: "informative",
  tagalog: "tagalog: nagbibigay-kaalaman",
  ilocano: "ilocano: makapangiter",
  pangasinense: "pangasinense: makaisuro",
  examples: [
  WordExample(tagalog: "Ang aklat-aralin ay nagbibigay-kaalaman.", ilocano: "Say libron-panaralan et makapangiter na impormasyon.", pangasinense: "Makaisuro ti libro a pagadalan."),
  WordExample(tagalog: "Ang mga report ay nagbibigay-kaalaman.", ilocano: "Dagiti report ket makapangiter.", pangasinense: "Dagiti report et makaisuro.")
  ],
  ),

  Word(
  english: "relatable",
  tagalog: "tagalog: relatable",
  ilocano: "ilocano: makatunongan",
  pangasinense: "pangasinense: maisalaysay",
  examples: [
  WordExample(tagalog: "Relatable ang tema.", ilocano: "Say tema et makatunongan.", pangasinense: "Maisalaysay ti tema."),
  WordExample(tagalog: "Makarelate ako sa kwento.", ilocano: "Makarelate ak iti istorya.", pangasinense: "Makarelate ak ed estoria.")
  ],
  ),

  Word(
  english: "inspiring",
  tagalog: "tagalog: nagbibigay-inspirasyon",
  ilocano: "ilocano: makapasagyat",
  pangasinense: "pangasinense: makapagregta",
  examples: [
  WordExample(tagalog: "Ang pag-iisip ay nagbibigay-inspirasyon.", ilocano: "Makapasagyat so kanonotan.", pangasinense: "Makapagregta ti kapanunotan."),
  WordExample(tagalog: "Isang inspirasyonal na kwento.", ilocano: "Maysa a makapasagyat a istorya.", pangasinense: "Maka-regta so estoria.")
  ],
  ),

  Word(
  english: "seriously",
  tagalog: "tagalog: seryoso",
  ilocano: "ilocano: seryosoen",
  pangasinense: "pangasinense: napasnek",
  examples: [
  WordExample(tagalog: "Seryoso ang pananakot.", ilocano: "Seryosoen so panamagyaw.", pangasinense: "Napasnek ti pangta."),
  WordExample(tagalog: "Seryoso ang usapan.", ilocano: "Seryosoen ti usapan.", pangasinense: "Seryoso so usapan.")
  ],
  ),

  Word(
  english: "limited",
  tagalog: "tagalog: limitado",
  ilocano: "ilocano: limitado",
  pangasinense: "pangasinense: limitado",
  examples: [
  WordExample(tagalog: "Limitado ang oras.", ilocano: "Limitado so panaon.", pangasinense: "Limitado ti tiempo."),
  WordExample(tagalog: "Limitado ang mga kagamitan.", ilocano: "Limitado dagiti kagamitan.", pangasinense: "Limitado so kagamitan.")
  ],
  ),

  Word(
  english: "topic",
  tagalog: "paksa",
  ilocano: "topic",
  pangasinense: "topiko",
  examples: [
  WordExample(tagalog: "Kontrobersyal ang paksa.", ilocano: "Kontrobersyal so topic.", pangasinense: "Kontrobersial ti topiko.")
  ]
  ),
  Word(
  english: "tour",
  tagalog: "pasyar",
  ilocano: "panagpasyar",
  pangasinense: "panagpasiar",
  examples: [
  WordExample(tagalog: "Naging informative ang tour.", ilocano: "Say panagpasyar et makapainteres.", pangasinense: "Makaisuro ti panagpasiar.")
  ]
  ),
  Word(
  english: "track",
  tagalog: "dalan",
  ilocano: "dalan",
  pangasinense: "riles",
  examples: [
  WordExample(tagalog: "Ang track ay makinis.", ilocano: "Makinis so dalan.", pangasinense: "Nalannas ti riles.")
  ]
  ),
  Word(
  english: "trade",
  tagalog: "kalakalan",
  ilocano: "panaglakoan",
  pangasinense: "panagtagilako",
  examples: [
  WordExample(tagalog: "Ang kalakalan ay kapaki-pakinabang.", ilocano: "Makagunggona so panaglakoan.", pangasinense: "Makagunggona ti panagtagilako.")
  ]
  ),
  Word(
  english: "traffic",
  tagalog: "trapiko",
  ilocano: "trapiko",
  pangasinense: "trapiko",
  examples: [
  WordExample(tagalog: "Mabigat ang traffic.", ilocano: "Ambelat so trapiko.", pangasinense: "Nakaro ti trapiko.")
  ]
  ),
  Word(
  english: "training",
  tagalog: "pagsasanay",
  ilocano: "panagpasal",
  pangasinense: "panagsanay",
  examples: [
  WordExample(tagalog: "Matindi ang pagsasanay.", ilocano: "Mabiskeg so panagpasal.", pangasinense: "Nakaro ti panagsanay.")
  ]
  ),
  Word(
  english: "transportation",
  tagalog: "transportasyon",
  ilocano: "transportasyon",
  pangasinense: "transportasion",
  examples: [
  WordExample(tagalog: "Ang sistema ng transportasyon ay maaasahan.", ilocano: "Say sistema na transportasyon et napanmatalkan.", pangasinense: "Mapagtalkan ti sistema ti transportasion.")
  ]
  ),
  Word(
  english: "travel",
  tagalog: "paglalakbay",
  ilocano: "biahe",
  pangasinense: "panagdaliasat",
  examples: [
  WordExample(tagalog: "Naging masaya ang paglalakbay.", ilocano: "Makapaliket so biahe.", pangasinense: "Naragsak ti panagdaliasat.")
  ]
  ),
  Word(
  english: "treatment",
  tagalog: "paggamot",
  ilocano: "panagtambal",
  pangasinense: "panangagas",
  examples: [
  WordExample(tagalog: "Ang paggamot ay epektibo.", ilocano: "Epektibo so panagtambal.", pangasinense: "Epektibo ti panangagas.")
  ]
  ),
  Word(
  english: "tree",
  tagalog: "puno",
  ilocano: "kiew",
  pangasinense: "kayo",
  examples: [
  WordExample(tagalog: "Matangkad at marilag ang puno.", ilocano: "Atagey tan makapadinayew so kiew.", pangasinense: "Natayag ken nadayag ti kayo.")
  ]
  ),
  Word(
  english: "trend",
  tagalog: "uso",
  ilocano: "uso",
  pangasinense: "uso",
  examples: [
  WordExample(tagalog: "Kapansin-pansin ang uso.", ilocano: "Naimano so uso.", pangasinense: "Nadlaw ti uso.")
  ]
  ),
  Word(
  english: "trial",
  tagalog: "paglilitis",
  ilocano: "bista",
  pangasinense: "bista",
  examples: [
  WordExample(tagalog: "Ang paglilitis ay patas.", ilocano: "Patas so bista.", pangasinense: "Nalinteg ti bista.")
  ]
  ),
  Word(
  english: "trust",
  tagalog: "tiwala",
  ilocano: "tiwala",
  pangasinense: "panagtalek",
  examples: [
  WordExample(tagalog: "Ang tiwala ay nabuo sa paglipas ng panahon.", ilocano: "Say tiwala et apaalagey legay ilalabas na panaon.", pangasinense: "Nabangon ti panagtalek bayat ti panaglabas ti panawen.")
  ]
  ),
  Word(
  english: "truth",
  tagalog: "katotohanan",
  ilocano: "katuaan",
  pangasinense: "kinapudno",
  examples: [
  WordExample(tagalog: "Nabunyag ang katotohanan.", ilocano: "Niparungtal so katuaan.", pangasinense: "Naipalgak ti kinapudno.")
  ]
  ),
  Word(
  english: "type",
  tagalog: "uri",
  ilocano: "klase",
  pangasinense: "klase",
  examples: [
  WordExample(tagalog: "Masarap ang uri ng pagkain.", ilocano: "Mananam so klase na kakanen.", pangasinense: "Naimas ti klase ti taraon.")
  ]
  ),
  Word(
  english: "unit",
  tagalog: "yunit",
  ilocano: "yunit",
  pangasinense: "yunit",
  examples: [
  WordExample(tagalog: "Ang yunit ay sinukat nang tumpak.", ilocano: "Say yunit so sinukat a susto.", pangasinense: "Umiso ti pannakarukod ti yunit.")
  ]
  ),
  Word(
  english: "universe",
  tagalog: "uniberso",
  ilocano: "uniberso",
  pangasinense: "uniberso",
  examples: [
  WordExample(tagalog: "Ang uniberso ay malawak at puno ng hindi mabilang na mga bituin at kalawakan.", ilocano: "Baleg so uniberso tan napno na agnabilang iran bitewen tan galaksi.", pangasinense: "Nalawa ti uniberso ken napno kadagiti di mabilang a bituen ken galaksi.")
  ]
  ),
  Word(
  english: "until",
  tagalog: "hanggang",
  ilocano: "anggad",
  pangasinense: "agingga",
  examples: [
  WordExample(tagalog: "Nag-aral siya hanggang hating-gabi para maghanda para sa pagsusulit.", ilocano: "Nanaral anggad labi pian makapanparaan ed eksamin.", pangasinense: "Nagadal agingga iti naladaw a rabii tapno agsagana iti eksamen.")
  ]
  ),
  Word(
  english: "unusual",
  tagalog: "pambihira",
  ilocano: "nikadkaduman",
  pangasinense: "naisangsangayan",
  examples: [
  WordExample(tagalog: "Pambihira para sa kanya na lumiban sa trabaho nang hindi nagpapaalam sa sinuman.", ilocano: "Nikadkaduman parad sikato so ag-onla ed trabaho ya anggapoy mangipaamta ed sikato.", pangasinense: "Naisangsangayan a mailiw iti trabahona a dina impakaammo iti asinoman.")
  ]
  ),
  Word(
  english: "up",
  tagalog: "tumingala",
  ilocano: "tinmangay",
  pangasinense: "timmangad",
  examples: [
  WordExample(tagalog: "Tumingala siya sa langit at hinangaan ang mga bituin.", ilocano: "Tinmangay ed tawen tan pandinayewan to ray bitewen.", pangasinense: "Timmangad iti langit ket dinayawna dagiti bituen.")
  ]
  ),
  Word(
  english: "upon",
  tagalog: "pagpasok",
  ilocano: "nen linmoob",
  pangasinense: "apaman a simrek",
  examples: [
  WordExample(tagalog: "Pagpasok niya sa kwarto ay napansin niya ang katahimikan.", ilocano: "Nen linmoob ed kuarto, anengneng toy kareenan.", pangasinense: "Apaman a simrek iti kuarto, nadlawna ti talna.")
  ]
  ),

  Word(
  english: "value",
  tagalog: "halaga",
  ilocano: "balor",
  pangasinense: "pateg",
  examples: [
  WordExample(tagalog: "Malinaw ang halaga.", ilocano: "Malinew so balor to.", pangasinense: "Nalawag ti pategna.")
  ]
  ),
  Word(
  english: "variable",
  tagalog: "variable",
  ilocano: "variable",
  pangasinense: "variable",
  examples: [
  WordExample(tagalog: "Sinubukan ang variable.", ilocano: "Say variable et sinubok.", pangasinense: "Nasubok ti variable.")
  ]
  ),
  Word(
  english: "vehicle",
  tagalog: "sasakyan",
  ilocano: "luluganan",
  pangasinense: "lugan",
  examples: [
  WordExample(tagalog: "Ang sasakyan ay maaasahan.", ilocano: "Napanmatalkan so luluganan.", pangasinense: "Mapagtalkan ti lugan.")
  ]
  ),
  Word(
  english: "victory",
  tagalog: "tagumpay",
  ilocano: "pananalo",
  pangasinense: "balligi",
  examples: [
  WordExample(tagalog: "Ang tagumpay ay pinaghirapan.", ilocano: "Say pananalo et mairap ya agawaan.", pangasinense: "Narigat a nagun-od ti balligi.")
  ]
  ),
  Word(
  english: "view",
  tagalog: "tanawin",
  ilocano: "nengnengen",
  pangasinense: "buya",
  examples: [
  WordExample(tagalog: "Napakaganda ng tanawin.", ilocano: "Makapadinayew so nengnengen.", pangasinense: "Nakaskasdaaw ti buya.")
  ]
  ),
  Word(
  english: "village",
  tagalog: "nayon",
  ilocano: "baryo",
  pangasinense: "purok",
  examples: [
  WordExample(tagalog: "Ang nayon ay kaakit-akit.", ilocano: "Makapadinayew so baryo.", pangasinense: "Makaay-ayo ti purok.")
  ]
  ),
  Word(
  english: "vocation",
  tagalog: "bokasyon",
  ilocano: "bokasion",
  pangasinense: "bokasyon",
  examples: [
  WordExample(tagalog: "Ang bokasyon ay katuparan.", ilocano: "Makapaliket so bokasyon.", pangasinense: "Makatungpal ti bokasion.")
  ]
  ),
  Word(
  english: "volume",
  tagalog: "volume",
  ilocano: "kakasil",
  pangasinense: "volume",
  examples: [
  WordExample(tagalog: "Mataas ang volume ng music.", ilocano: "Atagey so kakasil na musika.", pangasinense: "Nangato ti volume ti musika.")
  ]
  ),
  Word(
  english: "valley",
  tagalog: "lambak",
  ilocano: "lawak",
  pangasinense: "ginget",
  examples: [
  WordExample(tagalog: "Malago at luntian ang lambak pagkatapos ng ulan.", ilocano: "Say lawak et marabok tan berde kayari na uran.", pangasinense: "Narangrangpaya ken berde ti ginget kalpasan ti tudo.")
  ]
  ),
  Word(
  english: "value",
  tagalog: "halaga",
  ilocano: "balor",
  pangasinense: "pateg",
  examples: [
  WordExample(tagalog: "Ang halaga ng pagpipinta ay tumaas nang malaki sa paglipas ng mga taon.", ilocano: "Say balor na painting et dinmaak a maong legay ilalabas na saray taon.", pangasinense: "Dakkel ti immadu ti pateg ti painting bayat ti panaglabas dagiti tawen.")
  ]
  ),
  Word(
  english: "van",
  tagalog: "van",
  ilocano: "van",
  pangasinense: "van",
  examples: [
  WordExample(tagalog: "Sumakay sila sa isang van na puno ng mga gamit.", ilocano: "Nanmaneho ira ya amaarap ed okasyon diad sakey a van ya napno na saray suplay.", pangasinense: "Nagmanehoda a napan iti pasken iti van a napno kadagiti abasto.")
  ]
  ),
  Word(
  english: "variation",
  tagalog: "pagkakaiba-iba",
  ilocano: "pandurumaan",
  pangasinense: "panagduduma",
  examples: [
  WordExample(tagalog: "Nagkaroon ng kapansin-pansing pagkakaiba-iba ng temperatura sa buong araw.", ilocano: "Walay naimano ya pandurumaan na temperatura ed interon agew.", pangasinense: "Adda madlaw a panagduduma ti temperatura iti intero nga aldaw.")
  ]
  ),
  Word(
  english: "variety",
  tagalog: "uri",
  ilocano: "klase",
  pangasinense: "nanduruman",
  examples: [
  WordExample(tagalog: "Nag-aalok ang tindahan ng maraming uri ng prutas at gulay.", ilocano: "Say tindaan et mangiyoopresi na nanduruman klase na prutas tan pisipising.", pangasinense: "Nadumaduma a prutas ken nateng ti ituktukon ti tiendaan.")
  ]
  ),
  Word(
  english: "vast",
  tagalog: "malawak",
  ilocano: "nalawa",
  pangasinense: "nalawa",
  examples: [
  WordExample(tagalog: "Ang karagatan ay lumitaw na malawak at walang katapusan mula sa dalampasigan.", ilocano: "Say dayat et singa baleg tan anggapoy anggaan to manlapud gilig.", pangasinense: "Nagparang a nalawa ken awan patinggana ti taaw manipud iti takdang.")
  ]
  ),
  Word(
  english: "vegetable",
  tagalog: "gulay",
  ilocano: "pisipising",
  pangasinense: "nateng",
  examples: [
  WordExample(tagalog: "Ang pagkain ng gulay sa isang araw ay maaaring mapabuti ang iyong kalusugan.", ilocano: "Say pangan na sakey a pisipising ed sanagew et mamaaligwas ed bunigas mo.", pangasinense: "Ti pannangan iti nateng iti inaldaw ket mabalin a mangpasayaat iti salun-atmo.")
  ]
  ),
  Word(
  english: "version",
  tagalog: "bersyon",
  ilocano: "bersion",
  pangasinense: "bersyon",
  examples: [
  WordExample(tagalog: "Na-download niya ang pinakabagong bersyon ng software.", ilocano: "In-download to so sankabaloan ya bersion na software.", pangasinense: "In-downloadna ti kaudian a bersion ti software.")
  ]
  ),
  Word(
  english: "very",
  tagalog: "napaka",
  ilocano: "unay",
  pangasinense: "unay",
  examples: [
  WordExample(tagalog: "Ito ay isang napaka-kapana-panabik na laro upang panoorin.", ilocano: "Makapalikliket itan ya galaw ya bantayan.", pangasinense: "Makaparagsak unay dayta nga ay-ayam a buyaen.")
  ]
  ),

  Word(
  english: "vessel",
  tagalog: "barko",
  ilocano: "barko",
  pangasinense: "bapor",
  examples: [
  WordExample(tagalog: "Ang barko ay lumayag nang maayos sa kalmadong tubig.", ilocano: "Say bapor so linmabas a maong ed mareen a danum.", pangasinense: "Naannayas ti panaglayag ti barko a bimmallasiw iti natalinaay a danum.")
  ]
  ),
  Word(
  english: "victory",
  tagalog: "tagumpay",
  ilocano: "pananalo",
  pangasinense: "pananalo",
  examples: [
  WordExample(tagalog: "Ipinagdiwang ng kanilang koponan ang tagumpay sa isang malaking party.", ilocano: "Sinelebraan na grupo ra so pananalo ra panamegley na baleg a party.", pangasinense: "Sinelebraran ti team-da ti balligi babaen ti dakkel a party.")
  ]
  ),
  Word(
  english: "view",
  tagalog: "tanawin",
  ilocano: "nengnengen",
  pangasinense: "buya",
  examples: [
  WordExample(tagalog: "Nakakabighani ang tanawin mula sa bundok.", ilocano: "Makapadinayew so nengnengen manlapud palandey.", pangasinense: "Nakaay-ayat ti buya manipud iti bantay.")
  ]
  ),
  Word(
  english: "village",
  tagalog: "nayon",
  ilocano: "baryo",
  pangasinense: "purok",
  examples: [
  WordExample(tagalog: "Ang nayon ay kilala sa magiliw na mga naninirahan.", ilocano: "Kabkabat so baryo lapud makaaro iran manaayam ditan.", pangasinense: "Pagaammo ti purok gapu kadagiti mannakigayyem nga umili.")
  ]
  ),
  Word(
  english: "violent",
  tagalog: "marahas",
  ilocano: "naranggas",
  pangasinense: "marahas",
  examples: [
  WordExample(tagalog: "Ang bagyo ay nagdulot ng marahas na hangin na nagpatumba ng mga puno.", ilocano: "Say bagyo so sengegan na maksil a dagem ya amatumba ed saray kiew.", pangasinense: "Ti bagyo ti nangpataud kadagiti naranggas nga angin a nangtukkol kadagiti kayo.")
  ]
  ),
  Word(
  english: "visit",
  tagalog: "bisitahin",
  ilocano: "bisitaen",
  pangasinense: "bisitaen",
  examples: [
  WordExample(tagalog: "Plano naming bisitahin ang museo ngayong katapusan ng linggo.", ilocano: "Plano min bisitaen so museo ed sayan sampot-simba.", pangasinense: "Planomi ti agpasiar iti museo ita a ngudo ti lawas.")
  ]
  ),
  Word(
  english: "voice",
  tagalog: "boses",
  ilocano: "boses",
  pangasinense: "boses",
  examples: [
  WordExample(tagalog: "Nakapapakalma at nakakakalma ang boses niya.", ilocano: "Makarelaks tan makapakalma so boses to.", pangasinense: "Makapakalma ken makapakalma ti timekna.")
  ]
  ),
  Word(
  english: "vice",
  tagalog: "bisyo",
  ilocano: "bisyona",
  pangasinense: "bisyona",
  examples: [
  WordExample(tagalog: "Pinilit niyang malampasan ang kanyang pinakamasamang bisyo.", ilocano: "Nansagpotan ton talonaan so sankagrabian ya bisyo to.", pangasinense: "Inkarigatanna a pinarmek ti kadadaksan a bisyona.")
  ]
  ),
  Word(
  english: "vine",
  tagalog: "baging",
  ilocano: "gilig",
  pangasinense: "baging",
  examples: [
  WordExample(tagalog: "Sagana ang mga ubas sa kahabaan ng baging sa hardin.", ilocano: "Dakel so tinmubo ya ubas ed gilig na tanamanan.", pangasinense: "Adu ti nagtubo nga ubas iti igid ti ubas iti hardin.")
  ]
  ),
  Word(
  english: "virgin",
  tagalog: "birhen",
  ilocano: "birhen",
  pangasinense: "birhen",
  examples: [
  WordExample(tagalog: "Ang kagubatan ay malinis at hindi nagalaw, tulad ng isang birhen na tanawin.", ilocano: "Say katakelan et malinis tan ag-apektado, a singa sakey a birhen a tanamanan.", pangasinense: "Nasin-aw ken saan a nasagid ti kabakiran, a kasla birhen a buya ti daga.")
  ]
  ),
  Word(
  english: "vein",
  tagalog: "ugat",
  ilocano: "urat",
  pangasinense: "ugat",
  examples: [
  WordExample(tagalog: "Ang nars ay madaling nakahanap ng ugat para sa pagkuha ng dugo.", ilocano: "Say nars et mainomay ya akaromog na ugat parad panag-ala na dala.", pangasinense: "Nalaka ti nakasarak ti nars iti urat para iti pannakaala ti dara.")
  ]
  ),
  Word(
  english: "verge",
  tagalog: "bingit",
  ilocano: "asingger",
  pangasinense: "asingger",
  examples: [
  WordExample(tagalog: "Siya ay nasa bingit ng paggawa ng isang mahalagang desisyon.", ilocano: "Sikatoy asingger lan manggawa na importantin desisyon.", pangasinense: "Asidegen nga agaramid iti napateg a desision.")
  ]
  ),
  Word(
  english: "very",
  tagalog: "napaka",
  ilocano: "unay",
  pangasinense: "unay",
  examples: [
  WordExample(tagalog: "Tuwang-tuwa siya sa bagong alok na trabaho.", ilocano: "Sikatoy eksayted a maong ed balon opresin trabaho.", pangasinense: "Maragsakan unay iti baro a trabaho a tukon.")
  ]
  ),
  Word(
  english: "vex",
  tagalog: "magalit",
  ilocano: "mangriribuk",
  pangasinense: "mangriribuk",
  examples: [
  WordExample(tagalog: "Ang patuloy na pagkaantala ay nagsimulang magalit sa kanya.", ilocano: "Say pirmin inkaatrasado so ginmapon amaermen ed sikato.", pangasinense: "Nangrugin a mangriribuk kenkuana dagiti kanayon a pannakaat-atiddog.")
  ]
  ),
  Word(
  english: "veil",
  tagalog: "belo",
  ilocano: "belo",
  pangasinense: "belo",
  examples: [
  WordExample(tagalog: "Nakasuot siya ng magandang belo noong araw ng kanyang kasal.", ilocano: "Sikatoy akasulong na marakep a belo nen agew na kasal to.", pangasinense: "Nagsuot iti napintas a belo iti aldaw ti kasarna.")
  ]
  ),
  Word(
  english: "various",
  tagalog: "ib iba't ibang",
  ilocano: "nadumaduma",
  pangasinense: "nanduruman",
  examples: [
  WordExample(tagalog: "Nag-aalok ang tindahan ng iba't ibang mga pagpipilian para sa pagpapasadya.", ilocano: "Say tindaan et mangiyoopresi na nanduruman opsyon parad panagpasadya.", pangasinense: "Mangitukon ti tiendaan iti nadumaduma a pagpilian para iti panangpasayaat.")
  ]
  ),
  Word(
  english: "vivid",
  tagalog: "matingkad",
  ilocano: "mabilabilay",
  pangasinense: "matingkad",
  examples: [
  WordExample(tagalog: "Gumamit ang pintor ng matingkad na kulay upang bigyang-buhay ang pagpipinta.", ilocano: "Say artist et angusar na mabilabilay iran kolor pian nawalaan na bilay so painting.", pangasinense: "Inusar ti artist dagiti nabiag a kolor tapno agbiag ti painting.")
  ]
  ),
  Word(
  english: "vomit",
  tagalog: "masuka",
  ilocano: "agisbo",
  pangasinense: "masuka",
  examples: [
  WordExample(tagalog: "Dahil sa motion sickness ay parang masusuka siya.", ilocano: "Say motion sickness to et singa sikatoy mansuka.", pangasinense: "Ti motion sickness ti nangparikna kenkuana a kasla mabalin nga agisbo.")
  ]
  ),
  Word(
  english: "vow",
  tagalog: "panata",
  ilocano: "kari",
  pangasinense: "panata",
  examples: [
  WordExample(tagalog: "Nagpalitan sila ng taos-pusong panata sa seremonya.", ilocano: "Nansaliwan ira na impapuson sipan legan na seremonya.", pangasinense: "Nagsinnukatda iti naimpusuan a kari bayat ti seremonia.")
  ]
  ),
  Word(
  english: "viewing",
  tagalog: "panonood",
  ilocano: "nagbuya",
  pangasinense: "panonood",
  examples: [
  WordExample(tagalog: "Nanood siya ng mga pelikula kasama ang kanyang mga kaibigan.", ilocano: "Linma ed sinean a kaiba to ray kakaaro to.", pangasinense: "Napan nagbuya iti sine a kaduana dagiti gagayyemna.")
  ]
  ),
  Word(
  english: "wither",
  tagalog: "matuyo",
  ilocano: "malaylay",
  pangasinense: "matuyo",
  examples: [
  WordExample(tagalog: "Nagsimulang matuyo ang mga bulaklak sa init.", ilocano: "Ginmapon amagaan iray rosas lapud petang.", pangasinense: "Nangrugin a malaylay dagiti sabong gapu iti pudot.")
  ]
  ),
  Word(
  english: "within",
  tagalog: "nasa loob",
  ilocano: "uneg",
  pangasinense: "nasa loob",
  examples: [
  WordExample(tagalog: "Ang sagot ay nasa loob ng libro.", ilocano: "Say ebat et walad libro.", pangasinense: "Ti sungbat ket adda iti uneg ti libro.")
  ]
  ),
  Word(
  english: "without",
  tagalog: "walang",
  ilocano: "di",
  pangasinense: "di",
  examples: [
  WordExample(tagalog: "Umalis siya ng walang paalam.", ilocano: "Tinmaynan ya ag-inmabeba.", pangasinense: "Pimmanaw a di nagpakada.")
  ]
  ),
  Word(
  english: "witness",
  tagalog: "saksi",
  ilocano: "saksi",
  pangasinense: "akanengneng",
  examples: [
  WordExample(tagalog: "Siya ay isang saksi sa aksidente.", ilocano: "Isu ti saksi iti aksidente.", pangasinense: "Sikatoy akanengneng ed aksidente.")
  ]
  ),
  Word(
  english: "woe",
  tagalog: "kalungkutan",
  ilocano: "ay-ay",
  pangasinense: "kalungkutan",
  examples: [
  WordExample(tagalog: "Nakaramdam siya ng matinding kalungkutan pagkatapos ng pagkawala.", ilocano: "Alikna toy baleg a ermen kayari na impatey to.", pangasinense: "Nariknana ti nauneg nga ay-ay kalpasan ti pannakapukawna.")
  ]
  ),
  Word(
  english: "warmly",
  tagalog: "ng matamis",
  ilocano: "ya inmimis",
  pangasinense: "ya malikay",
  examples: [
  WordExample(tagalog: "Ngumiti ang babae ng matamis.", ilocano: "Maliket ya inmimis so bii.", pangasinense: "Nabara ti immisem ti babai."),
  WordExample(tagalog: "Nagbigay siya ng matamis na ngiti.", ilocano: "Nagpaay isuna ti inmimis a ngiti.", pangasinense: "Nangyeg isuna ya malikay na ngiti.")
  ]
  ),
  Word(
  english: "wonder",
  tagalog: "iniisip",
  ilocano: "tepeta",
  pangasinense: "pampanunotek",
  examples: [
  WordExample(tagalog: "Iniisip ko kung uulan ngayon.", ilocano: "Tepetan ko no onuran natan.", pangasinense: "Pampanunotek no agtudo ita nga aldaw."),
  WordExample(tagalog: "Naisip ko kung anong mangyayari.", ilocano: "Inisip ko no ania ti mapasamak.", pangasinense: "Pampanunotek ak no anong mangyayari.")
  ]
  ),
  Word(
  english: "wonderful",
  tagalog: "napakaganda",
  ilocano: "talaga",
  pangasinense: "talaga",
  examples: [
  WordExample(tagalog: "Napakaganda talaga ng paglubog ng araw.", ilocano: "Say iselek na banwa et talagan makapakelkelaw.", pangasinense: "Talaga a nagsayaat ti ilelennek ti init."),
  WordExample(tagalog: "Napakaganda ng mga bulaklak sa hardin.", ilocano: "Napakaganda dagiti bulaklak iti hardin.", pangasinense: "Talaga a maganda so mga bulaklak ed hardin.")
  ]
  ),
  Word(
  english: "wood",
  tagalog: "kayo",
  ilocano: "kiew",
  pangasinense: "kayo",
  examples: [
  WordExample(tagalog: "Ang mesa ay gawa sa solid wood.", ilocano: "Say lamisaan et gawad malet a kiew.", pangasinense: "Naaramid ti lamisaan iti solido a kayo."),
  WordExample(tagalog: "Kailangan natin ng kahoy para sa proyekto.", ilocano: "Masapul tayo ti kiew para iti proyekto.", pangasinense: "Kaukolan tayo ya kayo para ed proyekto.")
  ]
  ),
  Word(
  english: "word",
  tagalog: "salita",
  ilocano: "salita",
  pangasinense: "salita",
  examples: [
  WordExample(tagalog: "Maingat niyang isinulat ang bawat salita.", ilocano: "Maalwar ton insulat so kada salita.", pangasinense: "Insuratna a naimbag ti tunggal sao."),
  WordExample(tagalog: "May mga bagong salita sa diksyunaryo.", ilocano: "Adda dagiti baro a salita iti diksyunaryo.", pangasinense: "Adu so baro a salita ed diksyunaryo.")
  ]
  ),
  Word(
  english: "work",
  tagalog: "trabaho",
  ilocano: "kaukolan",
  pangasinense: "trabaho",
  examples: [
  WordExample(tagalog: "Marami pa akong dapat tapusin.", ilocano: "Dakel ni so kaukolan kon sumpalen.", pangasinense: "Adu ti trabahok a maileppas."),
  WordExample(tagalog: "Ang kanyang trabaho ay mahirap.", ilocano: "Nahirapan isuna iti kaukolanna.", pangasinense: "Mahirap so trabaho na.")
  ]
  ),
  Word(
  english: "world",
  tagalog: "mundo",
  ilocano: "mundo",
  pangasinense: "lubong",
  examples: [
  WordExample(tagalog: "Ang mundo ay puno ng kagandahan.", ilocano: "Say mundo et napno na karakpan.", pangasinense: "Napno ti lubong iti kinapintas."),
  WordExample(tagalog: "Maraming kultura sa mundo.", ilocano: "Adu a kultura iti mundo.", pangasinense: "Adu so kultura ed lubong.")
  ]
  ),
  Word(
  english: "worm",
  tagalog: "uod",
  ilocano: "ulod",
  pangasinense: "igges",
  examples: [
  WordExample(tagalog: "Gumapang ang isang maliit na uod sa dahon.", ilocano: "Sakey a melag ya ulod so kinmamang ed bulong.", pangasinense: "Nagkarayam ti bassit nga igges iti bulong."),
  WordExample(tagalog: "Ang uod ay may magandang kulay.", ilocano: "Ti ulod ket adda naimbag a kulay.", pangasinense: "So igges ay may maganda ya kulay.")
  ]
  ),
  Word(
  english: "worse",
  tagalog: "lumalala",
  ilocano: "lalon",
  pangasinense: "kimmaro",
  examples: [
  WordExample(tagalog: "Lumalala ang panahon pagsapit ng gabi.", ilocano: "Say panaon et lalon inmawet nen labi.", pangasinense: "Kimmaro ti paniempo idi malem."),
  WordExample(tagalog: "Lumalalala ang sitwasyon ng bayan.", ilocano: "Lumalalo ti sitwasyon ti ili.", pangasinense: "Lumalalo so sitwasyon na bayan.")
  ]
  ),
  Word(
  english: "worship",
  tagalog: "sumasamba",
  ilocano: "mandadayew",
  pangasinense: "mandadayew",
  examples: [
  WordExample(tagalog: "Magkasama silang sumasamba tuwing Linggo.", ilocano: "Mankakasakey iran mandadayew kada Simba.", pangasinense: "Aggigiddanda nga agdaydayaw iti tunggal Domingo."),
  WordExample(tagalog: "Sinasamba natin ang Diyos.", ilocano: "Sinasamba tayo ti Dios.", pangasinense: "Sinimasamba tayo so Dios.")
  ]
  ),
  Word(
  english: "worst",
  tagalog: "pinakamasamang",
  ilocano: "sankagrabian",
  pangasinense: "kadaksan",
  examples: [
  WordExample(tagalog: "Iyon ang pinakamasamang bagyo sa mga taon.", ilocano: "Saya so sankagrabian ya bagyo ed loob na dakel a taon.", pangasinense: "Dayta ti kadaksan a bagyo iti adu a tawen."),
  WordExample(tagalog: "Ang pinakamasamang pangyayari ay nangyari.", ilocano: "Ti pinakamasamang pangyayari ket napasamak.", pangasinense: "So kadaksan a pangyayari ay natabo.")
  ]
  ),
  Word(
  english: "worth",
  tagalog: "pahalaga",
  ilocano: "pateg",
  pangasinense: "pateg",
  examples: [
  WordExample(tagalog: "Ang kanyang pagkakaibigan ay higit pa sa ginto.", ilocano: "Say pikakaaro to et mas mabli nen say balitok.", pangasinense: "Ad-adu ti pateg ti panaggayyemna ngem iti balitok."),
  WordExample(tagalog: "Ang buhay ay may mahalagang halaga.", ilocano: "Ti biag ket adda napateg a pateg.", pangasinense: "So biag ay may mas mahalaga ya pateg.")
  ]
  ),
  Word(
  english: "wind",
  tagalog: "hangin",
  ilocano: "dagem",
  pangasinense: "angin",
  examples: [
  WordExample(tagalog: "Ang hangin ay humihip ng mahina sa mga puno.", ilocano: "Maalwar ya inmawet so dagem ed saray kakiewan.", pangasinense: "Nalamuyot ti angin a nagdisso kadagiti kayo."),
  WordExample(tagalog: "Malakas ang hangin sa labas.", ilocano: "Napigsa ti dagem idi ruar.", pangasinense: "Napigsa so angin ed labas.")
  ]
  ),
  Word(
  english: "window",
  tagalog: "bintana",
  ilocano: "bintana",
  pangasinense: "bintana",
  examples: [
  WordExample(tagalog: "Binuksan niya ang bintana para makalanghap ng sariwang hangin.", ilocano: "Inlukas toy bintana parad preskon dagem.", pangasinense: "Linuktanna ti tawa para iti presko nga angin."),
  WordExample(tagalog: "May mga kurtina sa bintana.", ilocano: "Adda dagiti kurtina iti bintana.", pangasinense: "Adu so kurtina ed bintana.")
  ]
  ),
  Word(
  english: "wine",
  tagalog: "alak",
  ilocano: "arak",
  pangasinense: "alak",
  examples: [
  WordExample(tagalog: "Nagdiwang sila kasama ang isang baso ng alak.", ilocano: "Nanselebra ira panamegley na sakey a baso na alak.", pangasinense: "Nagselebrarda babaen ti sangabaso nga arak."),
  WordExample(tagalog: "Gusto kong uminom ng alak.", ilocano: "Kayat ko ti uminom ti arak.", pangasinense: "Gusto ko ya inumen so alak.")
  ]
  ),
  Word(
  english: "wing",
  tagalog: "pakpak",
  ilocano: "payak",
  pangasinense: "payak",
  examples: [
  WordExample(tagalog: "Nasugatan ang pakpak ng ibon.", ilocano: "Asugat so payak na manok.", pangasinense: "Nasugatan ti payak ti tumatayab."),
  WordExample(tagalog: "Malaki ang pakpak ng agila.", ilocano: "Nalaki ti payak ti agila.", pangasinense: "Mahalaki so payak na agila.")
  ]
  ),
  Word(
  english: "wink",
  tagalog: "kindat",
  ilocano: "kinmilap",
  pangasinense: "kindat",
  examples: [
  WordExample(tagalog: "Isang matamis na kindat ang ibinigay nito sa kanya.", ilocano: "Inikdan toy makaaro ya kinmilap.", pangasinense: "Inikkanna iti nainggayyeman a panagkidem."),
  WordExample(tagalog: "Nang kindat siya sa akin, ngumiti ako.", ilocano: "Idi kinmilap isuna kaniak, nag-ngitiak.", pangasinense: "Nang kindat so isuna ed akin, ngumiti ak.")
  ]
  ),
  Word(
  english: "winter",
  tagalog: "taglamig",
  ilocano: "panaoy",
  pangasinense: "taglamig",
  examples: [
  WordExample(tagalog: "Ang taglamig ay ang aking paboritong panahon.", ilocano: "Say panaoy ambetel so paboritok ya panaon.", pangasinense: "Ti kalam-ekna ti paboritok a panawen."),
  WordExample(tagalog: "Mahilig akong maglaro sa taglamig.", ilocano: "Naimbagak nga agsala idi panaoy.", pangasinense: "Mahilig ak maglako ed taglamig.")
  ]
  ),
  Word(
  english: "wipe",
  tagalog: "punasan",
  ilocano: "punasan",
  pangasinense: "punasan",
  examples: [
  WordExample(tagalog: "Pakipunasan ang mesa pagkatapos kumain.", ilocano: "Ipangasin punasan so lamisaan kayari na panangan.", pangasinense: "Pangngaasiyo ta punasan ti lamisaan kalpasan ti pannangan."),
  WordExample(tagalog: "Punasan ang mga lamesa bago umalis.", ilocano: "Punasan dagiti lamesa sakbay nga umalis.", pangasinense: "Punasan so mga lamesa sakey na umalis.")
  ]
  ),
  Word(
  english: "wise",
  tagalog: "matalinong",
  ilocano: "makabat",
  pangasinense: "matalinong",
  examples: [
  WordExample(tagalog: "Ibinahagi ng matalinong matanda ang kanyang payo.", ilocano: "Innabang na makabat a masiken so simbawa to.", pangasinense: "Inranud ti masirib a lakay ti balakadna."),
  WordExample(tagalog: "Ang matalinong tao ay may maraming kaalaman.", ilocano: "Ti makabat a tao ket addaan ti adu a maaramid.", pangasinense: "So matalinong tao ay may adu ya kaalaman.")
  ]
  ),
  Word(
  english: "wish",
  tagalog: "nais",
  ilocano: "ipikasik",
  pangasinense: "kayaton",
  examples: [
  WordExample(tagalog: "Nais ko sa iyo ang lahat ng pinakamahusay.", ilocano: "Ipikasik ed sika so sankaabigan.", pangasinense: "Kayatko ti naimbag a naimbag kadakayo."),
  WordExample(tagalog: "Nais kong makasama ka sa aking kaarawan.", ilocano: "Kayat ko nga makasama ka iti kaarawanna.", pangasinense: "Gusto ko ya makasama ka ed kaarawan ko.")
  ]
  ),
  Word(
  english: "wobble",
  tagalog: "gumalaw",
  ilocano: "ginmapon",
  pangasinense: "agkullayaw",
  examples: [
  WordExample(tagalog: "Nagsimulang gumalaw ang kariton sa malubak na daan.", ilocano: "Say kariton so ginmapon nan-uyog ed ag-apantay a karsada.", pangasinense: "Nangrugin nga agkullayaw ti kariton iti di patas a kalsada."),
  WordExample(tagalog: "Ang sasakyan ay gumalaw sa hindi pantay na kalsada.", ilocano: "Ti sasakyan ket ginmapon idi di pantay a kalsada.", pangasinense: "So sasakyan ay gumalaw ed di patas na kalsada.")
  ]
  ),
  Word(
  english: "waist",
  tagalog: "baywang",
  ilocano: "pagew",
  pangasinense: "baywang",
  examples: [
  WordExample(tagalog: "Nagtali siya ng sinturon sa kanyang baywang.", ilocano: "Insinger toy sinturon ed pagew to.", pangasinense: "Ingalutna ti sinturon iti siketna."),
  WordExample(tagalog: "Mahilig akong magsuot ng sinturon sa baywang.", ilocano: "Kayat ko ti agsusuot ti sinturon iti pagew.", pangasinense: "Gusto ko ya magsuot ed sinturon ed baywang.")
  ]
  ),
  Word(
  english: "wait",
  tagalog: "maghintay",
  ilocano: "manalagar",
  pangasinense: "maghintay",
  examples: [
  WordExample(tagalog: "Kailangan mong maghintay ng ilang minuto.", ilocano: "Kaukolan moy manalagar na pigaran minuto.", pangasinense: "Masapul nga agurayka’t sumagmamano a minuto."),
  WordExample(tagalog: "Maghintay ka dito habang ako ay bumibili.", ilocano: "Agurayka ditoy bayat nga aggatangak.", pangasinense: "Maghintay ka ed sikey a mientras na ako ay bumibili.")
  ]
  ),
  Word(
  english: "wake up",
  tagalog: "gigising",
  ilocano: "ombangon",
  pangasinense: "omabangon",
  examples: [
  WordExample(tagalog: "Maaga siyang gigising bukas.", ilocano: "Masakbay ya ombangon nabuas.", pangasinense: "Nasapa a makariing inton bigat."),
  WordExample(tagalog: "Gigising ako ng maaga sa umaga.", ilocano: "Agigisingak ti nasapa idi bigat.", pangasinense: "Makariing ak ng maaga inton bigat.")
  ]
  ),
  Word(
  english: "walk",
  tagalog: "maglakad",
  ilocano: "magna",
  pangasinense: "manakar",
  examples: [
  WordExample(tagalog: "Gusto naming maglakad sa parke.", ilocano: "Gusto mi nga magna iti parke.", pangasinense: "Labalabay miy manakar ed parke."),
  WordExample(tagalog: "Naglakad kami sa kahabaan ng baybayin.", ilocano: "Nagmagna kami iti baybay.", pangasinense: "Naglakad kami ed baybay.")
  ],
  ),
  Word(
  english: "watch",
  tagalog: "panoorin",
  ilocano: "bantayan",
  pangasinense: "buyaan",
  examples: [
  WordExample(tagalog: "Gusto kong panoorin ang pagsikat ng araw.", ilocano: "Labalabay kon bantayan so isabi na banwa.", pangasinense: "Kaay-ayok a buyaen ti ilelennek ti init."),
  WordExample(tagalog: "Manood tayo ng pelikula mamaya.", ilocano: "Manood tayo ti pelikula inton bigat.", pangasinense: "Manood tayon ed pelikula mamaya.")
  ],
  ),
  Word(
  english: "wander",
  tagalog: "gumala",
  ilocano: "manliber-liber",
  pangasinense: "pagay-ay",
  examples: [
  WordExample(tagalog: "Mahilig silang gumala sa kagubatan.", ilocano: "Labalabay day manliber-liber ed katakelan.", pangasinense: "Pagay-ayatda ti aglayag iti kabakiran."),
  WordExample(tagalog: "Gusto kong gumala sa mga bundok.", ilocano: "Kayat ko nga agliber-liber iti bantay.", pangasinense: "Kayat ko so gumala ed mga bundok.")
  ],
  ),
  Word(
  english: "weave",
  tagalog: "maghabi",
  ilocano: "man-abel",
  pangasinense: "man-abel",
  examples: [
  WordExample(tagalog: "Mahilig siyang maghabi ng mga basket.", ilocano: "Labalabay toy man-abel na basket.", pangasinense: "Kaay-ayona ti agabel kadagiti basket."),
  WordExample(tagalog: "Maghabi ka ng tela.", ilocano: "Ag-abel ka iti tela.", pangasinense: "Man-abel ka ed tela.")
  ],
  ),
  Word(
  english: "welcome",
  tagalog: "welcome",
  ilocano: "maawat",
  pangasinense: "naabrasa",
  examples: [
  WordExample(tagalog: "Lagi kang welcome dito.", ilocano: "Lanang kan naabrasa dia.", pangasinense: "Kanayon a maawatkayo ditoy."),
  WordExample(tagalog: "Welcome ka sa aming tahanan.", ilocano: "Maawatka iti balaymi.", pangasinense: "Naabrasa ka ed tahanan mi.")
  ],
  ),
  Word(
  english: "whistle",
  tagalog: "sumipol",
  ilocano: "mansiwit",
  pangasinense: "mansiwit",
  examples: [
  WordExample(tagalog: "Malakas siyang sumipol.", ilocano: "Sarag toy mansiwit na maksil.", pangasinense: "Mabalinna ti agsippayot iti napigsa."),
  WordExample(tagalog: "Sumipol ka kung masaya ka.", ilocano: "Agsippayka no naragsak ka.", pangasinense: "Mansiwit ka no masaya ka.")
  ],
  ),
  Word(
  english: "wet",
  tagalog: "basang-basa",
  ilocano: "nabasa",
  pangasinense: "nabasa",
  examples: [
  WordExample(tagalog: "Basang basa ang damo dahil sa ulan.", ilocano: "Nabasa so dika lapud uran.", pangasinense: "Nabasa ti ruot gapu iti tudo."),
  WordExample(tagalog: "Nabasa ang aking damit.", ilocano: "Nabasa ti bado ko.", pangasinense: "Nabasa so damit ko.")
  ],
  ),
  Word(
  english: "weigh",
  tagalog: "timbangin",
  ilocano: "timbang",
  pangasinense: "timbang",
  examples: [
  WordExample(tagalog: "Kailangan nilang timbangin ang mga bagahe.", ilocano: "Kaukolan dan timbangen so bagahe.", pangasinense: "Masapul a timbangenda dagiti bagahe."),
  WordExample(tagalog: "Timbangin mo ang bigat ng mga prutas.", ilocano: "Timbangem ti kabigatan dagiti prutas.", pangasinense: "Timbangem so bigat na prutas.")
  ],
  ),
  Word(
  english: "wall",
  tagalog: "dingding",
  ilocano: "diding",
  pangasinense: "dinding",
  examples: [
  WordExample(tagalog: "Ang mga dingding ay pininturahan ng puti.", ilocano: "Saray dingding et pininturaan na amputi.", pangasinense: "Napintaan iti puraw dagiti diding."),
  WordExample(tagalog: "May mga larawan sa dingding.", ilocano: "Adda dagiti ladawan iti diding.", pangasinense: "Awan so mga litrato ed dinding.")
  ],
  ),
  Word(
  english: "who",
  tagalog: "sino",
  ilocano: "siasino",
  pangasinense: "siopay",
  examples: [
  WordExample(tagalog: "Sino ang nasa pintuan?", ilocano: "Siasino ti adda iti ruangan?", pangasinense: "Siopay walad puerta?"),
  WordExample(tagalog: "Sino ang tumawag sa iyo?", ilocano: "Siasino ti nangngangato kenka?", pangasinense: "Siopay ya manawag ed sikato?")
  ],
  ),
  Word(
  english: "why",
  tagalog: "bakit",
  ilocano: "apay",
  pangasinense: "akin",
  examples: [
  WordExample(tagalog: "Bakit ka umalis ng maaga?", ilocano: "Apay a nasapaka a pimmanaw?", pangasinense: "Akin et masakbay kan tinmaynan?"),
  WordExample(tagalog: "Bakit ka nalate?", ilocano: "Apay nga naur-uray ka?", pangasinense: "Akin ya masakbay ed sikato?")
  ],
  ),
  Word(
  english: "wicked",
  tagalog: "masama",
  ilocano: "dakes",
  pangasinense: "mauges",
  examples: [
  WordExample(tagalog: "Ang kontrabida ay may masamang ngiti.", ilocano: "Adda dakes nga isem ti kontrabida.", pangasinense: "Say kontrabida et walay mauges ya ngisi to."),
  WordExample(tagalog: "May wicked na plano ang kontrabida.", ilocano: "Adda dakes a plano ti kontrabida.", pangasinense: "Awan so masama ya plano na kontrabida.")
  ],
  ),
  Word(
  english: "wide",
  tagalog: "malawak",
  ilocano: "nalawa",
  pangasinense: "malapar",
  examples: [
  WordExample(tagalog: "Malawak ang ilog dito.", ilocano: "Nalawa ti karayan ditoy.", pangasinense: "Malapar so ilog dia."),
  WordExample(tagalog: "Ang daan ay malawak at tuwid.", ilocano: "Nalawa ken deretso ti dalan.", pangasinense: "Malapar ya daan tan peder.")
  ],
  ),
  Word(
  english: "widow",
  tagalog: "balo",
  ilocano: "balo",
  pangasinense: "abalo",
  examples: [
  WordExample(tagalog: "Siya ay naging balo sa murang edad.", ilocano: "Nagbalin a balo iti ubing pay nga edad.", pangasinense: "Sikatoy abalo nen ugaw ni."),
  WordExample(tagalog: "Ang balo ay may anak na dalawa.", ilocano: "Adda dua a anak ti balo.", pangasinense: "Awan so dalawa ya anak na.")
  ],
  ),
  Word(
  english: "wilderness",
  tagalog: "ilang",
  ilocano: "let-ang",
  pangasinense: "kalawakan",
  examples: [
  WordExample(tagalog: "Nagkampo sila sa ilang.", ilocano: "Nagkampoda iti let-ang.", pangasinense: "Nankampo ra ed kalawakan."),
  WordExample(tagalog: "Maraming hayop sa wilderness.", ilocano: "Adu nga hayop iti let-ang.", pangasinense: "Awan so maraming hayop ed kalawakan.")
  ],
  ),
  Word(
  english: "win",
  tagalog: "manalo",
  ilocano: "agballigi",
  pangasinense: "ilaloan",
  examples: [
  WordExample(tagalog: "Sana manalo ako sa laro.", ilocano: "Mangnamnamaak nga agballigiak iti ay-ayam.", pangasinense: "Ilaloan kon manalo ak ed sayan galaw."),
  WordExample(tagalog: "Manalo tayo sa kompetisyon.", ilocano: "Agballigi tayo iti kompetision.", pangasinense: "Makaawis tayon ed kompetisyon.")
  ],
  ),
  Word(
  english: "wound",
  tagalog: "sugat",
  ilocano: "sugat",
  pangasinense: "sugat",
  examples: [
  WordExample(tagalog: "Maingat niyang nilinis ang sugat.", ilocano: "Dinalusanna a naimbag ti sugat.", pangasinense: "Inlinisan ton maong so sugat."),
  WordExample(tagalog: "Ang sugat ay kailangan pang alagaan.", ilocano: "Masapul a alagaan ti sugat.", pangasinense: "Kaukolan so sugat ya alagaan.")
  ],
  ),
  Word(
  english: "wrap",
  tagalog: "balutin",
  ilocano: "balkoten",
  pangasinense: "balotan",
  examples: [
  WordExample(tagalog: "Balutin ng papel ang regalo.", ilocano: "Balkoten ti sagut iti papel.", pangasinense: "Balotan na papel so regalo."),
  WordExample(tagalog: "Balutin ang pagkain para sa dalhin.", ilocano: "Balkoten ti makan tapno idalan.", pangasinense: "Balotan so taraon para ed dalhin.")
  ],
  ),
  Word(
  english: "wreck",
  tagalog: "pagkawasak",
  ilocano: "narba",
  pangasinense: "sigpot",
  examples: [
  WordExample(tagalog: "Ang barko ay isang kabuuang pagkawasak.", ilocano: "Naan-anay a narba ti barko.", pangasinense: "Sigpot ya aderal so barko."),
  WordExample(tagalog: "Sira na ang kotse, parang pagkawasak.", ilocano: "Nabati ti kotse, kasla narba.", pangasinense: "Sira so kotse, kasla wreck.")
  ],
  ),
  Word(
  english: "wring",
  tagalog: "pigain",
  ilocano: "ipilit",
  pangasinense: "ipilit",
  examples: [
  WordExample(tagalog: "Pigain ang tela bago patuyuin.", ilocano: "Ipilit so abel antis ya pamaraan.", pangasinense: "Ipilit so abel antis ya pamaraan."),
  WordExample(tagalog: "I-wring mo ang basang damit.", ilocano: "I-pilit mo ti nabasa a bado.", pangasinense: "I-pilit mo so nabasa na damit.")
  ],
  ),
  Word(
  english: "write",
  tagalog: "isulat",
  ilocano: "isurat",
  pangasinense: "isulat",
  examples: [
  WordExample(tagalog: "Pakisulat ang iyong pangalan dito.", ilocano: "Pangngaasiyo ta isuratyo ditoy ti naganyo.", pangasinense: "Ipangasin isulat so ngaran mo dia."),
  WordExample(tagalog: "Magsulat ka ng liham.", ilocano: "Agisurat ka ti surat.", pangasinense: "Magsurat ka ed liham.")
  ],
  ),
  Word(
  english: "wrong",
  tagalog: "mali",
  ilocano: "aliwa",
  pangasinense: "aliwa",
  examples: [
  WordExample(tagalog: "Mali ang sagot na iyon.", ilocano: "Di umiso dayta a sungbat.", pangasinense: "Aliwa itan ya ebat."),
  WordExample(tagalog: "Mali ang iyong desisyon.", ilocano: "Aliwa ti desision mo.", pangasinense: "Aliwa so desisyon mo.")
  ],
  ),
  Word(
  english: "year",
  tagalog: "taon",
  ilocano: "tawen",
  pangasinense: "taon",
  examples: [
  WordExample(tagalog: "Naging mapanghamong taon ito para sa lahat.", ilocano: "Nakarit daytoy a tawen para iti amin.", pangasinense: "Saya so mairap a taon parad amin."),
  WordExample(tagalog: "Ang taon ay puno ng hamon.", ilocano: "Ti tawen ket napnuan iti pammadayaw.", pangasinense: "Awan so taon ya puno na challenges.")
  ],
  ),
  Word(
  english: "yell",
  tagalog: "sumigaw",
  ilocano: "agpukkaw",
  pangasinense: "onkelyaw",
  examples: [
  WordExample(tagalog: "Kailangan niyang sumigaw para marinig ang ingay.", ilocano: "Masapul nga agpukkaw tapno mangngeg iti rabaw ti arimbangaw.", pangasinense: "Kaukolan toy onkelyaw pian narengel ed ungol."),
  WordExample(tagalog: "Sumigaw siya nang makikita ang kanyang kaibigan.", ilocano: "Agpukkaw siya idi nakitam ti gayyem na.", pangasinense: "Onkelyaw siya no makita na so kakilala na.")
  ],
  ),
  Word(
  english: "yellow",
  tagalog: "dilaw",
  ilocano: "duyaw",
  pangasinense: "duyaw",
  examples: [
  WordExample(tagalog: "Ang mga sunflower ay maliwanag na dilaw.", ilocano: "Naraniag a duyaw dagiti mirasol.", pangasinense: "Saray sunflower et maliwliwawan duyaw."),
  WordExample(tagalog: "Ang dilaw ay kulay ng kasiyahan.", ilocano: "Ti duyaw ket kulay ti ragsak.", pangasinense: "Ya duyaw et kulay ya kasiyahan.")
  ],
  ),
  Word(
  english: "would",
  tagalog: "gusto",
  ilocano: "kayatan",
  pangasinense: "kayat",
  examples: [
  WordExample(tagalog: "Oo, gusto kong makasama ka.", ilocano: "Wen, kayatko unay ti makikadua kadakayo.", pangasinense: "On, labalabay koy mila ed sika."),
  WordExample(tagalog: "Gusto mo bang sumama sa akin?", ilocano: "Kayat mo kadi nga agkaduak?", pangasinense: "Kayat mo so makikadua ed sikato?")
  ],
  ),
  Word(
  english: "yet",
  tagalog: "pa",
  ilocano: "pay",
  pangasinense: "pay",
  examples: [
  WordExample(tagalog: "Hindi pa siya dumarating.", ilocano: "Saan pay a simmangpet.", pangasinense: "Ag ni sinmabi."),
  WordExample(tagalog: "Wala pa akong natatanggap na balita.", ilocano: "Awan pay ti nadawat ko a damag.", pangasinense: "Awan pay so natanggap ko ya balita.")
  ],
  ),
  Word(
  english: "yield",
  tagalog: "mangbunga",
  ilocano: "dumaralos",
  pangasinense: "dumaralos",
  examples: [
  WordExample(tagalog: "Umaasa ang magsasaka na magbubunga ng magandang ani ang mga pananim.", ilocano: "Mangnamnama ti mannalon a nasayaat ti apit dagiti apit.", pangasinense: "Iilaloan na dumaralos ya manbunga na maong so ani na saray tanaman."),
  WordExample(tagalog: "Dapat ay yield ang mga pananim sa tamang panahon.", ilocano: "Masapul nga dumaralos dagiti pananim iti usto a tiempo.", pangasinense: "Masapul ya makapanbunga so tanaman ed maong so panahon.")
  ],
  ),
  Word(
  english: "yoke",
  tagalog: "pamatok",
  ilocano: "pamatok",
  pangasinense: "pamatok",
  examples: [
  WordExample(tagalog: "Ang mga baka ay itinali kasama ng isang pamatok.", ilocano: "Saray baka et insinger ed sakey a pako.", pangasinense: "Naigalut dagiti baka babaen ti sangol."),
  WordExample(tagalog: "Ang yoke ay ginagamit para sa mga hayop.", ilocano: "Ti pamatok ket usaren para kadagiti hayop.", pangasinense: "Saan so pamatok ya ginagamit para ed hayop.")
  ],
  ),
  Word(
  english: "amazing",
  tagalog: "kamangha-mangha",
  ilocano: "nakaskasdaaw",
  pangasinense: "makapakelaw",
  examples: [
  WordExample(tagalog: "Gumagawa ka ng isang kamangha-manghang trabaho.", ilocano: "Nakaskasdaaw ti ar-aramidem.", pangasinense: "Makapakelaw so gagawaen mo."),
  WordExample(tagalog: "Kamangha-mangha ang iyong talento.", ilocano: "Nakamangha ti talento mo.", pangasinense: "Makapakelaw so talento mo.")
  ],
  ),
  Word(
  english: "young",
  tagalog: "bata",
  ilocano: "ubing",
  pangasinense: "ugaw",
  examples: [
  WordExample(tagalog: "Siya ay napakabata pa nang matuto siyang tumugtog ng piano.", ilocano: "Ubing pay laeng idi nasursurona ti agtokar iti piano.", pangasinense: "Ugaw ni nen naaralan toy mantogtog na piano."),
  WordExample(tagalog: "Ang mga bata ay puno ng enerhiya.", ilocano: "Dagiti ubing ket napnuan iti enerhiya.", pangasinense: "Awan so mga bata ya puno ya enerhiya.")
  ],
  ),
  Word(
  english: "zeal",
  tagalog: "sigasig",
  ilocano: "sigagagar",
  pangasinense: "seseg",
  examples: [
  WordExample(tagalog: "Nilapitan niya ang gawain nang may sigasig.", ilocano: "Sigagagar nga inasitganna ti trabaho.", pangasinense: "Inasinggeran to so kimey tekep na seseg."),
  WordExample(tagalog: "Ang sigasig ay nagdadala ng tagumpay.", ilocano: "Ti sigasig ket mangyeg ti balligi.", pangasinense: "Ya sigasig et nagdadala so panangballigi.")
  ],
  ),
  Word(
  english: "zero",
  tagalog: "wala",
  ilocano: "zero",
  pangasinense: "zero",
  examples: [
  WordExample(tagalog: "Wala siyang puntos sa laro.", ilocano: "Zero points ti nagun-odna iti ay-ayam.", pangasinense: "Anggapoy puntos to ed sayan galaw."),
  WordExample(tagalog: "Wala na akong oras.", ilocano: "Awanen ti oras ko.", pangasinense: "Awan na so oras ko.")
  ],
  ),
  Word(
  english: "zone",
  tagalog: "zona",
  ilocano: "sona",
  pangasinense: "zona",
  examples: [
  WordExample(tagalog: "Manatili sa iyong zone habang nagsasanay.", ilocano: "Agtalinaedka iti sona bayat ti panagensayo.", pangasinense: "Mansiansia ed sona yo legan na panagpraktis."),
  WordExample(tagalog: "Ang bawat tao ay may kanya-kanyang zone.", ilocano: "Adu a tao ti addaan ti bukod a sona.", pangasinense: "Awan so bawat tao ya may kanya-kanya ya zona.")
  ],
  ),
];



  bool isSidebarVisible = false; // Sidebar visibility flag
  String searchQuery = ''; // Search query for filtering words

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A1128),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A1128),
        leading: IconButton(
          icon: Icon(
            isSidebarVisible ? Icons.arrow_back : Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              isSidebarVisible = !isSidebarVisible;
            });
          },
        ),
        title: Text(
          'Granary Translate',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: Row(
        children: [
          if (isSidebarVisible)
            Sidebar(
              isVisible: isSidebarVisible,
              toggleSidebar: () {
                setState(() {
                  isSidebarVisible = !isSidebarVisible;
                });
              },
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  // Fixed Position Search Bar
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for a word...',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.black),
                            onChanged: (value) {
                              setState(() {
                                searchQuery = value;
                              });
                            },
                          ),
                        ),
                        Icon(Icons.search, color: Colors.grey),
                      ],
                    ),
                  ),
                  // Word List
                  Expanded(
                    child: ListView.builder(
                      itemCount: words.length,
                      itemBuilder: (context, index) {
                        final word = words[index];
                        if (searchQuery.isNotEmpty &&
                            !word.english.toLowerCase().contains(searchQuery.toLowerCase())) {
                          return SizedBox.shrink();
                        }
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WordDetailsPage(word: word),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.grey[100],
                            margin: EdgeInsets.symmetric(vertical: 8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    word.english,
                                    style: TextStyle(
                                      color: Color(0xFF0A1128),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Divider(color: Colors.grey[300], thickness: 1.0),
                                  SizedBox(height: 8),
                                  buildTranslationEntry('Tagalog:', word.tagalog, Colors.orange),
                                  buildTranslationEntry('Pangasinense:', word.pangasinense, Colors.green),
                                  buildTranslationEntry('Ilocano:', word.ilocano, Colors.blue),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTranslationEntry(String label, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.language, color: color, size: 18),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///Example details
class WordDetailsPage extends StatelessWidget {
  final Word word;

  WordDetailsPage({required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          word.english,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Color(0xFF0A1128),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xFF0A1128),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Translations Section
            buildSectionHeader("Translations"),
            SizedBox(height: 12),
            buildTranslationBadge("Tagalog", word.tagalog, Icons.language),
            buildTranslationBadge("Pangasinense", word.pangasinense, Icons.translate),
            buildTranslationBadge("Ilocano", word.ilocano, Icons.g_translate),
            Divider(color: Colors.white54, thickness: 1.5, height: 30),

            // Examples Section
            buildSectionHeader("Examples"),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 16.0),
                itemCount: word.examples.length,
                itemBuilder: (context, index) {
                  final example = word.examples[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: buildExampleCard(example),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Section Header Styling
  Widget buildSectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white.withOpacity(0.85),
        letterSpacing: 1.1,
      ),
    );
  }

  // Translation Badge Style with Icons and Subtle Animation
  Widget buildTranslationBadge(String language, String translation, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.lightBlueAccent, size: 22),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.blueGrey],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              language,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              translation,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Example Card Style with Icons and Gradient Background
  Widget buildExampleCard(WordExample example) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF2A3A4F), Color(0xFF0A1128)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildExampleBadge("Tagalog", example.tagalog, Icons.language),
            SizedBox(height: 12),
            buildExampleBadge("Ilocano", example.ilocano, Icons.translate),
            SizedBox(height: 12),
            buildExampleBadge("Pangasinense", example.pangasinense, Icons.g_translate),
          ],
        ),
      ),
    );
  }

  // Example Badge Style with Icons and Updated Colors
  Widget buildExampleBadge(String language, String text, IconData icon) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.tealAccent, size: 20),
        SizedBox(width: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.teal[100],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            language,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white.withOpacity(0.85),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class Word {
  final String english;
  final String ilocano;
  final String pangasinense;
  final String tagalog;
  final List<WordExample> examples;

  Word({
    required this.english,
    required this.ilocano,
    required this.pangasinense,
    required this.tagalog,
    this.examples = const [],
  });
}

class WordExample {
  final String tagalog;
  final String ilocano;
  final String pangasinense;

  WordExample({
    required this.tagalog,
    required this.ilocano,
    required this.pangasinense,
  });
}