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
];
