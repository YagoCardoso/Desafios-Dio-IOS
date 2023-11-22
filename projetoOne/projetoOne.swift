import Foundation

enum GameState {
    case started
    case won
    case lost
}

struct Letter {
    var letter: Character
    var isGuessed: Bool
}

class HangmanGame {

    private var word: String
    private var guessedLetters: [Letter]
    private var state: GameState

    init(word: String) {
        self.word = word
        self.guessedLetters = []
        self.state = .started
    }

    func didGuessLetter(letter: Character) -> Bool {
        return self.word.contains(letter)
    }

    func markLetterAsGuessed(letter: Character) {
        for (index, guessedLetter) in self.guessedLetters.enumerated() {
            if guessedLetter.letter == letter {
                self.guessedLetters[index].isGuessed = true
                return
            }
        }

        self.guessedLetters.append(Letter(letter: letter, isGuessed: true))
    }

    func didWin() -> Bool {
        return self.word.allSatisfy { letter in
            self.guessedLetters.contains(where: { $0.letter == letter })
        }
    }

    func didLose() -> Bool {
        return self.guessedLetters.count >= self.word.count
    }

    func getState() -> GameState {
        return self.state
    }

    func display() {
        for (index, letter) in self.word.enumerated() {
            if self.guessedLetters.contains(where: { $0.letter == letter }) {
                print(letter, terminator: "")
            } else {
                print("_", terminator: "")
            }
        }
        print()
    }
}

func main() {
    let game = HangmanGame(word: "banana")

    game.display()

    while game.state != .won && game.state != .lost {
        let letter = readLine()!.first!

        let didGuess = game.didGuessLetter(letter: letter)

        if didGuess {
            game.markLetterAsGuessed(letter: letter)
        }

        game.display()

        if game.didWin() {
            print("Parabéns! Você venceu!")
        } else if game.didLose() {
            print("Que pena! Você perdeu. A palavra era \(game.word)")
        }
    }
}

main()
