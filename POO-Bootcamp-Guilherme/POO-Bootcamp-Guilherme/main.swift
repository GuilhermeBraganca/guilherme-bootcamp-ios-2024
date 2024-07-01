//
//  main.swift
//  POO-Bootcamp-Guilherme
//
//  Created by MacBook on 27/06/24.
//

import Foundation

//MARK: - Classe -> Modelo de um OBJETO!
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE

// Como criar uma classe?
// Utilizamos a palavra reservada 'class' e na sequencia seu nome sendo, SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {

  let cor: String = "Vermelho"
  let quantidadeDeEspelho: Int = 5
  let marca: String = "Ferrari"
  let tipoCombustivel: String = "Alcool"
  let tipoMotor: String = "AP"
  let potencia: Double = 2.0
  let conversivel: Bool = true
  var cavaloDePotencia: Int = 900

  func ligarCarro() {
    print("O carro da marca \(marca) está ligado")
  }

  func acenderFarois() {
    print("As luzes estão ligadas")
  }

  func detalheCompletoAutomovel() -> String {
    let texto: String = "O veiculo da marca: \(marca) tem o motor: \(tipoMotor) que utiliza o combustivel \(tipoCombustivel) e tem um total de \(cavaloDePotencia) cavalos de potencia"
    return texto
  }

}


// Criando objeto!
// Um objeto só ganha VIDA, QUANDO GERAMOS A SUA INSTANCIA QUE É O ABRE E FECHA PARENTESES ()
var ferrari: Automovel = Automovel()

//print(ferrari.cavaloDePotencia)
//print(ferrari.cor)
//print(ferrari.conversivel)
//print(ferrari.detalheCompletoAutomovel())

// Para alterar uma propriedade, você precisa chamar o objeto e atribuir um novo valor a propriedade
ferrari.cavaloDePotencia = 1200
print(ferrari.cavaloDePotencia)

var uno: Automovel = Automovel()
uno.cavaloDePotencia = 1500
print(uno.cavaloDePotencia)


//MARK: - Construtores
//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!

class Pessoa {
  var nome: String
  var idade: Int
  var peso: Double
  var altura: Double

  // Método Construtor -> Ele é quem seta/informa os valores iniciais!!!
  init(nome: String, idade: Int, peso: Double, altura: Double) {
    self.nome = nome
    self.idade = idade
    self.peso = peso
    self.altura = altura
  }

}

// Neste exemplo, estamos gerando a instancia de uma forma diferente -> a instancia é gerada QUANDO preenchido todas as propriedades
// do metodo construtor
var caio: Pessoa = Pessoa(nome: "Caio", idade: 22, peso: 80, altura: 1.82)
print(caio.idade)
print(caio.peso)

var pedro: Pessoa = Pessoa(nome: "Pedro", idade: 45, peso: 92, altura: 1.77)
print(pedro.idade)
print(pedro.peso)

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
class Celular {
  var valorPiCelular: Double = 3.14
  var tamanho: Double = 1.432432
  var cor: String
  var preco: Double
  var modelo: String

  init(modelo: String, preco: Double, cor: String) {
    self.modelo = modelo
    self.preco = preco
    self.cor = cor
  }
}

var iphone: Celular = Celular(modelo: "Iphone 15", preco: 8000, cor: "Preto")

//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
//MARK: O mesmo se encaixa para tipagens opcionais, POIS o opcional EXISTE ALGO DE INICIO -> QUE É O NIL! Com base nisso
//MARK: não é obrigado a passar ele no construtor. Mas caso queira, sem problemas!
class Bolo {

  var peso: Double
  var preco: Double
  var sabor: [String]
  var topoDeBolo: Bool? = nil

  init(peso: Double, preco: Double, sabor: [String]) {
    self.peso = peso
    self.preco = preco
    self.sabor = sabor
  }

  func adicionarSabor(sabor: String) {
    self.sabor.append(sabor)
  }
}

var boloAniversario: Bolo = Bolo(peso: 10, preco: 200, sabor: ["Chocolate", "Baunilha"])
var boloCasamento: Bolo = Bolo(peso: 50, preco: 2000, sabor: ["Chocolate", "Baunilha", "Maça"])

// MARK: - Exercicios Classe

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")


class ContaPoupanca{
    
    var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func depositar(valor: Double){
        self.saldo += valor
    }
    
    func consultrSaldo()-> Double{
        return self.saldo
    }
    
}

var aposentado : ContaPoupanca = ContaPoupanca(saldo: 10000000)
aposentado.depositar(valor: 666)

let valorSaldo : Double = aposentado.consultrSaldo()

print(valorSaldo)

// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.


class Filme {
    var titulo: String
    var diretor: String
    var ano: Int
    
    init(titulo: String, diretor: String, ano: Int) {
        self.titulo = titulo
        self.diretor = diretor
        self.ano = ano
    }
    
    func exibirInfo() -> String {
        return "O Filme: \(self.titulo) do Diretor: \(self.diretor) foi relizado no ano \(self.ano)"
    }
}

var aVoltaDosQueNaoForam : Filme = Filme(titulo: "A Volta dos que não foram", diretor: "Guilherme", ano: 1985)
var resposta : String = aVoltaDosQueNaoForam.exibirInfo()
print(resposta)



// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")


class Aluno{
    var nome: String
    var notas: [Double]
    
    init(nome: String, notas: [Double]) {
        self.nome = nome
        self.notas = notas
    }
    func calcularMedia()->Double{
        var soma: Double = 0
        for nota in notas{
            soma += nota
        }
        
        var media: Double = round(soma / Double(notas.count))
        return media
    }
}

var guilherme: Aluno = Aluno(nome: "Guilherme", notas: [10.0, 5.0, 5.0])

var media:Double = guilherme.calcularMedia()
print("Média das notas de \(guilherme.nome): \(media)")


// Exercício 1: Controle de Estoque
// Objetivo: Criar uma classe chamada 'Produto' para gerenciar o estoque de produtos em uma loja.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do produto.
// - quantidade (Int): Quantidade do produto em estoque.
// Construtor:
// - Inicialize nome e quantidade.
// Métodos:
// - adicionarEstoque(qtd: Int): Adiciona a quantidade especificada ao estoque existente.
// - removerEstoque(qtd: Int) -> Bool: Tenta remover a quantidade especificada do estoque; retorna true se for bem-sucedido, false se não houver estoque suficiente.

class Produto{
    var nome: String
    var quantidade: Int
    
    init(nome: String, quantidade: Int) {
        self.nome = nome
        self.quantidade = quantidade
    }
    
    
    func adicionarEstoque(qtd: Int){
        self.quantidade += qtd
    }
    func removerEstoque(qtd: Int)-> Bool{
        
        if (self.quantidade - qtd < 0){
            return false
        }
        
        self.quantidade -= qtd
        return true
    }
    
}
var produto: Produto = Produto(nome: "nintendo", quantidade: 5)

produto.adicionarEstoque(qtd: 5)

if (produto.removerEstoque(qtd: 11) == false){
    print("não tem estoque suficiente. Estoque atual é \(produto.quantidade)")
}

if (produto.removerEstoque(qtd: 10) == true){
    print("Estoque atual é \(produto.quantidade)")
}






// Exercício 2: Sistema de Agendamento de Consultas
// Objetivo: Criar uma classe chamada 'Consulta' para gerenciar agendamentos médicos.
//
// Descrição:
// Propriedades:
// - paciente (String): Nome do paciente.
// - data (String): Data agendada para a consulta.
// Construtor:
// - Inicialize paciente e data.
// Métodos:
// - reagendar(dataNova: String): Altera a data da consulta para uma nova data fornecida.

class Consulta {
    var paciente: String
    var data: String
    
    init(paciente: String, data: String) {
        self.paciente = paciente
        self.data = data
    }
    
    func reagendar(dataNova: String){
        self.data = dataNova
    }
}

var consulta: Consulta = Consulta(paciente: "Guilherme", data: "10/04/1985")

consulta.reagendar(dataNova: "10/04/2025")
print(consulta.data)

// Exercício 3: Monitoramento de Velocidade
// Objetivo: Desenvolver uma classe chamada 'Veiculo' que monitora a velocidade atual e verifica se está acima do limite.
//
// Descrição:
// Propriedades:
// - velocidadeAtual (Double): A velocidade atual do veículo em km/h.
// - limiteVelocidade (Double): O limite de velocidade em km/h.
// Construtor:
// - Inicialize a velocidadeAtual e limiteVelocidade.
// Métodos:
// - verificarVelocidade() -> String: Retorna uma mensagem indicando se o veículo está acima do limite de velocidade ou não.

class Veiculo{
    var velocidadeAtual: Double
    var limiteVelocidade: Double
    
    init(velocidadeAtual: Double, limiteVelocidade: Double) {
        self.velocidadeAtual = velocidadeAtual
        self.limiteVelocidade = limiteVelocidade
    }
    
    func verificarVelocidade()-> String{
        if (self.velocidadeAtual > self.limiteVelocidade){
            return "Acima da velocidade permitida"
        }else{
            return "Velocidade permitida"
        }
    }
}

var fusca : Veiculo = Veiculo(velocidadeAtual: 99, limiteVelocidade: 100)
print(fusca.verificarVelocidade())


// Exercício 4: Sistema de Reservas de Salas
// Objetivo: Criar uma classe chamada 'Sala' para gerenciar as reservas de salas em um centro de conferências.
//
// Descrição:
// Propriedades:
// - numero (Int): Número da sala.
// - reservada (Bool): Indica se a sala está reservada.
// Construtor:
// - Inicialize numero e começe com reservada definido como false.
// Métodos:
// - reservar(): Altera o estado de 'reservada' para true.
// - liberar(): Altera o estado de 'reservada' para false.

class Sala{
    var numero: Int
    var reservada: Bool = false
    
    init(numero: Int) {
        self.numero = numero
       
    }
    
    func reservar(){
        self.reservada = true
    }
    func liberar(){
        self.reservada = false
    }
}

var sala141 : Sala = Sala(numero: 10)

sala141.reservar()

print ("A Sala 141 está reservada \(sala141.reservada)")

sala141.liberar()

print ("A Sala 141 está liberada \(sala141.reservada)")

// Exercício 5: Gerenciador de Perfis de Usuário
// Objetivo: Desenvolver uma classe chamada 'Usuario' para gerenciar as informações de perfil dos usuários de um sistema.
//
// Descrição:
// Propriedades:
// - nomeUsuario (String): Nome de usuário.
// - email (String): Email do usuário.
// - ativo (Bool): Indica se o perfil do usuário está ativo.
// Construtor:
// - Inicialize nomeUsuario, email e comece com ativo definido como true.
// Métodos:
// - desativarPerfil(): Altera o estado de 'ativo' para false, desativando o perfil do usuário.

class Usuario{
    
    var nomeUsuario: String
    var email: String
    var ativo: Bool
    
    init(nomeUsuario: String, email: String, ativo: Bool) {
        self.nomeUsuario = nomeUsuario
        self.email = email
        self.ativo = ativo
    }
    
    
    func desativarPerfil(){
        self.ativo = false
    }
}


// Exercício 6: Sistema de VeiculosPotentes
// Objetivo: Criar uma classe base chamada 'VeiculosPotentes' e duas subclasses 'Carro' e 'Motocicleta' que herdem de 'Veiculo'.
//
// Descrição:
// Classe Base:
// - Veiculo
// Propriedades:
// - marca (String)
// - modelo (String)
// - ano (Int)
// Construtor:
// - Inicialize marca, modelo e ano.
// Subclasses:
// - Carro: Adiciona a propriedade 'numeroDePortas' (Int).
// - Motocicleta: Adiciona a propriedade 'cilindrada' (Int).

class VeiculosPotentes{
    var marca: String
    var modelo: String
    var ano: Int
    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
}

class Carro: VeiculosPotentes{
    var numeroDePortas: Int
    init(marca: String, modelo: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = 6
        super.init(marca: "Golf", modelo: "STI", ano: 2025)
    }
}

// Exercício 7: Hierarquia Acadêmica
// Objetivo: Desenvolver uma classe 'Pessoa' e duas subclasses 'Aluno' e 'Professor' que herdem de 'Pessoa'.
//
// Descrição:
// Classe Base:
// - Pessoa
// Propriedades:
// - nome (String)
// - idade (Int)
// Construtor:
// - Inicialize nome e idade.
// Subclasses:
// - Aluno: Adiciona a propriedade 'curso' (String).
// - Professor: Adiciona a propriedade 'departamento' (String).

class PessoaExercicio7 {
    var nome: String
    var idade: Int
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

class AlunoExercicio7: PessoaExercicio7{
    var curso: String
    init(nome: String, idade: Int, curso: String) {
        self.curso = curso
        super.init(nome: nome, idade: idade)
    }
}

class ProfessorExercicio7: PessoaExercicio7{
    var departamento: String
    init(nome: String, idade: Int, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, idade: idade)
    }
}

// Exercício 8: Sistema de Organização de Conteúdo
// Objetivo: Criar uma classe 'ConteudoDigital' e duas subclasses 'Video' e 'Artigo' que herdem de 'ConteudoDigital'.
//
// Descrição:
// Classe Base:
// - ConteudoDigital
// Propriedades:
// - titulo (String)
// - autor (String)
// Construtor:
// - Inicialize titulo e autor.
// Subclasses:
// - Video: Adiciona a propriedade 'duracao' (Int, em minutos).
// - Artigo: Adiciona a propriedade 'numeroDePalavras' (Int).

class ConteudoDigital{
    var titulo: String
    var autor: String
    
    init(titulo: String, autor: String) {
        self.titulo = titulo
        self.autor = autor
    }
}
class Video: ConteudoDigital{
    var duracao: Int
    
    init(titulo: String, autor: String, duracao: Int) {
        self.duracao = duracao
        super.init(titulo: titulo, autor: autor)
    }
}


// Exercício 9: Hierarquia de Imóveis
// Objetivo: Criar uma classe 'Imovel' e duas subclasses 'Casa' e 'Apartamento' que herdem de 'Imovel'.
//
// Descrição:
// Classe Base:
// - Imovel
// Propriedades:
// - endereco (String)
// - preco (Double)
// Construtor:
// - Inicialize endereco e preco.
// Subclasses:
// - Casa: Adiciona a propriedade 'tamanhoDoTerreno' (Double, em metros quadrados).
// - Apartamento: Adiciona a propriedade 'andar' (Int).


class Imovel{
    var endereco: String
    var preco: Double
    
    init(endereco: String, preco: Double) {
        self.endereco = endereco
        self.preco = preco
    }
}

class Casa: Imovel{
    var tamanhoDoTerreno: Double
    
    init(endereco: String, preco: Double, tamanhoDoTerreno: Double) {
        self.tamanhoDoTerreno = tamanhoDoTerreno
        super.init(endereco: endereco, preco: preco)
    }
}

class Apartamento: Imovel{
    var andar: Int
    init(endereco: String, preco: Double, andar: Int) {
        self.andar = andar
        super.init(endereco: endereco, preco: preco)
    }
}

// Exercício 10: Cadeia de Restaurantes
// Objetivo: Desenvolver uma classe 'Restaurante' e duas subclasses 'RestauranteFastFood' e 'RestauranteGourmet' que herdem de 'Restaurante'.
//
// Descrição:
// Classe Base:
// - Restaurante
// Propriedades:
// - nome (String)
// - localizacao (String)
// Construtor:
// - Inicialize nome e localização.
// Subclasses:
// - RestauranteFastFood: Adiciona a propriedade 'tempoMedioDeEntrega' (Int, em minutos).
// - RestauranteGourmet: Adiciona a propriedade 'chef' (String).


class Restaurante {
    var nome: String
    var localizacao: String
    
    init(nome: String, localizacao: String) {
        self.nome = nome
        self.localizacao = localizacao
    }
}

class RestauranteFastFood: Restaurante{
    
    var tempoMedioDeEntrega: Int
    
    init(tempoMedioDeEntrega: Int, nome: String, localizacao: String ) {
        self.tempoMedioDeEntrega = tempoMedioDeEntrega
        super.init(nome: nome, localizacao: localizacao)
    }
}

class RestauranteGourmet: Restaurante {
    var chef: String
    
    init(chef: String, nome: String, localizacao: String ) {
        self.chef = chef
        super.init(nome: nome, localizacao: localizacao)
    }
}
