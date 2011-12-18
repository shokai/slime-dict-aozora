slime dict aozora
=================
青空文庫からslime用の辞書を生成する


## ダウンロード

[総合インデックス](http://www.aozora.gr.jp/index_pages/person_all.html)からリストをzipでダウンロード

    % wget http://www.aozora.gr.jp/index_pages/list_person_all_extended.zip
    % unzip list_person_all_extended.zip


## 書籍データのURLを取り出す

    % cat list_person_all_extended.csv | nkf -u | ruby -Ku extract_book_url.rb > books.txt


## 書籍データをダウンロード、解凍する

    % mkdir books
    % cd books
    % wget -w 5 -i ../books.txt
    % unzip "*.zip"

## 辞書を作る

    % cd ../
    % cat books/*.txt | nkf -u | ruby -Ku make_dict.rb > raw-dict.txt
    % cat raw-dict.txt | sort | uniq > aozora-dict.txt

## 名詞のみの辞書を作る例

    % cat aozora-dict.txt | grep "\[名詞\]" > aozora-dict-noun.txt
