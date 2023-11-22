import Foundation

// Classe Pessoa

class Pessoa {
    var nome: String
    var idade: Int
    var sexo: Sexo

    init(nome: String, idade: Int, sexo: Sexo) {
        self.nome = nome
        self.idade = idade
        self.sexo = sexo
    }
}

// Enum Sexo

enum Sexo {
    case masculino
    case feminino
}

// Classe ListaPessoas

class ListaPessoas {
    var pessoas: [Pessoa] = []

    // Adiciona uma pessoa à lista
    func adicionarPessoa(pessoa: Pessoa) {
        pessoas.append(pessoa)
    }

    // Remove uma pessoa da lista
    func removerPessoa(pessoa: Pessoa) {
        pessoas.removeAll { $0 == pessoa }
    }

    // Lista todas as pessoas na lista
    func listarPessoas() {
        for pessoa in pessoas {
            print(pessoa.nome, pessoa.idade, pessoa.sexo)
        }
    }
}

// Exemplo de uso

let listaPessoas = ListaPessoas()

listaPessoas.adicionarPessoa(Pessoa(nome: "João", idade: 20, sexo: .masculino))
listaPessoas.adicionarPessoa(Pessoa(nome: "Maria", idade: 25, sexo: .feminino))
listaPessoas.adicionarPessoa(Pessoa(nome: "Pedro", idade: 30, sexo: .masculino))

listaPessoas.listarPessoas()
