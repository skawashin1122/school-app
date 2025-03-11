-- テーブルの作成
CREATE TABLE schools (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(50) NOT NULL,
    feature TEXT NOT NULL
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender ENUM('男', '女') NOT NULL,
    birth DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(200) NOT NULL,
    school_id INT NOT NULL,
    FOREIGN KEY (school_id) REFERENCES schools(school_id)
);

-- データの挿入
INSERT INTO schools (school_id, school_name, feature) VALUES
(1, '鵜戸中学校', '海に面した立地で、サーフィン部が県大会常連！朝の波チェックが日課の先生も。青い空と海に囲まれた明るい校風が自慢です。'),
(2, '東郷中学校', '緑豊かな環境で農業体験が充実。手作り野菜を使った料理コンテストは地域の名物行事！笑顔あふれる元気な学校です。'),
(3, '油津中学校', '歴史ある港町の文化を大切に。伝統芸能部の演舞は観光客にも大人気！地域の方々との交流が盛んな温かい学校です。'),
(4, '吾田中学校', '吹奏楽部の演奏レベルが県内トップクラス！校内に音楽が流れる明るい雰囲気と、生徒主体の文化祭が特徴です。'),
(5, '南郷中学校', '地元特産のマンゴーの栽培に挑戦！科学部の研究成果は全国大会にも。のどかな田園風景に囲まれたアットホームな学校です。'),
(6, '細田中学校', '英語教育に力を入れ、海外姉妹校との交流が活発。国際感覚豊かな生徒が多く、夢を語り合う校風が自慢です。'),
(7, '北郷中学校', '山の自然を活かした冒険教育が人気！チームワーク抜群のスポーツ大会と、生徒会主催の楽しいイベントが盛りだくさんです。');

INSERT INTO students VALUES
(1501, '大本 浩美', '男', '2006-06-09', 'omoto_hiromi@example.co.jp', '日南市岩崎3-12-8', 6),
(1502, '成田 綾子', '女', '2009-02-09', 'naritaayako@example.jp', '日南市大堂津4-5-1', 2),
(1503, '星野 あつこ', '女', '2007-09-10', 'hoshinoatsuko@example.net', '日南市吾田東1-8-15', 4),
(1504, '塚本 洋一', '男', '2006-10-17', 'tsukamoto1017@example.jp', '日南市星倉4-2-9', 7),
(1505, '松本 健一', '女', '2007-01-10', 'matsumoto110@example.net', '日南市油津2-7-3', 3),
(1506, '大曲 和代', '女', '2008-05-25', 'kazuyo_omagari@example.jp', '日南市木山1-4-20', 1),
(1507, '清水 孝之', '男', '2008-05-09', 'shimizu_takayuki@example.org', '日南市飫肥5-9-11', 7),
(1508, '大塚 竜彦', '男', '2008-06-04', 'otsukatatsuhiko@example.co.jp', '日南市北郷町郷之原甲2345', 5),
(1509, '小田部 恭輔', '男', '2008-11-04', 'kyousuke_otabe@example.com', '日南市南郷町潟上1-3-7', 1),
(1510, '田中 朝美', '女', '2006-05-15', 'tanaka515@example.com', '日南市大字宮浦3455-2', 6),
(1511, '岸本 光治', '男', '2006-07-21', 'kojikishimoto@example.org', '日南市鵜戸2-1-16', 5),
(1512, '遠山 信彦', '男', '2007-01-16', 'nobuhikotooyama@example.jp', '日南市戸高3-7-8', 2),
(1513, '平井 裕基', '男', '2008-04-28', 'hirai_yuuki@example.co.jp', '日南市松永1-6-12', 1),
(1514, '大森 裕美', '女', '2007-08-02', 'omoriyumi@example.org', '日南市細田4-10-5', 1),
(1515, '森田 啓', '男', '2008-12-30', 'moritakei@example.com', '日南市風田2-5-9', 1),
(1516, '三澤 美保子', '女', '2008-03-17', 'mihoko_misawa@example.org', '日南市梅ヶ浜1-3-21', 3),
(1517, '村上 栄一', '男', '2009-03-04', 'murakami_eiichi@example.ne.jp', '日南市大字酒谷甲5678', 6),
(1518, '岡部 怜奈', '女', '2006-04-09', 'okabereina@example.net', '日南市新町1-2-3', 6),
(1519, '弓削 寛', '男', '2007-01-07', 'hiroshiyuge@example.ne.jp', '日南市中央通3-8-14', 4),
(1520, '藤井 美和', '女', '2006-04-06', 'fujii46@example.ne.jp', '日南市園田1-5-7', 5),
(1521, '仲野 洋一郎', '男', '2008-01-05', 'toichirou_nakano@example.ne.jp', '日南市西町4-9-2', 7),
(1522, '米井 仁', '男', '2008-12-16', 'hitoshiyonei@example.jp', '日南市吾田西3-11-6', 3),
(1523, '柴山 崇裕', '男', '2007-12-17', 'shibayama_takahiro@example.jp', '日南市大字萩之嶺3890-1', 6),
(1524, '梅木 晃平', '男', '2008-03-17', 'umekikohei@example.com', '日南市春日町6-2-18', 1),
(1525, '中村 真弓', '女', '2006-05-03', 'mayuminakamura@example.ne.jp', '日南市南郷町東町1-4-9', 5),
(1526, '佐久間 貴司', '男', '2007-09-19', 'takashi_sakuma@example.org', '日南市飫肥10-8-2', 6),
(1527, '斉藤 芳明', '男', '2008-03-05', 'yoshiaki_saito@example.com', '日南市北郷町北河内5432', 7),
(1528, '大西 宏', '男', '2009-02-18', 'hiroshionishi@example.org', '日南市材木町2-3-15', 6),
(1529, '古屋 隆昭', '男', '2007-01-24', 'furuya_takaaki@example.co.jp', '日南市平野5-12-7', 5),
(1530, '秋元 千恵', '女', '2006-11-18', 'chie_akimoto@example.org', '日南市大字富土甲1234-5', 3),
(1531, '般若 恵佑', '男', '2006-10-24', 'hannyakeisuke@example.co.jp', '日南市上町1-9-4', 1),
(1532, '北村 木綿子', '女', '2007-02-18', 'yuukokitamura@example.org', '日南市下町3-6-19', 4),
(1533, '本吉 保', '男', '2008-01-10', 'motoyoshitamotsu@example.jp', '日南市星倉2-8-10', 4),
(1534, '鴇田 孝夫', '男', '2007-05-07', 'takaotokita@example.co.jp', '日南市大字東弁分甲789', 5),
(1535, '山口 幸次', '男', '2007-04-05', 'yamaguchi_koji@example.jp', '日南市南郷町榎原1-7-3', 4),
(1536, '澤木 多恵', '女', '2008-05-24', 'sawaki_524@example.jp', '日南市永田3-4-11', 1),
(1537, '田代 翔平', '男', '2006-12-31', 'tashiro_shouhei@example.net', '日南市城下町2-5-8', 2),
(1538, '鈴木 弘二', '男', '2007-10-10', 'suzukikoji@example.jp', '日南市大字板敷6789', 1),
(1539, '輪島 奈々', '女', '2008-11-15', 'wajima1115@example.org', '日南市吾田東5-1-17', 6),
(1540, '丸井 拓也', '男', '2006-12-21', 'marui_1221@example.net', '日南市南町4-2-6', 1);