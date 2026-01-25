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



    ]
}
