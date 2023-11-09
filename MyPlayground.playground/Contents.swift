import UIKit

let steve = "Steve"
var jobs: String? = "Jobs"

print("Nome completo: \(steve) \(jobs ?? "Wozniak")")

if let nome = jobs {
    print("Nome completo com Optional Binding: \(steve) \(nome)")
} else {
    print("Nome completo com Optional Binding: \(steve) Wozniak")
}
