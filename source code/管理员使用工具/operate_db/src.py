#32、38有问题
import urllib.request
import re
import bs4
import time
import csv
from sqlalchemy.engine import create_engine
import traceback
from bs4 import BeautifulSoup
#engine = create_engine("postgresql://dararara:wzw19550418@localhost:5432/dararara")
#engine = create_engine("postgresql://root@122.152.251.171:5432/root")
#connection = engine.connect()

#connection.execute("drop table servent_pic;")
#connection.execute("create table servent_pic(servent_id int primary key, servent_profile_picture_src text not null, servent_picture text not null);")
#lis = ('玛修・基列莱特', '阿尔托莉雅・潘德拉贡', '阿尔托莉雅・潘德拉贡(Alter)', '阿尔托莉雅・潘德拉贡(Lily)', '尼禄・克劳狄乌斯', '齐格飞', '盖乌斯・尤利乌斯・恺撒', '阿蒂拉', '吉尔・德・雷', '骑士迪昂', '卫宫', '吉尔伽美什', '罗宾汉', '阿塔兰忒', '尤瑞艾莉', '阿拉什', '库・丘林', '伊丽莎白・巴托里', '武藏坊弁庆', '库・丘林(Prototype)', '列奥尼达一世', '罗穆路斯', '美杜莎', '乔尔乔斯', '爱德华・蒂奇', '布狄卡', '牛若丸', '亚历山大', '玛丽・安托瓦内特', '玛尔达', '美狄亚', '吉尔・德・雷(Caster)', '汉斯・克里斯蒂安・安徒生', '威廉・莎士比亚', '梅菲斯托费勒斯', '沃尔夫冈・阿马德乌斯・莫扎特', '诸葛孔明(埃尔梅罗Ⅱ世)', '库・丘林(Caster)', '佐佐木小次郎', '咒腕哈桑', '斯忒诺', '荆轲', '夏尔・亨利・桑松', '剧院魅影', '玛塔・哈丽', '卡米拉', '赫拉克勒斯', '兰斯洛特', '吕布奉先', '斯巴达克斯', '坂田金时', '弗拉德三世', '阿斯忒里俄斯', '卡利古拉', '大流士三世', '清姬', '血斧埃里克', '玉藻猫', '贞德', '俄里翁', '伊丽莎白・巴托里(万圣节)', '玉藻前', '大卫', '赫克托耳', '弗朗西斯・德雷克', '安妮・伯妮＆玛莉・瑞德', '美狄亚(Lily)', '冲田总司', '织田信长', '斯卡哈', '迪尔姆德・奥迪那', '弗格斯・马克・罗伊', '阿尔托莉雅・潘德拉贡(圣诞Alter)', '童谣', '开膛手杰克', '莫德雷德', '尼古拉・特斯拉', '阿尔托莉雅·潘德拉贡(Alter)(Lancer)', '冯・霍恩海姆・帕拉塞尔苏斯', '查尔斯・巴贝奇', '亨利・杰基尔＆海德', '弗兰肯斯坦', '所罗门', '阿周那', '迦尔纳', '谜之女主角X', '芬恩・麦克库尔', '布伦希尔德', '贝奥武夫', '尼禄・克劳狄乌斯(新娘)', '两仪式', '两仪式(Assassin)', '天草四郎', '阿斯托尔福', '幼吉尔', '岩窟王', '南丁格尔', '库・丘林(Alter)', '女王梅芙', '海伦娜・布拉瓦茨基', '罗摩', '李书文', '托马斯・爱迪生', '杰罗尼莫', '比利小子', '贞德(Alter)', '安哥拉曼纽', '伊斯坎达尔', '卫宫(Assassin)', '百貌哈桑', '爱丽丝菲尔(天之衣)', '酒吞童子', '玄奘三藏', '源赖光', '坂田金时(Rider)', '茨木童子', '风魔小太郎', '奥斯曼狄斯', '阿尔托莉雅·潘德拉贡(Lancer)', '尼托克丽丝', '兰斯洛特(Saber)', '崔斯坦', '高文', '静谧哈桑', '俵藤太', '贝德维尔', '莱昂纳多・达・芬奇', '玉藻前(Lancer)', '阿尔托莉雅·潘德拉贡(Archer)', '玛丽·安托瓦内特(Caster)', '安妮·伯妮＆玛莉·瑞德(Archer)', '莫德雷德(Rider)', '斯卡哈(Assassin)', '清姬(Lancer)', '玛尔达(Ruler)', '伊莉雅丝菲尔・冯・爱因兹贝伦', '克洛伊・冯・爱因兹贝伦', '伊丽莎白・巴托里(勇者)', '克娄巴特拉', '弗拉德三世(EXTRA)', '贞德・Alter・Santa・Lily', '伊什塔尔', '恩奇都', '魁札尔・科亚特尔', '吉尔伽美什(Caster)', '美杜莎(Lancer)', '戈耳工', '豹人', '提亚马特', '梅林', '盖提亚', '所罗门', '宫本武藏', '“山中老人”', '谜之女主角X(Alter)', '新宿的Archer', '卫宫(Alter)', '新宿的Avenger', '新宿的Assassin', '亚瑟・潘德拉贡(Prototype)', '土方岁三', '茶茶', 'Meltryllis', 'Passionlip', '铃鹿御前', 'BB', '杀生院祈荒', 'BeastⅢ', '不夜城的Caster', '不夜城的Assassin', '黄金国的Berserker', '反抗军的Rider', '夏洛克・福尔摩斯', '保罗・班扬', '尼禄·克劳狄乌斯(Caster)', '弗兰肯斯坦(Saber)', '尼托克丽丝(Assassin)', '织田信长(Berserker)', '阿尔托莉雅·潘德拉贡(Alter)(Rider)', '海伦娜·布拉瓦茨基(Archer)', '源赖光(Lancer)', '伊什塔尔(Rider)', '帕尔瓦蒂', 'Archer Inferno', 'Assassin Paraiso', '宝藏院胤舜', '柳生但马守宗矩', '加藤段藏', '刑部姬', '机械伊丽亲', '机械伊丽亲Ⅱ号机', '俄刻阿诺斯的Caster', '哪吒', '米德拉什的Caster', '阿比盖尔・威廉姆斯', '埃列什基伽勒', '阿蒂拉·the·San(ta)', '葛饰北斋', '塞弥拉弥斯', '浅上藤乃', '阿纳斯塔西娅', '阿塔兰忒(Alter)', '阿维斯布隆', '安东尼奥・萨列里', '伊凡雷帝', '阿喀琉斯', '喀戎', '齐格', '冲田总司(Alter)', '冈田以藏', '坂本龙马', '拿破仑', '齐格鲁德', '瓦尔基里', '斯卡哈・丝卡蒂', '贞德(Archer)', '茨木童子(Lancer)', '牛若丸(Assassin)', '贞德(Alter)(Berserker)', 'BB(SSR)', '女王梅芙(Saber)', '谜之女主角XX', '迪尔姆德・奥迪那(Saber)', '西托奈', '酒吞童子(Caster)', '项羽', '兰陵王', '秦良玉', '始皇帝', '虞美人', '赤兔马', '布拉达曼特', '魁札尔·科亚特尔(桑巴/圣诞)', '红阎魔', '李书文(Assassin)', '美游・艾德费尔特', '紫式部', 'Kingprotea')
#print("insert into servent_pic(servent_id, servent_profile_picture_src, servent_picture) values", end = '')


for i in range(1):
    try:
        command = "("
        url = 'https://fgo.wiki/w/' + urllib.parse.quote("迦摩")
        page = urllib.request.urlopen(url)
        data = page.read()
        udata = data.decode('utf-8')
        soup = BeautifulSoup(udata, 'html.parser')
        temp = soup.find_all({"th",'h3'})
        k = 0
        finded = 0
        for t in temp:
            if(finded is 0 and t.get_text().find("No.") >= 0):
                finded = 1
                #print(len(t.get_text()[t.get_text().find("No.")+3:].strip()))
                command += t.get_text()[t.get_text().find("No.")+3:].strip() + ','
                #print(command)
            if(t.get_text() == '头像'):
                k = 3
            if(k > 0):
                k-=1
                if(k == 1):
                    command += "'" +  "https://fgo.wiki"+t.find('img').attrs['src'].strip() + "',"
                    #print(command)

        temp = soup.find_all('div')
        finded = 0
        for t in temp:
            try:
                if(finded == 0 and t.attrs['title'].find('初始状态') >= 0):
                    command += "'" +"https://fgo.wiki"+t.find('img').attrs['src'].strip() + "'),"
                    #print(command)
                    finded = 1
            except:
                pass
        print(command, end='')

    except Exception as e:
        pass
        