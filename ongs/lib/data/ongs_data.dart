import '../model/ong.dart';

final List<Ong> ongs = <Ong>[
  Ong(
    nome: 'Greenpeace',
    descricao: 'O Greenpeace é uma organização ambiental que existe porque o planeta e seus ecossistema precisam de quem os defendam. Estamos no Brasil há mais de 30 anos denunciando e confrontando governos, empresas e projetos que incententivam a destruição da Amazônia e ameaçam o clima global.   ',
    cidade: 'São Paulo',
    contato:{
      'site': 'https://greenpeace.org',
      'email': 'contato.br@greenpeace',
      'instagram': '@greenpeace',
    },
    logoPath: "assets/images/gplogo.jpg",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: 'https://example.com/ecovida.jpg',
  ),
  Ong(
    nome: 'WWF Brasil',
    descricao: 'A WWF  é vista como uma das organizações mais relevantes na defesa do meio ambiente. Ela atua na proteção da biodiversidade cuidando de espécies ameaçadas e ecossistemas frágeis. Também promovem o uso sustentável de recursos naturais buscando um equilibril entre desenvolvimento e conservação',
    cidade: 'Brasilia',
    contato: {
      'site': 'https://www.wwwf.org.br',
      'email': 'relacionamento@wwf.org.br',
      'instagram': '@wwfbrasil',
    },
    logoPath: "assets/images/wwf.jpg",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: '',
  ),
  Ong(
    nome: 'Zoé',
    descricao: 'A ONG Zoé atua nas regiões remotas da Amazônia, oferecendo saúde e apoio a comunidades indíngenas e ribeirías. Com expedições, parceirias com barcos hospitais e transparência, a Zoé leva atendimento médico de qualidade para quem mais precisa.',
    cidade: 'São Paulo',
    contato: {
      'site': 'https://ongzoe.org',
      'email': 'contato@ongzoe.org',
      'instagram': 'https://www.instagram.com/ongzoe.oficial/',
      
    },
    logoPath: "assets/images/zoe.png",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: '',
  ),
   Ong(
    nome: 'Instituto Terra',
    descricao: 'O Instituto Terra é uma onganização não governamental que atua como centro de recuperação ambiental com a sede no município brasileiro de Aimorés, no estado de Minas Gerais. A organização administra nesse município a Reserva Particular do Patrimônio Natural(RPPN). ',
    cidade: 'Minas Gerais',
    contato: {
      'site': 'https://refloresta.institutoterra.org',
      'email': 'iterra@isntitutoterra.org',
      'instagram': '@institutoterraoficial',
    },
    logoPath: "assets/images/terra.jpg",
    siteIcon: 'assets/icons/site.jpg',
    emailIcon: 'assets/icons/email.png',
    instaIcon: 'assets/icons/insta.png',
    imageUrl: '',
  ),
];
