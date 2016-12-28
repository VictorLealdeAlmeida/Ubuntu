//
//  ViewController.swift
//  Ubuntu
//
//  Created by Victor Leal Porto de Almeida Arruda on 21/12/16.
//  Copyright © 2016 VTR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var titleMusic: UILabel!
    @IBOutlet weak var author: UILabel!
    
    var textsBool : Array<Bool> = []
    var countAsk = 0
    
    var color = [UIColor(red:0.70, green:0.39, blue:0.09, alpha:1.00),
                 UIColor(red:0.73, green:0.18, blue:0.16, alpha:1.00),
                 UIColor(red:0.16, green:0.10, blue:0.01, alpha:1.00),
                 UIColor(red:0.19, green:0.44, blue:0.57, alpha:1.00),
                 UIColor(red:0.54, green:0.30, blue:0.08, alpha:1.00),
                 UIColor(red:0.00, green:0.01, blue:0.20, alpha:1.00),
                 UIColor(red:0.16, green:0.08, blue:0.02, alpha:1.00),
                 UIColor(red:0.78, green:0.49, blue:0.18, alpha:1.00)]
    var backNumber = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.layer.cornerRadius = 15
        titleView.layer.cornerRadius = 15
        
        var i = 0
        while textList.count > i{
            textsBool.append(false)
            i += 1
        }
        
        choiceMusic()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        changeBackground()
        choiceMusic()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent;
    }
    
    func changeBackground(){
        background.image = UIImage(named:"afro"+String(backNumber))
        text.textColor = color[backNumber-1]
        titleMusic.textColor = color[backNumber-1]
        author.textColor = color[backNumber-1]
        
        if backNumber < 8{
            backNumber += 1
        }else{
            backNumber = 1
        }
    }
    
    func random(count : Int) -> Int{
        return Int(arc4random_uniform(UInt32(count))) // range is 0 to count
    }
    
    func choiceMusic(){
        var value = 0
        
        if countAsk >= textList.count{
            value = random(count: textList.count)
        }else{
            repeat{
                value = random(count: textList.count)
            }while (textsBool[value])
        }
        
        countAsk += 1
        textsBool[value] = true
        text.text = textList[value]
        titleMusic.text = titleList[value]
        author.text = authorList[value]
      
    }
    
    var textList = ["É melhor ser alegre que ser triste\nAlegria é a melhor coisa que existe\nÉ assim como a luz no coração",
                    "Porque o samba nasceu lá na Bahia\nE se hoje ele é branco na poesia\nSe hoje ele é branco na poesia\nEle é negro demais no coração",
                    "Fazer samba não é contar piada\nE quem faz samba assim não é de nada\nO bom samba é uma forma de oração",
                    "Coitado do homem que cai\nNo canto de Ossanha\nTraidor!\nCoitado do homem que vai\nAtrás de mandinga de amor",
                    "Pergunte pr'o seu Orixá\nO amor só é bom se doer\nPergunte pr'o seu Orixá\nO amor só é bom se doer",
                    "Xangô Agodô\nHoje é tempo de amor\nHoje é tempo de dor, em mim\nXangô Agodô",
                    "Salve, Xangô, meu Rei Senhor\nSalve meu Orixá\nTem sete cores sua cor\nsete dias para a gente amar",
                    "Xangô, meu Senhor, saravá!\nMe faça sofrer\nAh me faça morrer\nMas me faça morrer de amar",
                    "Se você quiser amar\nSe você quiser amor\nVem comigo a Salvador\nPara ouvir lemanjá",
                    "Sou da linha de umbanda\nVou no babalaô\nPara pedir pra ela voltar pra mim\nPorque assim eu sei que vou morrer de dor",
                    "Mas tem que sofrer\nMas tem que chorar\nMas tem que querer\nPra poder amar",
                    "Ah, que não seja meu\nO mundo onde o amor morreu",
                    "E a coisa mais divina\nQue há no mundo\nÉ viver cada segundo\nComo nunca mais",
                    "Aqui onde estão os homens\nHá um grande leilão\nDizem que nele há\nUm princesa à venda",
                    "Quando Zumbi chegar\nO que vai acontecer\nZumbi é senhor das guerras\nÈ senhor das demandas",
                    "Aqui onde estão os homens\nDum lado cana de açúcar\nDo outro lado o cafezal\nAo centro senhores sentados\nVendo a colheita do algodão tão branco\nSendo colhidos por mãos negras",
                    "Isso é pra te levar no ilê\nPra te lembrar do badauê\nPra te lembrar de lá.",
                    "Isso é pra te levar no meu terreiro\nPra te levar no candomblé\nPra te levar no altar.",
                    "Ilumina o mirin orumilá\nDa estrada que vem a cota\nÉ um malê, é um maleme\nQuem tem santo é que entende.",
                    "Quanto mais\nPra quem tem ogum missão de paz\nQuanto mais\nPra quem tem ideias e os orixás",
                    "Joga as armas pra lá\nJoga, joga as armas pra lá\nJoga as armas pra lá\nFaz a festa.",
        "Sou preto, sou afro, sou nagô\nRespeite a batida meu senhor\nMinha fé, minha essência, minha cultura\nÉ meu manto sagrado que perdura",
        "Que a sua força esteja com nós\nE que nos abençoe no clamor de nossa voz\nSe o caminho é por vezes tortuoso \nCom a sua proteção terei dias gloriosos",
        "Vem da rua da guia\nA luz que alumia\nO nosso caminho\nNão estamos sozinhos\nO nosso Axé, vem dos Orixás",
        "Tem a festa para Ogum\nVamos comemorar, o santo guerreiro\nMinha religião, merece respeito\nPois é celebrada no mundo inteiro",
        "Na sua mina tem ouro\nSeu tesouro tem poder\nToda vez que eu precisar\nMamãe Oxum vai me valer.",
        "Eu sou filho de Nanã,\nQuem me criou foi Yemanjá\nPorto Rico tem um baque,\nBaque das ondas do mar.",
        "Surgiu um grito nas pedreiras,\nKawo, kawo, kabé, se ilê,\nBate o bombo na aldeia.\nChamando os filhos de fé.",
        "Batuca batuqueiro, até ao amanhecer\nQue eu já estou acostumado, a ver o sol nascer",
        "No meio do povo tem, filho de santo\nTocando maracatu, pelas ruas da cidade\nQue cheiro de alfazema, isso é felicidade",
        "Nagô, nagô, nagô,\nNossa rainha já se coroou.",
        "Vamos cantar minha gente\nNessa noite eu quero ver.\nDe Exu a Orixalá,\nBatendo baqueta,\nQuebrando o dendê.",
        "Onde estão nossas origens\nQue a história não registrou?",
        "Entre grandes heróis mostramos,\nQue o lider maior Zumbi,\nNunca foi o bicho mau da história\nQue muitas vezes na escola\nCom medo ouvi.",
        "Viva 13 de maio\n'Negro livre no brasil',\nMas a bem da verdade\nFoi um “primeiro de abril”.",
        "Salve Xangô nas pedreiras\nOxóssi na mata\nOxum na cachoeira\nOdo miô Yemanjá.\nSegure o baque das ondas do mar",
        "Vem chegando Nanã e Omolú\nOssayin e as folhas, salve Obá!\nA rainha que é Yansâ\nSegure o baque das ondas do mar",
        "Vamo simbora menino com o batuque\nQue ele não pode atrasar\nA cavalaria ta armada\nQuem comanda é meu orixá",
        "Meu baque é lento,\nvem das ondas do mar.\nVou levar flores,\npra minha mãe Yemanjá.",
        "Toca o alujá pra Xangô,\ntoca o ijexá pra Oxalá.\nOxum é a deusa do ouro,\nprincesa dos orixás.",
        "O nagô que veio da África,\nchegou no brasil e se consolidou.\nJá estamos no ano dois mil,\nsaudando os 500 anos do brasil.",
        "Salve o rei, salve a rainha do\nMorro da Conceição!\nEles descem o morro de branco\npra sambar maracatu",
        "De onde vem o 'caboclo'\nSerá africano, será caeté?\nDe onde vem essa dança?\nQuem sabe vem do Toré.",
        "Maracatu Dona Santa\nDe onde é que ele é?\nQuem sabe é o som de Luanda\nNo bairro de São José...",
        "Muito rica e invejada\nTemida e odiada\nPois com as suas perucas\nCada uma de uma cor...",
        "Salve Hermes Trismegisto\nque tem as três partes\nDa Filosofia Universal\nÉ verdade sem mentira,\ncerto e muito verdadeiro",
        "Dentro das alas, nações em festa\nReis e rainhas cantar\nNinguém se cala louvando as glórias\nQue a história contou",
        "Traz aqui maracatu, nossa escola\nDo Recife nós trazemos com alma\nA nação maracatu, nosso tema geral\nVem do negro esta festa de Reis",
        "Marinheiros, capitães, negros sobas\nRei do congo, a rainha e seu povo\nAs mucamas e os escravos no canavial\nAmadês senhor de engenho e sinhá",
        "Não mexe comigo, que eu não ando só\nEu não ando só, que eu não ando só\nNão mexe não!",
        "Eu tenho Zumbi,Besouro,\no chefe dos tupis\nSou Tupinambá, tenho os erês,\ncaboclo boiadeiro",
        "Não misturo, não me dobro\nA rainha do mar anda de mãos dadas comigo\nMe ensina o baile das ondas e\ncanta, canta, canta pra mim",
        "Eu não provo do teu fel,\neu não piso no teu chão\nE pra onde você for,\nnão leva o meu nome não",
        "O que é teu já tá guardado\nNão sou eu quem vou lhe dar",
        "Sou como a haste fina,\nque qualquer brisa verga,\nmas nenhuma espada corta",
        "O raio de Iansã sou eu\nCegando o aço das armas de quem guerreia\nE o vento de Iansã também sou eu\nE Santa Bárbara é santa que me clareia ",
        "Sem ela não se anda\nEla é a menina dos olhos de Oxum\nFlecha que mira o Sol\nOyá de mim.",
        "Eu sou a casa do raio e do vento\nPor onde eu passo é zunido, é clarão\nPorque Iansã, desde o meu nascimento,\ntornou-se a dona do meu coração",
        "Eu sou filho de São Jorge\nE não temo mal algum\nA rainha Yemanjá\nCanta em preces pra Ogum",
        "Lhe peço\nQue ajude esse mundo\nTão pequeno e tão confuso\nMas que em ti confia e crê",
        "Na pedreira ele reinou.\nEle reina!",
        "Oxum era rainha,\nNa mão direita tinha\nO seu espelho onde vivia\nA se mirar.",
        "Pescador e marinheiro\nquem escuta a sereia cantar\né com o povo que é praiero\nque dona Iemanjá quer se casar.",
        "Perfume,\nFlor, espelho e pente\nToda sorte de presente\nPra ela se enfeitar.",
        "Neguim\nnunca fui lá na bahia\nNem sei\nQual o santo que me guia",
        "Ogum teria um turbante na testa\nKrishna dançaria um afoxé\nTraz um cherin de Dendê\nE a pimenta malagueta\nQuando for na Bahia\nVê se não se esqueça",
        "Ganesh ia gostar de acarajé\nYemanjá manjaria samossa\nTraz um cherin de massala\nE um insenso de Bramah\nQuando for lá na Índia\nVê se me chama",
        "Ilê, ilê aiyê\nTu és o senhor\nDessa grande nação\nE hoje os negros clamam\nAbenção Abenção Abenção",
        "Por isso o negro lutou\nO negro lutou\ne acabou invejado\nE se consagrou",
        "Minha sereia é moça bonita\nMinha sereia é moça bonita\nNas ondas do mar\nAonde ela habita",
        "Seu brilho parece\nUm sol derramado\nUm céu prateado\nUm mar de estrelas",
        "Revela a leveza\nDe um povo sofrido\nDe rara beleza\nQue vive cantando\nProfunda grandeza",
        "Nessa cidade todo mundo é d'Oxum\nHomem, menino, menina, mulher\nToda gente irradia magia",
        "Se der presente é tudo uma coisa só\nA força que mora n'água\nNão faz distinção de cor\nE toda cidade é d'Oxum",
        "Meu pai veio de aruanda\nE a nossa mãe é a yansã.",
        "Deixa a gira girar, saravá yansã!\nÉ xangô e yemanjá\nDeixa a gira girar.",
        "Toda roupa é branca\nToda pele é preta\nTodo mundo canta\nTodo céu magenta\nToda sexta-feira todo canto é santo",
        "Ogum\nLeva esse rancor do homem\nLeva essa maldade Oxumaré, Oxum e Ogum\nque abre os caminhos para mim",
        "Flores para a mãe Iemanjá\nEu vim de lá de Luanda, eu vim\nEu vim de Angola\nMeu terço é um patuá\nSou filho de Ogum e Oxóssi\nE do meu pai Oxalá",
        "Quando a preta\nsamba no 'zói' de Ioiô\nÉ tanto querer bem\nBem que Iaiá queria,\nAo menos por um dia\nSer preta também",
        "Venha ver como é lindo\numa preta na roda\nToda se bulindo, Iaiá\nO pano da costa do ouro\nCobrindo o colar",
        "Sereia bonita\nAjibonã de Euá\nVim do balê pro xirê\nSó pra ver você bailar",
        "A paixão nasceu\nE tomou conta de mim\nQuando o sol clarear\nEu vou lhe convidar\nPra casar no Bonfim",
        "Se quiser ser sereia\nMeu novo amor\nVou fazer nos seus braços\nUma festa nagô",
        "Na partida do meu amor\nQue saiu pelo mar sem fim\nA batida do meu tambor\nE um pedaço de mim",
        "Renascer meu tambor\nNeste meu novo ilê\nEncontrar meu amor\nE voltar a viver",
        "Vou deixar o que é meu\nMinha gente daqui\nPra tentar encontrar\nEsse amor que eu perdi",
        "No balanço das ondas\nOkê aro\nMe ensinou a bater seu tambor",
        "Que noite mais funda calunga\nNo porão de um navio negreiro\nQue viagem mais longa candonga\nOuvindo o batuque das ondas",
        "Vou baixar o seu terreiro\nEpa raio, machado, trovão\nEpa justiça de guerreiro",
        "Dia 2 de fevereiro\nDia de Iemanjá\nVá pra perto do mar\nLeve mimos pra sereira",
        "Disse um velho orixá pra oxalá\nPra não temer\nDia 2 de fevereiro\nFesta lá no Rio Vermelho\nEm Salvador vamos dançar",
        "Em toda casa tem\num quadro de São Jorge\nEm toda casa onde\no santo é protetor",
        "Quem é devoto é só fazer uma oração\nQue o guerreiro sempre atende\nDando a sua proteção",
        "Emoriô deve ser\numa palavra nagô\numa palavra de amor\num paladar",
        "Emoriô deve ser\nalguma coisa de lá\no Sol, a Lua, o céu\npra Oxalá",
        "A guimba e a fumaça\ndo meu cigarro\nCega o olho do soldado\nque pensou em me ferir",
        "Com um sorriso derrubo\numa tropa inteira\nMesmo que na dianteira\nsombra venha me seguir",
        "Eu sou negro de cor\nmas tudo é só amor em mim",
        "De branco um guerreiro\nO dono do meu terreiro\nOxaguiã",
        "Um santo menino\nA força que manda no\nMeu destino\nOxaguiã",
        "Omolu, Ogum, Oxum, Oxumaré\nTodo o pessoal\nManda descer pra ver\nFilhos de Gandhi",
        "Iansã, Iemanjá, chama Xangô\nOxossi também\nManda descer pra ver\nFilhos de Gandhi",
        "Senhor do Bonfim,\nfaz um favor pra mim\nChama o pessoal\nManda descer pra ver\nFilhos de Gandhi",
        "Oh, meu pai do céu,\nna terra é carnaval\nChama o pessoal\nManda descer pra ver\nFilhos de Gandhi",
        "Mercador, Cavaleiro de Bagdá\nOh, Filhos de Obá\nManda descer pra ver\nFilhos de Gandhi",
        "Laroyê bará\nAbra o caminho dos passos\nAbra o caminho do olhar\nAbra caminho tranquilo pra eu passar",
        "Laroyê eleguá\nGuarda ilê, onã, orum\nCoba xirê deste funfum\nCuida de mim que eu vou pra te saudar\nQue eu vou pra te saudar",
        "Guarda-chuva chama raio\nBentos santos não crê não\nLá no céu um risco forte\nNa cabeça um clarão",
        "Rolei na terra\nA benção atotô\nSeu xaxará\nA ferida secou",
        "No meu peito um trancelim de ouro\nNo meu braço levo\ndois cordões de conta\npra me proteger",
        "O meu silencio\né uma singela oração\na minha santa de fé",
        "O meu lamento se criou\nna escravidão que forçado passei\nEu chorei sofri as duras dores da humilhação\nMas ganhei pois eu trazia nanã ê no coração",
        "O que peço no momento\né silêncio e atenção\nQuero contar sofrimento\nque passamos sem razão",
        "Que parte de mim,\nque eu desconheço,\né que me guia?",
        "Deusa pagã dos relâmpagos\nDas chuvas de todo ano\nDentro de mim, dentro de mim",
        "Eu vi chover, eu vi relampejar\nMas mesmo assim o céu estava azul\nSamborê, pemba, folha de Jurema\nOxóssi reina de norte a sul",
        "Ogum sonhava com a filha de Nanã\nE pensava que as estrelas\neram os olhos de Yansã",
        "Na terra dos orixás, o amor se dividia\nEntre um deus que era de paz\nE outro deus que combatia\nComo a luta só termina\nquando existe um vencedor\nYansã virou rainha da coroa de Xangô",
        "Na lama do Recife sou xangô",
        "Zabumba de bombos,\nEstouro de bombas,\nBatuques de ingonos,\nCantigas de banzo,\nRangir de ganzás",
        "A Umbanda é paz e amor\nÉ um mundo cheio de Luz\nÉ a força que nos dá vida\nÉ a grandeza que nos conduz",
        "Avantes, filhos de fé\nComo a nossa lei não há\nLevando ao mundo inteiro\nA bandeira de Oxalá",
        "Carrego pra onde vou\nO peso do meu som\nLotando minha bagagem\no Meu maracatu pesa\numa tonelada de surdez\nE pede passagem",
        "Eu nasci com o samba\ne no samba me criei\ndo danado do samba\nnunca me separei"]

    var titleList = ["Samba da Bênção","Samba da Bênção","Samba da Bênção","Canto de Ossanha","Canto de Ossanha","Canto de Xangô","Canto de Xangô","Canto de Xangô","Canto de Iemanjá","Tristeza e Solidão","Tempo De Amor","Tempo De Amor","Lamento de Exu","Zumbi","Zumbi","Zumbi","Muito Obrigado Axé","Muito Obrigado Axé","Muito Obrigado Axé","Muito Obrigado Axé","Muito Obrigado Axé","Batuqueiro Guerreiro","Batuqueiro Guerreiro","Vai Estremecer","Vai Estremecer","Oxum Menina","Canto Para Xangô e Omulú","Canto Para Xangô e Omulú","Filhos de Santo","Filhos de Santo","Nagô","Noite do Dendê","13 de Maio","13 de Maio","13 de Maio","O Feitiço da Bruxa de Pano","O Feitiço da Bruxa de Pano","Festa Para Ogum","Meu Baque é Lento","Meu Baque é Lento","Saudação aos 500 anos","Clementina De Jesus","De Onde Vem","De Onde Vem","Xica da Silva","Hermes Trismegisto Escreveu","Reis e Rainhas do Maracatu","Reis e Rainhas do Maracatu","Reis e Rainhas do Maracatu","Carta de Amor","Carta de Amor","Carta de Amor","Carta de Amor","Carta de Amor","Carta de Amor","Dona do Raio: O Vento","Dona do Raio: O Vento","Dona do Raio: O Vento","Samba pra Ogum","Samba pra Ogum","Guardião das Leis","Canto de Oxum","Canto de Oxum","Canto de Oxum","Masala com Dendê","Masala com Dendê","Masala com Dendê","Negrume da Noite","Negrume da Noite","Rainha do Mar","Ijexa","Ijexa","É d'Oxum","É d'Oxum","Deixa a Gira Girar","Deixa a Gira Girar","Toda Sexta-Feira","Ogum","Ogum","Orixá de Frente","Orixá de Frente","Xirê","Xirê","Xirê","Meu Novo Ilê","Meu Novo Ilê","Meu Novo Ilê","Yá Yá Massemba","Yá Yá Massemba","Yá Yá Massemba","Janaína","Janaína","Padroeiro do Brasil","Padroeiro do Brasil","Emoriô","Emoriô","São Jorge","São Jorge","Canto de Xangô","Oxaguiã","Oxaguiã","Filhos de Gandhy","Filhos de Gandhy","Filhos de Gandhy","Filhos de Gandhy","Filhos de Gandhy","Fio De Prumo ","Fio De Prumo ","Machado de Xangô","Atotô","Trancelim","Cordeiro de Nana","Cordeiro de Nana","Cordeiro de Nana","Iansã","Iansã","Nem Ouro, Nem Prata","A Deusa dos Orixás","A Deusa dos Orixás","Lavanda","Maracatu","Hino Da Umbanda","Hino Da Umbanda","Maracatu Pesa Uma Tonelada","Samba da Minha Terra"]
    
    var authorList = ["Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Baden Powell | Vinicius de Moraes","Jorge Ben","Jorge Ben","Jorge Ben","Carlinhos Brown","Carlinhos Brown","Carlinhos Brown","Carlinhos Brown","Carlinhos Brown","Rodrigo Fernandes","Rodrigo Fernandes","Rodrigo Fernandes","Rodrigo Fernandes","Laine Torres","Mestre Shacon Viana","Mestre Shacon Viana","Celeste Aquino","Celeste Aquino","Domínio Público","Mestre Shacon Viana ","","","","Nação Porto Rico","Nação Porto Rico","Guitinho da Xambá","Nação Porto Rico","Nação Porto Rico","Jajá de Xangô | Mestre Jaime","Maracatu Estrela Brilhante","Alceu Valença","Alceu Valença","Jorge Ben","Jorge Ben","Milton Nascimento","Milton Nascimento","Milton Nascimento","Maria Bethânia | Paulinho Pinheiro","Maria Bethânia | Paulinho Pinheiro","Maria Bethânia | Paulinho Pinheiro","Maria Bethânia | Paulinho Pinheiro","Maria Bethânia | Paulinho Pinheiro","Maria Bethânia | Paulinho Pinheiro","Doryval Caymmi","Doryval Caymmi","Doryval Caymmi","Artur Senna | Dinho Braga","Artur Senna | Dinho Braga","Amílcar Paré | Artur Senna","Pedro Amorim | Paulo Cesar ","Pedro Amorim | Paulo Cesar ","Pedro Amorim | Paulo Cesar ","Gustavito","Gustavito","Gustavito","Ilê Aiyê","Ilê Aiyê","Dorival Caymmi","Edil Pacheco","Edil Pacheco","Gerônimo | Vevé Calazans","Gerônimo | Vevé Calazans","Os Tincoas","Os Tincoas","Adriana Calcanhotto","3030","3030","Roberta Sá","Roque Ferreira","Roque Ferreira","Roberta Sá","Roberta Sá","Quito Ribeiro | Moreno Veloso","Roberta Sá","Roberta Sá","Jose Carlos | Roberto Mendes","Maria Bethânia","Maria Bethânia","Otto","Otto","Maria Bethânia","Ary Monteiro | Irany De Oliveira","Gilberto Gil | João Donato","Gilberto Gil | João Donato","Metá Metá","Metá Metá","Baden Powell | Vinicius de Moraes","André Luiz","André Luiz","Gilberto Gil","Gilberto Gil","Gilberto Gil","Gilberto Gil","Gilberto Gil","Criolo","Criolo","Kiko Dinucci","Juçara Marçal","Alessandra Leão","Gilberto Gil","Gilberto Gil","Gilberto Gil","Maria Bethânia","Maria Bethânia","José Jorge | Ruy Maurity","Romildo | Toninho","Romildo | Toninho","Otto","Alceu Valença","","","Nação Zumbi","Dorival Caymmi"]


}

