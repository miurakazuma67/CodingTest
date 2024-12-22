import Foundation

func main() {
    // 標準入力を取得
    guard let input = readLine(), 
          // Aは整数なのでIntで定義
          let A = Int(input), 
          // 2 ≤ A ≤100000
        A >= 2 && A <= 100000 else {
        print("2 ≤ A ≤100000 の整数を入力してください")
        return
    }

    // (A - 1) ÷ 6 を切り上げ、必要なサイコロを振る回数を計算
    let diceRolls = (A + 5) / 6
    
    // 結果を出力
    print(diceRolls)
}

main()