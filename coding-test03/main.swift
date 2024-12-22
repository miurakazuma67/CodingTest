import Foundation

func main() {
    // 標準入力を取得
    guard let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines), !input.isEmpty else {
        return
    }

    // 数字の文字列をソート
    var digits = Array(input).sorted()

    // 最初の桁に0が来ないように調整
    if let firstNonZeroIndex = digits.firstIndex(where: { $0 != "0" }) {
        // 最初の0以外の数字と先頭を交換
        digits.swapAt(0, firstNonZeroIndex)
    }

    // 配列を結合して最小値を生成
    let result = String(digits)

    // 結果を出力
    print(result)
}

main()
