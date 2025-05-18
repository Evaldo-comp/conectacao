import '../model/ong.dart';

final List<Ong> ongs = <Ong>[
  Ong(
    nome: 'EcoVida',
    descricao: 'Promove reflorestamento e educação ambiental.',
    cidade: 'São Paulo',
    contato: {
      'site': 'https://ecovida.org',
      'email': 'contato@ecovida.org',
      'instagram': '@ecovida',
    },
    logoPath: "assets/images/gplogo.jpg",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: 'https://example.com/ecovida.jpg',
  ),
  Ong(
    nome: 'Ong dos Ouriços elétricos',
    descricao: 'Institutição que ajuda os humildes especies de ouriços eletricos.',
    cidade: 'São Paulo',
    contato: {
      'site': 'https://ecovida.org',
      'email': 'contato@ecovida.org',
      'instagram': '@ecovida',
    },
    logoPath: "assets/icons/email.png",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: 'https://example.com/ouricos.jpg',
  ),
  
];
