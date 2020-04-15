import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List<int> score;
  final Function resetFunc;
   static const results = [
    'Похоже, вы летучий голландец подводного мира. Технические характеристики: а я не знаю ваших технических характеристик. Я даже не знаю, откуда вы взялись. Вас не бывает. Но вы всегда всплываете вовремя и всего на несколько секунд, только для того, чтобы сердце успело уйти в пятки. Удар ваш сокрушителен и зубодробилен. Вы точно выбираете цель и бьёте наверняка. Ни разу не понадобилось второго выстрела. Вас любят друзья, которых у вас нет, и ненавидят враги, которые о вас не знают. Вам не нужно ни горючего ни запаса кислорода - когда вы заняты своей целью, вам и камбуз не нужен. Экипаж у вас есть, но это тени вас. Однако, трудолюбивые и внимательные. Вооружение: автономный метафизический внутренний комплекс тотального уничтожения всего на свете, включая себя. Живучесть лодки достигается тем, что она утонула в 19каком-то лохматом году вместе с секретом производства антипротонов. Вы не лидер. Вам это скучно. Эх, если бы хоть раз вы всё-таки попробовали нажать красную кнопку под стеклом в ходовой рубке... Вообще я тут подумал - лучше не надо.',
    'Вы, вероятнее всего - тибетская подводная лодка. Технические характеристики: вы легко погружаетесь и с большим трудом всплываете, если вообще удаётся. Однако чаще всплываете. Ваш экипаж очень дисциплинирован и трудолюбив. Кока вы выменяли на пеньковый канат, так что едите что придётся. Ваш дом - ваша лодка, плывущая по строго определённому маршруту и направляемая мудрым (чересчур) капитаном. Единственно, чего вам не хватает в безбрежном океане - это простора. Однако, когда он вам очень нужен, вы находите его в тесном камбузе с корейской морковкой наедине. Запас топлива практически неограничен - уж чего-чего, а гребцов на вашу галеру вы найдёте повсюду. Вооружение устарелое, но надёжное - багор, глубинная бомба погружного навсегда действия и дымовая завеса с камбуза. Живучесть лодки достигается отсутствием прочного корпуса - если уж и без него удалось не утонуть, то что вам эти дурацкие глубинные бомбы. В общем, вы лидер по непотопляемости, но в последних рядах по всплываемости.',
    'Вы, вероятнее всего, жёлтая подводная лодка. Технические характеристики: вас изобрели в шестидесятые и вы до сих пор сохранили возможность держаться на плаву в любой шторм. Ну, это вероятно, потому, что вы редко ходите по спокойному океану. Невысокая скорость хода полностью компенсируется неограниченным запасом топлива. Интересно, кто наливал это топливо и из чего оно состоит, ни вы, ни даже тот, кто наливал, не знаете. Ваша команда состоит из любых самоопределившихся аборигенов - вы не замечаете, как экипаж плавно превращается из негров в индусов и наоборот. Главное, чтоб пели хорошо и душевно. Вооружение: труба иерихонская, сеть из магнитофонной ленты, русалка голая, завлекающая ирланской арфой, плакаты - "не бей лежачего" и "хиппи форева". Живучесть лодки достигается большим количеством плавающих вокруг пустых пивных бутылок. Вы лидер по автономным походам и практически непотопляемы, погружетесь потрясающе глубоко... Но вообще-то у вас глубиномер заело лет пятнадцать назад, так что вы несколько потеряли чувство реальности, извините.',
    'Вы, вероятнее всего, садово-огородная прудовая подводная лодка. Технические характеристики: очень хорошая скорость хода в надводном положении позволяет пересечь пожарный водоём в рекордно короткие сроки. Запас топлива легко восполняется торфом с ближайшего садового участка и любыми горючими жидкостями. Неистребимый запах керосина сопровождает вас на море и на суше... то есть на том, что вы сами считаете морем. Вооружение: грабли-одни-и-те-же, тактическая сарделька говяжья разрывного действия, кумулятивный дрын от забора и химический самоподрывной снаряд с настойкой куриного помёта. Живучесть лодки достигается хорошо унавоженным непотопляемым прочным корпусом. Ваша команда - это вы. Если прибиваются какие-нибудь матросы и мичманы, то тут же накачиваются тормозной жидкостью и поджигают камбуз. В общем, вы лидер по непотопляемости, потому что ни разу не погружались. И правильно делали - там всё равно ничего интересного нету. Зато когда случится очередной всемирный потоп, или там какая другая катастрофа, обнаружится, что ваша лодка так глубоко пустила корни в эту благословенную землю, что ни она ни ваш пруд никуда не денутся и с ними ничего плохого не случится. Именно поэтому в вашем пруду все будут искать убежища, как вы есть настоящий. В общем, вы спасательный круг и Том Бомбадил подводного мира.'
    ];

  Result(this.score, this.resetFunc);

  String get resultOutput {
    if (score[0] >= score[1] && score[0] >= score[2] && score[0] >= score[3]) { return results[0]; }
    if (score[1] >= score[0] && score[1] >= score[2] && score[1] >= score[3]) { return results[1]; }
    if (score[2] >= score[0] && score[2] >= score[1] && score[2] >= score[3]) { return results[2]; }
    if (score[3] >= score[0] && score[3] >= score[1] && score[3] >= score[2]) { return results[3]; }
    return 'Определитесь уже!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultOutput, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          FlatButton(child: Text('Пройти заново'), onPressed: resetFunc, textColor: Colors.blue,)
        ],
      )
      );
  }
}