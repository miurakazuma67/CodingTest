import Foundation

func main() {
    // 標準入力を取得
    // 入力として棋譜（L または R からなる文字列）を受け取る
    guard let input = readLine() else {
        return // 入力がない場合はそのまま終了
    }

    // 初期配置: 黒石 (b), 白石 (w)
    // 最初の状態として、黒石 (b) と白石 (w) が隣り合った状態を設定
    var board: [Character] = ["b", "w"]

    // 棋譜に基づいて石を配置
    for (index, move) in input.enumerated() {
        let isBlack = index % 2 == 0 // 奇数手は黒石, 偶数手は白石
        let stone: Character = isBlack ? "b" : "w" // 現在置く石の色を判定

        if move == "L" {
            // 左端に石を追加する場合
            board.insert(stone, at: 0)
        } else if move == "R" {
            // 右端に石を追加する場合
            board.append(stone)
        }

        // 石をひっくり返す処理
        // 置いた石と同じ色の石が近くにある場合、間の石をひっくり返す
        flipStones(on: &board, at: move == "L" ? 0 : board.count - 1)
    }

    // 最終的な黒石と白石の数をカウント
    // 配列を走査して、黒石と白石の個数をそれぞれ計算
    let blackCount = board.filter { $0 == "b" }.count
    let whiteCount = board.filter { $0 == "w" }.count

    // 結果を出力
    // 黒石と白石の数をスペース区切りで出力
    print(blackCount, whiteCount)
}

/// 石をひっくり返す処理
/// - Parameters:
///   - board: 石を配置する盤面
///   - index: 何番目の石を置いたか
func flipStones(on board: inout [Character], at index: Int) {
    let stone = board[index] // 現在配置した石の色を取得

    // 左方向の処理: 置いた石の左側を探索
    var leftIndex = index - 1
    // 左方向に進み、同じ色の石が現れるまで探索を続ける
    while leftIndex >= 0 && board[leftIndex] != stone {
        leftIndex -= 1
    }

    // 同じ色の石が見つかった場合、その間の石をすべて同じ色に変更
    if leftIndex >= 0 && board[leftIndex] == stone {
        for i in (leftIndex + 1)..<index {
            board[i] = stone
        }
    }

    // 右方向の処理: 置いた石の右側を探索
    var rightIndex = index + 1
    // 右方向に進み、同じ色の石が現れるまで探索を続ける
    while rightIndex < board.count && board[rightIndex] != stone {
        rightIndex += 1
    }

    // 同じ色の石が見つかった場合、その間の石をすべて同じ色に変更
    if rightIndex < board.count && board[rightIndex] == stone {
        for i in (index + 1)..<rightIndex {
            board[i] = stone
        }
    }
}

main()