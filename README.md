slime dict aozora
=================
青空文庫からslime用の辞書を生成する


## ダウンロード

[総合インデックス](http://www.aozora.gr.jp/index_pages/person_all.html)からリストをzipでダウンロード

    % wget http://www.aozora.gr.jp/index_pages/list_person_all_extended.zip
    % unzip list_person_all_extended.zip


## 書籍データのURLを取り出す

    % cat list_person_all_extended.csv | nkf -u | ruby -Ku extract_book_url.rb > books.txt