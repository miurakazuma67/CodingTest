## フォルダ構成

```
tests
├── coding-test01            # 第1問
│   ├── in                  # 入力データを格納
│   │   └── basic           # 基本的なテストケース
│   │       ├── 00_sample1.in # テストケース 1 の入力
│   │       └── 00_sample2.in # テストケース 2 の入力
│   ├── out                 # 出力データを格納
│   │   └── basic           # 基本的なテストケースの出力
│   │       ├── 00_sample1.out # テストケース 1 の期待出力
│   │       └── 00_sample2.out # テストケース 2 の期待出力
│   ├── main.swift          # 実装した Swift プログラム
│   └── test_cases01.json   # テストケースの例
├── coding-test02            # 第2問
│   ├── in
│   │   └── basic
│   │       ├── 00_sample1.in
│   │       └── 00_sample2.in
│   ├── out
│   │   └── basic
│   │       ├── 00_sample1.out
│   │       └── 00_sample2.out
│   ├── main.swift
│   └── test_cases02.json
├── coding-test03            # 第3問
    ├── in
    │   └── basic
    │       ├── 00_sample1.in
    │       └── 00_sample2.in
    ├── out
    │   └── basic
    │       ├── 00_sample1.out
    │       └── 00_sample2.out
    ├── main.swift
    └── test_cases03.json
```


## テスト手順
1.プログラムをコンパイルする
```
coding-test01 % swiftc main.swift -o main
```

2.テストを実行
```
coding-test01 % ./main < in/basic/00_sample1.in > out/basic/00_sample1_result.out
coding-test01 % ./main < in/basic/00_sample2.in > out/basic/00_sample2_result.out  
```

3.期待される結果と比較
```
coding-test01 % diff out/basic/00_sample1_result.out out/basic/00_sample1.out
coding-test01 % diff out/basic/00_sample2_result.out out/basic/00_sample2.out
```
