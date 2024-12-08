import 'dart:async';
import 'package:flutter/material.dart';
import '../dashboard.dart';
import 'score.dart';

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  get userAnswer => null;
}


// Pangasinense questions
final List<Question> _pangasinenseQuestions = [
  Question(question: "What does 'Man-aliw ya?' mean in Pangasinense?", options: ['Are you happy?', 'Are you coming?', 'Are you tired?', 'Are you okay?'], correctAnswer: 'Are you coming?'),
  Question(question: "What is the Pangasinense word for 'rice field'?", options: ['Talon', 'Dalem', 'Uma', 'Padán'], correctAnswer: 'Padán'),
  Question(question: "How do you say 'I am hungry' in Pangasinense?", options: ['Inubla ak', 'Nagtatakaw ak', 'Nasipnget ak', 'Managkaraw ak'], correctAnswer: 'Nagtatakaw ak'),
  Question(question: "What does 'Bilang' mean in Pangasinense?", options: ['Counting', 'Quantity', 'Number', 'All of the above'], correctAnswer: 'All of the above'),
  Question(question: "What is the equivalent of 'Elder sister' in Pangasinense?", options: ['Manang', 'Inang', 'Manay', 'Kaing'], correctAnswer: 'Manay'),
  Question(question: "What does 'Maliket' mean in Pangasinense?", options: ['Beautiful', 'Painful', 'Heavy', 'Funny'], correctAnswer: 'Funny'),
  Question(question: "Which of the following means 'to sleep' in Pangasinense?", options: ['Maturog', 'Mangaro', 'Masubli', 'Mantong'], correctAnswer: 'Maturog'),
  Question(question: "What is the Pangasinense word for 'cloud'?", options: ['Angin', 'Awan', 'Langa', 'Abot'], correctAnswer: 'Awan'),
  Question(question: "How do you say 'sun' in Pangasinense?", options: ['Init', 'Bulan', 'Lángit', 'Agáo'], correctAnswer: 'Agáo'),
  Question(question: "What does 'Panggalatok' refer to?", options: ['A type of food', 'Pangasinense language', 'A dance', 'A religious practice'], correctAnswer: 'Pangasinense language'),
  Question(question: "How do you say 'star' in Pangasinense?", options: ['Tulang', 'Bituin', 'Bitún', 'Talong'], correctAnswer: 'Bitún'),
  Question(question: "What is 'Bakbakán' in Pangasinense?", options: ['A type of animal', 'A battlefield', 'A celebration', 'A work tool'], correctAnswer: 'A battlefield'),
  Question(question: "What does 'Say Anak' mean in Pangasinense?", options: ['The child', 'The man', 'The girl', 'The boy'], correctAnswer: 'The child'),
  Question(question: "Which word refers to 'joy' in Pangasinense?", options: ['Ligaya', 'Kalipay', 'Makaring', 'Sayang'], correctAnswer: 'Makaring'),
  Question(question: "What is 'Ari' in Pangasinense?", options: ['To wait', 'King', 'Land', 'Boat'], correctAnswer: 'King'),
  Question(question: "How do you say 'mountain' in Pangasinense?", options: ['Talón', 'Dúlon', 'Bantáy', 'Silángan'], correctAnswer: 'Bantáy'),
  Question(question: "What does 'Makaasi' mean in Pangasinense?", options: ['Angry', 'Strong', 'Merciful', 'Proud'], correctAnswer: 'Merciful'),
  Question(question: "How do you say 'old man' in Pangasinense?", options: ['Lakay', 'Laki', 'Gurang', 'Tuo'], correctAnswer: 'Lakay'),
  Question(question: "Which Pangasinense word means 'afternoon'?", options: ['Umat', 'Gab-i', 'Laóng', 'Intong'], correctAnswer: 'Laóng'),
  Question(question: "What does 'Baleg ya balay' mean in Pangasinense?", options: ['Big house', 'Small house', 'Old house', 'New house'], correctAnswer: 'Big house'),
  Question(question: "What is the Pangasinense word for 'water'?", options: ['Danum', 'Tubig', 'Tuhig', 'Banga'], correctAnswer: 'Danum'),
  Question(question: "How do you say 'friend' in Pangasinense?", options: ['Amigo', 'Kaibigan', 'Angga', 'Paré'], correctAnswer: 'Angga'),
  Question(question: "What does 'Mano ya ora?' mean in Pangasinense?", options: ['What time is it?', 'How are you?', 'Where are you going?', 'Are you here?'], correctAnswer: 'What time is it?'),
  Question(question: "Which word refers to 'food' in Pangasinense?", options: ['Kalam', 'Sakan', 'Pagkain', 'Inum'], correctAnswer: 'Sakan'),
  Question(question: "What is the equivalent of 'Good morning' in Pangasinense?", options: ['Mapia a kabwasan', 'Magandang umaga', 'Naimbag a bigat', 'Mapia a agaw'], correctAnswer: 'Mapia a kabwasan'),
  Question(question: "How do you say 'beautiful' in Pangasinense?", options: ['Makuyad', 'Maliket', 'Maganda', 'Ambing'], correctAnswer: 'Ambing'),
  Question(question: "What is 'Libang' in Pangasinense?", options: ['To play', 'To rest', 'To walk', 'To travel'], correctAnswer: 'To play'),
  Question(question: "What does 'Manlao' mean in Pangasinense?", options: ['To run', 'To jump', 'To swim', 'To walk'], correctAnswer: 'To walk'),
  Question(question: "What is the Pangasinense term for 'morning'?", options: ['Kabwasan', 'Pagngal', 'Gab-i', 'Sira'], correctAnswer: 'Kabwasan'),
  Question(question: "How do you say 'I love you' in Pangasinense?", options: ['Inaro taka', 'Mahal kita', 'Kaluguran daka', 'Nasayaat ka'], correctAnswer: 'Inaro taka'),
  Question(question: "What does 'Intoy' mean in Pangasinense?", options: ['What', 'Who', 'Where', 'When'], correctAnswer: 'Who'),
  Question(question: "Which of the following means 'to read' in Pangasinense?", options: ['Magbasa', 'Manenok', 'Mangitaw', 'Magaral'], correctAnswer: 'Manenok'),
  Question(question: "What is the Pangasinense word for 'teacher'?", options: ['Manurong', 'Gurong', 'Maestra', 'Pamola'], correctAnswer: 'Manurong'),
  Question(question: "How do you say 'river' in Pangasinense?", options: ['Sapa', 'Karayan', 'Bukal', 'Ilug'], correctAnswer: 'Karayan'),
  Question(question: "What does 'Masarap' mean in Pangasinense?", options: ['Delicious', 'Bitter', 'Sweet', 'Sour'], correctAnswer: 'Delicious'),
  Question(question: "What is the Pangasinense term for 'child'?", options: ['Anak', 'Apo', 'Ubet', 'Amlang'], correctAnswer: 'Anak'),
  Question(question: "How do you say 'goodbye' in Pangasinense?", options: ['Agpakada', 'Paalam', 'Maglakon', 'Agdaduaw'], correctAnswer: 'Agpakada'),
  Question(question: "What does 'Salum ya danum' mean in Pangasinense?", options: ['Hot water', 'Cold water', 'Boiling water', 'Fresh water'], correctAnswer: 'Cold water'),
  Question(question: "How do you say 'to eat' in Pangasinense?", options: ['Manilaok', 'Magkaon', 'Mangan', 'Magpagna'], correctAnswer: 'Mangan'),
  Question(question: "What is the Pangasinense word for 'fish'?", options: ['Isda', 'Sira', 'Ikan', 'Bakbakan'], correctAnswer: 'Sira'),
  Question(question: "How do you say 'How are you?' in Pangasinense?", options: ['Kumusta ka?', 'Pangaawat ka?', 'Man-aliw ka?', 'Anya ti bagam?'], correctAnswer: 'Kumusta ka?'),
  Question(question: "What does 'Pasensiya ka la' mean in Pangasinense?", options: ['Please wait', 'Im sorry', 'Excuse me', 'See you later'], correctAnswer: 'I\'m sorry'),
  Question(question: "What is the Pangasinense word for 'road'?", options: ['Dalan', 'Kalsada', 'Palat', 'Bantay'], correctAnswer: 'Dalan'),
  Question(question: "How do you say 'forest' in Pangasinense?", options: ['Kagubatan', 'Kayo', 'Kababatan', 'Dungon'], correctAnswer: 'Kagubatan'),
  Question(question: "What does 'Salaki' mean in Pangasinense?", options: ['Car', 'Boat', 'Animal', 'Vehicle'], correctAnswer: 'Car'),
  Question(question: "Which word refers to 'flower' in Pangasinense?", options: ['Bulaklak', 'Rosal', 'Dama de noche', 'Bila'], correctAnswer: 'Bila'),
  Question(question: "What is 'Tabang' in Pangasinense?", options: ['To help', 'To dance', 'To cook', 'To read'], correctAnswer: 'To help'),
  Question(question: "How do you say 'head' in Pangasinense?", options: ['Ulo', 'Laban', 'Alo', 'Lawa'], correctAnswer: 'Ulo'),
  Question(question: "What does 'Alanganin' mean in Pangasinense?", options: ['Hesitant', 'Late', 'Early', 'Accurate'], correctAnswer: 'Hesitant'),
  Question(question: "What is the Pangasinense term for 'week'?", options: ['Lima', 'Sampu', 'Semana', 'Agaw'], correctAnswer: 'Semana'),
  Question(question: "How do you say 'mountain range' in Pangasinense?", options: ['Kabundukan', 'Bantay', 'Dalampasigan', 'Karagatan'], correctAnswer: 'Kabundukan'),
  Question(question: "What does 'Gawat' mean in Pangasinense?", options: ['Noise', 'Quiet', 'Crowded', 'Empty'], correctAnswer: 'Noise'),
  Question(question: "Which word refers to 'handkerchief' in Pangasinense?", options: ['Panakip', 'Lupo', 'Tuwalya', 'Panyola'], correctAnswer: 'Panyola'),
  Question(question: "What is 'Balon' in Pangasinense?", options: ['Garden', 'Field', 'Well', 'House'], correctAnswer: 'Well'),
  Question(question: "How do you say 'to build' in Pangasinense?", options: ['Magtayo', 'Magturug', 'Maglakip', 'Magalip'], correctAnswer: 'Magturug'),
  Question(question: "What does 'Paggibut' mean in Pangasinense?", options: ['Harvest', 'Plant', 'Gather', 'Cook'], correctAnswer: 'Harvest'),
  Question(question: "How do you say 'sibling' in Pangasinense?", options: ['Kapatid', 'Manang', 'Kabsat', 'Kabual'], correctAnswer: 'Kapatid'),
  Question(question: "What is 'Tugnaw' in Pangasinense?", options: ['Hot', 'Cold', 'Warm', 'Cool'], correctAnswer: 'Cold'),
  Question(question: "Which Pangasinense word means 'book'?", options: ['Libro', 'Papel', 'Basá', 'Magasin'], correctAnswer: 'Libro'),
  Question(question: "What does 'Kalap' mean in Pangasinense?", options: ['To catch', 'To trap', 'To grab', 'To find'], correctAnswer: 'To catch'),
  Question(question: "How do you say 'heart' in Pangasinense?", options: ['Puso', 'Lusak', 'Bitú', 'Dugo'], correctAnswer: 'Puso'),
  Question(question: "What is the term for 'riverbank' in Pangasinense?", options: ['Bangka', 'Tabing', 'Laon', 'Labas'], correctAnswer: 'Tabing'),
  Question(question: "How do you say 'to play' in Pangasinense?", options: ['Maglaro', 'Manalay', 'Mangarak', 'Maggaw'], correctAnswer: 'Manalay'),
  Question(question: "What does 'Bangka' mean in Pangasinense?", options: ['Boat', 'Net', 'Car', 'Sword'], correctAnswer: 'Boat'),
  Question(question: "What is 'Punglu' in Pangasinense?", options: ['Bullet', 'Pen', 'Shield', 'Helmet'], correctAnswer: 'Bullet'),
  Question(question: "How do you say 'to sing' in Pangasinense?", options: ['Manganta', 'Magsalaysay', 'Manaray', 'Magtutok'], correctAnswer: 'Manganta'),
  Question(question: "What does 'Banag' mean in Pangasinense?", options: ['Sky', 'Dust', 'Road', 'Light'], correctAnswer: 'Dust'),
  Question(question: "How do you say 'shadow' in Pangasinense?", options: ['Anino', 'Lusong', 'Alim', 'Silaw'], correctAnswer: 'Anino'),
  Question(question: "Which Pangasinense word means 'river crossing'?", options: ['Tulay', 'Lango', 'Bangon', 'Tulaga'], correctAnswer: 'Tulay'),
  Question(question: "What is the Pangasinense word for 'fishpond'?", options: ['Pondok', 'Talambas', 'Daluyan', 'Palaisdaan'], correctAnswer: 'Palaisdaan'),
  Question(question: "How do you say 'medicine' in Pangasinense?", options: ['Tambal', 'Gamot', 'Bulong', 'Medy'], correctAnswer: 'Tambal'),
  Question(question: "What does 'Dusa' mean in Pangasinense?", options: ['Pain', 'Joy', 'Suffering', 'Peace'], correctAnswer: 'Suffering'),
  Question(question: "How do you say 'to write' in Pangasinense?", options: ['Sumulat', 'Magsulat', 'Sumaray', 'Sulat'], correctAnswer: 'Sumulat'),
  Question(question: "What is the Pangasinense word for 'mountain'?", options: ['Bantay', 'Bukid', 'Talun', 'Araw'], correctAnswer: 'Bukid'),
  Question(question: "How do you say 'ocean' in Pangasinense?", options: ['Karagatan', 'Danum', 'Lawa', 'Dagat'], correctAnswer: 'Karagatan'),
  Question(question: "What does 'Baibay' mean in Pangasinense?", options: ['River', 'Beach', 'Road', 'Hill'], correctAnswer: 'Beach'),
  Question(question: "Which word refers to 'peace' in Pangasinense?", options: ['Talna', 'Kalma', 'Makaring', 'Alipato'], correctAnswer: 'Talna'),
  Question(question: "What is the Pangasinense word for 'sky'?", options: ['Langit', 'Kalangitan', 'Banag', 'Kabituonan'], correctAnswer: 'Langit'),
  Question(question: "How do you say 'tree' in Pangasinense?", options: ['Kahoy', 'Puno', 'Kaway', 'Bagras'], correctAnswer: 'Kahoy'),
  Question(question: "What does 'Tugaw' mean in Pangasinense?", options: ['Chair', 'Table', 'Bed', 'Window'], correctAnswer: 'Chair'),
  Question(question: "Which Pangasinense word means 'river'?", options: ['Karayan', 'Sapa', 'Talakitok', 'Baley'], correctAnswer: 'Karayan'),
  Question(question: "How do you say 'food' in Pangasinense?", options: ['Sakan', 'Pagkain', 'Inuman', 'Baon'], correctAnswer: 'Sakan'),
  Question(question: "What is the Pangasinense word for 'family'?", options: ['Pamilya', 'Kakampet', 'Katulungan', 'Kabalen'], correctAnswer: 'Pamilya'),
  Question(question: "What does 'Baley' mean in Pangasinense?", options: ['Town', 'House', 'Family', 'Field'], correctAnswer: 'Town'),
  Question(question: "How do you say 'to work' in Pangasinense?", options: ['Magtrabaho', 'Maglinis', 'Magkatulong', 'Magsibo'], correctAnswer: 'Magsibo'),
  Question(question: "What is 'Patalan' in Pangasinense?", options: ['Trap', 'Market', 'School', 'Farm'], correctAnswer: 'School'),
  Question(question: "How do you say 'road' in Pangasinense?", options: ['Dalan', 'Bara', 'Kalye', 'Araw'], correctAnswer: 'Dalan'),
  Question(question: "What does 'Inuman' mean in Pangasinense?", options: ['To drink', 'To eat', 'To sleep', 'To rest'], correctAnswer: 'To drink'),
  Question(question: "What is the Pangasinense term for 'rain'?", options: ['Urán', 'Awan', 'Bagyó', 'Inat'], correctAnswer: 'Urán'),
  Question(question: "How do you say 'to play' in Pangasinense?", options: ['Maglaro', 'Libang', 'Manlayaw', 'Magsuntok'], correctAnswer: 'Libang'),
  Question(question: "What does 'Padan' mean in Pangasinense?", options: ['Rice field', 'Garden', 'Riverbank', 'Market'], correctAnswer: 'Rice field'),
  Question(question: "How do you say 'strong' in Pangasinense?", options: ['Matibay', 'Makapigsa', 'Matapang', 'Mabagsik'], correctAnswer: 'Makapigsa'),
  Question(question: "Which Pangasinense word means 'house'?", options: ['Baley', 'Bale', 'Paga', 'Panuluyan'], correctAnswer: 'Bale'),
  Question(question: "What is 'Daga' in Pangasinense?", options: ['Land', 'Water', 'Fish', 'Sky'], correctAnswer: 'Land'),
  Question(question: "How do you say 'child' in Pangasinense?", options: ['Anak', 'Ubing', 'Ibanag', 'Inak'], correctAnswer: 'Anak'),
  Question(question: "What does 'Salaki' mean in Pangasinense?", options: ['Boat', 'Car', 'Train', 'Bicycle'], correctAnswer: 'Car'),
  Question(question: "What is the Pangasinense word for 'fish'?", options: ['Sira', 'Balyena', 'Isda', 'Tilapia'], correctAnswer: 'Sira'),
  Question(question: "How do you say 'cloud' in Pangasinense?", options: ['Awan', 'Ulap', 'Langit', 'Dagat'], correctAnswer: 'Awan'),
  Question(question: "What does 'Maturog' mean in Pangasinense?", options: ['To sleep', 'To eat', 'To run', 'To cry'], correctAnswer: 'To sleep'),
  Question(question: "Which Pangasinense word means 'star'?", options: ['Bituen', 'Bulan', 'Bituin', 'Talang'], correctAnswer: 'Bituen'),
  Question(question: "What is the term for 'friend' in Pangasinense?", options: ['Kabsat', 'Angga', 'Paré', 'Kaibigan'], correctAnswer: 'Angga'),
  Question(question: "How do you say 'rainbow' in Pangasinense?", options: ['Balangaw', 'Langit', 'Bagyó', 'Talang'], correctAnswer: 'Balangaw'),
  Question(question: "What is 'Basay' in Pangasinense?", options: ['Ocean', 'River', 'Lake', 'Stream'], correctAnswer: 'Ocean'),
  Question(question: "What does 'Maliket' mean in Pangasinense?", options: ['Funny', 'Beautiful', 'Serious', 'Painful'], correctAnswer: 'Funny'),
  Question(question: "How do you say 'to build' in Pangasinense?", options: ['Magpatakder', 'Maglako', 'Magluto', 'Magsipo'], correctAnswer: 'Magpatakder'),
  Question(question: "What is the Pangasinense word for 'fruit'?", options: ['Bunga', 'Prutas', 'Mangga', 'Puno'], correctAnswer: 'Bunga'),
];

final List<Question> _ilocanoQuestions = [
  Question(question: "What does 'Aglalo ka' mean in Ilocano?", options: ['Come here', 'Be careful', 'You be silent', 'You go first'], correctAnswer: 'You be silent'),
  Question(question: "How do you say 'storm' in Ilocano?", options: ['Langit', 'Bagyo', 'Amianan', 'Daga'], correctAnswer: 'Bagyo'),
  Question(question: "What does 'Adda ub-ubing ditoy balay' mean in Ilocano?", options: ['There is a baby in the house', 'There is a child in the house', 'There is a man in the house', 'There is a woman in the house'], correctAnswer: 'There is a child in the house'),
  Question(question: "Which word refers to 'food' in Ilocano?", options: ['Kanen', 'Danum', 'Pammanek', 'Apit'], correctAnswer: 'Kanen'),
  Question(question: "What is the Ilocano word for 'cold'?", options: ['Init', 'Lamiis', 'Lamiisén', 'Nateng'], correctAnswer: 'Lamiis'),
  Question(question: "How do you say 'angry' in Ilocano?", options: ['Agdigos', 'Agsakit', 'Agbuteng', 'Agpungtot'], correctAnswer: 'Agpungtot'),
  Question(question: "What does 'Aglaok' mean in Ilocano?", options: ['To eat', 'To sing', 'To play', 'To cry'], correctAnswer: 'To play'),
  Question(question: "Which of the following means 'to walk' in Ilocano?", options: ['Agpaspasada', 'Agdaliasat', 'Agpasa', 'Agdardaras'], correctAnswer: 'Agdaliasat'),
  Question(question: "What is the Ilocano word for 'moon'?", options: ['Init', 'Bulan', 'Nabuntuan', 'Araw'], correctAnswer: 'Bulan'),
  Question(question: "How do you say 'king' in Ilocano?", options: ['Agimat', 'Apo', 'Ari', 'Hari'], correctAnswer: 'Ari'),
  Question(question: "What does 'Maysa a lawas' mean in Ilocano?", options: ['One month', 'One day', 'One year', 'One week'], correctAnswer: 'One week'),
  Question(question: "What is the equivalent of 'a lot of people' in Ilocano?", options: ['Adu ti tao', 'Naangot nga tao', 'Dakkel nga tao', 'Ammu ti tao'], correctAnswer: 'Adu ti tao'),
  Question(question: "What does 'Makaupay' mean in Ilocano?", options: ['Tired', 'Stressed', 'Embarrassed', 'Pleased'], correctAnswer: 'Embarrassed'),
  Question(question: "Which word refers to 'rain' in Ilocano?", options: ['Daga', 'Ulan', 'Ambon', 'Tudaw'], correctAnswer: 'Ulan'),
  Question(question: "What is 'Batang' in Ilocano?", options: ['Stone', 'Boat', 'Tree', 'Rock'], correctAnswer: 'Rock'),
  Question(question: "How do you say 'high' in Ilocano?", options: ['Napardas', 'Nalleng', 'Nangalngil', 'Natayag'], correctAnswer: 'Natayag'),
  Question(question: "What does 'Mabuti la unay' mean in Ilocano?", options: ['Very good', 'Very bad', 'Very tall', 'Very small'], correctAnswer: 'Very good'),
  Question(question: "How do you say 'teacher' in Ilocano?", options: ['Maguro', 'Titser', 'Manursuro', 'Adal'], correctAnswer: 'Manursuro'),
  Question(question: "Which Ilocano word means 'hair'?", options: ['Agadaw', 'Buok', 'Buhok', 'Tuktuk'], correctAnswer: 'Buhok'),
  Question(question: "What is 'Saging' in Ilocano?", options: ['Banana', 'Apple', 'Orange', 'Grapes'], correctAnswer: 'Banana'),
  Question(question: "What is the Ilocano word for 'tree'?", options: ['Kawayan', 'Kayo', 'Puno', 'Batang'], correctAnswer: 'Kayo'),
  Question(question: "How do you say 'friend' in Ilocano?", options: ['Kaibigan', 'Kabsat', 'Kakabsat', 'Barkada'], correctAnswer: 'Kakabsat'),
  Question(question: "What does 'Agsingsingpet' mean in Ilocano?", options: ['To cook', 'To run', 'To rest', 'To jump'], correctAnswer: 'To jump'),
  Question(question: "What is the equivalent of 'water' in Ilocano?", options: ['Danum', 'Tubig', 'Danom', 'Inum'], correctAnswer: 'Danum'),
  Question(question: "How do you say 'mountain' in Ilocano?", options: ['Bundok', 'Bantay', 'Talampas', 'Dagat'], correctAnswer: 'Bantay'),
  Question(question: "What does 'Agayat' mean in Ilocano?", options: ['To love', 'To hate', 'To play', 'To walk'], correctAnswer: 'To love'),
  Question(question: "What is the Ilocano term for 'beautiful'?", options: ['Nasantuan', 'Nalinteg', 'Nasantuan a tao', 'Naimbag'], correctAnswer: 'Nasantuan'),
  Question(question: "Which of the following means 'to sleep' in Ilocano?", options: ['Maturog', 'Agpagnan', 'Agsugsungkit', 'Agnaed'], correctAnswer: 'Maturog'),
  Question(question: "How do you say 'father' in Ilocano?", options: ['Ama', 'Tata', 'Apo', 'Baba'], correctAnswer: 'Ama'),
  Question(question: "What does 'Inna' mean in Ilocano?", options: ['Mother', 'Sister', 'Aunt', 'Grandmother'], correctAnswer: 'Mother'),
  Question(question: "What is the Ilocano word for 'food'?", options: ['Kanen', 'Pagkain', 'Sakan', 'Mangan'], correctAnswer: 'Kanen'),
  Question(question: "How do you say 'good morning' in Ilocano?", options: ['Naimbag a bigat', 'Naimbag nga aldaw', 'Magandang umaga', 'Mapia a kabwasan'], correctAnswer: 'Naimbag a bigat'),
  Question(question: "What does 'Nakakabsat' mean in Ilocano?", options: ['Brother', 'Sister', 'Friend', 'Cousin'], correctAnswer: 'Friend'),
  Question(question: "What is 'Baybay' in Ilocano?", options: ['Beach', 'River', 'Mountain', 'Forest'], correctAnswer: 'Beach'),
  Question(question: "Which Ilocano word means 'to eat'?", options: ['Agmula', 'Mangan', 'Mangayon', 'Mananom'], correctAnswer: 'Mangan'),
  Question(question: "How do you say 'river' in Ilocano?", options: ['Karayan', 'Ilug', 'Daga', 'Sapa'], correctAnswer: 'Karayan'),
  Question(question: "What is the Ilocano term for 'sun'?", options: ['Init', 'Araw', 'Nabuntuan', 'Agdama'], correctAnswer: 'Araw'),
  Question(question: "What does 'Ub-ubing' mean in Ilocano?", options: ['Old', 'Young', 'Child', 'Adult'], correctAnswer: 'Child'),
  Question(question: "How do you say 'street' in Ilocano?", options: ['Kalsada', 'Dalan', 'Panuluan', 'Sapa'], correctAnswer: 'Kalsada'),
  Question(question: "Which Ilocano word refers to 'rain'?", options: ['Tudaw', 'Ulan', 'Daga', 'Ambon'], correctAnswer: 'Ulan'),
  Question(question: "What is the Ilocano word for 'house'?", options: ['Balay', 'Bale', 'Bahay', 'Pagtaengan'], correctAnswer: 'Balay'),
  Question(question: "How do you say 'banana' in Ilocano?", options: ['Manga', 'Saging', 'Bayabas', 'Sili'], correctAnswer: 'Saging'),
  Question(question: "What does 'Agbiag' mean in Ilocano?", options: ['Live', 'Love', 'Hope', 'Pray'], correctAnswer: 'Live'),
  Question(question: "How do you say 'book' in Ilocano?", options: ['Libro', 'Papel', 'Basá', 'Magasin'], correctAnswer: 'Libro'),
  Question(question: "What is 'Tugot' in Ilocano?", options: ['Permission', 'Sleep', 'Watch', 'Leave'], correctAnswer: 'Permission'),
  Question(question: "Which Ilocano word means 'shadow'?", options: ['Anino', 'Silaw', 'Alim', 'Tupak'], correctAnswer: 'Anino'),
  Question(question: "How do you say 'to build' in Ilocano?", options: ['Agur-uray', 'Agbuya', 'Agpatakder', 'Agkatkat'], correctAnswer: 'Agpatakder'),
  Question(question: "What does 'Natan-ok' mean in Ilocano?", options: ['Strong', 'Weak', 'Tall', 'Short'], correctAnswer: 'Strong'),
  Question(question: "How do you say 'afternoon' in Ilocano?", options: ['Rabi-i', 'Malem', 'Bigat', 'Laong'], correctAnswer: 'Malem'),
  Question(question: "What is the term for 'star' in Ilocano?", options: ['Bituin', 'Tala', 'Silaw', 'Adda'], correctAnswer: 'Bituin'),
  Question(question: "What does 'Ading' mean in Ilocano?", options: ['Older brother', 'Younger sibling', 'Friend', 'Neighbor'], correctAnswer: 'Younger sibling'),
  Question(question: "How do you say 'to drink' in Ilocano?", options: ['Agtakaw', 'Aglinnak', 'Agnapuy', 'Aginom'], correctAnswer: 'Aginom'),
  Question(question: "What is the Ilocano word for 'morning'?", options: ['Bigat', 'Malem', 'Rabi-i', 'Pagsangbay'], correctAnswer: 'Bigat'),
  Question(question: "How do you say 'cold' in Ilocano?", options: ['Nateng', 'Nalammin', 'Lamiis', 'Napudot'], correctAnswer: 'Nalammin'),
  Question(question: "What does 'Agmula' mean in Ilocano?", options: ['To plant', 'To build', 'To jump', 'To walk'], correctAnswer: 'To plant'),
  Question(question: "Which Ilocano word means 'family'?", options: ['Pamilya', 'Kapamilya', 'Pagtaengan', 'Pagsasá'], correctAnswer: 'Pamilya'),
  Question(question: "How do you say 'mountain' in Ilocano?", options: ['Bantay', 'Talampas', 'Baybay', 'Bukid'], correctAnswer: 'Bantay'),
  Question(question: "What is the Ilocano term for 'heart'?", options: ['Puso', 'Agimat', 'Dawat', 'Kawes'], correctAnswer: 'Puso'),
  Question(question: "How do you say 'mother' in Ilocano?", options: ['Inna', 'Nanang', 'Lakay', 'Ading'], correctAnswer: 'Nanang'),
  Question(question: "What does 'Daniw' mean in Ilocano?", options: ['Poem', 'Song', 'Story', 'Dance'], correctAnswer: 'Poem'),
  Question(question: "Which word refers to 'fire' in Ilocano?", options: ['Apuy', 'Daga', 'Banag', 'Silaw'], correctAnswer: 'Apuy'),
  Question(question: "What is 'Langit' in Ilocano?", options: ['Sky', 'Sun', 'Rain', 'Star'], correctAnswer: 'Sky'),
  Question(question: "How do you say 'to write' in Ilocano?", options: ['Agsurat', 'Agbasa', 'Agtakder', 'Agkararag'], correctAnswer: 'Agsurat'),
  Question(question: "What does 'Kabsat' mean in Ilocano?", options: ['Sibling', 'Friend', 'Neighbor', 'Relative'], correctAnswer: 'Sibling'),
  Question(question: "How do you say 'beautiful' in Ilocano?", options: ['Nasantuan', 'Nataraki', 'Napintas', 'Naimbag'], correctAnswer: 'Napintas'),
  Question(question: "What is 'Balasang' in Ilocano?", options: ['Old woman', 'Young lady', 'Sister', 'Aunt'], correctAnswer: 'Young lady'),
  Question(question: "What does 'Agtinnulong' mean in Ilocano?", options: ['To help', 'To give', 'To cook', 'To play'], correctAnswer: 'To help'),
  Question(question: "How do you say 'hot' in Ilocano?", options: ['Napudot', 'Nalamin', 'Nateng', 'Naligutok'], correctAnswer: 'Napudot'),
  Question(question: "What is the Ilocano word for 'to swim'?", options: ['Agkarigat', 'Aglangoy', 'Agtaray', 'Aginnawa'], correctAnswer: 'Aglangoy'),
  Question(question: "How do you say 'peace' in Ilocano?", options: ['Talna', 'Kalipay', 'Nalaka', 'Dawas'], correctAnswer: 'Talna'),
  Question(question: "What does 'Bannawag' mean in Ilocano?", options: ['Dawn', 'Noon', 'Afternoon', 'Evening'], correctAnswer: 'Dawn'),
  Question(question: "Which Ilocano word means 'house'?", options: ['Balay', 'Kawayan', 'Kalap', 'Tugot'], correctAnswer: 'Balay'),
  Question(question: "How do you say 'window' in Ilocano?", options: ['Bintana', 'Salamin', 'Sukang', 'Pagdaraanan'], correctAnswer: 'Bintana'),
  Question(question: "What is 'Nalinteg' in Ilocano?", options: ['Hard', 'Soft', 'Straight', 'Wide'], correctAnswer: 'Straight'),
  Question(question: "How do you say 'to rest' in Ilocano?", options: ['Agur-uray', 'Agnanayun', 'Agpagrip', 'Agturog'], correctAnswer: 'Agpagrip'),
  Question(question: "What does 'Ilocano' refer to?", options: ['A dance', 'A language', 'A dish', 'A festival'], correctAnswer: 'A language'),
  Question(question: "How do you say 'sun' in Ilocano?", options: ['Init', 'Langit', 'Araw', 'Bituin'], correctAnswer: 'Araw'),
  Question(question: "What is the term for 'friend' in Ilocano?", options: ['Kaibigan', 'Ading', 'Amigo', 'Kabsat'], correctAnswer: 'Kabsat'),
  Question(question: "What does 'Banag' mean in Ilocano?", options: ['Dust', 'Wind', 'Fog', 'Mud'], correctAnswer: 'Dust'),
  Question(question: "How do you say 'to run' in Ilocano?", options: ['Agtaray', 'Agdaliasat', 'Agbaskug', 'Agparta'], correctAnswer: 'Agtaray'),
  Question(question: "What is the Ilocano word for 'star'?", options: ['Bitúen', 'Tala', 'Silaw', 'Langit'], correctAnswer: 'Bitúen'),
  Question(question: "How do you say 'afternoon' in Ilocano?", options: ['Malem', 'Rabi-i', 'Bigat', 'Aldaw'], correctAnswer: 'Malem'),
  Question(question: "What is the Ilocano word for 'lightning'?", options: ['Kilat', 'Silaw', 'Apuy', 'Talaw'], correctAnswer: 'Kilat'),
  Question(question: "How do you say 'forest' in Ilocano?", options: ['Kagubatan', 'Kayo', 'Gubat', 'Ban-aw'], correctAnswer: 'Kagubatan'),
  Question(question: "What does 'Nagyaman' mean in Ilocano?", options: ['To help', 'To give thanks', 'To laugh', 'To shout'], correctAnswer: 'To give thanks'),
  Question(question: "Which word refers to 'waterfall' in Ilocano?", options: ['Danum', 'Bantay', 'Takki', 'Talon'], correctAnswer: 'Talon'),
  Question(question: "What is the Ilocano word for 'cloud'?", options: ['Ulap', 'Awan', 'Bituin', 'Apo'], correctAnswer: 'Awan'),
  Question(question: "How do you say 'sibling' in Ilocano?", options: ['Kabsat', 'Ading', 'Tata', 'Manang'], correctAnswer: 'Kabsat'),
  Question(question: "What does 'Amianan' mean in Ilocano?", options: ['North', 'South', 'East', 'West'], correctAnswer: 'North'),
  Question(question: "How do you say 'to clean' in Ilocano?", options: ['Agdalus', 'Agpatakder', 'Agpagawid', 'Agbaybay'], correctAnswer: 'Agdalus'),
  Question(question: "Which Ilocano word means 'kitchen'?", options: ['Dulang', 'Bahay', 'Paglutuan', 'Kusina'], correctAnswer: 'Kusina'),
  Question(question: "What is 'Kalesa' in Ilocano?", options: ['Carriage', 'Car', 'Boat', 'Bus'], correctAnswer: 'Carriage'),
  Question(question: "How do you say 'to cry' in Ilocano?", options: ['Agbiag', 'Agdaydayaw', 'Agkawes', 'Agladingit'], correctAnswer: 'Agladingit'),
  Question(question: "What does 'Naimbag nga aldaw' mean in Ilocano?", options: ['Good morning', 'Good night', 'Good afternoon', 'Good day'], correctAnswer: 'Good day'),
  Question(question: "How do you say 'feast' in Ilocano?", options: ['Pista', 'Pagna', 'Tulong', 'Agsagana'], correctAnswer: 'Pista'),
  Question(question: "What is 'Pandagdag' in Ilocano?", options: ['Extra', 'Aid', 'To add', 'Help'], correctAnswer: 'Extra'),
  Question(question: "How do you say 'flower' in Ilocano?", options: ['Rosal', 'Bulaklak', 'Sabong', 'Dama'], correctAnswer: 'Sabong'),
  Question(question: "What does 'Talna' mean in Ilocano?", options: ['Peace', 'Joy', 'Strength', 'Anger'], correctAnswer: 'Peace'),
  Question(question: "Which Ilocano word means 'rainbow'?", options: ['Uray', 'Sapsap', 'Balangaw', 'Banag'], correctAnswer: 'Balangaw'),
  Question(question: "How do you say 'to swim' in Ilocano?", options: ['Agtaray', 'Aglangoy', 'Agpagsana', 'Agmulaan'], correctAnswer: 'Aglangoy'),
  Question(question: "What is 'Napudot' in Ilocano?", options: ['Cold', 'Hot', 'Rainy', 'Sunny'], correctAnswer: 'Hot'),
  Question(question: "How do you say 'street' in Ilocano?", options: ['Dalan', 'Kalsada', 'Bantay', 'Aldaw'], correctAnswer: 'Dalan'),
  Question(question: "What does 'Naimbag a rabii' mean in Ilocano?", options: ['Good morning', 'Good night', 'Good afternoon', 'Good day'], correctAnswer: 'Good night'),
  Question(question: "How do you say 'king' in Ilocano?", options: ['Ari', 'Apo', 'Ginoo', 'Tagalog'], correctAnswer: 'Ari'),
  Question(question: "What is the Ilocano word for 'rice'?", options: ['Bagas', 'Kanen', 'Tubig', 'Tanem'], correctAnswer: 'Bagas'),
  Question(question: "How do you say 'to rest' in Ilocano?", options: ['Agpagnanayun', 'Agdaun', 'Agururay', 'Agturog'], correctAnswer: 'Agdaun'),
  Question(question: "What does 'Agpakada' mean in Ilocano?", options: ['To leave', 'To enter', 'To stay', 'To rest'], correctAnswer: 'To leave'),
  Question(question: "How do you say 'hand' in Ilocano?", options: ['Kamay', 'Suli', 'Lima', 'Matagtag'], correctAnswer: 'Lima'),
  Question(question: "What is the Ilocano word for 'table'?", options: ['Lamesa', 'Dulang', 'Paglutuan', 'Silong'], correctAnswer: 'Dulang'),
  Question(question: "How do you say 'to cook' in Ilocano?", options: ['Agluto', 'Agbiag', 'Agpatakder', 'Agdalus'], correctAnswer: 'Agluto'),
  Question(question: "What does 'Agsublingaw' mean in Ilocano?", options: ['To return', 'To listen', 'To jump', 'To cry'], correctAnswer: 'To return'),
  Question(question: "How do you say 'market' in Ilocano?", options: ['Palengke', 'Tabuan', 'Bantay', 'Talon'], correctAnswer: 'Palengke'),
  Question(question: "Which word refers to 'peace' in Ilocano?", options: ['Kalma', 'Talna', 'Sukto', 'Matina'], correctAnswer: 'Talna'),
  Question(question: "How do you say 'fruit' in Ilocano?", options: ['Bunga', 'Balat', 'Prutas', 'Kanen'], correctAnswer: 'Bunga'),
  Question(question: "What is 'Pagay' in Ilocano?", options: ['Rice plant', 'Corn', 'Banana', 'Mango'], correctAnswer: 'Rice plant'),
  Question(question: "How do you say 'window' in Ilocano?", options: ['Bintana', 'Salamin', 'Durungawan', 'Aksaya'], correctAnswer: 'Durungawan'),
  Question(question: "What does 'Tugaw' mean in Ilocano?", options: ['Chair', 'Table', 'Floor', 'Wall'], correctAnswer: 'Chair'),
];


// Function to get a random selection of 10 questions from a category
List<Question> getRandomQuestions(String category) {
  List<Question> questions;
  if (category == 'Pangasinense') {
    questions = List.from(_pangasinenseQuestions)..shuffle();
  } else {
    questions = List.from(_ilocanoQuestions)..shuffle();
  }
  return questions.take(10).toList();
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Show the language selection dialog automatically
    Future.delayed(Duration.zero, () {
      _showLanguageSelectionDialog(context);
    });
  }

  void _showLanguageSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            backgroundColor: Color(0xFF1F2A44),
            title: Center(
              child: Text(
                'Select Language',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildLanguageButton(
                  context,
                  label: 'Pangasinense',
                  color1: Color(0xFF1E3C72),
                  color2: Color(0xFF2A5298),
                  icon: Icons.language,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(category: 'Pangasinense'),
                      ),
                    );
                  },
                ),
                SizedBox(height: 12),
                _buildLanguageButton(
                  context,
                  label: 'Ilocano',
                  color1: Colors.lightGreen,
                  color2: Colors.green,
                  icon: Icons.language,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(category: 'Ilocano'),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                Divider(color: Colors.white54),
                _buildLanguageButton(
                  context,
                  label: 'Cancel',
                  color1: Colors.redAccent,
                  color2: Colors.red,
                  icon: Icons.cancel,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SmartHomeApp(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Enhanced button with gradient background
  Widget _buildLanguageButton(
      BuildContext context, {
        required String label,
        required Color color1,
        required Color color2,
        required IconData icon,
        required VoidCallback onTap,
      }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: color2.withOpacity(0.5),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final String category;

  QuizScreen({required this.category});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with SingleTickerProviderStateMixin {
  late List<Question> _questions;
  late int _currentQuestionIndex;
  late Timer _timer;
  int _remainingTime = 30; // Total quiz time is 30 seconds
  int _correctCount = 0;
  int _wrongCount = 0;
  bool _quizCompleted = false;
  bool _showCorrectAnswer = false;
  String? _selectedAnswer;

  late AnimationController _animationController;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _questions = getRandomQuestions(widget.category);
    _currentQuestionIndex = 0;
    _startTimer();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _shakeAnimation = Tween<double>(begin: -5, end: 5).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticIn),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      }
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
          _showEndModal(true); // Show modal when total time is up
        }
      });
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedAnswer = null;
        _showCorrectAnswer = false;
      });
    } else {
      _quizCompleted = true;
      _timer.cancel();
      _showEndModal(false); // Show modal when the quiz is complete
    }
  }

  void _answerQuestion(String answer) {
    if (_quizCompleted || _selectedAnswer != null) return;

    setState(() {
      _selectedAnswer = answer;
    });

    if (answer == _questions[_currentQuestionIndex].correctAnswer) {
      setState(() {
        _correctCount++;
      });
      _showSnackbar("Correct!", Colors.green);

      // Add a delay before proceeding to the next question
      Future.delayed(Duration(seconds: 1), () {
        _nextQuestion();
      });
    } else {
      setState(() {
        _wrongCount++;
        _showCorrectAnswer = true;
      });
      _showSnackbar("Try Again! Correct answer: ${_questions[_currentQuestionIndex].correctAnswer}", Colors.red);
      _animationController.forward(); // Start shake animation

      // Show correct answer in green briefly
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _showCorrectAnswer = false;
        });
        _nextQuestion();
      });
    }
  }

  void _showSnackbar(String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(milliseconds: 500),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showEndModal(bool isTimeUp) {
    if (!_showCorrectAnswer) {
      showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Colors.black54,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text(isTimeUp ? "Time's Up!" : "Quiz Completed!"),
              content: Text("You have completed the quiz. Your score is ${(_correctCount / _questions.length * 100).toInt()}%"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => ScoreScreen(
                          score: (_correctCount / _questions.length * 100).toInt(),
                          totalQuestions: _questions.length,
                          correctAnswers: _correctCount,
                          wrongAnswers: _wrongCount,
                        ),
                      ),
                    );
                  },
                  child: Text("View Score"),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2A5298), Color(0xFF1E3C72)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),

                // Progress Bar
                LinearProgressIndicator(
                  value: (_currentQuestionIndex + 1) / _questions.length,
                  backgroundColor: Colors.white12,
                  color: Colors.blueAccent,
                ),
                SizedBox(height: 20),

                // Enhanced Score Display with Icons
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            "Correct: $_correctCount",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.cancel, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            "Wrong: $_wrongCount",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Divider(color: Colors.white54),
                      SizedBox(height: 12),
                      Text(
                        'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                // Timer Display
                _buildTimer(),

                // Question Card with Options
                Expanded(
                  child: Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    color: Colors.white.withOpacity(0.1),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          // Question Text
                          Center(
                            child: Text(
                              currentQuestion.question,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(color: Colors.black.withOpacity(0.6), offset: Offset(2, 2), blurRadius: 4)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25),

                          // Options Buttons with Animated Feedback
                          ...currentQuestion.options.map((option) {
                            bool isCorrect = _showCorrectAnswer && option == currentQuestion.correctAnswer;
                            bool isSelected = _selectedAnswer == option;
                            return AnimatedBuilder(
                              animation: _shakeAnimation,
                              builder: (context, child) => Transform.translate(
                                offset: isSelected ? Offset(_shakeAnimation.value, 0) : Offset(0, 0),
                                child: GestureDetector(
                                  onTap: () => _answerQuestion(option),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                    margin: EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                      color: isCorrect ? Colors.green : (isSelected ? Colors.blueAccent : Colors.blue[500]),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        option,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Updated Timer Widget with Progress
  Widget _buildTimer() {
    // Calculate the remaining time as a percentage (for progress bar)
    double timeProgress = _remainingTime / 30.0;

    // Set the color based on how much time is left
    Color timerTextColor = Colors.white70;
    if (_remainingTime <= 5) {
      timerTextColor = Colors.red; // Red when time is running out
    } else if (_remainingTime <= 10) {
      timerTextColor = Colors.yellow; // Yellow when getting close to 10 seconds
    } else {
      timerTextColor = Colors.green; // Green when plenty of time is left
    }

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circular Progress Indicator
          CircularProgressIndicator(
            value: timeProgress,
            backgroundColor: Colors.white24,
            valueColor: AlwaysStoppedAnimation<Color>(timerTextColor),
            strokeWidth: 8, // Adjust the thickness of the progress indicator
          ),
          SizedBox(height: 15),
          // Timer Text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.timer, color: timerTextColor, size: 30),
              SizedBox(width: 10),
              Text(
                'Time Left: $_remainingTime s',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: timerTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

