import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CustonLinhaSmall extends StatelessWidget {
  String texto;
  String sigla;
  String cor;
  CustonLinhaSmall({
    Key? key,
    required this.texto,
    required this.sigla,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sigla,
            style: cor == '1'
                ? TextStyle(
                    color: Theme.of(context).canvasColor,
                    fontWeight: FontWeight.bold)
                : TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            texto,
            style: cor == '1'
                ? TextStyle(color: Theme.of(context).canvasColor)
                : null,
          ),
        ],
      ),
    );
  }
}

class CustonLinha extends StatelessWidget {
  String texto;
  String sigla;
  String cor;
  CustonLinha({
    Key? key,
    required this.texto,
    required this.sigla,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50, top: 7, bottom: 7),
      width: MediaQuery.of(context).size.width / 1.8,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Expanded(
              child: Text(
                sigla,
                style: cor == '1'
                    ? TextStyle(color: Theme.of(context).canvasColor)
                    : null,
              ),
            ),
          ),
          Expanded(
            child: Text(
              texto,
              style: cor == '1'
                  ? TextStyle(color: Theme.of(context).canvasColor)
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class SmallExplicacao extends StatelessWidget {
  SmallExplicacao({Key? key}) : super(key: key);
  List<List<String>> list1 = [
    [
      'Qo',
      'Radia????o Solar di??ria no topo da atmosfera - Evapora????o Equivalente no 15o dia do m??s correspondente',
      '0'
    ],
    ['T', 'Temperatura - oC', '1'],
    ['P', 'Precipita????o - mm ', '1'],
    ['ETP', 'Evapotranspira????o Potencial - mm (mil??metros)', '1'],
    [
      'Kc',
      'Coeficiente de cultura - Varia de acordo com as fases fenol??gicas da cultura( ?? fun????o do IAF-??ndica de ??rea Foliar)',
      '1'
    ],
    [
      'CAD',
      'Capacidade de ??gua Dispon??vel - ( do solo pode ser calculado com CAD=0,01x(CC%-PM%)xDxZ, em que : CC% = Capacidade\nde Campo, PM%= Ponto de murcha permanente,D=Densidade Aparente do Solo,Z=Profundidade do Sistema Radicular)',
      '1'
    ],
    ['GDi', 'Graus-Dia - do per??odo(GDi=(Tm??dida-Tbase da cultura))', '1'],
    ['??GDi', 'Somat??rio de Graus-Dia', '0'],
    ['Etm', 'Evapotranspira????o m??xima da Cultura', '0'],
    ['?? CAD', 'Varia????o da CAD', '0'],
    [
      'Neg-Acumulado',
      'Soma dos Negativos Acumulados de P-ETm (A coluna Tempor??rio s?? e utilizada para os c??culos.)',
      '0'
    ],
    [
      'ARM',
      'Armazenamento de ??gua nas plantas (A coluna Tempor??rio s?? ?? utilizada para os c??culos)',
      '0'
    ],
    ['ALT', 'Altera????o do Armazenamento', '0'],
    ['ETa', 'Evapotranspira????o Atual ou Real', '0'],
    ['DEF', 'Defici??ncia H??drica da Cultura', '0'],
    ['EXC', 'Excedente H??drico da Cultura', '0'],
  ];
  List<List<String>> list2 = [
    ['ETa/ETm', 'Evapotranspira????o Relativa', '0'],
    [
      'Ky',
      'Fator de Resposta da Cultura - Deduzido para diferentes culturas de acordo com a fase fenol??gica',
      '1'
    ],
    ['1-(ETa/ETm)', 'D??ficit de Evapotranspira????o Relativa', '0'],
  ];
  List<List<String>> list3 = [
    [
      'a & b',
      'Coeficientes para o c??lculo da Rad. Global (Rs = ( a+bxn / N )xQo. { Caso desconheca utilize vlrs M??dios : a=0,25 b=0,50 }',
      '1'
    ],
    ['N', 'Fotoper??odo em horas', '0'],
    ['n', 'N??mero de Horas de Brilho Solar', '1'],
    ['IAF', '??ndice de ??rea Foliar', '1'],
    [
      'Yo',
      'Taxa de produ????o de mat??ria seca m??xima de uma cultura para um dado local e dia nublado(p/temperaturas padronizadas). kg/ha.dia',
      '0'
    ],
    [
      'Yc',
      'Taxa de produ????o de mat??ria seca m??xima de uma cultura para um dado local e dia claro(p/ temperaturas padronizadas). kg/ha.dia',
      '0'
    ],
    ['CTO', 'Fator de corre????o para dias nublados', '0'],
    ['CTC', 'Fator de corre????o para dias Claros', '0'],
    [
      'Rse',
      'Disponibilidade M??xima de radia????o fotossinteticamente ativa em dias limpos. cal/cm2.dia',
      '0'
    ],
    ['Qg', 'Radia????o Global (cal/cm2.dia)', '0'],
    [
      'F',
      'Fator de corre????o correspondente a fra????o de energia dispon??vel',
      '0'
    ],
    ['cH', 'Corre????o ou ??ndice de colheita', '0'],
    ['cL', 'Corre????o da fotoss??ntese em fun????o da superf??cie foliar', '0'],
    ['cN', 'Corre????o para efeitos de temperatura na taxa de respira????o', '0'],
    ['Yp', 'Produtividade Potencial - Kg/ha.per??odo', '0'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'Instru????es Gerais',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0),
            width: MediaQuery.of(context).size.width / 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                    'Preencha os dados necess??rios na telas de Dados iniciais e Dados do clima'),
                const Text(
                    'Todos os c??lculos s??o dependentes do preenchimento correto dos dados para o c??lculo do Balan??o H??drico'),
                const SizedBox(height: 20),
                Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Divider()),
                const Text(
                  'Verifique o valor do grupo de culturas adequado\n(Temp=oC)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      'Grupo 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(' - '),
                    Expanded(
                      child: Text(
                        'Plantas C3 de Inverno : Feij??o, Repolho, Gr??o de Bico,ervilha, Bata e Trigo ...(3<Temp<30)',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      'Grupo 2',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(' - '),
                    Expanded(
                      child: Text(
                        'Plantas C3 de Ver??o:  Alfafa, C??tricos, Algod??o,Amendoim,Piment??o,Arroz,a??afr??o,Soja,Girassol,Tabaco,Tomate, ...(15<Temp<40)',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      'Grupo 3',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(' - '),
                    Expanded(
                        child: Text(
                      'Algumas Variedades de Milho e Sorgo(10<Temp<30)',
                      style: TextStyle(fontSize: 12),
                    ))
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      'Grupo 4',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(' - '),
                    Expanded(
                      child: Text(
                        'Plantas C4: Milho, Sorgo Cana de A????car,....(14<Temp<40)',
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: MediaQuery.of(context).size.width / 2,
                    child: const Divider()),
                const Text(
                  'Simbologia utilizada',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  children: const [
                    Text(
                      'Obs:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(' '),
                    Expanded(
                      child: Text(
                          'Dados que dever??o ser fornecidos pelo usu??rio est??o em vermelho.'),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              const Divider(
                thickness: 1,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: const Text(
                  'Blan??o Hidrico\ncom CAD\ne Kc Variavel',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...List<Widget>.generate(
                  list1.length,
                  (int index) => CustonLinhaSmall(
                        sigla: list1[index][0],
                        texto: list1[index][1],
                        cor: list1[index][2],
                      )).toList(),
              const Divider(
                thickness: 1,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: const Text(
                  'Produtividade\nReal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...List<Widget>.generate(
                  list2.length,
                  (int index) => CustonLinhaSmall(
                        sigla: list2[index][0],
                        texto: list2[index][1],
                        cor: list2[index][2],
                      )).toList(),
              const Divider(
                thickness: 1,
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: const Text(
                  'Produtividade\nPotencial',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...List<Widget>.generate(
                  list3.length,
                  (int index) => CustonLinhaSmall(
                        sigla: list3[index][0],
                        texto: list3[index][1],
                        cor: list3[index][2],
                      )).toList(),
              const Divider(
                thickness: 1,
              ),
            ],
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: const Text(
                'Balan??o H??drico de Cultura por Thornthwaite & Mather(1955), modificado por BARBIERI(1997)  com Kc e CAD vari??veis'),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
