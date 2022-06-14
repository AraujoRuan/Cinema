class Filme{
  String nome;
  String imageUrl;
  String descricao;
  String id;
  int classificacao;
  double data;


  Filme({
    required this.nome,
    required this.imageUrl,
    required this.descricao,
    required this.data,
    required this.classificacao,
    required this.id
  });
}
  var Filmes = [
   Filme(
      nome: "Dr Estranho no Multiverso da Loucura ",
      imageUrl: "assets/images/drestranho.jpg",
      data:05/05/2022,
      classificacao:12,
      descricao: "Após sua carreira ser destruída, um brilhante, porém arrogante, cirurgião ganha uma nova chance em sua vida quando um feiticeiro o treina para se tornar o Mago Supremo",
      id: "1"),
   Filme(
      nome: "Homem-Aranha sem volta ao lar ",
      imageUrl: "assets/images/homemaranha.jpg",
      data:16/12/2021,
      classificacao: 12,
      descricao: "Em Homem-Aranha: Sem Volta para Casa, Peter Parker (Tom Holland) precisará lidar com as consequências da sua identidade como o herói mais querido do mundo após ter sido revelada pela reportagem do Clarim Diário, com uma gravação feita por Mysterio (Jake Gyllenhaal) no filme anterior. Incapaz de separar sua vida normal das aventuras de ser um super-herói, além de ter sua reputação arruinada por acharem que foi ele quem matou Mysterio e pondo em risco seus entes mais queridos, Parker pede ao Doutor Estranho (Benedict Cumberbatch) para que todos esqueçam sua verdadeira identidade. Entretanto, o feitiço não sai como planejado e a situação torna-se ainda mais perigosa quando vilões de outras versões de Homem-Aranha de outro universos acabam indo para seu mundo. Agora, Peter não só deter vilões de suas outras versões e fazer com que eles voltem para seu universo original, mas também aprender que, com grandes poderes vem grandes responsabilidades como herói.",
      id: "2"),
   Filme(
      nome: "Venom Tempo de Carnificina",
      imageUrl: "assets/images/venom.jpg",
      data:07/10/2021,
      classificacao: 12,
      descricao: "1996. O jovem - prestes a se tornar um serial killer - Cletus Kasady e sua namorada Frances Barrison estão sendo levados por policiais para um instituto contra a vontade deles. Mas ambos possuem dois symbiontes que os ajudam a fugir do local. Agora, no tempo presente, um ano após os acontecimentos de Venom (2018), Eddie Brock  e o symbionte Venom estão tendo dificuldades em se acostumar um com o outro. Eddie está tentando voltar com sua carreira como jornalista e para sua sorte, um detetive o aborda para entrevistar Kasady, agora preso e indo para o corredor da morte, que só quer dar entrevista se for com Eddie. Após a entrevista, Eddie e Venom acabam levando fama ao descobrirem mais das vítimas de Kasady antes que ele seja levado para a injeção da morte. Mas, no dia em que Kasady iria pagar por seus crimes, sua execução falha e seu symbionte Carnage o faz escapar da prisão. Agora, Carange e Kasady estão atrás de Venom e Eddie",
      id: "3"),
];