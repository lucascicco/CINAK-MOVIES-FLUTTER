import 'package:flutter/material.dart';

import './models/category.dart';
import './models/movie.dart';

const MOVIE_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Ação e Aventura',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Comédia',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Documentário',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Drama',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Fantasia',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Fiçção científica',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Musical',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Romance',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Suspense',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Terror',
    color: Colors.teal,
  ),
];

const DUMMY_MOVIES = const [
  Movie(
      id: 'm1',
      categories: ['c1', 'c5', 'c6'],
      title: '	Pantera Negra',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/2/28/Black_Panther_2018.jpg',
      duration: 134,
      actors: [
        'Chadwick Boseman',
        'Michael B. Jordan',
        "Lupita Nyong",
        'Letitia Wright',
        'Martin Freeman',
        'Daniel Kaluuya',
        'Angela Bassett'
      ],
      age: 14,
      description:
          "Pantera Negrar é um filme de super-herói estadunidense de 2018, baseado no personagem de mesmo nome da Marvel Comics, produzido pela Marvel Studios e distribuído pela Walt Disney Studios Motion Pictures, sendo o décimo oitavo filme do Universo Cinematográfico Marvel, além de ser o primeiro título solo do personagem. Dirigido por Ryan Coogler, que também contribuiu com o roteiro ao lado de Joe Robert Cole, é estrelado por Chadwick Boseman como T'Challa / Pantera Negra, Michael B. Jordan, Lupita Nyong'o, Martin Freeman, Daniel Kaluuya, Angela Bassett, Danai Gurira, Andy Serkis e Forest Whitaker. Em Black Panther, T'Challa volta a casa como rei de Wakanda, mas encontra sua soberania desafiada por um adversário de longa data em um conflito que tem consequências globais."),
  Movie(
      id: 'm2',
      categories: ['c1', 'c5', 'c6'],
      title: 'Vingadores: Ultimato 2019',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/9/9b/Avengers_Endgame.jpg',
      duration: 181,
      actors: [
        'Robert Downey Jr',
        'Chris Evans',
        'Mark Ruffalo',
        'Chris Hemsworth',
        'Scarlett Johansson',
        'Jeremy Renner',
        'Don Cheadle',
        'Paul Rudd',
        'Brie Larson',
        'Karen Gillan',
        'Danai Gurira',
        'Benedict Wong',
        'Jon Favreau',
        'Bradley Cooper',
        'Gwyneth Paltrow',
        'Josh Brolin'
      ],
      age: 12,
      description:
          "Os Vingadores é um filme de super-herói estadunidense de 2019, baseado na equipe Os Vingadores da Marvel Comics, produzido pela Marvel Studios e distribuído pela Walt Disney Studios Motion Pictures, sendo a sequência de The Avengers, de 2012, Avengers: Age of Ultron, de 2015, e Avengers: Infinity War, de 2018, e o vigésimo segundo filme do Universo Cinematográfico Marvel. Dirigido por Anthony e Joe Russo e escrito por Christopher Markus e Stephen McFelly, o filme apresenta um ensemble cast que inclui Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Bradley Cooper e Josh Brolin. No filme, os membros sobreviventes dos Vingadores e seus aliados trabalham para reverter os danos causados por Thanos em Infinity War."),
  Movie(
      id: 'm3',
      categories: ['c1', 'c6', 'c9', 'c10'],
      title: 'Nós',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/4/43/Us_2019_-_P%C3%B4ster.jpg',
      duration: 116,
      age: 16,
      actors: [
        "Lupita Nyong'o",
        'Winston Duke',
        'Elisabeth Moss',
        'Tim Heidecker',
        'Yahya Abdul Mateen II',
        'Anna Diop',
        'Evan Alex',
        'Shahadi Wright-Joseph',
        'Cali Sheldon',
        'Noelle Sheldon',
      ],
      description:
          "Vem do diretor Jordan Peele (de Corra!) o terceiro filme mais bem avaliado pelo público. Nós conta a história de uma família que viaja ao litoral de férias. O lugar, porém, traz lembranças traumáticas para a mãe, Adelaide (Lupita Nyong’o): quando ela era pequena, viu uma menina exatamente igual a ela. O que parecia apenas imaginação fértil prova-se verdade. Não só o clone de Adelaide aparece na casa, mas também de seu marido e de seus dois filhos. As versões obscuras dos personagens são meios de criticar a exclusão."),
  Movie(
      id: 'm4',
      categories: ['c1', 'c2'],
      title: 'Toy Story 4',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/4/4c/Toy_Story_4_poster.jpg',
      duration: 100,
      actors: [
        'Tom Hanks',
        'Tim Allen',
        'Annie Potts',
        'Joan Cusack',
        'Kristen Schaal',
        'Don Rickles',
        'Estelle Harris',
        'Keanu Reeves',
        'Wallace Shawn',
        'Blake Clark',
        'John Ratzenberger',
      ],
      age: 10,
      description:
          "Toy Story 4 é um filme de animação de aventura e comédia estadunidense de 2019, dirigido por Josh Cooley e escrito por Stephany Folsom e Andrew Stanton, este último tendo co-escrito o roteiro dos três primeiros filmes da série, baseado em uma historia concebida também pelos três ao lado de John Lasseter, que dirigiu os dois primeiros títulos, sendo a sequência de Toy Story 3 e o quarto e último filme da franquia Toy Story. Produzido pela Walt Disney Pictures e Pixar Animation Studios e distribuído pela Walt Disney Studios Motion Pictures, a produção conta com as vozes de Tom Hanks, Tim Allen, Annie Potts, Joan Cusack, Wallace Shawn, John Ratzenberger, Don Rickles, Estelle Harris, Jodi Benson, Michael Keaton, Kristen Schaal, Blake Clark, Jeff Pidgeon, Timothy Dalton, Bonnie Hunt, Lori Alan e Laurie Metcalf, que reprisam seus papeis dos filmes anteriores da franquia, enquanto Tony Hale, Keegan-Michael Key, Jordan Peele, Keanu Reeves e Madeleine McGraw fazem suas estreias na franquia."),
  Movie(
      id: 'm5',
      categories: [
        'c4',
        'c7',
        'c8',
      ],
      title: 'Lady Bird',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/pt/6/65/Lady_Bird.jpeg',
      duration: 93,
      actors: [
        'Saoirse Ronan',
        'Laurie Metcalf',
        'Tracy Letts',
        'Lucas Hedges',
        'Timothée Chalamet',
        'Beanie Feldstein',
        'Stephen McKinley Henderson',
        'Lois Smith'
      ],
      age: 14,
      description:
          "Christine McPherson está no último ano do colégio e o que mais deseja é fazer faculdade longe de Sacramento, Califórnia, ideia rejeitada por sua mãe. Lady Bird, como a garota de forte personalidade exige ser chamada, não se dá por vencida e leva o plano de ir embora adiante mesmo assim. Enquanto a hora não chega, ela se divide entre as obrigações estudantis no colégio católico, o primeiro namoro, típicos rituais de passagem para a vida adulta e inúmeros desentendimentos com a progenitora."),
  Movie(
      id: 'm6',
      categories: [
        'c7',
        'c5',
      ],
      title: 'O Mágico de Oz',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Wizard_of_oz_movie_poster.jpg/365px-Wizard_of_oz_movie_poster.jpg',
      duration: 101,
      actors: [
        'Judy Garland',
        'Frank Morgan',
        'Ray Bolger',
        'Jack Haley',
        'Bert Lahr',
      ],
      age: 10,
      description:
          "O Mágico de Oz é um filme norte-americano, dos gêneros fantasia, musical de família, lançado em 1939 pela Metro-Goldwyn-Mayer, baseado no livro The Wonderful Wizard of Oz de L. Frank Baum. Dirigido parcialmente por Victor Fleming (que deixou a produção para dirigir Gone with the Wind), com a produção de Mervyn LeRoy e roteiro escrito pelo trio: Noel Langley, Florence Ryerson e Edgar Allan Woolf. Contando com as atuações de Judy Garaland, Frank Morgan, Ray Bolger, Bert Lahr, Jack Haley, Billie Burk, Margaret Hamilton e Charley Grapewin que estrelam este filme que conta a história de uma garota órfã chamada Dorothy Gale que após entrar em um ciclone viaja para a Terra de Oz e tenta achar o caminho de volta para sua casa."),
  Movie(
      id: 'm7',
      categories: ['c1', 'c3', 'c5'],
      title: 'O Irlandês',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/d/da/The_Irishman_p%C3%B4ster.png',
      duration: 209,
      actors: [
        'Robert De Niro',
        'Al Pacino',
        ' Joe Pesci',
        'Harvey Keitel',
        'Ray Romano',
        'Bobby Cannavale',
        'Stephen Graham',
      ],
      age: 16,
      description:
          "O Irlandês é um filme americano de 2019, do gênero drama biográfico-policial, dirigido por Martin Scorsese, com roteiro de Steven Zaillian baseado no livro de memórias I Heard You Paint Houses, do investigador e advogado Charles Brandt. The Irishman relata a história de Frank 'The Irishman' Sheeran, sindicalista ligado ao crime organizado que, pouco antes de morrer, em 2003, confessou ter assassinado o líder sindical Jimmy Hoffa, desaparecido em 1975. Estrelado por Robert De Niro, Al Pacino e Joe Pesci, o filme segue a história de Sheeran enquanto ele relata seus supostos trabalhos como mercenário para a família criminosa Bufalino. É a nona colaboração entre De Niro e Scorsese, sendo a primeira desde Casino, em 1995; o quarto filme a estrelar De Niro e Pacino (após The Godfather Part II, Heat e Righteous Kill); o quinto a estrelar De Niro e Pesci (após Raging Bull, Once Upon a Time in America, Goodfellas e Casino); o primeiro a estrelar Pacino e Pesci juntos; e a primeira vez em que Scorsese dirige Pacino."),
  Movie(
      id: 'm8',
      categories: ['c9', 'c1', 'c4', 'c3'],
      title: 'Infiltrado na Klan',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/d/d5/BlacKkKlansman.png',
      duration: 135,
      actors: [
        'John David Washington',
        'Adam Driver',
        'Laura Harrier',
        'Topher Grace',
      ],
      age: 14,
      description:
          "Infiltrado na Klan é um filme estadunidense de 2018, dos gêneros drama biográfico-policial e suspense, dirigido por Spike Lee, com roteiro dele, Charlie Wachtel, David Rabinowitz e Kevin Wilmott baseado no livro autobiográfico Black Klansman: Race, Hate, and the Undercover Investigation of a Lifetime, de Ron Stallworth. Estrelado por John David Washington, Adam Driver, Laura Harrier e Topher Grace, o filme tem sua trama ambientada no Colorado em 1972, e conta a história dum detetive afro-americano que se infiltra na Ku Klux Klan para expor seus crimes."),
  Movie(
      id: 'm9',
      categories: [
        'c10',
        'c9',
      ],
      title: 'Corra!',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/pt/0/02/Get_Out_2017.png',
      duration: 103,
      actors: [
        'Daniel Kaluuya',
        'Allison Williams',
        'Bradley Whitford',
        'Caleb Landry Jones',
        'Stephen Root',
        'Lakeith Stanfield',
        'Catherine Keener'
      ],
      age: 14,
      description:
          "Mais um do Jordan Peele - e, agora, o filme que o lançou na carreira de diretor. Em Corra!, Chris, um jovem negro, vai conhecer a família da namorada branca, Rose. Eles vão passar o fim de semana na casa de campo dos pais da jovem, que, a princípio, parecem simpáticos, mas que em breve se revelam estranhos e racistas. Com forte crítica ao racismo, Corra! levou o Oscar de melhor roteiro original, escrito por Peele."),
  Movie(
      id: 'm10',
      categories: ['c1', 'c8', 'c3'],
      title: 'Casablanca',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Wizard_of_oz_movie_poster.jpg/365px-Wizard_of_oz_movie_poster.jpghttps://upload.wikimedia.org/wikipedia/pt/e/e4/Casablanca-P%C3%B4ster.jpg',
      duration: 102,
      actors: [
        'Humphrey Bogart',
        'Ingrid Bergman',
        'Paul Henreid',
        'Claude Rains',
        'Conrad Veidt',
        'Sydney Greenstreet',
        'Peter Lorre'
      ],
      age: 12,
      description:
          "Mais um clássico que quebra um ranking bem moderno! Vencedor de três Oscar (melhor filme, direção e roteiro), o filme se passa em Casablanca, no Marrocos, durante a Segunda Guerra Mundial. O americano Rick comanda a casa noturna de maior sucesso na cidade. Em uma noite, ele se vê diante de um grande dilema: ajudar, ou não, sua ex-amante e o atual marido dela a fugirem do Marrocos."),
];
