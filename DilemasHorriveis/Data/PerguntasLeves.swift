//
//  Questions.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 21/01/26.
//

class PerguntasLeves {
    
    static func filtrarPor(modo: ModoJogo) -> [Pergunta] {
        perguntas.filter { $0.modo == modo }
    }
    
    static let perguntas: [Pergunta] = [

        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Contar uma história longa e perceber que ninguém está ouvindo",
            opcaoB: "Perceber que estão ouvindo… mas achar a história chata",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ter uma risada muito alta",
            opcaoB: "Ter uma risada estranha impossível de controlar",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Sempre chegar atrasado 10 minutos",
            opcaoB: "Sempre chegar cedo 20 minutos e ficar esperando",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Responder uma mensagem seca sem querer, mas rápido",
            opcaoB: "Demorar tanto pra responder que parece desinteresse",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Esquecer o nome de alguém logo após ser apresentado e não poder perguntar",
            opcaoB: "Lembrar o nome errado com total confiança",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Descobrir que estão falando mal de você",
            opcaoB: "Nunca saber se estão falando mal ou não",
            modo: .leve
        ),
        
        
        Pergunta(
            titulo: "O que é mais desconfortável?",
            opcaoA: "Ser rejeitado na frente de todo mundo",
            opcaoB: "Aceitar algo que você não queria só pra não passar vergonha",
            modo: .leve
        ),


        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Que alguém da roda conte algo vergonhoso sobre você",
            opcaoB: "Ter que contar algo vergonhoso sobre você mesmo",
            modo: .leve
        ),

       
        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Mandar figurinha pesada no grupo da igreja",
            opcaoB: "Mandar figurinha pesada no grupo do trabalho",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Cumprimentar alguém que não estava te cumprimentando",
            opcaoB: "Ignorar alguém que estava te cumprimentando",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que é mais constrangedor?",
            opcaoA: "Dar tchau e a pessoa ir embora pro mesmo lado que você",
            opcaoB: "Dar tchau mas você bate de frente com a pessoa e fica nisso por 10 vezes",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Rir em um momento totalmente inapropriado",
            opcaoB: "Chorar e pesar o clima em um momento feliz",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Escrever um textão e receber 'ok'",
            opcaoB: "Receber um áudio gigante quando você só queria 'sim' ou 'não'",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Responder rápido e parecer desesperado",
            opcaoB: "Demorar e parecer que não liga",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Esquecer o nome da pessoa logo após ouvir e não poder perguntar",
            opcaoB: "Chamar pelo nome errado com confiança o rolê inteiro",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Perceber que está falando sozinho há um tempo",
            opcaoB: "Responder achando que era com você e não era",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que é mais constrangedor?",
            opcaoA: "Rir antes de entender a piada",
            opcaoB: "Pedir pra repetir e continuar sem entender",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Abrir a câmera frontal sem querer",
            opcaoB: "Curtir algo antigo sem perceber",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Abrir a câmera frontal sem querer",
            opcaoB: "Curtir algo antigo sem perceber",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que é pior?",
            opcaoA: "Repostar vídeo constrangedor sem querer e não poder remover",
            opcaoB: "Curtir foto antiga sem querer",
            modo: .leve
        ),

    
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Curtir post antigo de um conhecido distante do trabalho",
            opcaoB: "Enviar meme contrangedor sem querer para um conhecido distante do trabalho",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Sempre ficar com bafo",
            opcaoB: "Sempre ficar com cêcê",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Só poder escovar os dentes plantando bananeira",
            opcaoB: "Só poder tomar banho plantando bananeira",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ter um amigo que está sempre fedendo mas você não pode avisar",
            opcaoB: "Você estar sempre fedendo mas alguém pode te avisar",
            modo: .leve
        ),
        
        
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Descobrir que todo mundo comenta sobre você pelas costas",
            opcaoB: "Nunca saber o que as pessoas realmente pensam de você",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Dar spoiler do final de uma série famosa sem querer",
            opcaoB: "Receber um spoiler gigantesco da sua série favorita",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Curar a cegueira do Demolidor",
            opcaoB: "Curar o Professor Xavier e faze-lo voltar a andar",
            modo: .leve
        ),
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ter que assistir seu filme favorito todos os dias",
            opcaoB: "Nunca mais assistir seu filme favorito",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ficar sozinho para o resto da vida",
            opcaoB: "Estar sempre rodeado de gente insuportável",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Encontrar o amor verdadeiro",
            opcaoB: "Receber uma mala com 5 milhões de dólares",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Nunca conseguir usar telas touch",
            opcaoB: "Nunca conseguir usar teclado e mouse",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ser um pintor incrível",
            opcaoB: "Ser um gênio da matemática",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Nunca mais pegar trânsito",
            opcaoB: "Nunca mais ficar resfriado",
            modo: .leve
        ),

        

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Falar todos os idiomas do mundo",
            opcaoB: "Conseguir conversar com os animais",
            modo: .leve
        ),

       
        
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Voltar no tempo",
            opcaoB: "Saber o futuro",
            modo: .leve
        ),

     

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Viver sem música",
            opcaoB: "Viver sem televisão",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Falar sempre rimando",
            opcaoB: "Falar sempre cantando",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ter sua vida televisionada 24h por dia para qualquer pessoa assistir",
            opcaoB: "Ser completamente invisível para todas as pessoas",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Nunca mais precisar limpar a casa",
            opcaoB: "Nunca mais precisar cozinhar",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ficar duas vezes mais bonito(a)",
            opcaoB: "Ficar duas vezes mais inteligente",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Nunca mais poder beber álcool",
            opcaoB: "Nunca mais poder usar redes sociais",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Perder todos os seus cabelos",
            opcaoB: "Perder todos os seus dentes",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ser obrigado a avisar em voz alta sempre que vai peidar",
            opcaoB: "Fazer xixi na calça pelo menos uma vez todos os dias",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Que seus pais escolham com quem você vai se casar",
            opcaoB: "Que seus irmãos escolham com quem você vai se casar",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Nunca conseguir dizer 'não' para ninguém",
            opcaoB: "Dizer 'sim' mesmo quando não quer",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Conseguir ler os pensamentos das pessoas",
            opcaoB: "Conseguir conversar com animais",
            modo: .leve
        ),
        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Ter 20 filhos ao longo da vida",
            opcaoB: "Nunca poder ter ou adotar filhos",
            modo: .leve
        ),

        Pergunta(
            titulo: "O que você prefere?",
            opcaoA: "Saber a data exata da sua morte",
            opcaoB: "Saber a causa da sua morte, mas não quando",
            modo: .leve
        ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Aparentar ser sempre jovem, mas sofrer dores constantes da idade",
                opcaoB: "Aparentar ser velho, mas ter um corpo totalmente saudável",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais precisar limpar a casa",
                opcaoB: "Nunca mais precisar cozinhar",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais poder beber álcool",
                opcaoB: "Nunca mais poder usar redes sociais",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter os braços substituídos por facas",
                opcaoB: "Ter as pernas substituídas por rodas",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Descobrir que você é adotado",
                opcaoB: "Descobrir que um de seus pais tem uma segunda família secreta",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais conseguir falar",
                opcaoB: "Nunca mais conseguir ler",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Se perder sozinho em uma selva",
                opcaoB: "Se perder sozinho em um deserto",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Viver na Idade Média",
                opcaoB: "Viver na Idade da Pedra",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Peidar incontrolavelmente no trabalho para sempre",
                opcaoB: "Peidar incontrolavelmente em todos os primeiros encontros amorosos",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Borrar as calças em público uma vez por ano",
                opcaoB: "Borrar as calças em privado todos os dias",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Morrer salvando 10.000 estranhos sem ninguém nunca saber",
                opcaoB: "Viver sabendo que você poderia ter salvado 10.000 pessoas e não salvou",
                modo: .leve
            ),

       

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Estar sempre 10 minutos atrasado para tudo",
                opcaoB: "Chegar sempre 20 minutos antes de todo mundo",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Fazer xixi na calça sempre que alguém te cumprimentar",
                opcaoB: "Cagar nas calças sempre que se despedir de alguém",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Que ninguém apareça no seu velório",
                opcaoB: "Que ninguém apareça no seu casamento",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Viver no mundo real",
                opcaoB: "Viver para sempre em uma realidade virtual onde todos os seus desejos se realizam",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Usar roupas sempre dois tamanhos maiores",
                opcaoB: "Usar roupas sempre um tamanho menor",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter os olhos sempre secos",
                opcaoB: "Ter o nariz sempre escorrendo",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais pegar trânsito",
                opcaoB: "Nunca mais ficar resfriado",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Conhecer um extraterrestre",
                opcaoB: "Viajar para outro planeta",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Usar colírio feito de vinagre",
                opcaoB: "Usar papel higiênico feito de areia",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais poder usar calça",
                opcaoB: "Nunca mais poder usar shorts",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ser atacado por cachorros sempre que eles te veem",
                opcaoB: "Ser atacado por pássaros sempre que eles te veem",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Lutar contra 100 cavalos do tamanho de pombas",
                opcaoB: "Lutar contra 1 pomba do tamanho de um cavalo",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter a voz do Mickey",
                opcaoB: "Ter a voz do Pato Donald",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter super audição",
                opcaoB: "Ter um olfato extremamente apurado",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Comida grátis para sempre",
                opcaoB: "Passagens aéreas grátis para qualquer lugar",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Usar sempre uma escova de dentes usada",
                opcaoB: "Nunca mais poder comprar roupas novas",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais poder usar garfo",
                opcaoB: "Nunca mais poder usar faca",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Saber tocar todos os instrumentos musicais",
                opcaoB: "Saber falar todas as línguas do mundo",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Saber com quem você vai se casar",
                opcaoB: "Saber como será o futuro da sua vida resumido",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais poder sair de casa durante o dia",
                opcaoB: "Nunca mais poder sair de casa durante a noite",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Nunca mais poder comer comida doce",
                opcaoB: "Nunca mais poder comer comida salgada",
                modo: .leve
            ),

       

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ser um gênio feio",
                opcaoB: "Ser um idiota bonito",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ser capaz de ler pensamentos",
                opcaoB: "Ser capaz de prever o futuro",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Cheirar mal para sempre sem perceber",
                opcaoB: "Conviver para sempre com alguém que cheira mal",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Viver na casa dos seus sonhos sem internet",
                opcaoB: "Viver na sua casa atual com internet para sempre",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter 20 filhos ao longo da vida",
                opcaoB: "Nunca poder ter ou adotar filhos",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Saber a data da sua morte",
                opcaoB: "Saber a causa da sua morte",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Falar sempre rimando",
                opcaoB: "Falar sempre cantando",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Viver uma única vida de 1.000 anos",
                opcaoB: "Viver 10 vidas diferentes de 100 anos",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Esquecer completamente quem você é",
                opcaoB: "Que todas as pessoas esqueçam quem você é",
                modo: .leve
            ),

            Pergunta(
                titulo: "O que você prefere?",
                opcaoA: "Ter três pés",
                opcaoB: "Ter três mãos",
                modo: .leve
            )
    ]
}
