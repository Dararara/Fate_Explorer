--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.8 (Ubuntu 10.8-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alignment; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.alignment
(
    alignment_id   integer NOT NULL,
    alignment_name character varying(10)
);


ALTER TABLE public.alignment
    OWNER TO ubuntu;

--
-- Name: alignment_alignment_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.alignment_alignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alignment_alignment_id_seq
    OWNER TO ubuntu;

--
-- Name: alignment_alignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.alignment_alignment_id_seq OWNED BY public.alignment.alignment_id;


--
-- Name: article; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.article
(
    article_id      integer               NOT NULL,
    article_title   character varying(30) NOT NULL,
    article_content text
);


ALTER TABLE public.article
    OWNER TO ubuntu;

--
-- Name: article_article_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.article_article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_article_id_seq
    OWNER TO ubuntu;

--
-- Name: article_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.article_article_id_seq OWNED BY public.article.article_id;


--
-- Name: author; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.author
(
    author_id   integer               NOT NULL,
    author_name character varying(30) NOT NULL
);


ALTER TABLE public.author
    OWNER TO ubuntu;

--
-- Name: author_and_article; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.author_and_article
(
    author_id  integer NOT NULL,
    article_id integer NOT NULL
);


ALTER TABLE public.author_and_article
    OWNER TO ubuntu;

--
-- Name: author_author_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.author_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.author_author_id_seq
    OWNER TO ubuntu;

--
-- Name: author_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.author_author_id_seq OWNED BY public.author.author_id;


--
-- Name: bond; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.bond
(
    bond_id    integer NOT NULL,
    servent_id integer NOT NULL,
    bond_text  text    NOT NULL
);


ALTER TABLE public.bond
    OWNER TO ubuntu;

--
-- Name: book; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.book
(
    book_id   integer               NOT NULL,
    book_name character varying(50) NOT NULL,
    isbn      character varying(20) NOT NULL
);


ALTER TABLE public.book
    OWNER TO ubuntu;

--
-- Name: book_and_writer; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.book_and_writer
(
    book_id   integer NOT NULL,
    writer_id integer NOT NULL
);


ALTER TABLE public.book_and_writer
    OWNER TO ubuntu;

--
-- Name: book_book_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.book_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_book_id_seq
    OWNER TO ubuntu;

--
-- Name: book_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.book_book_id_seq OWNED BY public.book.book_id;


--
-- Name: class; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.class
(
    class_id   integer               NOT NULL,
    class_name character varying(15) NOT NULL
);


ALTER TABLE public.class
    OWNER TO ubuntu;

--
-- Name: class_class_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.class_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_class_id_seq
    OWNER TO ubuntu;

--
-- Name: class_class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.class_class_id_seq OWNED BY public.class.class_id;


--
-- Name: origin; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.origin
(
    origin_id   integer               NOT NULL,
    origin_name character varying(30) NOT NULL
);


ALTER TABLE public.origin
    OWNER TO ubuntu;

--
-- Name: prototype; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.prototype
(
    prototype_id   integer               NOT NULL,
    prototype_name character varying(30) NOT NULL
);


ALTER TABLE public.prototype
    OWNER TO ubuntu;

--
-- Name: prototype_and_origin; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.prototype_and_origin
(
    prototype_id integer NOT NULL,
    origin_id    integer NOT NULL
);


ALTER TABLE public.prototype_and_origin
    OWNER TO ubuntu;

--
-- Name: prototype_and_region; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.prototype_and_region
(
    prototype_id integer NOT NULL,
    region_id    integer NOT NULL
);


ALTER TABLE public.prototype_and_region
    OWNER TO ubuntu;

--
-- Name: region; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.region
(
    region_name character varying(15) NOT NULL,
    region_id   integer               NOT NULL
);


ALTER TABLE public.region
    OWNER TO ubuntu;

--
-- Name: servent; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent
(
    servent_id            integer NOT NULL,
    servent_name          character varying(30),
    servent_name_japanese character varying(30),
    servent_name_english  character varying(60),
    height                integer,
    weight                integer,
    gender                character varying(2),
    strength              character varying(5),
    endurance             character varying(5),
    agility               character varying(5),
    mana                  character varying(5),
    luck                  character varying(5),
    noble_phantasm        character varying(5),
    craft_name            character varying(30),
    craft_description     text,
    craft_src             text
);


ALTER TABLE public.servent
    OWNER TO ubuntu;

--
-- Name: servent_and_prototype; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_and_prototype
(
    servent_id   integer NOT NULL,
    prototype_id integer NOT NULL
);


ALTER TABLE public.servent_and_prototype
    OWNER TO ubuntu;

--
-- Name: illustrator; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.illustrator
(
    illustrator_name character varying(30) NOT NULL,
    illustrator_id   integer               NOT NULL
);


ALTER TABLE public.illustrator
    OWNER TO ubuntu;

--
-- Name: illustrator_illustrator_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.illustrator_illustrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.illustrator_illustrator_id_seq
    OWNER TO ubuntu;

--
-- Name: illustrator_illustrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.illustrator_illustrator_id_seq OWNED BY public.illustrator.illustrator_id;


--
-- Name: origin_and_article; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.origin_and_article
(
    origin_id  integer NOT NULL,
    article_id integer NOT NULL
);


ALTER TABLE public.origin_and_article
    OWNER TO ubuntu;

--
-- Name: origin_and_book; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.origin_and_book
(
    origin_id integer NOT NULL,
    book_id   integer NOT NULL
);


ALTER TABLE public.origin_and_book
    OWNER TO ubuntu;

--
-- Name: origin_origin_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.origin_origin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.origin_origin_id_seq
    OWNER TO ubuntu;

--
-- Name: origin_origin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.origin_origin_id_seq OWNED BY public.origin.origin_id;


--
-- Name: pedia; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.pedia
(
    prototype_id integer NOT NULL,
    pedia_id     integer NOT NULL,
    pedia_url    text    NOT NULL
);


ALTER TABLE public.pedia
    OWNER TO ubuntu;

--
-- Name: pedia_name; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.pedia_name
(
    pedia_id   integer               NOT NULL,
    pedia_name character varying(10) NOT NULL
);


ALTER TABLE public.pedia_name
    OWNER TO ubuntu;

--
-- Name: pedia_name_pedia_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.pedia_name_pedia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedia_name_pedia_id_seq
    OWNER TO ubuntu;

--
-- Name: pedia_name_pedia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.pedia_name_pedia_id_seq OWNED BY public.pedia_name.pedia_id;


--
-- Name: prototype_prototype_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.prototype_prototype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prototype_prototype_id_seq
    OWNER TO ubuntu;

--
-- Name: prototype_prototype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.prototype_prototype_id_seq OWNED BY public.prototype.prototype_id;


--
-- Name: region_and_article; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.region_and_article
(
    region_id  integer NOT NULL,
    article_id integer NOT NULL
);


ALTER TABLE public.region_and_article
    OWNER TO ubuntu;

--
-- Name: region_and_book; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.region_and_book
(
    region_id integer NOT NULL,
    book_id   integer NOT NULL
);


ALTER TABLE public.region_and_book
    OWNER TO ubuntu;

--
-- Name: region_region_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.region_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.region_region_id_seq
    OWNER TO ubuntu;

--
-- Name: region_region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.region_region_id_seq OWNED BY public.region.region_id;


--
-- Name: servent_and_alignment; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_and_alignment
(
    alignment_id integer NOT NULL,
    servent_id   integer NOT NULL
);


ALTER TABLE public.servent_and_alignment
    OWNER TO ubuntu;

--
-- Name: servent_and_class; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_and_class
(
    servent_id integer NOT NULL,
    class_id   integer NOT NULL
);


ALTER TABLE public.servent_and_class
    OWNER TO ubuntu;

--
-- Name: servent_and_illustrator; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_and_illustrator
(
    servent_id     integer NOT NULL,
    illustrator_id integer NOT NULL
);


ALTER TABLE public.servent_and_illustrator
    OWNER TO ubuntu;

--
-- Name: servent_and_voice_actor; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_and_voice_actor
(
    servent_id     integer NOT NULL,
    voice_actor_id integer NOT NULL
);


ALTER TABLE public.servent_and_voice_actor
    OWNER TO ubuntu;

--
-- Name: servent_bond; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_bond
(
    servent_id integer NOT NULL,
    bond_id    integer NOT NULL,
    bond_text  text    NOT NULL
);


ALTER TABLE public.servent_bond
    OWNER TO ubuntu;

--
-- Name: servent_full_pic; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_full_pic
(
    servent_id      integer NOT NULL,
    full_pic_id     integer NOT NULL,
    servent_picture text    NOT NULL
);


ALTER TABLE public.servent_full_pic
    OWNER TO ubuntu;

--
-- Name: servent_profile_pic; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.servent_profile_pic
(
    servent_id     integer NOT NULL,
    profile_pic_id integer NOT NULL,
    profile_pic    text    NOT NULL
);


ALTER TABLE public.servent_profile_pic
    OWNER TO ubuntu;

--
-- Name: voice_actor; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.voice_actor
(
    voice_actor_name character varying(10) NOT NULL,
    voice_actor_id   integer               NOT NULL
);


ALTER TABLE public.voice_actor
    OWNER TO ubuntu;

--
-- Name: voice_actor_voice_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.voice_actor_voice_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.voice_actor_voice_actor_id_seq
    OWNER TO ubuntu;

--
-- Name: voice_actor_voice_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.voice_actor_voice_actor_id_seq OWNED BY public.voice_actor.voice_actor_id;


--
-- Name: writer; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.writer
(
    writer_id   integer               NOT NULL,
    writer_name character varying(30) NOT NULL
);


ALTER TABLE public.writer
    OWNER TO ubuntu;

--
-- Name: writer_writer_id_seq; Type: SEQUENCE; Schema: public; Owner: ubuntu
--

CREATE SEQUENCE public.writer_writer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.writer_writer_id_seq
    OWNER TO ubuntu;

--
-- Name: writer_writer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ubuntu
--

ALTER SEQUENCE public.writer_writer_id_seq OWNED BY public.writer.writer_id;


--
-- Name: alignment alignment_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.alignment
    ALTER COLUMN alignment_id SET DEFAULT nextval('public.alignment_alignment_id_seq'::regclass);


--
-- Name: article article_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.article
    ALTER COLUMN article_id SET DEFAULT nextval('public.article_article_id_seq'::regclass);


--
-- Name: author author_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.author
    ALTER COLUMN author_id SET DEFAULT nextval('public.author_author_id_seq'::regclass);


--
-- Name: book book_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.book
    ALTER COLUMN book_id SET DEFAULT nextval('public.book_book_id_seq'::regclass);


--
-- Name: class class_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.class
    ALTER COLUMN class_id SET DEFAULT nextval('public.class_class_id_seq'::regclass);


--
-- Name: illustrator illustrator_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.illustrator
    ALTER COLUMN illustrator_id SET DEFAULT nextval('public.illustrator_illustrator_id_seq'::regclass);


--
-- Name: origin origin_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin
    ALTER COLUMN origin_id SET DEFAULT nextval('public.origin_origin_id_seq'::regclass);


--
-- Name: pedia_name pedia_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.pedia_name
    ALTER COLUMN pedia_id SET DEFAULT nextval('public.pedia_name_pedia_id_seq'::regclass);


--
-- Name: prototype prototype_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype
    ALTER COLUMN prototype_id SET DEFAULT nextval('public.prototype_prototype_id_seq'::regclass);


--
-- Name: region region_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region
    ALTER COLUMN region_id SET DEFAULT nextval('public.region_region_id_seq'::regclass);


--
-- Name: voice_actor voice_actor_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.voice_actor
    ALTER COLUMN voice_actor_id SET DEFAULT nextval('public.voice_actor_voice_actor_id_seq'::regclass);


--
-- Name: writer writer_id; Type: DEFAULT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.writer
    ALTER COLUMN writer_id SET DEFAULT nextval('public.writer_writer_id_seq'::regclass);


--
-- Data for Name: alignment; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.alignment (alignment_id, alignment_name) FROM stdin;
1	秩序·中庸
2	秩序·恶
3	混沌·狂
4	秩序·善
5	秩序·狂
6	混沌·中庸
7	中立·善
8	混沌·善
9	中立·中庸
10	混沌·新娘
11	中立·夏
12	中立·恶
13	秩序·夏
14	混沌·夏
15	混沌·恶
\.


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.article (article_id, article_title, article_content) FROM stdin;
1	波斯帝国	曾经有座山，隔开了伊朗与两河流域，但是，一位大英雄出现了，其名为阿拉什，使出一记Stella!!!打出一条道路，叫做呼罗珊大道，非要我形容对这条大道的感觉嘛——发育不良的胼胝体\n当时两河流域的霸主是亚述人，亚述帝国可谓是盛极一时，呼罗珊大道的另一头，米底人虽然战斗力不行，但是养马，马在当时相当于坦克，亚述人虽然厉害，但自己并不养马，后果可想而知，米底人穿过呼罗珊大道，灭掉亚述帝国，直抵吕底亚，但因为天气不好，就停战了，有时候迷信也不是坏事，哈\n不过米底人这一次崛起的时间不长，我怀疑他们应该是迦勒底人，建立的是巴比伦第二帝国，有一位神奇的君王叫做尼布甲尼撒，这位君王死后，帝国瞬间被居鲁士推平，嗯，很合理\n米底人的帝国大概持续了一百年左右，就被居鲁士以弱胜强吃掉了，居鲁士首创了帝国体制，就是，顺我者昌逆我者亡，我不需要你跟我一样，只要你听我指挥，这样的政策催生了一个伟大的帝国\n他继续西征，灭亡吕底亚，这期间发生了著名的德尔斐神谕坑人事件，从这本书里看来，应该是吕底亚国王得到神谕后自信心爆棚，主动出击，一败涂地\n居鲁士发现统治成本极低的方法后一直采取宽容的政策，吕底亚国王都被叫去搞财政，不过呢，有些吕底亚人以为居鲁士这叫软弱，居鲁士前脚走，后脚就叛乱\n居鲁士毫不留情地彰显出自己的实力\n之后他穿过呼罗珊大道，吸取自己的教训，把波斯老家的那群亲戚们全打服了\n什么也不能阻止居鲁士继续征服，最终，七十多岁的居鲁士死于遥远的北方，脑袋被做成酒杯\n不是爱喝酒吗，那就喝个够吧\n\n居鲁士对子女的安排如下，长子冈比西斯当国王，近亲结婚，娶他的两个姐妹，次子巴尔迪亚拥有相当于是封地的大夏地区\n这样的分配我觉得很有问题，如果遵循权力的冷血逻辑，应该只留下唯一的继承人，不然无论如何设计，权力的诱惑都有可能导致内战\n不过呢，冈比西斯想去的地方是埃及，他兵锋直指埃及，埃及作为一个古老的帝国，根本打不过波斯，被波斯轻易撂倒\n这时发生了神奇的事情，冈比西斯忽然手滑，被自己的剑刺伤，随后感染，就死了…死了…\n巴尔迪亚接位，但是巴尔迪亚做了个蠢事，首先，他缺钱，其次，他不能伤害自己胜利联盟，那怎么办？好办呀，他把冈比西斯带去的很多贵族列为自己的敌人，国家的叛徒，把他们的财产没收了\n呵呵，锅从天降，大流士等七名贵族带着随从就打伏击战去了，大流士是冈比西斯的带刀侍卫，和居鲁士大帝有血缘关系，还算是正统吧\n他们用地位吓蒙了守卫，闯进巴尔迪亚的营帐，等守卫们回过神来，已经晚了\n但是，大流士发现了惊天大秘密，这个巴尔迪亚是假的，真正的巴尔迪亚已经被冈比西斯杀掉了，现在这位是邪恶的巫师，想要盗窃伟大的波斯帝国，好在光明之神阿胡拉玛兹达的化身大流士揭穿了这个邪恶的阴谋\n不管你信不信，反正大流士就是这样解释的，这也无缝衔接了琐罗亚斯德教在波斯帝国的推广，统一的宗教信仰能够让波斯帝国之间的联系不因发育不良的胼胝体而隔断\n这本书里说到琐罗亚斯德教虽然传播广，但并不意味着波斯帝国变成了琐罗亚斯德帝国，这其实也很好理解，多神教对其他神的承认度很高，所以没有太强的排他性\n最后再说一下琐罗亚斯德教的一部分教义吧，世界上同时存在光明与邪恶，光明与邪恶不断地进行战争，在势均力敌的较量中会逐渐走向HE，也就是永久和平的王国，所以某种程度上说，琐罗亚斯德也算是爱的战士吧\n大流士刚即位不久，埃兰人就叛乱了，地点是巴比伦，巴比伦王国在被居鲁士灭亡后，国王那波尼德并没被处死，还留下一堆儿子，其中一位领导了这次叛乱\n巴尔迪亚被杀后，波斯帝国陷入动荡，这位仁兄自封尼布甲尼撒三世，准备恢复故国，要知道，尼布甲尼撒的大名在两河流域可是世人皆知呀\n大流士觉得这是个机会，正好树立威望，于是他立刻挥师单刷尼布甲尼撒三世，收复当时最恢弘的城市巴比伦，紧接着，大流士开始迎战各种贵族后裔，米底人的后裔啦，巴尔迪亚的真身啦，之类的，当时全国范围内还真是遇到了危机，不过好在大流士水平高超，最终平定了叛乱，与此同时，他光明之子的形象也就更加深入人心，\n至于万王之王吧，那要说到波斯的政策，居鲁士开始，波斯的帝国政策就是宽容，你该当王还当王，那怎么显示我波斯帝国的地位呢，万王之王，相当于联邦总统\n在大流士的统治下，波斯帝国粗糙的体系得到完善，首先是国内制度，说一个比较重要的，钱，一开始的制度，依我之见，大概类似于朝贡体系，虽然不至于像中国一样赔本，但收入不稳定一直是个问题\n大流士改革后，税制类似于罗马行省税吧，总之收税变得制度化，收入高了，自然打起仗来更顺手，大流士期间向东扩张直至印度，但也养成了一个坏习惯，找人家要水和土\n只要尊我为万王之王，奉上水和土，你们就能得到我的关心，哇，波斯帝国实在太厉害啦，根本打不过，另一方面，得到波斯帝国的保护对很多小国来说是件好事，波斯帝国提出的条件也不算过分，毕竟波斯人当时的统治技术在那里摆着，科技树没到那个高度\n不过，当他转头向西，他会发现，在山的那边海的那边有一群希腊银，他们勇敢又聪明，他们打仗不要命，他们放荡不羁就是爱自由\n其实在居鲁士时期，波斯帝国就跟希腊人有过接触，当时一群蓄着胡子，披着红袄，言行粗鲁的家伙走到居鲁士面前说，你最好别欺负爱奥尼亚的城邦，不然，斯巴达人会让你体验绝望\n[・_・?]斯巴达人是什么？蛋白质含量高吗？\n(￢_￢)很高，一身肌肉\n你听说过荷马史诗里海伦的故事吧，海伦从哪里被拐走的，没错，就是斯巴达，为了一个女人让战火烧了十年，就是这么倔强\n那应该很好对付吧，一群贪图享乐的家伙\n到这波斯巴达人不一样，他们是北方南下的游牧民族，只是继承了名号，神话和地盘而已，不是同一群人\n不过一开始这还真是个奇葩的城邦，他们花了一百多年时间，玩游戏，打地鼠，硬是把希洛人打成了农奴，还真是很有毅力呢\n征服了希洛人，斯巴达内部贫富分化就更严重了，但是，斯巴达不一样，斯巴达战斗胜利依靠的是重盾兵，而不是贵族骑兵，而重盾兵作战需要的是团结，不能卖队友，那人民内部的矛盾就必须少少的，贫富分化太大肯定不行，国家还指望着那群农民镇压叛乱呢\n那怎么办？这时有人振臂一呼，进行了一次军事改革，把斯巴达变成了后来广为人知的样子，虽然很野蛮，但是人人平等呀，不会有人心生怨念卖队友，这不就足够了吗？\n不过那些真贵族还是真有钱，真有权，不过一样要上战场就是啦
2	英国 从史前到诺曼王朝	老规矩，我喜欢就多写点，不感兴趣就一笔带过，以后再想办法吧，那么，开始\n\n前罗马时代\n青铜时代\n史前时期一般我都不太感兴趣，但是英格兰的史前遗迹还是很有趣的。\n石圈，在爱尔兰和苏格兰两地的石圈主要用于殡葬，但在英格兰和威尔士的就用途不明了，可能是交易场所，可能是祭祀场所，也可能用于天文观测，总之暂无定论，在英格兰，最著名的石圈聚集群位于威尔特郡的Avebury，其中就有举世闻名的巨石阵。\n在中世纪，人们相信那时由大魔法师梅林建造的，后来又说是德鲁伊教的祭祀场所或聚会点，二十世纪七八十年代主流观点认为那是用来观测天文用的，但除了一块石头正对着冬夏至日出的方向外，没有其他坚实的证据证明这一学说，所以至今仍是个谜。\n铁器时代\n神奇的凯尔特人是使用铁器的高手，他们在迁移中来到了不列颠，把那里带入了铁器时代。\n罗马时代\n凯撒征服高卢时，发现不列颠老是和高卢的部族勾结，决定给他们点颜色看看，于是凯撒连续两次出击不列颠，罗马时代就此拉开帷幕，当然凯撒的主要目的并不是征服不列颠，所以并未建立罗马的稳固统治\n之后的一百年里，罗马人先是内战，奥古斯都结束内战后又因为种种原因抽不开身，直至第四任皇帝克劳狄乌斯时代\n好无聊啊，用完干些什么事情吧\n打不列颠如何\n嗯，好呀好呀\n不列颠，呵呵，我招谁惹谁了\n出兵不列颠，十二位英格兰国王投降，罗马征服了英格兰的东南，但接下来的征服显得举步维艰，不列颠北方部族一直与罗马处于敌对状态，到哈德良时代，哈德良皇帝建立哈德良长墙用于抵御来自北方的进攻。\n罗马时代的不列颠行省可以说罗马化程度很高。和其他罗马行省一样，在罗马治下的和平中享受着文明带来的繁荣\n不列颠的和平与繁荣在君士坦丁大帝时期达到极盛，随后开始走向衰败，君士坦丁死后，自戴克里先开始罗马帝国最后的安定期结束，罗马帝国实力一落千丈，北方苏格兰入侵日益频繁，内部也爆发了三次叛乱，这些动乱很快被罗马平息，但撒克逊海盗日渐猖獗的袭扰成了不列颠东部和南部海岸的巨大威胁，自三世纪起，不列颠就沿海岸修筑了一系列军事驻地和堡垒，史称撒克逊海岸，顽强地坚守着海岸线，但到五世纪早期，沿岸的罗马驻军被召回大陆抵御撒克逊的入侵，不列颠人只能自己作战，公元前410年以后，蛮族越过莱茵河发动全面进攻，罗马自顾不暇，在不列颠最后一次求援被拒绝后，罗马的统治结束了。\n入侵不列颠的蛮族主要为盎格鲁人、撒克逊人以及朱特人\n亚瑟王的故事就发生在这个时代\n与亚瑟王有关的著名地区\nTintagel Castle位于康沃尔，据说这里开过圆桌会议\nGlastonbury Tor据说这里就是阿瓦隆\n铁器时代，人们会把盔甲等祭品投入河中祭祀河神，亚瑟王湖中剑的传说有可能与此有关。\n\n罗马时期与诺曼时期之间\n英格兰处于割据状态，到七世纪初，诺森伯利亚、麦西亚和威塞克斯成为最强大的三股势力，一开始诺森伯里亚统治其他两国，后来的几个世纪里，麦西亚和威赛克斯先后称霸。\n\n维京入侵\n公元九世纪后期，维京征服不列颠北部，进攻威赛克斯王国，对阵阿尔弗烈德大帝。\n阿尔弗烈德一开始战败，但后来重整旗鼓，击退了维京人的攻击。\n他成功的关键因素之一，就是兴建了一系列分布均匀的城堡，有点中世纪的味道了。\n后来，双方议和，进入和平时代。\n阿尔弗烈德对敌人宽宏大量，积极鼓励民众接受教育，兴办学校，自己还开始学习拉丁文，顺便根据习惯法制定了一部法典。\n后来患重病，生命最后几年，维京人再次入侵，被强大的威赛克斯王国击败。\n长者王爱德华 阿尔弗烈德大帝的儿子\n在位期间击退维京人的入侵，进一步收复了东盎格鲁\n埃塞尔斯坦 大帝的孙子\n收复约克郡，获得苏格兰和威尔士的宣誓效忠，第一次真正意义上统一英格兰，并成为不列颠之王，为后来打下基础\n拙见王埃塞雷德\n埃塞雷德一生遭到许多背叛，努力抵御丹麦的入侵，说实话还算有所作为，但是这个名号简直神奇得有些可悲\n本来人家叫卓见王，但是后面传错了，就成拙见王了，这个有点可怜，当然，人家用的是英语，是unread变成了unready。\n克努特\n继埃塞雷德之后威赛克斯国王，在位期间极力避免了埃塞雷德时期的混乱局面，通过继承等方式成为丹麦、挪威的国王，英格兰领土达到中世纪时期的极盛，他带来了二十年的和平。\n诺曼 威廉一世 1066～1087\n诺曼之前的英国乱成一团，正规继承人减员严重，本来在诺曼底吃饼观战的诺曼忽然发现好像轮到自己了，于是他毅然决然出兵不列颠，一不小心就给赢啦。\n当时的情况大概是这样，不列颠的统治者哈罗德得知威廉要进攻自己，于是迅速组建民兵，坚守海岸，直到不适合渡海的季节仍没看见诺曼的影子，于是以为自己虚惊一场，解散了民兵，就在这时，诺曼终于做好了渡海的准备，到了岸边发现，嗯⊙∀⊙！没人？于是继续深入，在黑斯廷斯与英军对阵，法军攻破英军防线，最重要的是哈罗德被一箭射死，威廉没有竞争对手，很快夺取英国王位。\n诺曼夺位后继续征服，在法国，被马摔到地上，不治身亡\n在位期间重要文献\n末日审判书（主要是诺曼命人收集的英格兰各地的详细信息）\n贝叶挂毯(记录了诺曼征服的背景、黑斯廷斯战役以及加冕)\n从诺曼开始，法语词开始融入英语\n红脸王威廉 威廉二世1087～1100\n征服者威廉死后，留有三个儿子，长子罗伯特继承诺曼底，次子威廉继承英格兰，幼子亨利继承了5000磅银币\n威廉二世对教会似乎不是很友好，经常把教会当做自己的摇钱树，所以教会也把他描绘得丑恶无比\n他想要得到诺曼底，正好，罗伯特决定参加第一次十字军东征，去寻找诗与远方，然后就把诺曼底以十万银币的价格卖给了威廉二世。\n天上掉馅饼啊，他决定以此为跳板，进军法兰西，但是上帝要想他证明捡到馅饼不交给警察叔叔是会遭天谴的，于是威廉在狩猎中被一箭射死，虽说有可能被谋害，但鉴于当时人射击的精准度，只是场单纯的意外也并非不可能\n亨利一世1100～1135\n威廉死后，机智的亨利果断采取行动，以迅雷不及掩耳之势完成加冕，成为英格兰国王\n亨利据说比较公正，但私生活放纵\n罗伯特十字军东征归来，享有很高的声望，带军入侵英格兰并要求每年支付赋税，还钱!一开始亨利采取忍让，后来进攻诺曼底，俘虏罗伯特，成了诺曼底和英格兰之王\n亨利的死因很可能是食用了过多的鳗鱼，大英国的黑暗料理吃多了果然会死人。\n斯蒂芬国王1135～1154\n亨利死后，他的女儿玛蒂尔达和侄子斯蒂芬之间展开内战，斯蒂芬捷足先登，加冕成为英格兰国王\n他给人的印象，温和的国王，慷慨、随和、骁勇、富于骑士精神，但也相当固执轻率，比如1141年林肯之战中拒绝撤退，不知疲倦地作战，最后被俘，1139年俘获玛蒂尔达是骑士精神爆棚，放了她，导致战争的延长\n1138年，玛蒂尔达入侵英格兰，在1141年俘获斯蒂芬，但她的傲慢导致很多盟友倒戈相向，斯蒂芬的妻子率军反击，最后换回斯蒂芬，1148年，玛蒂尔达放弃争夺王位\n玛蒂尔达和安茹伯爵的儿子亨利比较厉害，对英国展开突袭，并于1153年登陆英格兰，与斯蒂芬达成协议，由自己继承斯蒂芬的王位
3	英国 金雀花到斯图亚特	亨利二世1154～1189\n和阿基坦的埃莉诺结婚，使英格兰的领土扩张至比利牛斯山脉。\n有四个很有野心的孩子，不断密谋推翻他，最后理查和法王腓力二世取得了成功，强迫病中的亨利签订屈辱协定\n理查一世 狮心王1189～1199\n英国历史上极富传奇色彩的国王，十年时间只在英格兰待了五个月。\n理查领导了第三次十字军东征，归途时被奥地利公爵俘虏，交给神圣罗马帝国皇帝亨利六世，被索要大笔赎金后放回英格兰\n在英格兰稍作休息，停留了两个月后，又前往法国作战，战争中不幸肩部中箭，不治身亡。\n在舍伍德森林行侠仗义的罗宾汉就是在理查一世被羁留在德国时出现的\n约翰王 1199～1216 亨利二世最小的儿子\n很少有证据证明他比前任更加残忍，他留下的更像是一个失败者的形象\n他在法国丢失了许多土地，安茹、缅因、金雀花王朝的故乡都兰、诺曼贵族的故乡诺曼底\n约翰王一看，这怎么能行呢，于是他决定筹集资金，到了1214年，他出征法国，战败，贵族一看约翰战败了，意思说我的钱都打水漂啦？于是联合发动起义，约翰刚打败仗，手里没兵，就被迫于1215年签署了举世闻名的大宪章。大宪章主要是保护贵族利益，诞生了一个革命性的原则，即使是国王，也没有凌驾于法律之上的地位\n但约翰怎么可能束手就擒呢，那只不过是权宜之计而已啦，接下来的日子里约翰主要就做一件事，征讨反叛的贵族，还挺厉害，哈\n亨利三世 1216～1272 约翰之子\n当时英格兰在法国除加斯科尼外并无领地，亨利，我觉得是象征性地征讨了两次失败后，也就无心再战，专心治理英格兰去啦\n亨利当时正赶上教皇变卖欧洲土地，就买了西西里岛，几年后易主，但国内贵族不干了呀，我们的钱又打水漂啦？\n于是亨利被迫签署牛津条例，规定成立由十五人组成的委员会，国王处于首脑地位\n委员会有力地统治了七年，然后亨利恢复王权，贵族起来推翻亨利，首领蒙福尔做了英王，多疑的贵族又转而支持国王，亨利复位，最后过了一个安详的晚年\n但丁的评语：孤单而天真的国王\n爱德华一世 1272～1307 亨利三世长子 长腿王\n对亚瑟王传说十分着迷\n主持编纂法典活动，被称为“英国的查士丁尼"\n早期威尔士开始独立运动，爱德华迎战，并将自己的儿子封为威尔士亲王，也就是太子咯\n1290年，爱德华的妻子去世，很伤心，于是将犹太人驱逐出英格兰，这是中世纪第一次对犹太人的驱逐，为什么要驱逐呢，因为之前的迫害已经把犹太人的价值榨光了，穷困潦倒的犹太人留着也没什么用，就驱逐了\n1295年，苏格兰与法国结盟，爱德华北征苏格兰，这期间苏格兰出现了很多英雄，第一位是威廉·华莱士，但由于英格兰的新式武器长弓最终落败，但罗伯特·布鲁斯继续领导苏格兰抵抗，直至爱德华去世也未能完成征服\n爱德华二世 1307～1327\n未能完成父亲的遗志，象征性进攻后就结束了对苏格兰的战争，但后来苏格兰南下，击败了英格兰军队，在贵族的反对中，爱德华二世退位，后来就被谋杀了，方法似乎是用烧红的铁条插入老国王的直肠\n爱德华三世 1327～1377\n被誉为当时英国的亚瑟王，在温莎举行了圆桌争霸赛，骑士精神在当时十分盛行\n顺便提一句，1348年，在一次舞会上，爱德华的情妇索尔兹伯里伯爵夫人爱丽丝遗落了她的吊袜带。爱德华立刻将它捡起，缚在自己的腿上，说道心怀邪念者必蒙羞。著名的嘉德勋章（order of the garter 其中garder即为吊袜带之意）就是由此而来，而“心怀邪念者必蒙羞”至今还铭刻在英国的皇家纹章上\n百年战争开始。\n在克雷西战役中击溃法军，套路就是长弓兵虐骑士，后占领加来港\n但法国决心报复，怎么报复呢，人家属性克制，于是就向老鼠祈祷，1348年，老鼠坐船偷渡到英国，英国被黑死病击垮，人口锐减\n\n黑太子爱德华\n普瓦捷战役，同样的套路，击败并俘虏法王约翰，是一位天生的领导者，但是为了势力平衡，黑太子在1376年因病先走一步\n\n爱德华三世晚年全面衰退，骑士精神开始瓦解，法国也开始展开反攻，自己也成了别人的玩偶\n\n议会在这一时期有了一定的发展，1388年，议会成功审判了国王的近臣，国王征税需要议会认可的原则也逐渐确立。\n理查二世 1377～1399 黑太子的儿子\n一开始由叔父约翰刚特执政\n征税好像比较多，为了弄到钱，剥夺了亨利·柏林布鲁克对兰开斯特的继承权\n理查自信心膨胀，跑到爱尔兰宣示主权，亨利也不是吃素的呀，他趁这个机会起兵，夺取了英格兰王位\n亨利四世 1399～1413 约翰刚特之子\n在任期间主要任务，专治各种不服，无数次成功镇压向他发起的挑战，终于得以将王位完好无损地交给他的后裔\n亨利五世 1413～1422 一鸣惊人型国王\n亨利入侵法国，在阿根科特战役又一次胜利\n后在勃艮第的支持下剥夺了法国王太子的继承权，自己成为法国王位的继承者，并娶法王的女儿凯瑟琳为妻，生下小亨利\n亨利六世1422～1471\n法国圣女贞德一波雄起，最后英国丧失在法国除加来外所有领土，百年战争结束\n玫瑰战争打成一团，我也不是很有兴趣搞懂，大概就是几个多重影分身的高手间打来打去的故事吧\n爱德华四世1461～1483\n在位期间进行财政改革，主要包括向宫廷雇员们收缴自愿的礼物和捐款，额，不管啦，反正这一举措使他成为了中世纪少有的死前还拥有足够经济实力的国王\n理查三世 1483～1485\n北部之王，从爱德华五世的手中夺取王位，在博斯沃斯战役中发扬骑士精神，最后从马上摔下来死啦\n由此诞生莎士比亚名句马，马，一马失社稷\n亨利七世 1485～1590都铎王朝开始\n博斯沃斯战役后，成为英格兰国王\n做了一朵都铎玫瑰，象征联合\n在位期间，精打细算，通过强硬手段使英国得以恢复，顺便发现了第一块殖民地，纽芬兰\n亨利八世1509～1547\n参加神圣同盟击败法国，又打残了苏格兰\n为了要儿子，所以想离婚，就跟当时的教皇决裂，创立了英国国教，顺便解散了修道院，这一行为被视作中世纪的终结，实际上就是想要修道院的土地，但他并没有选择出租土地而是一次性赚快钱，为什么这么没有远见呢，因为打仗是要烧钱的，对法国和苏格兰的战争很快就把这些钱吃掉了\n爱德华六世1547～1553\n九岁继位，十五岁英年早逝\n简·格雷 任期九天\n玛丽起兵，进军伦敦，格雷被处死\n玛丽·都铎 1553～1558\n亨利唯一幸存的孩子\n推行天主教回归，似乎迫害了不少人\n伊丽莎白一世 1558～1603\n击败了西班牙无敌舰队，英国进入文艺复兴的繁荣时期\n詹姆士一世 1603～1625斯图亚特时代\n一开始准备宗教宽容，但清教徒长老的用词让他想到了苏格兰的激进清教主义，于是开始驱逐清教徒，就有了五月花的故事\n一开始与议会关系良好，但因为国王收入逐渐上升，对议会控制随之加强，议会开始反抗，于是詹姆士就和议会闹掰了\n詹姆士推行和平主义政策，可能这样比较省钱，但是英国还是由于复杂的关系网络被卷入三十年战争\n查理一世1625～1649\n在位期间跟议会关系恶化，于1629～1640年进行了无议会统治，这一时期查理，怎么说呢，还是叫做个人统治吧，主要是对现有法规的利用和延伸，算不上暴政\n查理加收了一些税款，再加上停战支出减少，王室财政状况好转，但奈何他自己作死呀，他向苏格兰推广英格兰祈祷书，然后苏格兰就炸了，内战爆发，查理又没钱了，只好找议会，议会也反对国王，结果爆发了轰轰烈烈的资产阶级革命，议会军联合苏格兰夹击查理一世，最终取得胜利\n共和时期 护国政体时期\n克伦威尔\n说实话，没什么兴趣，他在当护国公期间打败了荷兰海军，嗯，就是这样，他儿子后来觉得自己水平不太够，就主动退出了\n查理二世1660～1685\n弗朗西斯·培根提出的科学思想在1662年促成了皇家学会的诞生\n查理二世于1675年下令在格林威治建立皇家天文台\n詹姆士二世 1685～1688\n查理二世本来留给他一片稳固的江山，奈何他一心只喜欢宣传天主教，好吧，尊重人家的坚持，于是议会光荣革命请来威廉和玛丽作为联合君主，并制定了权力法案。\n威廉和玛丽1689～1702\n威廉和路易十四交手，出兵爱尔兰和那里的詹姆士二世的力量战斗过，嗯，就是这样\n在1694年，英伦银行成立，银行鼓励民众存钱，存储者因此希望国内安定来保证自己的存款安全，因此逐渐不愿再采取暴力推翻征服，很难说是好事还是坏事\n安妮女王1702～1714\n马尔伯勒公爵与法军作战，最终与路易十四签订乌特勒支条约，英格兰得到纽芬兰、直布罗陀等新领地，并获得向西班牙殖民地输送奴隶的独有权力\n1707年，合并苏格兰，大不列颠联合王国成立\n
4	英国 从汉诺威到现代	乔治一世1714～1727\n安妮女王的后代全部夭折，乔治一世本来不是最优先的人选，但神奇的议会运用权力选择了一个他们认为比较合适的人选，由此看出议会逐渐增强的实力\n在位期间，建立内阁，设首相\n南海泡沫，由南海公司一只垄断大牛股（经过竞争垄断了南美洲贸易以及西班牙奴隶贸易，英国但是欠了不少钱，让南海公司帮忙还清，同时给了南海公司何种优惠政策）带动的股市投机泡沫\n乔治二世1727～1760\n因为在欧洲大陆的汉诺威选帝侯领地卷入欧洲大陆的战事\n七年战争，联合普鲁士对阵法国和奥地利，我一代军神腓特烈大帝被英国人坑惨了，几乎以一国对阵整个欧洲，不过因为普鲁士的苦战，加上英国在海外战场的翻盘，最终取得胜利\n乔治三世1760～1820\n美国独立战争\n七年战争后，英国向美国殖民地征收赋税以维持守卫美洲的开销，在英国看来很合理呀，用金钱换和平，但是美洲人民不这么想，还喊出口号，无代表不纳税，虽然没几个美国人愿意去英国当代表，但他们就是不想纳税，你自己看着办吧，于是后来矛盾激化，美国独立战争爆发\n法国一看，呦，你英国也有这一天啊，来来来，让我来当搅屎棍吧，于是法国参战，英国被迫屈服。不列颠第一帝国终结\n帝国的扩张\n美洲丢了以后，犯人放哪里呢，总不能全堆在本土吧，嗯，那就放澳洲吧，反正那里没人\n在印度，局势比较混乱，法国人见状不妙，后来就放弃了，但是英国有个神奇的人物叫克莱武，带着东印度公司征服了印度，虽然手段有点黑就是了\n法国大革命与拿破仑战争\n英国的态度，一开始，新世界到来啦，支持，诶，好像有什么不对，还是先打下去再说吧\n顺便提一句，领导英军打赢滑铁卢战役的惠灵顿勋爵，因为喜怒不形于色且恪守职责，有人提议维多利亚时代的中小学生学习勋爵好榜样，（他的性格举止此后也成了英国人特征的代表）\n爱尔兰\n受到美国独立的鼓舞，爱尔兰人也想要独立，英国一看，你这思想很危险啊，于是于1801年合并爱尔兰，成立大不列颠及爱尔兰联合王国\n工业革命开始\n摄政王乔治四世1820～1830\n1812～1820年，乔治三世好像疯了，据说换了卟啉病，大概是吧，反正这些年威尔士亲王作为摄政王行使君主权利\n前期瘦成一道闪电，英俊潇洒，后来发福，额，啥也不说了\n在位期间时尚时尚最时尚，大规模翻修温莎城堡和白金汉宫\n威廉四世1830～1837\n1832年颁布改革法案，当时工人们闹得很凶\n维多利亚时代1837～1910\n维多利亚1837～1901\n爱尔兰大饥荒1845～1848年\n这个时期英格兰的不作为导致了爱尔兰对联合王国的深恶痛绝\n世界工厂\n英国工业革命率先完成\n鸦片战争\n克里米亚战争\n印度大起义\n抢夺非洲\n吞并埃及\n布尔战争1899～1902\n原因有二，一是英国想要修一条横贯非洲南北的大动脉，但是布尔人怎么会愿意离英国更近呢，他们拒绝，二是南非发现金矿，这就不能等了啊，开战吧。\n战争比较惨烈，英国人采用了不光彩的战术，用集中营对抗游击队，最后赢了战争，输了道义\n维多利亚女王，如何评价呢，应该说是赶上了一个好时代吧，在英国上升期登上王位，经历了英国的全盛期，在英国逐渐走向危机时及时去世，她是个幸运的女孩\n爱德华七世1901～1910\n死得还算及时吧\n乔治五世1910～1936\n在位期间经历了第一次世界大战\n经济衰退\n爱尔兰危机\n之后经历短暂的黄金期，迎来美好的大萧条时代，不过好在及时甩锅乔治六世\n爱德华八世\n要江山还是要美人？\n要美人\n乔治六世1936～1952\n第二次世界大战\n伊丽莎白二世1952～\n工党执政，经济发展不如预期\n保守党撒切尔上台，提振经济\n撒切尔之后，保守党再次失败，工党执政至今
5	罗马帝国一天起	梦里什么都有
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.author (author_id, author_name) FROM stdin;
2	他刚刚
3	解决阿娇的
4	唐唐
1	超高校级的帅气
\.


--
-- Data for Name: author_and_article; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.author_and_article (author_id, article_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
\.


--
-- Data for Name: bond; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.bond (bond_id, servent_id, bond_text) FROM stdin;
1	1	身高／体重：158cm·46kg 出处：Fate/Grand Order 地域：迦勒底 属性：秩序·善　　性别：女性
2	1	假想宝具 拟似展开/人理之础 阶级：D　种类：对人宝具 Lord Chaldeas。 不知附体英灵真名的情况下，玛修以本能展开的宝具。 可以在前方展开强大的守护壁垒。 之所以将宝具冠以迦勒底之名， 或许因为玛修本质的愿望是能够“看到人类的未来”吧。  通关「复制品(4/5)」后开放  『已然遥远的   理想之城』 阶级：B+++　种类：对恶宝具 Lord Camelot。 英灵·加拉哈德拥有的宝具。 使用白垩之城卡美洛的中心， 圆桌骑士们围坐的圆桌作为盾的究极防守。 其强度与使用者的精神力相呼应， 只要心不屈服，城墙就绝不会崩塌。
3	1	己阵防御：C 守护己方或是己方阵营时发挥的实力。 能突破防御极限值地削减我方遭到的伤害， 但自身并不算在防御对象内。 此外，阶级越高，守备范围越广。
4	1	玛修获得了附体于自己身上的英灵的真名。 该骑士的名字是加拉哈德。 是亚瑟王传说中的圆桌骑士之一。 独自一人获得了圣杯并升天的圣者。 迦勒底使用独自的方法成功召唤英灵， 构筑其根干的，是成为加拉哈德召唤触媒的 『英雄们聚集之所』——玛修所持有的用圆桌做成的盾。
5	1	通过经历了七个特异点，克服了无数战斗， 她已经完全是独立的人， 完全成长为一位不再借用他人力量的从者。  尚不知道真名的她使用的假想宝具， 人理之础（Lord Chaldeas）。 这是她“看到人类未来”这由衷愿望成形后的产物。  ……围绕人理烧却的战斗即将结束。 她的旅途将画上怎样的句号。 星之兽静静地见证着这雪花般的光景。
1	2	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n行为举止都以男性为标准，\n因此很不擅长应对异性向自己表达的好感。
2	2	崇尚万人眼中正确生活、正确人生的\n理想王者之一。\n锄强扶弱，是个无可非议的人物。\n冷静沉着，无论何时都十分认真的优等生。\n尽管如此……虽说从不愿意开口承认，\n但她却有着不服输的一面。对任何需要一争高下的事\n都不会手下留情，一旦败北则会非常懊悔。
3	2	领袖气质：B\n具有指挥军团的天生才能。\n在团体战斗中，可令我军的能力提升。\n贯彻清廉正直，大公无私的王。\n其公正令骑士们愿意守护于她的身旁，\n令民众们在对贫困的忍耐中看到了希望。\n她的王者之路并不是为了统帅少数强者，\n而是为了领导更多无力之人而存在的。
4	2	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur。\n这并非人造的武器，而是由星锻造而成神造兵器。\n立于圣剑顶点的宝具。\n拥有真正强大力量的应是剑鞘，\n而不是剑本身，但剑鞘据说已永远遗失了。
5	2	亚瑟王传说以骑士时代的终结为结局。\n亚瑟王虽然击退了异民族，\n但却无法回避不列颠土地的毁灭。\n圆桌骑士之一·莫德雷德的反叛\n导致国家一分为二，骑士之城卡美洛也失去了其辉煌。
1	3	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·恶　　性别：女性\n冷酷无情的暴君。龙的胃口是很大的。
2	3	由于铠甲被染成漆黑，并且重量也随之增加，\n力量比平时更为强大。相反，敏捷性似乎有些下降。\n没有无谓的言行，性格冷酷，与阿尔托莉雅判若两人，\n然而只要细心与她接触，\n想必就能发现其本质还是相同的。
3	3	魔力放出：Ａ\n令武器乃至自身的肉体充斥魔力，\n并瞬间释放来提升能力。相当于魔力的喷射。\n阿尔托莉雅自身的筋力与常人无异，\n但通过使用过剩的魔力强化所有的行动，\n才得以打倒众多敌人。
4	3	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur Morgan。黑色极光之剑。\n由于她不对自己的魔力加以抑制，全力挥动圣剑，\n令魔力粒子不再是光，而是成为了吞噬光的黑暗。\n这模样与为了保护不列颠岛而出现的魔龙——\n伏提庚的气息很相似。
5	3	阿尔托莉雅生前虽从未坠入邪恶之路，\n但她也有过迷茫与纠葛，\n有过对自身的愤怒，有过对周围的哀叹。\n正是这些要素因诅咒而显现为现在的模样，\n逆转了她的“方针”。她的目的与理想本身并没有改变。\n正常的阿尔托莉雅为了理想会贯彻清廉，\n然而这位则觉得为了理想可以实施高压政治。
1	4	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n虽然王者修行很艰苦，但只要能照顾马就是一种幸福。
2	4	为了成为理想的王而日夜钻研的浪漫骑士。\n由于尚未成熟，还无法拭去少女的稚嫩，\n其内心充满了梦想与希望。\n漫游诸国时，队伍内有她的义兄凯及随同的魔术师梅林，\n所有的问题基本都是由阿尔托莉雅的多管闲事开的头，\n而梅林的嘲讽将事情闹大，最后由凯负责收拾残局。
3	4	直觉：B\n在战斗时，总能“感知到”对自己而言\n最理想的事态发展的能力。\n敏锐的第六感已经近乎预知未来。\n可以让干涉视觉·听觉的障碍减半。\n然而直觉敏锐也不全是好事。\n由于一眼就能敏感地觉察对方的烦恼，\n所以每见到一个人都会下意识地想要帮助对方。
4	4	『必胜黄金之剑』\n阶级：B（在一定条件下A+）　种类：对人宝具\nCaliburn。\n本来是用于选拔王者之剑。\n对人宝具中的『对人』不是对敌人，\n而是针对将要持剑之主。\n当其持有者成为一名贯彻正确之举或是完美的王时，\n其威力将不愧对于圣剑之名。
5	4	为了拯救神秘淡去且逐渐走向毁灭的\n不列颠岛的命运之子。\n是在先代王尤瑟与魔术师梅林的计划下，\n被创造的『龙的化身』。\n也因此被比喻成守护不列颠的红龙。\n拥有隶属幻想种最高位的龙之心脏，\n可在体内生成的魔力量远凌驾其他英灵。
1	5	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·善　　性别：女性\n嗯，全都交给余来办吧！
2	5	自称艺术家，拥有独特的美学意识。\n喜爱美少年以及美老年。当然更爱美少女。\n但凡美丽的都喜欢。将自身讴歌为至高的艺术，\n同时赞颂人们不同的人生也极为美丽。\n……不言而喻，像这样享受人生的她的身姿，\n正如同一朵盛开怒放的蔷薇。
3	5	皇帝特权：EX\n即使是本不属于自己的技能，\n也能因为本人的主张而得以短期持有。\n与身为热情聚合体的尼禄相性超群的技能。\n对应技能有骑乘、剑术、艺术、领袖气质、军略等。\n阶级为Ａ以上时，\n甚至会获得肉体方面的负担（比如神性等）。
4	5	『邀至心荡神驰的黄金剧场』\n阶级：B　种类：对阵宝具\nAestus Domus Aurea。\n能实现自己愿望的绝对皇帝圈。\n通过魔力将她生前自己设计，\n并建设于罗马的剧场「金宫」予以重现。\n能创造出对她有利的战场。
5	5	将罗马人民的幸福与繁荣看得最重的皇帝。\n自己也是个很会享受人生的达人，\n自信在歌剧方面拥有无人能出其右的造诣。\n（※ 仅限自信）\n据说但凡听过她歌声的人，\n整整三天三夜都会因冲击而痛苦不已，\n连入睡后都会做起犹如蔷薇的（噩）梦。
1	6	身高／体重：190cm·80kg\n出处：尼伯龙根之歌\n地域：德国\n属性：混沌·善　　性别：男性\n因诅咒，不得不露出后背。
2	6	齐格飞是中世纪叙事诗「尼伯龙根之歌」中\n登场的大英雄。历经各种冒险，\n他在旅途中获得了圣剑巴鲁姆克和能隐身的外套，\n最终打倒了邪龙法夫纳。
3	6	全身沐浴龙血，\n并饮下一滴龙血的齐格飞成了不死之身，\n在战场上甚至不会受伤。然而这辉煌的荣耀，\n却从他与勃艮第公主克琳希德结成夫妇时出现了阴影。
4	6	他实现了义兄的愿望，\n然而却导致义兄之妻与克琳希德陷入对立状态。\n而为了阻止争斗的发生，齐格飞被逼入了绝境，\n只有终结自己的生命才能解决事态。\n不断回报人们期待的他，\n最后受到的期待却是自己的死亡。
5	6	『幻想大剑·天魔失坠』\n阶级：A+　种类：对军宝具\n拥有魔剑属性的黄昏之剑。\n镶嵌在剑柄的蓝色宝玉内储藏着真以太，\n在通过真名发动时使用。
1	7	身高／体重：168cm·154kg\n出处：史实\n地域：欧洲\n属性：中立·中庸　　性别：男性\n同一句话喜欢说三遍。
2	7	不好对付的男人。野心家，擅长权谋。\n是个同时具备巨大野心与令人畏惧的知性的男人，\n是智略与辩才的名人。煽动的天才。\n令他在诸多战场上获得胜利的优秀头脑，\n也是他拥有的高阶级军略技能的体现。
3	7	煽动：EX\n恺撒的固有技能。\n学会能引导为数众多民众、市民的言语与行为。\n尤其对个人使用时，会产生某种程度的精神攻击。\n威力极为强大。
4	7	『黄之死』\n阶级：B+　种类：对人宝具\nCrocea Mors。黄金之剑。\n在近身战方面虽然能够发挥见敌必胜的威力，\n但本人非常不想拔剑。
5	7	好女色。爱罗马，当然也爱尼禄。\n爱世界。也爱克娄巴特拉。\n虽说对御主表现出高傲的言行，\n但基本不会背叛。\n夹杂着讥讽的言语是真心实意的忠告。
1	8	身高／体重：160cm·48kg\n出处：史实\n地域：中亚～欧洲\n属性：混沌·善　　性别：女性\n自出生以来就热爱着军神玛尔斯（阿瑞斯）。
2	8	直觉优秀，在面对各种事态时，\n都能维持理性直面困难。拥有极高自尊心的战士。\n总会令人感受到些许「空虚」的要素。\n战斗时能冷静而正确的把握状况，\n化为冷酷无情执行杀戮的战斗机械。
3	8	纯粹的『战斗王』。\n相比战场上的武勋，其统治却并不成功，\n自己死后，帝国迅速瓦解消失。\n然而，代表着畏惧与恐怖的「阿提拉」之名，\n直到现代仍停留在人们的记忆中。
4	8	『军神之剑』\n阶级：A　种类：对军宝具\n目前普遍认为此宝具来源于以下两者的结合：\n她那令欧洲全境畏惧地称之为——\n「神罚」与「神之鞭」的武力与恐怖，\n以及她获得军神玛尔斯之剑的轶事。
5	8	宝具『军神之剑』表现出长剑的形状，\n但不知为何令人觉得设计中带有一丝未来的要素。\n据说由三色之光构成的「刀身」，\n能够破坏在地面上「各种存在」。\n当解放真正实力的时候，阶级与种类都会提升。
1	9	法国贵族、军人。\n百年战争时期与圣女贞德一起夺回了奥尔良，\n被人们称颂为英雄。\n清廉勇敢，被赋予了军人最高荣誉的元帅称号。
2	9	深爱艺术的吉尔·德·雷用其庞大的财产，\n搜集各种艺术品。\n本以为永远不会见底的财产被他瞬间浪费殆尽。\n——蓝胡子。这成了后世人们对其的称呼。
3	9	圣女贞德对吉尔·德·雷而言是一切。\n她才是这腐败现实中唯一的救赎，\n对吉尔而言或许也是神灵存在的证明。
4	9	现实太过痛苦。坠入黑暗的时刻到来了。
5	9	过去绝不会改变。无论曾经是个多么优秀的武将，\n也无法改变他是杀人魔的事实。\n尽管如此，他也不得不永远寻求救赎。
1	10	身高／体重：157cm·45kg\n出处：史实\n地域：法国\n属性：中立·中庸　　性别：？\n体重非本人申告，而是从外表推测的数据。
2	10	穿着一名男人的衣服，行为举止都像一名男性，\n但其拥有着足以被称为惹人怜爱的少女般的美貌。\n事实上，在成人前，其身着礼裙参加的社交圈中，\n到处都能听闻「美丽姑娘」的传言。
3	10	为执行机密任务潜入俄罗斯帝国时，\n其作为丽娅·德·博蒙小姐， \n与俄国女皇也有过甚多交流。\n据说当时女皇与臣下也纷纷称颂其美貌过人。
4	10	秀丽风貌：C\n固有技能。在服装的衬托下，更为其酝酿出一股\n难辨雌雄的美丽（不是指外形容貌）氛围。\n无论与男性还是女性交涉时，都会有加成判定。\n另外，无视对特定性别的限定效果。
5	10	自我暗示：A\n以自己为对象的强大暗示。固有技能。\n对于那些在精神层面起作用的魔术、技能、宝具，\n都具备极高的防御效果。\n时为男性，时为女性。甚至能令肉体都发生变化……
1	11	虽然被确立为弓之骑士，但生前并不是弓兵，\n而是魔术师。使用投影魔术，\n仿造出众多名剑、魔剑的赝作者（Faker）。\n基本武装之所以是弓，\n估计是因为他作为英灵并不怎么强大，\n最终的战斗风格被定性为狙击的缘故吧。
2	11	心眼（真）：B\n通过修行、锻炼而培养出的洞察力。\n在穷途末路时，\n依然能通过冷静地把握自身情况与敌人的能力，\n找到活路的战斗理论。只要逆转的可能性还有1%，\n就要想办法抓住执行作战的机会。\n与技能·直觉相似但并不相同。
3	11	冷静完成工作的现实主义者。\n说话毒辣性格悲观。并非那种勤勤恳恳热心工作的角色，\n也是个爱在关键的时候说些冷酷玩笑话的花花公子。\n支持合理的战术以及社会角度的正义，\n由于他的原点是『拯救万人』的理想，\n所以总有无法冷酷到底的一面。
1	23	身高／体重：172cm·57kg\n出处：希腊神话\n地域：希腊、无形之岛\n属性：混沌·善　　性别：女性\n身高是召唤时的数据。\n神话时代的数据不明。
4	11	『无限剑制』\n阶级：E～A++　种类：？？？？\nUnlimited Blade Works。\n被称作固有结界的特殊魔术。\n能在一定时间内，将现实转换为心象世界，\n瞬间复制施术者迄今为止目视过的，\n或是现场使用的武器，并进行储藏。\n然而复制后的武器会降一个阶级。
5	11	投影魔术：C（在一定条件下A+）\n想象道具并复制数分钟的魔术。\nArcher爱用的双剑『干将·莫邪』，\n也是用投影魔术制作而成的。\n只有当投影对象是『剑』的分类时，阶级会大幅提升。\n基于『可无数次准备赝品』的特性，\n卫宫可将投影的宝具破坏，\n并通过将其爆炸来瞬间提升威力。
1	12	身高／体重：182cm·68kg\n出处：苏美尔文明、吉尔伽美什史诗\n地域：巴比伦尼亚、乌鲁克\n属性：混沌·善　　性别：男性
2	12	性格刻薄无情。不听从他人的意见，\n只以自己为绝对标准的暴君。\n傲然披露其极尽奢华的黄金甲胄，\n如流水般释放出各种财宝的破天荒英灵。\n第一人称写作『我』读作『本王』。
3	12	神性：B（A+）\n虽拥有最大的神灵适性，\n但却因本人厌恶神灵，导致阶级下降。\n拥有三分之二为神，三分之一是人的高神格，\n世间已然没有他的敌手，\n作为获得这世间一切的超越者得以到达完美。
4	12	『王之财宝』\n阶级：E～A++　种类：对人宝具\nGate of Babylon。\n与黄金之都连接的钥匙之剑。\n可以连接空间，自由取出宝物库中的道具。\n使用者的财产越多，攻击就越强大。\n本作中则作为普通攻击之一来使用。
5	12	『天地乖离开辟之星』\n阶级：EX　种类：对界宝具\nEnuma Elish\n美索不达米亚神话中冠以神之名的剑，\n乖离剑·EA对空间进行切断。\n在大量宝具中也属于位居顶点的宝具之一，\n也是“斩裂世界”之剑。
1	13	身高／体重：175cm·65kg\n出处：史实\n地域：英国、雪伍德\n属性：中立·善　　性别：男性\n「我可算不上是英灵那种有身份的存在啊……」
2	13	为获得胜利不择手段，\n擅长偷袭、暗算、毒箭。\n轻佻，爱挖苦人，嘴巴很毒，但本性善良。\n略有些胆小谨慎，为掩饰执着于正义的不成熟的自己，\n总是表现得十分玩世不恭的别扭家伙。\n和卫宫性格相似，但因同性相斥，两者关系很不好。
3	13	破坏工作：A \n战斗前的准备阶段，削减对方战斗力的才能。\n设置陷阱的达人。\n阶级为A，代表能在敌方进军前，\n令对方六成兵力无法战斗。\n集团战斗中六成的损害已经能称之为严重溃灭了。
4	13	『祈祷之弓』\n阶级：D　种类：对人宝具\nYew Bow。\n用生前据点的森林中生长的红豆杉木做成的弓。\n红豆杉在凯尔特和北欧被奉为神圣树木的其中一种，\n用红豆杉木做弓的这种行为，\n意味着「与森林融为一体」的仪式感。
5	13	擅长暗杀、扰乱的英灵，同样精通自然毒素。\n红豆杉也被视为通往冥界的树。\n祈祷之弓拥有瞬间增幅目标腹部囤积的不净物（毒或病）\n并使其释放的力量，若对象带有毒，\n更可令这种毒产生像火药一般爆发的效果。
1	14	身高／体重：166cm·57kg\n出处：希腊神话\n地域：希腊\n属性：中立·恶　　性别：女性\n喜欢苹果和肉。
2	14	阿塔兰忒作为某个国王的女儿出生，\n然而想要男孩的父亲嫌弃阿塔兰忒，将她丢弃在森林中。\n可怜她的女神阿耳忒弥斯用母熊的乳汁哺乳女孩，\n抚养她长大。
3	14	长大了的阿塔兰忒终于成为了一名无人能及的优秀猎人，\n成就了击退卡吕冬野猪以及加入阿耳戈号等诸多冒险。\n慕名向她求婚的人们纷纷杀到，\n烦恼的阿塔兰忒决定用赛跑向求婚者们发起挑战。
4	14	阿塔兰忒虽然在赛跑中本没有输给任何一个男人，\n最后却屈服于一名施计借用了女神力量的卑鄙男子，\n在半强迫的情况下嫁给了那名男子。\n传说此后又因别的事由，\n导致夫妇二人被变成狮子作为惩罚，实际无从定论。
5	14	她所持有的爱弓——天穹之弓（Tauropolos）\n曾接受了女神阿耳忒弥斯的祝福。\n通过向阿耳忒弥斯与其兄长太阳神阿波罗献上祈祷，\n可以发动强大的对军宝具『诉状箭书』。
1	15	身高／体重：134cm·30kg\n出处：希腊神话\n地域：欧洲\n属性：混沌·善　　性别：女性\n体重数据来源于美杜莎的申告。
2	15	无条件喜爱漂亮、可爱的东西。\n无条件厌恶丑陋的存在。\n极度爱撒娇，令男人神魂颠倒的「可爱少女」。\n起码表面看上去是这样——
3	15	实际上虽然确实具备无暇与纯真的特质，\n但更进一步说，其实她的性格严重阴晴不定，\n也具有狡猾的一面。主张只要保持沉默就不会惹恼别人，\n只要不被识破就不算作弊。（当然事后会陷入自责）
4	15	女神的神核：EX\n由于天生就是彻彻底底的女神，故而拥有的固有技能。\n包含有神性特性的复合技能。\n维持精神与肉体的绝对性。\n精神不受任何干涉，而肉体则不成长、不变化。
5	15	古代希腊神祗之一，原本不可能作为英灵被召唤。\n而作为获得了永恒的美貌的代价，\n成为了这世间最弱的存在……本应是这样一名女神，\n但随着英灵化，还是获得了些许强化。
1	16	身高／体重：185cm·75kg\n出处：波斯神话\n地域：西亚\n属性：混沌·中庸　　性别：男性\n健硕技能可强化对毒的耐性，并同时提升耐久力。
2	16	外号为阿拉什·卡曼戈。\n英语写作Arash the Archer，\n在西亚的世界中，所谓弓兵，\n正是指给人们带来安宁的阿拉什。\n直到现代，他仍被西亚的人们所爱戴着。
3	16	『流星一条』\n阶级：B++　种类：对军宝具\nStella。究极的射击。能终结所有的战争，\n正如同字面意义，属于「撕裂大地」的超远程攻击。\n若论纯粹的能量总量，堪比对城宝具。
4	16	传说中，阿拉什究极的一箭，\n制造了波斯与图尔库两国的「国境」。\n直接撕裂了大地。其射程距离实际达到了2500km。\n传说作为使用了非人所能用的绝技的代价，\n他的身体四分五裂，失去了性命——
5	16	基于他宝具的性质并非一点集中型，\n而是发挥广域效果，因此被分类为对军宝具。\n更准确地说应该相当于对国宝具吧。\n然而，只能使用一次。某种意义上，\n是二重幻想崩坏（broken phantasm）。
1	17	身高／体重：185cm·72kg\n出处：凯尔特神话、阿尔斯特神话\n地域：爱尔兰\n属性：秩序·中庸　　性别：男性\n把卢恩魔术（因为太麻烦了）给封印了。
4	46	吸血：C\n只要身染鲜血就能吸收体力并回复。\n虽然近乎于自我催眠，但她的肌肤确实恢复了年轻。\n阶级越高，吸收力越是上升。
2	17	『穿刺死棘之枪』\n阶级：B　种类：对人宝具\nGae Bolg。\n只要出击必能贯穿对方心脏的诅咒之枪。\n其真相是在枪命中对方心脏这个结果发生后，\n才刺出长枪的因果逆转的一击。\n由于结果早已注定，故而不可能被回避。
3	17	战斗续行：A\n苟延残喘。哪怕受到濒死的伤害，依然继续战斗，\n只要不是决定性的致命伤，就能活下去。\n\n重整旗鼓：C\n脱离战斗的能力。\n由于持有这两个技能，实际上相对于单挑，\n库·丘林更适合在大型合战中发挥其真正价值。\n然而由于本人极为喜好单对单的决斗，\n结果几乎无人知晓这一事实。
4	17	卢恩：B\n拥有北欧的魔术刻印·卢恩。\n影之国的战士必须精通百般武艺，\n而不能只会挥舞长枪——―\n也许是因为师父斯卡哈有着上述教育理念，\n总之库·丘林同样精通卢恩魔术。\n虽然作为魔术师，他的实力也已接近一流，\n然而本人却因嫌麻烦而几乎不使用魔术。
5	17	乳名是瑟坦特。\n库·丘林拥有「库林的猛犬」这层含义。\n这是因为瑟坦特年幼时，\n在错手杀死富商库林的看门狗后宣誓，\n「若这条狗有孩子，那自己将负责抚养它，\n将其培养成同样强大而忠诚的看门狗。\n在达成这个目标前，我将负责保护你」。
1	18	身高／体重：154cm·44kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　性别：女性\n※全长不包括尾巴。
2	18	虽身为邪恶的反英灵，\n但由于本人只是个憧憬恋爱的少女，\n其本质上的胆小造成了反效果，\n导致时不时会帮助同伴或者放跑敌人，\n发挥了一定的好人属性，\n勉强可评价为『这个嘛，应该还能称其为英灵吧』。\n本人则很讨厌别人对自己说『其实是个好人吧？』。
3	18	龙之吐息：E\n属于最强幻想种的龙所释放出的魔力的洪流。\nSupersonic Dragon\\'s breath。\n虽然因技能【无辜的怪物】而得以龙化，\n但确实略为勉强，所以威力很低。\n而她之所以会被亚龙化，\n应是巴托里家族纹章（龙齿）的缘故。
4	18	『鲜血魔女』\n阶级：E-　种类：对人宝具\n（Bathory Erzsebet）\n伊丽莎白以此宝具召唤她一生支配的城堡——\n监狱城恰赫季斯，作为展现自我的舞台。\n然而其走音走到天崩地裂的歌声，\n最终造就了一个如同地狱般的空间。
5	18	领袖气质：C\n作为统治阶级表现其威严。\n因特殊的传承辅助，对女性时效果提升一个阶级。\n对男性表现出特殊的洁癖，\n虽然很愿意隔着物件与男性接触，\n但几乎很少直接进行肢体接触。
2	19	……武藏坊弁庆是一个故事。\n刚烈且忠肝义胆的最强大汉。\n与源义经一同经历了无数战斗，\n直到最后的牺牲都显得如此英勇，\n正可谓英雄理想的形象。
3	19	……武藏坊弁庆是一名英雄。\n只要他挥舞起长刀，杂兵们会被瞬间打飞，\n只要他大声咆哮，连饿狼都会吓得夹着尾巴四处逃窜。\n鬼之子的传言正可谓名不虚传。
4	19	……武藏坊弁庆是难能可贵的存在。\n和我不同。虽然不同，但既然我自称弁庆，\n就不能让任何人说我弱。\n这算是胆小怕事的我最低限度的赎罪吧。
5	19	这个男人的真名为常陆坊海尊。他虽是义经的部下，\n但却在义经主从最终牺牲的那场战斗中临阵脱逃。\n对此深感耻辱的他成为了义经与弁庆的故事传播者，\n踏上了遍历日本各地的旅程。
1	20	身高／体重：184cm·71kg\n出处：凯尔特神话\n地域：欧洲\n属性：秩序·中庸　　性别：男性\n与「那位」一样能自由操控卢恩魔术。
2	20	性格暴躁直率的男人。\n不会断言正义或者邪恶哪个「更高一筹」，\n但本质上是偏向正义一方的。\n尚未成熟到可以理解世间所有不合理以及善恶的平衡。\n同时是名驯兽师。尤其和狗特别合得来。
3	20	与同样以真名召唤而出的Lancer相比，\n装备了重装的铠甲。\n即便如此，敏捷的数值依然优于「那位」，\n达到了Ａ+。这并非身体的性能差距，\n估计是因为年轻气盛，只知一心往前冲的缘故吧。
4	20	『贯穿之朱枪』\n阶级：B／B+　种类：对人／对军宝具\nGae Bolg。逆转因果之枪。\n师父斯卡哈赐予的红色长枪以及枪术。\n有对人刺击、对军投掷这两种攻击方法。
5	20	相比于「那位」Lancer，\n对师父斯卡哈的感情与憧憬。\n在其内心中占据了更大的比重。\n只是不知道是因为年轻还是因为时期的缘故。\n那么究竟他是否真的无法认同，\n这世间的的不合理，以及善恶的平衡呢——
1	21	身高／体重：188cm·110kg\n出处：史实（温泉关战役）\n地域：斯巴达\n属性：秩序·中庸　　性别：男性\nThis is Sparta！
2	21	殿军的矜持　A\n这一技能来源于其在温泉关战役中所发挥的力量。\n在防卫战、撤退战等，\n越是不利的状况越能发挥力量的独特技能。
3	21	列奥尼达虽然贵为斯巴达的王，\n不过由于斯巴达这个国家，\n基本已经成了盛产「无脑肌肉」的土地，\n所以施政的难度极高。
4	21	『炎门守护者』1\n阶级：B　种类：对军宝具\nThermopylae Enomotia\n为了重现让列奥尼达名扬四海的温泉关战役，\n先召唤传说的三百人吧。
5	21	『炎门守护者』2\n……通过宝具召唤而来的三百人，\n与列奥尼达一同承受敌人猛烈的攻击，\n仅在一回合内就会逝去。\n这都是因为他们坚信在此期间，同伴一定会发动反击。
1	22	身高／体重：190cm·140kg\n出处：史实、罗马神话\n地域：欧洲\n属性：混沌·中庸　　性别：男性（罗马）\n罗穆路斯的第一人称总是「我（罗马）」。
2	22	The Roma。由于天生是个超人，\n总能保持从容而冷静。\n其人性就是君临世界的罗马本身。\n会称呼尼禄、恺撒、卡利古拉等与自己有关联的\n皇帝系英灵们为「吾子」，并爱着他们。
3	22	皇帝特权：EX\n固有技能，可在短时间内，\n获得自身本不应拥有的能力。\n神祖是万能的。可获得的技能种类繁多。\n由于阶级在Ａ以上，同时也会受到肉体方面的负担。
4	22	『吾枪通达万物』\n阶级：A++　种类：对军宝具\nMagna Voluisse Magnum。\n建国之枪。在母亲西尔维亚的梦中出现，\n被看做是与象征罗马的大树同一的存在。
5	22	建国时，他将枪插在帕拉蒂尼。\n该宝具拥有操控树木的能力，\n解放真名时，长枪会扩大变化成大树，\n创造出「帝都罗马的过去、现在与未来的模样」，\n以怒涛般的奔流冲走敌方。质量兵器罗马。
1	47	身高／体重：253cm·311kg\n出处：希腊神话\n地域：希腊\n属性：混沌·狂　　性别：男性\n由于被狂化，故不清楚他的兴趣爱好。
2	23	带刺美人的气质与冷漠的言行，\n会令人觉得她是个冷酷无情的人，\n实际上她只是个讨厌麻烦事，\n最好什么事都不用做的美女。喜好美酒和阅读。\n言行之所以刻薄是因为她根本不希望对方喜欢自己。
3	23	『骑英之缰绳』\n阶级：A+　种类：对军宝具\nBellerophon。\n在神话中，英雄珀耳修斯斩下了女怪美杜莎的首级，\n而天马珀伽索斯从她的血液中出现。\n正如传说所述，美杜莎可以用自己的鲜血作为媒介，\n召唤珀伽索斯并熟练地驾驭。
4	23	魔眼：A+\n拥有最高等级的魔眼·库柏勒。\n可以让魔力低的对象无条件石化，\n魔力高的对象若掉以轻心也会被石化。\n通常用自我封印·暗黑神殿（Breaker Gorgon）\n进行封印。
5	23	高挑且风情万种的美女。\n但由于对美杜莎而言，美丽的基准却是「娇小可爱」。\n所以她貌似一直对自己高挑且成熟的身材感到自卑。
1	24	身高／体重：180cm·95kg\n出处：『黄金传说』『圣乔治传说』\n地域：欧洲\n属性：秩序·善　　性别：男性\n在防守方面极具实力的英灵。
2	24	守护骑士　A+\n固有技能。在保护他人时，能短时间提升防御力。\n被奉为众多国家与地区守护者的的圣乔尔乔斯，\n总是在守护方面受到人们的期待。\n这种期望给予了他守护的力量。
3	24	殉教者之魂　B+\n固有技能。让对精神层面的干涉无效化。\n面对为了令其弃教而实施的拷问以及各种其他酷刑，\n乔尔乔斯从未屈服，坚持着他那极为强韧的信仰。
4	24	乔尔乔斯虽然是个圣者，\n但他的英勇事迹根本不逊色于一些骑士。\n当路过某个饱受毒龙肆虐，\n而不得不持续献祭活人的城镇时，\n乔尔乔斯扔出了长枪击败了龙。\n此外还有人说他是被魔女抚养长大的。
5	24	『刚力屠戮祝福之剑』\n阶级：B　种类：对人宝具\nAscalon。\n可驱离心怀害意与恶意的人。\n无论敌人有多强大，都能完成守护之责。\n从这个角度而言，可谓无敌之剑。
1	25	身高／体重：210cm·114kg\n出处：史实\n地域：加勒比海\n属性：混沌·恶　　性别：男性\n乘坐的船的名字是『安妮女王之复仇号』。
2	25	「让开让开，都给我黑胡子大人让出道来！」\n大航海时代刚结束，便拉开了海盗时代的帷幕。\n只要掠夺一次在殖民地贸易中赚足了的船，\n就能获得百万财富，\n黑胡子——爱德华·蒂奇正诞生于这个时代。
3	25	爱德华·蒂奇是否为他的本名一事尚无定论，\n他在成为海盗之前的身份也不明。但不管怎么说，\n他以海盗的身份起家，转瞬间就组建了庞大的船队。
4	25	别说一般的海员，就连其他海盗都恐惧黑胡子的存在。\n他那浓密的黑胡子中，到处可见混织在内的导火索，\n他那灿灿生辉的眼睛正犹如地狱的女神。\n连其部下们都认为他是恶魔的化身，畏惧不已。
5	25	正所谓兴亡盛衰。黑胡子海盗团还是被逐渐逼入绝境。\n被军队突袭的黑胡子率领着极少数部下勇猛地反抗。\n据说他哪怕身中五弹，外加二十处刀伤，\n却依然瞪目裂眦地战斗着，最终在给枪上膛时力尽而毙。
1	26	身高／体重：174cm·62kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：女性\n在现界之时，似乎已经是拥有两个女儿后的模样了？
2	26	她深爱着不列颠尼亚的一切。\n爱着风与大地。爱着花草树木。爱着泉水与溪流。\n爱着鸟兽鱼虫。同时更为深爱着人民。\n然而，那天，那个时刻。\n丈夫普拉苏塔古斯死后——
3	26	等待她的却是惨无人道的苛待。\n嘲笑与污蔑。暴力与凌辱。痛苦与鲜血。\n身体与心灵受到深重创伤的她下定决心。\n反抗罗马。保护故乡。誓报此仇。\n因此，她成为了年轻的战斗女王。
4	26	『无以誓约胜利之剑』\n阶级：B　种类：对人宝具\nSword of Boudica。\n自行冠以「胜利」之名的单手剑。\n但绝不是星之圣剑，也无法保证给主人带来胜利。\n不完全的愿望之剑。
5	26	不列颠、英国等，只要是与不列颠岛有关的后世英灵，\n她都会如自己孩子一般地慈祥对待。\n尤其对于给故乡土地带来哪怕短暂「胜利」的骑士王，\n更是完全地——\n就像亲戚中那个什么事都要过问的大姐姐。
1	27	身高／体重：168cm·55kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：混沌·中庸　　性别：女性\n骑乘的战马，名为太夫黑。
2	27	牛若丸（源义经）足以称为日本史上最有名的武将。\n以知名度而言，只有织田信长可以与她媲美了吧。\n……然而，关于她的历史存在很多不明确的要素，\n尤其是起兵前的前半生完全是个谜。
3	27	天狗的兵法：A\n固有技能。\n传说她是从存于人世之外的天狗那里学习的兵法。\n对剑术、弓术、枪术等近身战斗力，\n以及军略和对魔力都有能力加成。
4	27	十一岁时，被寄养在鞍马寺的牛若丸，\n遇到了阴阳师鬼一法眼，\n并因此被传授了兵法（另有说法称此人是鞍马天狗）。\n义经无疑是个优秀的兵法家，但也欠缺了致命的要素。
5	27	那就是对战场的恐惧。她一生都与其他武将水火不容。\n赖朝竟会对义经心怀杀意的原因，\n她想必终生都没能理解吧。\n对天才的她而言，根本无法体会对于能力的恐惧。
1	28	身高／体重：151cm·40kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：男性\n爱马·布西发拉斯也毫无疑问是一位的英灵。
2	28	时而学习哲学或政治学，\n时而沉浸于阅读激动人心的神话，\n时而作为一名士兵勤于锻炼，\n该少年已然拥有如此多样的才华，\n可依旧蕴藏着各种可能性——
3	28	无论理由为何，征服王伊斯坎达尔，\n也就是亚历山大以少年的形态被召唤。\n不仅容貌，连精神也维持少年时的状态。\n虽说他并没有失去记忆，\n但青年期以后的记忆在脑海中略有些「没有现实感」。
4	28	红颜美少年：B\n能够吸引他人的美少年的性质。\n无论对象是男是女，都能发动魅惑的魔术效果，\n然对方若有抵抗的意愿则会减轻效果。\n拥有对魔力技能则可完全回避。
5	28	『神之祝福』\n阶级：C　种类：对人宝具\nZeus Thunder。作为神之子的自我认识。\n随着使用次数的增加，\n宙斯之雷都会强化身体，提升神性，\n红颜美少年技能阶级则会下降。也就意味着……
1	29	身高／体重：160cm·48kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　性别：女性\n喜爱洗澡。和母亲玛丽亚·特蕾西亚一样爱美。
2	29	天生的偶像。\n用微笑治愈众生，其眼神令人心醉。\n为自己生来就是被人所爱的偶像而感到喜悦，\n一切言行举止都顺应他人的期待。\n其精神性质已经接近了某种意义上的女神。
3	29	神之恩宠：B\n表现最美的容貌与肉体，也就是「王权之美」的技能。\n\n秀丽公主：A\n能吸引周围人的领袖气质。单凭这个技能，\n就能让那些可以成为自己的守护骑士的人物不请自来。
4	29	魅惑的美声：C\n不仅是吸引人们的魅惑系技能，\n同时也是执行王权的宣言。\n作为象征性的存在而现界的玛丽，\n只用歌声就能给王权的敌对者造成魔力伤害。
5	29	大革命期间她成了众多人民憎恨的对象，\n但在现代的法国，名誉已得以恢复。\n在饥荒中，不惜削减宫廷经费进行捐助，\n并自发向贵族们为人民请求援助等等。\n她无疑是一位为民众着想的女性。
1	30	身高／体重：161cm·49kg\n出处：史实、新约圣经\n地域：欧洲\n属性：秩序·善　　性别：女性\n可以骑乘龙种，破格的Rider。
2	30	救世主被处刑后依然没有舍弃信仰，\n被当时的罗马总督流放却没有死，\n凭借神之恩宠，漂流到法国南部。\n在罗纳河沿岸的城镇奈鲁克，\n与给人们带来痛苦的残暴的龙对峙。
3	30	奇迹：D\n有时能将不可能化为可能的奇迹。固有技能。\n与技能星之开拓者虽有相似处，\n但本质是截然不同的存在。适用的对象自然也不同。
4	30	从外表到内在都是一名完美的圣女。\n或许是因为有妹妹的缘故，其言行总是一副大姐气派。\n善良、清廉、沉稳——散发着光辉的人。\n然而……尤其是面对关系亲密的对象，\n偶尔会表现出「非圣女的玛尔达」的一面。
5	30	「非圣女的玛尔达」的表情会变得尖刻、好动、好胜。\n这是她成为圣女之前「与弟妹同居的村姑」时的模样。\n只是，即便言行变化，她的本质也依然不会改变，\n依然是圣女。简而言之，\n就是将过滤器打开还是关闭的区别而已。
1	31	身高／体重：163cm·51kg\n出处：希腊神话\n地域：希腊、科林斯\n属性：中立·恶　　性别：女性\n根据经验，长得好看的男人不可信。
2	31	将面容藏在斗篷下的女魔术师。\n冷酷、残忍，为了达到目的不择手段，\n擅长使用奸计，名副其实的坏女人。\n然而，她的性格之所以会这样，\n都是由于命运的反作用力所致。\n不断遭到他人的背叛之后，\n最终堕落到背叛他人立场上的悲剧女性。
3	31	『万符必应破戒』\n阶级：C　种类：对魔术宝具\nRule Breaker。\n魔女美狄亚的一生化为有形之物的概念宝具。\n能破戒各种魔术的短刀。\n将那些被魔力强化了的物体，因契约而成的关系，\n以及用魔力创造的生命回归初始的对魔力宝具。
4	31	阵地建造：A\n道具作成：A\n高速神言：A\n对魔术师而言必要的技能全都达到A阶。\n在神话中并没有任何伟大成就，因故评价很低，\n但作为魔术师却拥有可谓最高位的实力。
5	31	只要与她相处一段时间，谁都能看出，\n由于她也曾经是一位深闺公主，\n本质上是个拥有良知与道德感的大小姐。\n一边说着「这城市里的人都是归我所有」这种话，\n实际上却不会真的夺人性命，就是其证据。
1	32	身高／体重：196cm·70kg\n出处：史实\n地域：法国\n属性：混沌·恶　　性别：男性\n比任何人都渴求神明的神圣怪物。
2	32	本是个非常虔诚的信徒，\n却因为贞德被当做异端予以处决后，\n感受到深深的绝望，失去了对神信仰的方向。\n他最终那些残暴的行为也只是，\n为了证明（本应惩罚恶行的）神并不存在的手段。
3	32	『螺湮城教本』\n阶级：A+　种类：对军宝具\nPrelati\\'s Spellbook\n内部蕴含着魔力炉的魔导书。\n能够无限召唤异界的怪物。\n吉尔·德·雷本身并非正规的魔术师，\n也没有魔术的素养，这本魔导书则代替他执行魔术。
4	32	起初吉尔与他好友兼导师的弗朗索瓦·普勒拉蒂一起，\n为了解决财政困难而接触了炼金术，\n但不知不觉中失去了当初的目的，\n开始为恶魔召唤所倾倒。
5	32	一些人担心吉尔为了钱可能会将领土贩卖给敌国，\n因此以他平时的恶行之名定罪，\n没收其领地，最终将他处决。\n对他残酷行为与亵渎神明的弹劾，\n都只是政治上的借口罢了。
1	33	身高／体重：146cm·39kg\n出处：史实\n地域：丹麦\n属性：秩序·中庸　　性别：男性\n「我对流行可是很敏锐的哦？\n　因为那是可以轻松搞定稿子的捷径啦！」
2	33	阴暗厌世的诗人。\n由于厌恶自己的人生，\n所以作为从者被召唤时的模样，\n正如大家所见，是幼年时期的他。\n本人则有些破罐子破摔地评论说，\n「这说明孩童时代的我才是最有才能的吧！」
3	33	无辜的怪物：D\n指无视本人的想法与外形，\n因风评而被扭曲了的事物的深度。\n以安徒生而言，则是受到了“读者的诅咒”。\n很多他的读者认为，\n「写出这种故事的一定是个没血没泪的男人」，\n其结果就是导致他身体各处都带着，\n「与自己撰写的童话主人公相同」的伤。
4	33	人类观察：A\n观察人类，并进行理解的技术。\n这并不是单纯的观察，重要的关键在于，\n推测那些不知名人们的生活、兴趣、甚至是人生，\n且不会忘却的记忆力。以厌世著称的安徒生，\n其内心所深藏的，并非拒绝，而是理解。\n虽说他能做到的只有撰写故事，但正因为如此，\n他才能发誓比任何人都真挚地娓娓道来。
5	33	『为你撰写的故事』\n阶级：C　种类：对人宝具\nMarchen Meines Lebens。\n他的自传「我的一生」的原稿。\n通过将被观察人物的理想人生、人生态度汇集在一起，\n写成一册书，来强化这个人物的「理想的形象」。\n……但前提是能按时完稿。
1	34	身高／体重：180cm·75kg\n出处：史实\n地域：英格兰\n属性：中立·中庸　　性别：男性\n朴素的已婚人士。
2	34	作为一名有名的作家，其半生却充满了谜团。\n但不管怎么说，他创作了大量作品，\n却并不知道自己的名气会流传后世。\n生时为众多前辈剧作家所嫉妒，\n以至于甚至背负了「暴发户式的乌鸦」的骂名。
3	34	莎士比亚能够用短小精悍的言辞，\n有效地暴露人们平时隐藏在内心的东西。\n这或许可以理解为，\n无意间被无形的存在打个措手不及而产生的惊愕吧。
4	34	魔力附加：A\n固有技能，对武装进行概念付与。\n原本是指付与魔术概念的行为，\n但莎士比亚则是通过撰写文章，\n将武装的力量提升到极限以上。
5	34	『开演之刻已至，此处应有雷鸣般的喝彩』 \n阶级：B　种类：对人宝具\nFirst Folio。\n莎士比亚释放的究极之剑。他不分敌我，\n将对象设置成自己创作的剧本中的人物。\n能让所有英杰屈服的对心宝具。
1	35	身高／体重：188cm·78kg\n出处：『浮士德』\n地域：德国\n属性：混沌·恶　　性别：男性（？）\n不是人类，但也不是恶魔。
2	35	歌德的代表作「浮士德」中登场的诱惑人心的恶魔。\n与神打赌猜浮士德博士是否会堕落的梅菲斯托，\n企图将博士引向邪恶之路的深渊。
3	35	梅菲斯托费勒斯用尽了手段，\n成功引导浮士德走上邪恶的道路。\n然而就在灵魂坠入地狱前，\n浮士德被所爱之人拯救了灵魂。\n啊啊，多么的美妙，大团圆！
4	35	……当然『现实』并非如此。\n身为卓越魔术师的浮士德铸造了一个人工生命体。\n给他起名为梅菲斯托费勒斯，非常疼爱他，\n但最后还是理所当然地遭到其背叛而死。
5	35	无辜的怪物：B\n契约恶魔■■■■■■■■■。\n以生前所作所为，以及与生俱来的印象，\n而被扭曲了过去和存在方式的怪物之名。\n能力、容貌都发生了变化。\n但对他而言这种变化带来的只有好处。
1	36	身高／体重：180cm·65kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：男性\n内心偷偷为自己与所爱的人有着相同属性而感到喜悦。
2	36	有传言说他为魔术的世界所倾倒，\n和某个秘密社团有关联。\n不仅精通来源自俄耳甫斯的音乐魔术，\n还与传说中的所罗门魔术有很深的关系。\n通常会用以声音为媒介的音乐魔术进行攻击。
3	36	音乐之神的护佑（伪）：EX\n原本是表现艺术女神缪斯之加护的技能。\n能辨识所有的声音，并可实现天才般的演奏。\n更有对音乐魔术有加成效果。\n这些效果全都可作为「自身的力量」进行发挥。
4	36	真诚对待音乐的至高圣者。\n作为一名人类——很遗憾属于人渣。\n还算比较喜欢与人交谈，也喜欢开玩笑。\n最喜欢的玩笑类型，也就是黄段子，\n被有意（因为玛丽这么吩咐）封印了起来。
5	36	他的音乐全都献给一名女性。\n幼年时——某次被邀请到维也纳的宫殿之际，\n他遇见了如同光辉这一概念的代名词的少女。\n玛丽亚。也就是后世的「玛丽·安托瓦内特」，\n那位在行刑台上凋零的悲剧王后——
1	37	身高／体重：186cm·68kg\n出处：『三国演义』\n地域：中国\n属性：中立·善　　性别：男性\n合理主义的怪物。
2	37	诸葛孔明作为中国的三国时代优秀的政治家、\n军事家而闻名于世。据说本为弱小国家的蜀国，\n之所以能长期抵抗强大的魏国，多半是依仗他的力量。
3	37	严格来说该从者并非埃尔梅罗Ⅱ世，也不是诸葛孔明。\n两者的力量混合后，发挥出了超越一般从者的力量。\n此外，思考与情感则是以作为容器的埃尔梅罗Ⅱ世为准。
4	37	鉴识眼：A\n固有技能。这能力出自埃尔梅罗Ⅱ世，而并非孔明。\n一种更为集中的人类观察技术。观察力得以进一步提升，\n尤其精于看透观察对象将来会以怎样的形式起到用处。
5	37	『石兵八阵』\n阶级：C　种类：对军宝具\n传说中，诸葛孔明曾在自军战败撤退时布下的奇阵。\n此阵以巨大岩石构成，\n能令入侵者陷入迷途，置之于死地。
1	38	身高／体重：185cm·70kg\n出处：凯尔特神话\n地域：欧洲\n属性：秩序·中庸　　性别：男性\n作为Caster时，身上不佩戴金属类的装备。 
2	38	作为Caster现界的他与身为Lancer时截然不同，\n使用多种多样的魔术折磨敌对者。\n擅长强大的热、火焰攻击。\n想必是使用了名为「Ansur」卢恩符文吧。 
3	38	卢恩魔术：A\n持有斯卡哈赐予的北欧魔术刻印——卢恩符文。\n通过运用这些符文，可产生各式各样强大的效果。\n然而，不可同时使用复数（并用）符文。 
4	38	『灼烧殆尽的炎笼』\n阶级：B　种类：对军宝具\nWicker Man。出现由无数细树枝构成的巨人。\n巨人全身缠绕着火焰，向敌人发动突袭，\n给敌方造成强烈的热、火焰伤害。
5	38	作为宝具出现的巨人胴体内的牢笼是中空的，\n因此，巨人会疯狂寻求献给诸神的祭品。\n这并非卢恩的奥义，而是凯尔特德鲁伊们的宝具。\n这一宝具被赐予能够操控炎热，\n作为「凯尔特魔术师」现界的光之皇子。 
1	39	身高／体重：176cm·63kg\n出处：史实\n地域：日本\n属性：中立·恶　　性别：男性\n「无论是谁，只要曾斩杀人，即是恶」
2	39	爱好花鸟风月，身披优雅披肩的风流之人。\n性格虽有些让人捉摸不透，\n但他依然是一名武人，喜欢堂堂正正一决胜负。\n由于身处于死亡就如同家常便饭的时代，\n因此其生死观在现代人看来显得有些冷酷。
3	39	燕返\n对人魔剑。最大捕捉对象·１人。\n仅凭人类的技术，达到能与宝具匹敌程度的剑技。\n将对方以三个圆形的方式同时斩断的绝技。\n似乎是被称为多重次元折射现象之一。\n原本是为了斩杀空中的飞燕而创造的剑术。
4	39	虽说本人将『燕返』称为秘剑，\n但从旁人看来，这毫无疑问是魔剑。\n因为这已经是非人所能做到的了。\n本人虽然表示这是为了斩杀空中的飞燕而创造的，\n但当然，就算没有这样的魔技也可以斩下飞燕。\n或者不如说仅以这种理由就达到剑之极致的剑士，\n是多么的不愿妥协，又是拥有多么优秀的武术才能。
5	39	宗和的心得：B\n无论在对手面前使用多少次相同的能力或剑技，\n命中精度都不会下降的特殊技能。\n不会被对方识破攻击。也就是说，\n绝不会使用“会被眼睛习惯”的笨拙剑技。
1	40	身高／体重：215cm·62kg\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　性别：男性\n身高包括身体改造的部分。
2	40	戴着骷髅的面具，身披黑色的斗篷，\n拥有如棍棒般的右手，外观诡异。\n骷髅假面下的面容已被割掉，因此没有脸。\n自从他继承了「哈桑·萨巴赫」之名后，\n就舍弃了他过去个人所有的一切。
3	40	从人类角度而言并不能称之为好人，\n但永远忠实于主人的命令，\n无论主人陷入多么绝望的劣势，他也不会背叛，\n甚至愿意默默地执行一些强人所难的命令。\n认为杀戮只是一种任务与义务，\n从中感受不到任何喜怒哀乐。
5	46	『幻想铁处女』\n阶级：C　种类：对人宝具\n据说是卡米拉曾使用的著名拷问刑具。\n……但经过长年的调查，结论认为这其实是虚构的。
4	40	『妄想心音』\n阶级：C　种类：对人宝具\nZabaniya。\n被诅咒的手臂。也是恶性的精灵·晒衣陀乃的手臂，\n擅长咒杀人类。使用乙太块，\n通过镜中的杀害对象的反镜存在，\n制造可与本体相互影响的的二重存在。\n然后通过将与杀害对象产生共鸣的假冒者击溃的方式，\n达到不触碰本体一根汗毛就能咒杀对象的目的。
5	40	气息遮断：A+\n隐蔽身为从者的气息，适合隐秘行动中使用。\n而只要完全遮断气息，被发现是近乎不可能的。\n然而，只要转为攻击态势，\n气息遮断的阶级就会大幅下降。
1	41	身高／体重：134cm·30kg？\n出处：希腊神话\n地域：欧洲\n属性：混沌·善　　性别：女性\n体重据说「和我（尤瑞艾莉）一样哦」。
2	41	无论面对怎样的男性，都会夸奖吹捧对方。\n虽说具备了优雅与高贵，\n但更进一步来说，其实也有很怕麻烦的性质。\n对那些无关紧要的对手则表现得极为冷酷。\n甚至能令冥府（塔耳塔罗斯）的守门犬吓得发抖。
3	41	一有鸡毛蒜皮的小事，\n就会和另一个自己（尤瑞艾莉）一起，\n欺负妹妹（美杜莎），但其实是很喜欢她的。\n——很爱她。由衷地。死后依然。
4	41	女神的神核：EX\n当天生就是个完成的女神时才会产生的固有技能。\n包含了神性技能的复合技能。\n能阻挡任何精神系的干涉，肉体也不会成长，\n无论摄取多少卡路里，体型都不会变化。
5	41	『女神的微笑』\n阶级：B　种类：对人宝具\nSmile of the Stheno。\n升华后的女神魅力，能够魅惑勇者使之成为俘虏。\n慵懒的视线犹如刀刃，心驰荡漾的呢喃宛若毒物。
1	42	身高／体重：159cm·48kg\n出处：史实\n地域：中国\n属性：混沌·善　　性别：女性\n在史实的记述中是名男性。
2	42	荆轲并非以暗杀为生，\n她是个爱读书，爱剑术，\n爱与好友交流，更爱美酒的豪爽人物。\n燕国太子丹委托她暗杀秦始皇，\n她也爽快地答应了下来。\n为了暗杀行事谨慎的皇帝，她安排了详尽的计划。
3	42	搞定献给秦始皇的礼物，以及淬了毒的暗杀用匕首，\n就在即将出发前，\n只差等待愿意舍命随她前往暗杀的朋友，\n太子丹见荆轲迟迟不动，\n竟开始怀疑她是不是「胆小怕事了」。
4	42	遭到怀疑的荆轲无奈只能选择太子推荐的男性当助手，\n踏上了赴秦之旅。然而这名本应帮助她刺杀的男性，\n却因恐惧而动弹不得，荆轲只得孤身一人暗杀秦始皇，\n然而或许是因为秦始皇的帝运之故，\n在最后关头被其逃脱。
5	42	传说觉悟到自己之死的荆轲出口讥讽秦始皇，\n遭到了杀害。身为一名暗杀者，\n荆轲未能完成暗杀就已命丧黄泉。\n但明知自己无法活着回来，\n却依然爽快地接下任务的荆轲，\n不愧为名震天下的侠义人物吧。
1	43	身高／体重：178cm·68kg\n出处：史实\n地域：法国\n属性：秩序·恶　　性别：男性\n副业是医生。从技能中也可略窥一斑。
2	43	夏尔·亨利·桑松不是暗杀者，而是刽子手。\n刽子手的职业是代代继承下去的，他是第四代。\n他的生活极为富裕，却因为职业的缘故，\n常常遭到他人的轻蔑，年轻的夏尔为此苦恼不已。
3	43	过着犹如贵族般优雅生活的桑松家敬爱国王与王后，\n也怜爱着他们治理的国民。\n据说他们也因负责行刑而掌握了最前沿的医疗技术，\n并将此无偿提供给贫穷的人们。
4	43	然而，时代并没有给夏尔安稳的生活。\n法国大革命爆发后，依然被强迫执行处决的他，\n最终参与了对他最爱戴的法国国王路易十六世，\n以及王后玛丽·安托瓦内特的行刑。
5	43	『死亡将为明日的希望』\n阶级：A　种类：对人宝具\nLa Mort Espoir。\n真实的处刑道具——断头台的具现化。\n死亡的概率并非取决于对诅咒的抵抗力或是幸运，\n而是根据是否具有打破命运的强韧精神力进行判定。
1	44	身高／体重：185cm·80kg\n出处：『剧院魅影』\n地域：欧洲\n属性：混沌·恶　　性别：男性\n用骷髅面具隐藏自己那被诅咒的异形般的脸庞。
2	44	平时表现得非常绅士。但并非真正的绅士，\n他只是在表演「非常绅士的自己」而已。\n面具的背后隐藏着巨大的悲哀与愤怒，\n他深深地明白这些一旦爆发，将会引发悲剧。
3	44	无辜的怪物：D\n作为小说『剧院魅影』中角色原型的他，\n受到作品的影响，其容貌变成了异形，\n双臂也化为了异形般的存在。只要摘下手套，\n就会露出如大型刀具般锐利的钩爪。
4	44	『吾之情歌只在地狱回响』\n阶级：B　种类：对军宝具\nChristine, Christine。\n由过去的牺牲者的尸骸拼凑而成，\n犹如管风琴般的巨大演奏装置。
5	44	不知是雨生龙之介不断摸索的恶行，\n在十九世纪已经得以完成——\n还是残忍怪人的印象令宝具得以升华，\n总之配合以通过异形般发声器官所唱出的歌声，\n该宝具能释放出不可视的魔力。
1	45	身高／体重：165cm·49kg\n出处：史实\n地域：法国～德国\n属性：混沌·中庸　　性别：女性\n真正的名字是玛格丽莎·赫特雷达·泽莱。
2	45	回想起来，玛塔·哈丽在人生的起点，\n就无可奈何地被绊倒在地。父亲经营的公司倒闭，\n不断出轨。母亲因心病积劳成疾，\n在玛塔·哈丽十四岁的时候就亡故了。
3	45	结婚生活也因丈夫的暴力、嗜酒、花心，\n最后以失败而告终。其大部分的青春时代，\n都浪费在了男人任性的欲望中。所以对她而言，\n将男人玩弄于鼓掌之中的间谍极为对她的胃口。\n——哪怕最后等待她的将是处决，也在所不辞。
4	45	谍报：A++\n这技能并不是遮断气息，而是彻底消除气息中的敌对性。\nＡ++的级别则意味着只要不被己方阵营告发，\n就不可能被发现自己真实的敌对身份。
5	45	『拥有阳眼之女』\n阶级：A　种类：对军宝具\nMata Hari。\n传说的具现化，洗脑宝具。\n用妖艳的舞蹈麻痹思考，将对方化为自己操控的人偶。\n没有精神耐性技能的从者也会成为目标。
1	46	身高／体重：168cm·49kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　性别：女性\n各个部分都成长得极为丰满。
2	46	伊丽莎白·巴托里经过成长，并完全化为怪物的存在。\n司掌伊丽莎白的黑暗面。她拥有的不再是可爱，\n而其一味残忍地渴求鲜血的一生，\n通过其化名——卡米拉而表现。
3	46	成为卡米拉的她与伊丽莎白性格完全合不来，\n成了会相互厮杀的关系。这其实象征着，\n年轻的伊丽莎白拒绝成为卡米拉，\n而卡米拉则无法容忍伊丽莎白沉浸于无知的青春中。
2	47	虽说赫拉克勒斯在神话中数次发狂，\n但他原本是一位精通所有武器的卓越战士。\n拥有除Caster以外其他所有六种职阶的资质，\n持有的宝具中最强的是克服十二难关后获得的，\n被称为“射杀百头（Nine Lives）”的弓箭。
3	47	『十二试炼』\n阶级：B　种类：对人宝具\nGod Hand。\n因神的祝福（诅咒）所获得不死属性。\n肉体化为坚硬的铠甲。
4	47	勇猛：A+\n令威压、混乱、幻惑等精神干涉无效化的能力。\n此外，还有提升格斗伤害的效果。\n然而现在因职阶能力关系遭到狂化，\n无法发挥这些能力。
5	47	十二试炼（Ⅰ）\n他是在神话中被赋予了十二个试炼，并全部克服的英雄。\n一般的英雄完成其中任何一个试炼都已是难上加难了，\n因此为了奖励其功绩，赫拉克勒斯死后，\n被允许成为星座，从而加入了诸神的序列。
1	48	身高／体重：191cm·81kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·狂　　性别：男性\n正因为曾是最优秀的骑士，其罪行也就显得更重。
2	48	幼时失去双亲，被湖中仙子妮妙抚养长大，\n因此获得了「湖上骑士」的外号。\n成年后前往不列颠岛，见到亚瑟王并成为了圆桌骑士。\n据说论英勇与骑士道精神，无人能与其相提并论。
3	48	为了对王妃桂妮薇儿的感情而付出一切，\n其实也是他毕生遵从骑士道的必然结果。\n其叛乱如果能够迅速被终结，那本应还有挽回的机会。\n但正因其武勇无双，事态最终发展至最悲惨的结局。
4	48	『骑士不徒手而亡』\n阶级：A　种类：对人宝具\nKnight of Owner\n为手中的一切付与「自身宝具」属性的宝具能力。\n无论是怎样的武器、怎样的兵器，\n都能化为相当于D阶级的拟似宝具。
5	48	无穷的武练：A+\n达到一代无双般巅峰的武艺技巧。\n心技体完全合为一体，\n无论有着怎样的精神制约，都能发挥十成战斗力。
1	49	身高／体重：225cm·153kg\n出处：史实\n地域：中国\n属性：混沌·恶　　性别：男性\n由于被狂化，故不清楚他的兴趣爱好。
2	49	由于被狂化，失去了理性与思考，\n不会表现出任何人性。\n或许是将所有人都视为该被摧毁的敌人，\n因此常常会失去控制。\n据说狂化后的他作为雇佣兵反而更让人放心，\n真是个难以应对的英灵。
3	49	『军神五兵』\n阶级：A　种类：对人·对军·对城宝具\nGod Force。\n传说是吕布生前使用的方天画戟的真名。\n能变化为斩、刺、打、挥、切、射击，\n这六种形态的复用型武器。\n开发者是为吕布所倾倒的超军师·陈宫。
4	49	反骨之相：B\n不滞留在一个地方，\n同时也不只侍奉一位主公的性格。\n自己虽没有当君主的气量，\n却也无法找到自己应侍奉的君主的流浪之星。\n能让同阶级的领袖气质无效化。
5	49	吕布善骑射，故也有人将他比作飞将军·李广。\n在与刘备仍称兄道弟之时，\n吕布曾仅用一箭就为其解了围城之急，\n这于后世被人们颂为「辕门射戟」。
1	50	身高／体重：221cm·165kg\n出处：史实\n地域：罗马\n属性：中立·中庸　　性别：男性\n全身都散发着非常人能及的气息。
2	50	斯巴达克斯是古代罗马的剑斗士，\n领导了被称为斯巴达克斯起义的奴隶战争。\n叛乱虽然遭到了镇压，但他名垂青史，\n遭到压迫的人们将其名视为希望的象征。
3	50	斯巴达克斯虽然作为Berserker被召唤，\n但他乍一看来似乎拥有正常的思考能力。\n措辞流畅高深，也不会袭击御主。但是……。
4	50	狂化：EX\n被狂化的斯巴达克斯依然能进行对话，\n但他的思考被固定为“始终选择最困难的选项”，\n其实与他是无法正常交流的。
5	50	『伤兽的咆吼』\n阶级：A　种类：对人（自身）宝具\nCrying Warmonger。\n保持发动状态的宝具。将受到的伤害化为魔力并存储。\n魔力累积到一定量后，最终甚至能令肉体都发生变化。
1	51	身高／体重：190cm·88kg\n出处：史实\n地域：日本\n属性：秩序·善　　性别：男性\n喜欢的节假日是黄金周。
2	51	那身实在有些不太像是一个英雄的非主流打扮，\n也是因为被召唤后适应了现世生活的缘故。\n喜欢强悍的、巨大的、帅气的东西。\n精神年龄媲美小学低年级学生级别。\n对恋爱方面的问题很没抵抗力。\n说句题外话，喜欢的苹果是金冠苹果。
3	51	雷神赤龙之子。母亲是居住在足柄山吃人的山姥。\n金时也继承了怪物的力量，与山中的野兽搏斗，\n并杀害了它们。最终鬼女母亲被碓井贞光讨伐，\n金时则被他收养。源赖光教导他为人之道并收为家臣。\n之后他作为赖光四天王参加了各种鬼怪的讨伐任务。\n然后，遇见了大江山的酒吞童子——
4	51	天性的肉体：A\n作为生物，天生就拥有完美（GOLDEN）的肉体。\n\n动物会话：C\n可与没有语言的动物进行沟通。\n说句题外话，喜欢的行星是金星。
5	51	『吞噬黄金』\n阶级：B　种类：对人宝具\n身体内拥有雷神的力量。\n虽然并非真名，但用这个名字能发动。\n简直黄金得不讲道理。\n说句题外话，喜欢的小说家是金庸。
1	52	身高／体重：191cm·??kg\n出处：『德古拉』\n地域：罗马尼亚\n属性：混沌·恶　　性别：男性\n身为Lancer时的气质荡然无存。
2	52	吸血鬼德古拉。为了拭去这耻辱，\n弗拉德三世选择回应Lancer职阶的召唤，\n参加圣杯战争。然而，极为罕见的情况下，\n也会以Berserker的职阶被召唤。\n此时，他的知名度将以「吸血鬼德古拉」为基准。
3	52	作为Berserker而被召唤的情况下，\n宝具『鲜血传承』默认处于发动状态。\n虽说狂化阶级为EX，但可进行对话沟通。\n然而，若非拥有足够力量的御主，\n弗拉德三世迟早会选择吸取御主的鲜血吧。
4	52	吸血：A\n吸血行为。降低对象的HP来回复自身的HP。\n更有中等概率对敌方付与诱惑（混乱）的负面效果。\n此外，吸血行为产生的诱惑不分男女。
5	52	『血染的王鬼』\n阶级：C+　种类：对人宝具\n发射体内生成的「桩」。材质除了木头以外，\n还有骨、肉、影、毛发等各式各样。\n甚至能吸收射程范围内的物体，并变化成桩。
1	53	身高／体重：298cm·150kg\n出处：希腊神话\n地域：希腊\n属性：混沌·恶　　性别：男性\n天生的魔兽，反英灵。
2	53	支配了克里特岛的王弥诺斯之妻，\n帕西菲与公牛之间诞生的人身牛首的怪物。\n弥诺斯烦恼于不知道该怎么处置他，\n最终命令著名的工匠代达罗斯建造了\n「绝对无法逃脱的迷宫」——也就是Labyrinth。
3	53	天生的怪物注定会被天生的英雄打倒。\n阿斯忒里俄斯被潜入迷宫的英雄忒修斯击败，\n并遭到杀害。没错，就算本质并非邪恶，\n只要所作所为是邪恶的，最终被打倒就是其宿命。
4	53	哪怕——他想要的并非黑暗，而是光芒，\n他奢望的不是阴森的迷宫，\n而是凉爽的自然之风与丰饶的森林。
5	53	『万古不变的迷宫』\n阶级：EX　种类：迷宫宝具\nChaos Labyrinthos。\n阿斯忒里俄斯被囚禁的迷宫的具现化。\n一旦被发现，就会根据「迷宫」\n这概念的知名度而形成通路。
1	54	身高／体重：185cm·80kg\n出处：史实\n地域：欧洲\n属性：混沌·恶　　性别：男性\n他的宝具对与女神阿耳忒弥斯有关系的人没有效果。
2	54	爱好施虐，完全的施虐狂。\n所有被他盯上的敌人都将会成为暴虐与恶行的对象。\n狂化技能更令他陷入无法自制的状态，难以驾驭。\n——即便在这种状态下，他依然爱着罗马，和尼禄。
3	54	狂化：A+\n全能力都得以提升，\n但却被剥夺了大部分理性。\n把尼禄或罗马拉出来与其进行接触的情况下，\n可进行幸运判定。一旦成功就会结束失控状态。
4	54	『吞噬吾心吧，月光』\n阶级：C　种类：对军宝具\nFlucticulus Diana。\n通过空中投射下来的月光扩散自身的疯狂，\n广范围的精神污染攻击。很强势。
5	54	他所散发的狂乱之源是月之女神狄安娜\n（相当于奥林匹斯十二神中的阿耳忒弥斯）的\n宠爱与佑护——这一传说升华而成的宝具。\n如果对一整支军队使用，\n那将造成极为可怕而凄惨的结果。
1	55	身高／体重：345cm·280kg\n出处：史实\n地域：西亚\n属性：秩序·中庸　　性别：男性\n不仅是战斗能力，财力也是他强大力量的一部分。
2	55	不屈不挠的男人。\n平时表情稳重。然而时常保持着无法动摇的斗志，\n在战斗时会瞪目切齿，仿佛成为暴风的化身，\n开始破坏对象。\n（因高阶的「狂化」，人性已几乎消失殆尽）
3	55	与激烈的战斗方式相反，\n面对御主时的大部分反应却都非常安分。\n平时很少失控，也比较愿意听御主的意见，\n所以不至于浪费有利于撤退的重整旗鼓技能。
4	55	『不死的万名骑兵』\n阶级：A　种类：对军宝具\nAthanatoi Ten Thousand。\n召唤由会动的尸体或是会走的骸骨组成的一万名士兵，\n集结后成为「死之战象」歼灭敌人。
5	55	不死队阿塔纳托依。存在于史实中的万人精锐部队，\n被宝具化后的存在。随着后世筑起的传说，\n更为强化了其不灭性与不死性。\n「死之战象」是某种意义上的群体，\n能以可怕的魔力一击将王的敌对者破坏殆尽。
1	56	身高／体重：158cm·41kg\n出处：『清姬传说』\n地域：日本\n属性：混沌·恶　　性别：女性\n为爱而生的女性（自称）。
2	56	在「清姬传说」中登场。\n她爱上了前往熊野参拜途中借住一宿的英俊僧人——\n安珍。然而，深夜造访的清姬，却遭到了无情的拒绝。\n虽然安珍和她约定在熊野参拜归来后相见。但是——。
3	56	害怕清姬的安珍并没有遵守相见的约定，直接逃跑了。\n发现遭到背叛的清姬深感绝望，她哀叹，愤怒，\n化为龙奋起直追，\n最后将藏身于寺院大钟内的安珍活活烧死。
4	56	历史上并不存在她拥有龙种之血的记录。\n存在的，只有她对爱慕对象的执着。\n……或许之所以能够仅靠「自我意识」就变身成龙，\n完全是她那份执着的体现。
5	56	『转身火生三昧』\n阶级：EX　种类：对人宝具（自身）\n喷吐火焰的大蛇。也就是龙的化身。\n当作为从者被召唤时虽只能维持1回合，\n但龙息的威力依然令人叹为观止。
1	57	身高／体重：195cm·115kg\n出处：『公平的羊皮纸』\n地域：挪威～英格兰\n属性：混沌·中庸　　性别：男性\n妻子似乎是魔女。
2	57	埃里克是公元十世纪时期支配挪威的王。\n可他其实只做了短短三年左右的王。\n被赶下王位的他逃到英格兰，成了区区一介地方领主。
3	57	可他的外号依然名镇天下的原因，\n是因为他在即位时杀害了所有兄弟姊妹的那种残暴，\n以及传说是背后推手的魔女贡希尔达的存在。
4	57	支援咒术：C\n令敌对者的实力降低1级。\n恶名与丈夫不相伯仲的女魔术师贡希尔达的诅咒。
5	57	『嗜血兽斧』\n阶级：C　种类：对人宝具\n以曾经打倒的魔兽为素材，加工而成的战斧。\n据说成为战斧后的魔兽依然活着，\n它靠吸吮鲜血存活至今。
1	58	身高／体重：160cm·52kg\n出处：Fate／EXTRA CCC\n地域：SE.RA.PH\n属性：混沌·善　　性别：女性\n由于比玉藻前肌肉更发达，所以稍微有些重。
2	58	不知道她在做什么，也不知道她想做什么，\n根本就像是一只充满野性的猫。\n由于是Berserker，基本很难与其沟通。\n只对好吃的与好玩的有兴趣，\n天天享受着自由自在的狩猎生活。
3	58	『璀灿日光午睡宫酒池肉林』\n阶级：D　种类：对人宝具\n从水天日光天照八野镇石派生的存在。\n酒池肉林本是「在林中放养老虎，\n并将人类赶入林中看着娱乐」的拷问游戏，\n但现代这个词的意义已经发生了变化。
4	58	变化：B\n也称借体成形。是被视为与玉藻前属同一存在的，\n中国的千年狐狸精所使用的法术。\n附身于殷周革命（『封神演义』）时期的妲己身上，\n并进行变化的法术。由于过去受到的心理创伤，\n玉藻前有所自律不再使用该法术。但在玉藻猫的脑海里，\n根本不存在什么自律、自省、自制的字眼。\n有的只有自爆而已。
5	58	狂化：C\n令全能力阶级提升，但夺走大部分理性。\n对打从一开始就没什么理性的玉藻猫而言\n根本说不上是什么狂化，\n反正状态半斤八两，谁都不放在心上。\n偶尔会说一些含蓄的话反倒会令人非常惊讶。
1	59	身高／体重：159cm·44kg\n出处：史实\n地域：法国\n属性：秩序·善　　性别：女性\n为数极少的特殊职阶——Ruler中的一人。
2	59	世界上最有名的圣女。十七岁背井离乡，\n直到十九岁被处以火刑前的这两年间，\n就在历史上刻下了自己的名字。\n是拯救了法国的圣女，奇迹般地一路赢得胜利后，\n迎来了被诋毁的悲剧结局。
3	59	被逮捕的贞德依然在创造奇迹。\n传说作为一名只对圣经和些许祷告词有所了解的村姑，\n居然能机敏地在与一流的神学者的辩论中平分秋色，\n甚至使对方企图为她定下异端之罪的过程变得极为困难。
4	59	据一名曾公开表示愿意亲手烧死魔女贞德的士兵所言，\n他在贞德被执行火刑后看到一只雪白的鸽子飞向天空。\n随后，他意识到自己杀害了真正的圣女，\n并陷入了深深的后悔——。
5	59	『红莲圣女』\n阶级：C或是EX　种类：特攻宝具\n“主啊，此身将交由您的处置——”\n以这句辞世之句发动的概念结晶武装。\n固有结界的亚种，\n将心象风景以剑的形式结晶化后的存在。
1	60	身高／体重：165cm·44kg\n出处：希腊神话\n地域：希腊\n属性：混沌·中庸　　性别：男性·女性\n身高体重是阿耳忒弥斯的数据。
2	60	作为冬季代表星座而出名的俄里翁，\n除了是个有名的猎手及花花公子以外，\n并没有留下什么轰轰烈烈的英雄传说。\n而真正让他名闻天下的，\n是他让处女神阿耳忒弥斯坠入爱河的逸闻。
3	60	对这次情况之异常感到不安的阿耳忒弥斯，\n以强行介入俄里翁召唤的形式乱入，\n担负起Archer的职责。神格被降到最低限度，\n只剩下比普通从者稍微强那么一点点的力量。
4	60	俄里翁被阿耳忒弥斯热烈的追求逼得受不了了，\n一有机会就向各种女性以及女性从者发动求爱攻势，\n然而悲哀的是作为一只吉祥物，这些行为根本无济于事。\n更进一步说，他甚至都没有吉祥物本该有的可爱模样。
5	60	『月女神的爱箭恋矢』\n阶级：A+　种类：对人宝具\nTri-star Amore Mio。\n阿耳忒弥斯凭借对俄里翁的爱的力量射出的箭。\n此箭缠绕着女神满溢的爱，因此可造成极大的伤害，\n以及极度的混乱。
1	61	身高／体重：174cm·44kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　　性别：女性\n※身高包括帽子。
2	61	万圣节原本是凯尔特的收获祭，和主题公园毫无关系，\n但对伊丽莎白而言这根本就不是问题。\n她开开心心地做起了南瓜派（剧毒），\n坚信着只要有浪漫十足的祝福，充满戏剧性的烟花景观，\n就一定能让人感到满足。
3	61	龙女：\n或许是因为巴托里家的家族纹章上的龙是有意义的，\n伊丽莎白拥有隔世遗传的龙之因子，通过成为从者，\n这种因子表现了出来。\n看上去像是在万圣节出没的恶魔，但她拥有龙的角和尾。\n虎牙貌似也不是吸血鬼之牙，而是龙的牙。
4	61	『无辜的怪物』是通过生前所作所为给人留下的印象，\n扭曲过去和存在方式，令能力、样貌发生变化的技能。\n拥有同样技能的还有弗拉德三世。他是因其死后，\n在小说家的创作下才沦落到怪物的下场，\n而她则是因为生前的所作所为，才受到了这样的对待。
5	61	『鲜血极致魔女』\n阶级：E-　种类：对人宝具\n（Bathory Halloween Erzsebet）\n伊丽莎白以此宝具召唤她一生支配的城堡——\n监狱城恰赫季斯，作为展现自我的舞台。\n名字略有变化，但内容并没什么改变。
1	62	身高／体重：160cm·49kg\n出处：日本神话。三大化生之一\n地域：日本\n属性：中立·恶　　性别：女性\n「哈？　你对巫女兼狐狸有意见吗？」
2	62	恋人热切募集中！　毫不掩饰自己欲望的辣妹系从者，\n但本质希望自己能够『为人尽心尽力』。\n生前的乳名是藻女。十八岁入宫，\n之后成为负责侍奉鸟羽上皇的女官，并得名玉藻前。\n传说她以自己的美貌与博识，获得了鸟羽上皇的宠爱。
3	62	『水天日光天照八野镇石』\n阶级：D（EX降级）　种类：对军宝具\n镜子形状的宝具，可暂时解放玉藻静石这一神宝。\n原本是用于复活死者的冥界神宝，\n但现在的她无法使出如此强大的能力。
4	62	咒术（荼枳尼天法）：EX\n包括获得地位与财产（男性用），\n以及获得当权者宠爱（女性用）这些，\n用以获得权力的秘术以及参悟死期的手段。\n然而由于过去受过不少教训，现在几乎不怎么使用。
5	62	狐之婚嫁：EX\n擅自对技能·道具作成进行各式调整而诞生的成果。\n单方面宣称要嫁给对方，降下祝福的太阳雨，\n强行把纪念品塞给恰巧在场的有缘人并让之参与庆祝，\n这技能之开挂程度只能说真不愧是巫女狐狸。\n天照你给我适可而止啊。
1	63	身高／体重：171cm·62kg\n出处：旧约圣经\n地域：以色列\n属性：秩序·中庸　　性别：男性\n以米开朗基罗的「大卫像」最为有名。
2	63	大卫是牧羊人，也是竖琴演奏者。\n当时，为了给与非利士人战斗的以色列王演奏竖琴，\n他曾数度造访军队。就是在那时他主动提出，\n要赌上一切孤身挑战非利士人的巨人歌利亚。
3	63	由于巨人实在太过可怕，以色列军中无人敢与之对抗，\n唯有大卫愿意孤身挑战巨人。\n歌利亚蔑视徒手的大卫，然而大卫却投石砸昏了歌利亚，\n并用他的剑斩下了其首级。
4	63	治愈的竖琴：B\n大卫的竖琴拥有破魔的效果，能令听者精神安定。\n他用此祛除了以色列王国之王——扫罗身上的恶灵。\n古代社会认为竖琴能净化恶魔，极为重视。
5	63	『五块石头』 \n阶级：C　种类：对人宝具\n打倒巨人歌利亚的投石器。\n五块石头代表大卫的宽容，四次会打偏，\n而第五次必然会命中，并打倒敌人。
1	64	身高／体重：180cm·82kg\n出处：特洛伊战争\n地域：希腊\n属性：秩序·中庸　　性别：男性\n各方面都极为出类拔萃的优秀将军。
2	64	人称『头盔闪亮的赫克托耳』，特洛伊方的英雄。\n为了与拥有压倒性兵力的亚该亚对抗，\n代替年老的父王率军作战。
3	64	特洛伊军最强的战士、军团长、甚至是政治家，\n赫克托耳能够让神明所有的推测都落空。\n他曾一度将亚该亚军逼到即将撤退的地步。\n使用的宝具是『不毁的极枪（Durindana）』。\n赫克托耳喜欢将剑柄加长，将之改造为投枪的战术。\n据称其枪能贯穿世上万物。后来失去枪的作用，\n成为了绝世之剑迪朗达尔。
4	64	然而，由于英雄阿喀琉斯的存在，战况渐渐被颠覆。\n赫克托耳通过不停挑拨，时退时进的战法挺了过来，\n但是最终他却接受了来自阿喀琉斯的决斗挑战，\n尽管在其枪的力量下，阿喀琉斯已失去不死能力。
5	64	在败给失去不死能力却依然无敌的阿喀琉斯之后，\n特洛伊方的崩溃速度愈发加快。如果他还在，\n或许就不会被特洛伊木马所迷惑，或许就能赢得胜利。
1	65	身高／体重：162cm·55kg\n出处：史实\n地域：英国\n属性：混沌·恶　　　性别：女性\n比男人更男人的女海盗。
3	125	作为谢礼，龙神们赠与俵藤太可以产出无限大米的米袋。\n在这之后，传说俵藤太历经对百目鬼等的讨伐，\n最终完成了击杀身为不死魔人的平将门的壮举。
2	65	不论善恶立场，公平对待的性格。\n享乐主义者，喜欢华丽的东西。\n崇尚瞬间的快乐，在私生活与战争方面，\n都喜爱暴风雨过后寸草不生的样子。\n喜欢金银财宝，但不喜欢收集，\n更喜欢散财。
3	65	『黄金鹿与暴风夜』\n阶级：A+　种类：对军宝具\nGolden Wild Hunt\n以生前的爱船『金鹿号（Golden Hind）』为中心，\n召唤、展开生前所指挥的无数船队的亡灵。\n并以压倒性的火力齐射歼灭敌人。
4	65	星之开拓者：EX\n付与成为人类历史转折点的英雄的特殊技能。\n将各种难以完成的事在“不可能的状态下”，\n化为“可实现的事情”。
5	65	弗朗西斯·德雷克是世上首位活着完成环游世界的伟人。\n（第一位的麦哲伦在完成中途死去）\n史实上虽为男性，但在本作中，德雷克以女性形象出现。\n这是因为周围的人谁都不将德雷克视为女性所致。\n船员表示「哎呀，如果将船长视为女性的话，\n我就根本不能算男人了嘛，而且这也是在侮辱船长吧」
1	66	身高／体重：171cm·54kg\n出处：史实\n地域：加勒比\n属性：混沌·恶　　　性别：女性\n安妮·伯妮的资料。
2	66	身高／体重：158cm·46kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　性别：女性\n玛莉·瑞德的资料。
3	66	安妮出生于富裕的家庭，天生性格粗暴，\n与小混混私奔，最后与这个小混混分手，\n与约翰·瑞克姆一起当起了海盗。\n某天在追捕荷兰船时，遇到了以男装潜入的玛莉·瑞德。
4	66	或许因为安妮与玛莉同为女性吧，\n两人气味相投，结成搭档专心当海盗。\n有不少证言表示，两人在约翰·瑞克姆的船上，\n他们的战姿比任何人都要勇猛果敢。
5	66	两人这次例外地作为一组从者而被召唤。\n虽然能力方面没有削弱，但其中任何一人被击倒，\n另一个人都会不由分说地失去战斗能力。
1	67	身高／体重：149cm·41kg\n出处：希腊神话\n地域：希腊\n属性：秩序·善　　　性别：女性\n美狄亚小姐14岁。
2	67	作为被伊阿宋笼络前，正跟随赫卡忒学习魔术，\n被娇生惯养时的美狄亚而被召唤。\n几乎不会使用攻击魔术，但擅长治愈系魔术。
3	67	行为可爱，备受人们疼爱的少女。\n若没有伊阿宋，本应过上幸福的一生。\n若没有伊阿宋。
4	67	『万疵必应修补』\n阶级：C　种类：对魔术宝具\nPain Breaker。\n与身为Caster的美狄亚使用的，\n『万符必应破戒』相对的治疗宝具。\n能将所有的诅咒、魔术产生的损伤归零。
5	67	『万疵必应修补』不是对时间的操作，\n而是通过计算原本的模样，进行自动修复。\n不知其中奥秘的人看来似乎有点像时间倒转。\n能打破“死”以外各种不合理的存在，\n唯独无法复活死者。
1	68	身高／体重：158cm·45kg\n出处：史实\n地域：日本\n属性：中立·中庸　　性别：女性\n「嗯嗯，我不会放光炮」
2	68	身穿时髦和服，十五岁左右，惹人怜爱的少女。\n由于原来的衣服过于醒目，所以平时都穿这套和服。\n同时具备冷酷杀人者的一面，\n以及开朗而喜欢小孩子的一面。
3	68	无明三段突\n对人魔剑。最大捕捉·1人。\n稀世的天才剑士——冲田总司必杀的魔剑。\n「壹之突」中包含着「贰之突」「叁之突」。\n摆出平正眼的架势，并非“几乎同时”，\n而是“完全同时”放出的平刺。\n用超绝妙的技巧与速度开创的秘剑。
4	68	三段突的瞬间，壹之突、贰之突、\n叁之突“同时存在”于“相同的位置”。\n就算防住了壹之突，还是会被处于相同位置的，\n贰之突、叁之突所刺穿，这种矛盾使剑尖产生事象饱和。\n因此三段突在事实上成了无法防御的剑技。\n而作为应用，由结果而生的事象饱和也很擅长对物破坏。
5	68	她是具备超绝妙技巧与天赋之才的真正天才剑士，\n但作为Saber职阶而言，\n耐久力、对魔力之低显得十分突兀。\n这是生前的疾病加上后世民众对她的印象所致，\n结果在某种意义上她也受到了和无辜的怪物相近的诅咒。
1	69	身高／体重：152cm·43kg\n出处：史实\n地域：日本\n属性：秩序·中庸　　性别：女性\n「那也无可奈何！」
2	69	高傲且总是信心十足，喜欢新兴事物，\n思考灵活，不会被古旧的习惯或常识所束缚。\n令室町幕府名存实亡，给应仁之乱以来，\n持续不断的战国乱世的终结造成巨大影响的人物。\n那套近似军服的服装是作为从者被召唤时，\n她依照兴趣自己准备的东西。
3	69	天下布武：A\n作为时代变革者的信长拥有的特殊技能。\n将陈旧存在换新的概念之变革。\n对「神性」或「神秘」阶级越高的对手，\n以及越是体制守护者系的英灵，\n就越能给自己附加有利的加成。\n反之，面对神秘较薄弱的近代英灵时，\n自身的各技能、宝具效果都会下降。
4	69	『三千世界』\n阶级：E～A　种类：对军宝具\n三段击。\n长筱的三段击。铺开三千把火绳枪一起射击。\n基于战胜了战国最强骑兵团的那段逸闻，\n该攻击对拥有骑乘技能的英灵的攻击力会提升。\n对没有骑乘技能的英灵而言只是普通的火绳枪，\n但三千把的齐射依然是一种强大的威胁。
5	69	第六天魔王据说是信长自称的名号，\n本是佛教欲界魔王之名。\n以生前「烧毁比睿山」为代表的残酷行为，\n令后世民众对她抱有恐怖、敬畏之念层层累积，\n才导致身为魔王的信长的显现。
1	70	身高／体重：168cm·55kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：中立·善　　　性别：女性\n枪之一击若至化境，弑神亦只在翻掌之间。
2	70	魔境的智慧：A+\n超越人类，弑神，正因置身于异世而得无上智慧。\n除英雄特有技能以外，能以B～A阶级的熟练度，\n使用几乎所有的技能。而只有她眼中的真正英雄，\n才有可能拜她为师并习得技能。\n战斗时，她常用「千里眼」技能预知战斗的状况。\n在阿尔斯特传说中，她常使用该预知能力预言未来。\n甚至包括爱徒库·丘林的死期。
3	70	『贯穿死翔之枪』\n阶级：B 种类：对人宝具\nGae Bolg Alternative。\n形状相似，但与库·丘林所持之枪并非同一存在。\n更为古老，是Gae Bolg之前使用的同型的武器。\n而且不只有一把，是两把。
3	76	由于莫德雷德是人工生命体，成长速度极快，\n出生后数年就成了侍奉亚瑟王的骑士。\n因其模仿了亚瑟王的能力，她很快就作为骑士崭露头角。
0	179	就算是Alter，也会穿上泳装。因为这是夏天。\n但是不知基于何等信念，\n她收起了王之冠冕，\n戴上了惹人怜爱的白之冠——白色头带。\n\n对。是女仆。
4	70	自傲，不会被任何人所束缚。\n天生的支配阶级。具备王者的气质，\n有着必须身为一名给民众带来幸福的女王的自觉。\n才能出众，比任何人都清楚自己与凡人是不同的。\n其生存方式与赤红瞳色，与二十世纪东京的某人相近。
5	70	正如她对自己的清晰把握，\n她能一眼看透人的素质与气质（尤其是凡人与否）。\n也就是说库·丘林正是拥有着天生才华，\n值得她去引导的稀世人才。
1	71	身高／体重：184cm·85kg\n出处：凯尔特神话、费奥纳骑士团\n地域：爱尔兰\n属性：秩序·中庸　　　性别：男性\n一生为爱、忠义与荣誉而苦恼的骑士。
2	71	『破魔的红蔷薇』\n阶级：B　种类：对人宝具\nGae Dearg。\n被誉为「宝具杀手之宝具」的魔枪。\n能打消触及其枪刃对象的魔力。\n基本具备了能令魔术防御无效化能力的宝具。
3	71	奉命迎接身为主君芬恩的准新娘的格兰妮公主，\n却为公主所一见钟情，被她付与了誓约（geis），\n必须「带着自己逃跑」，导致他不得不私奔，\n在爱尔兰内四处逃亡。
4	71	据说迪尔姆德在逃亡中依然贯彻对芬恩的忠义，\n始终没有碰格兰妮公主一根汗毛。\n最后在与芬恩和解后，终于得以与格兰妮结为夫妇，\n但这幸福并不长远。
5	71	受到同母异父的弟弟转世的野猪的攻击，\n身负致命伤的迪尔姆德向拥有治愈魔力的芬恩求助。\n然而对格兰妮一事依旧耿耿于怀的芬恩选择了见死不救。
1	72	身高／体重：184cm·90kg\n出处：凯尔特神话、赤枝骑士团\n地域：爱尔兰\n属性：秩序·中庸　　性别：男性\n天地天空大回转！
2	72	『虹霓剑』\n阶级：A+　种类：对军宝具\nCaladbolg。\n别名：螺旋虹霓剑。也称作螺旋剑。\n能破坏地形，威力高、范围广的对军宝具。在传承中，\n仅靠挥舞的剑光就展现了「斩断三个山丘」的可怕威力。
3	72	传承中「如彩虹般延伸的剑光」斩断了山丘，\n作为宝具挥舞的虹霓剑拥有浓厚的地形破坏兵器的要素。\n也就是说，能不分青红皂白破坏大地的强烈攻击。\n据说该剑成为了后世诸多英雄们手中魔剑、圣剑的原型。\n传说也是轮转胜利之剑的原型。\n名字中的「虹霓」有「彩虹」的意思。
4	72	赤枝骑士团重要成员，因阿尔斯特王康纳尔的背信弃义，\n他感到无比愤怒，于是离开了骑士团。\n在阿尔斯特传说中规模最大的战争爆发时，\n他加入了恋人康诺特女王梅芙的阵营，英勇作战。\n虽说由于阿尔斯特方有库·丘林，导致他始终有所保留，\n但他还是一度将康纳尔逼入几乎将死的绝境。
5	72	在这场战斗中，基于与库·丘林立下的誓约（geis），\n弗格斯与他再战时几乎无条件地取得了胜利。\n第二次阿尔斯特入侵时，为了向库·丘林复仇，\n女王梅芙认定「弗格斯的存在是一个障碍」，\n没有让他上战场。之后，身为梅芙丈夫的里亚尔王，\n因嫉妒心作祟，最终下令将其暗杀。
1	73	身高／体重：154cm·52kg\n出处：大约一周的圣诞Alter小姐\n地域：芬兰（自称）\n属性：秩序·善　　　性别：女性\n由于成为了圣诞老人，\n人格出现了不少变化。
2	73	尽管成了Rider职阶，\n但并没有发生很大的变化。\n之所以体重增加是因为礼物的重量。\n没有多余的言行，冷漠的性格和Alter十分相似，\n但打从心底对圣诞老人的憧憬，\n令她稍微变得亲切了一些。
3	73	圣诞Alter乘坐的雪橇是她亲手制作的。\n本人豪言壮语地表示，\n那雪橇是参照雄壮的马与狮子的造型，\n用梣树枝做的，但怎么看都只是像河马。\n取名为拉姆瑞二号。
4	73	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur Morgan。\n黑色极光之剑。根本没变。\n从名字压根就没做任何变更这一方面，\n能看出来和万圣节的那位从者的差距。\n对圣诞老人而言是根本用不到的东西，\n但万一圣诞节恐怕也是要出现些什么怪物，\n带着总没坏处。
5	73	圣者的礼物：C\n通过化身为圣诞老人而获得的技能。\n赠送礼物，温暖人心。\n然而无论哪个礼物，在设计上，\n都与收件人想要的东西有些差距，\n所以不能过于期待其效果。\n会微妙地扯人心灵创伤的礼物选择能力，\n只能说是一种天赋的才能了。
1	74	身高／体重：137cm·30kg\n出处：英国童话\n地域：欧洲\n属性：根据御主而变　　性别：女性\n身高体重是人类形态的数据。
2	74	『悲哀而可爱的拇指汤米，长途跋涉辛苦了，\n　但是，冒险已结束啦。\n　因为你即将进梦境。\n　黑夜的帷幕已降临。\n　你的首级也会噗通一声掉地！』
3	74	变化：A+\n『要变身，将变身。\n　我变你，你变我。\n　变身啰，变身啰。\n　我是你，你是我』
4	74	『聪明伶俐，乖张淋漓，\n　离合悲欢，施虐倍还。\n　呆在这里，大家都是单纯的物体。\n　人即为人，鸟则为鸟，这样一切刚刚好。\n\n　你的名字，那就归我了哦。』
5	74	『献给某人的故事（Nursery Rhyme）』\n阶级：EX　种类：对人宝具\n『故事将永远持续下去。\n　用纤细的手指翻回第一页，\n　或是拿起第二卷。\n　只要悲伤的读者继续抗拒现实』
1	75	身高／体重：134cm·33kg\n出处：史实\n地域：伦敦\n属性：混沌·恶　　　性别：女性\n作为Assassin被召唤时的杰克。
2	75	由于开膛手杰克的真实身份不明，\n因此会随着各职阶的召唤变换外形。\n这次当作为Assassin显现时，\n就是不被允许诞生的婴儿的集合体。
3	75	身为Assassin的杰克在出生前就被杀害了，\n因此向圣杯许下的愿望是回归胎内——\n回到母亲的胎中。尽管不谙世事，\n但由于作为开膛手杰克被召唤，因此脑子转得极快。
4	75	『解体圣母』\n阶级：D～B　种类：对人宝具\n重现开膛手杰克的杀人过程的宝具。\n必要条件有三个，\n「时间是夜间」「女性对象」「起雾」。
5	75	作为Assassin被召唤的她虽然自称「开膛手杰克」，\n但她也不知道自己是不是「真犯人」。\n虽然存在杀害复数女性的记忆，\n但不清楚这是杰克的记忆，还是牺牲者的记忆。
1	76	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：混沌·中庸　　性别：女性\n体格和阿尔托莉雅完全一致。
2	76	在亚瑟王的姐姐兼宿敌的魔女摩根的奸计下，\n莫德雷德作为人造生命——人工生命体的一种而诞生。\n她正是为了杀死亚瑟，\n同时也是为了成为超越亚瑟的王而诞生的。
1	161	身高／体重：187cm·75kg\n出处：史实\n地域：日本\n属性：秩序·恶　　　性别：男性\n「――这里，就是新选组。」
4	76	与摩根原本的企图相反，\n莫德雷德憧憬父亲，并希望得到父亲的承认。\n然而在遭到了亚瑟王的拒绝后骤然一变。\n为了践踏父亲建立的伟业而研磨自己的毒牙。\n本来就已达极限的不列颠在二人的激斗中走向崩溃。
5	76	作为人工生命体而诞生于这个世界，\n如疾风般经历了各种事件的她，寿命很短。\n或许正因此，将人生的一切都献给父王后，\n莫德雷德无比希望能得到她的认同。\n然而，她却也仍然无法理解亚瑟的苦恼。
1	77	身高／体重：190cm·80kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：男性\n马克·吐温称其为雷电博士。
2	77	无可比拟的天才。现代的普罗米修斯。\n绝世美男子。发明王爱迪生的对手。\n在大地之上再现宙斯之雷霆的男人。\n他正是那雄伟华丽的睿智魔人。\n对御主的态度也只能用傲慢这个词来形容。
3	77	星之开拓者：EX\n付与成为人类历史转折点的英雄的特殊技能。\n将仅存在于神代的力量送到人间，\n提升了文明水准的他，自然拥有EX阶级。
4	77	『人类神话·雷电降临』\n阶级：EX 种类：对城宝具\nSystem Keraunos。根据其生前的伟大成就，\n以及各种超自然传说进行神秘升华后的存在。\n哪怕真名解放前也拥有极为强大的电磁操控能力。
5	77	其宝具所展现的猛威，\n令人不禁联想到各种神话中的雷神们的降世，\n这也造就了身为Archer的他。\n只要解放真名，就能「产生限定拟似的时空断层」，\n破坏周围一切。
1	78	身高／体重：171cm·57kg？\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：女性\n关于其身为Lancer时的体重与体型的问题，诸说纷纭。\n另外，作为Lancer时，她一定会骑马。\nAlter化时的坐骑为「拉姆瑞」。
2	78	『闪耀于终焉之枪』\n阶级：A++　种类：对城宝具\nRhongomyniad。圣枪。别名隆。\n传说其真正的模样是连接世界表里的存在。\n真名解放时阶级和种类都会发生变化。
3	78	圣枪即为连接世界表里（现实与幻想）的「光之柱」，\n据说一旦将枪拔出，现实就会从世界剥离坠落。\n圣枪原本是固定世界表层的「光之柱」。\n据说一旦解开，\n会导致建立于当世物理法则之上的世界剥落，\n令被人们视为存在于过去的众多幻想法则出现。\n正因为她是立于神代与幻想的最后的「王」，\n才能拥有这蕴含着极强力量的圣枪。
4	78	通过解放真名，\n圣枪能释放在世界尽头闪烁的力量的一部分。\n为了解放真名，需要将总计十三个的拘束解开近半数。\n基于这种性质，该枪与「拯救世界的星之圣剑」，\n被视为同等的存在。
5	78	据传说，作为Lancer现界的时候，\n骑士王的「某部分」与生前的模样截然不同。\n或许是因为舍弃了圣剑与剑鞘，改为手持圣枪，\n导致原本不老的肉体的「某部分」得以成长，\n也有可能是枪的魔力促进了「某部分」的成长——
1	79	身高／体重：183cm·65kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：男性\n操控五元素的强大魔术师（Average One）。
2	79	理性稳重。性格温和，不好斗。\n表示人类的感情比任何事物都要贵重。\n将现代的魔术师们视为继承了自己教导的，\n弟子们的后裔，平等而慈爱地对待他们。\n——只要世界允许其（爱）存在。
3	79	道具作成：EX\n以强大魔力积蓄结晶“贤者之石”为首，\n对应五属性元素的人工灵，\n复数个拥有同步思考能力的人造人，等等——\n具备EX阶级技能的他能制作各式各样的道具。
4	79	『元素使的魔剑』\n阶级：A+、种类：对军宝具\nSword of Paracelsus。\nAzoth剑的根源。帕拉塞尔苏斯的魔剑。\n用超高密度的“贤者之石”构成的魔术礼装。
5	79	宝具原本的效果是增幅、辅助、强化魔术，\n但通过刀身的魔力，可瞬间执行仪式魔术，\n以五种元素为媒介，\n可以做到短暂地拟似构成神代真乙太。\n真乙太（伪）可怕的威力能粉碎周围。
1	80	身高／体重：250cm·500kg以上（两者都包括铠甲）\n出处：史实\n地域：欧洲\n属性：混沌·中立　　性别：男性\n性格严谨，但对天真无邪或是聪明的少女没有抵抗力。
2	80	——志未成，身先死。\n差分机没能完成。\n分析机没能完成。\n消失在时代狭缝中的「未来的可能性」之梦，\n他将之留给世界，抱憾而逝。
3	80	而如今，他现界于世。\n将未来的可能性——异形的钢铁披于身上。\n将梦中的未来——异形的世界藏在心中。\n作为英灵现界的他，其存在本身，\n就是其宝具——和固有结界几乎为同一存在。
4	80	机械铠甲：EX\n始终身披蒸汽机关制的全身铠甲。\n提升筋力与耐久力阶级的同时，\n也因异形蒸汽机关的推进功能，\n令三项能力值都追加了「++」的修正。
5	80	『绚烂的灰烬世界』\n阶级：A++、种类：对军宝具\nDimension of Steam。\n渴望与梦想升华了的固有结界，\n他的心，就是身披的机械铠甲本身。
1	81	身高／体重：175cm·60kg\n出处：『化身博士』\n地域：欧洲\n属性：秩序·善（杰基尔）／混沌·恶（海德）\n随着人格的切换，肉体也会发生变化的双重人格持有者。
2	81	【杰基尔】\n诚实而理性的好人——本来的人格。\n对万事都会深思熟虑，既是优点也是缺点。\n与表面相反，正义感十足，\n生前苦恼于「潜藏于人类内心的邪恶」，企图与之对抗。
3	81	【海德】\n毫无道德心的快乐主义者——「邪恶」的人格。\n下意识会伤害所有一切的，恶意的反英雄。\n不知是杰基尔的内心潜藏着邪恶，\n还是因杰基尔本身就缺乏邪心，\n导致才「只有这个程度而已」，这点不明。
4	81	『隐秘的罪之游戏』\n阶级：C、种类：对人宝具\nDangerous Game。让杰基尔变化为海德，\n海德变化为杰基尔的灵药。化身为海德时，\n拥有能媲美三骑士职阶的近身战斗力。
5	81	无力之壳：A\n精神与肉体处于杰基尔的状态时能力值一落千丈，\n也很难以从者的身份被探知。\n反之，通过使用宝具成为海德时，\n仿佛受到了反作用力，能力会急剧提升。
1	82	身高／体重：172cm·48kg\n出处：创作\n地域：欧洲全域\n属性：混沌·中庸　　　性别：女性\n若想节约用电的话就直接把PC的插头给拔了。
2	82	弗兰肯斯坦与小说中描写的形象差异相当大，\n维克多原本打算创造亚当和夏娃——\n也就是以起源创造为目的而制作的。\n但与圣经相反，他先创造了夏娃，\n打算让夏娃生下亚当。
3	82	然而，作为关键的夏娃——\n通过缝合尸体制作的人工生命体是失败作品。\n无法正常地控制和交流感情，\n见到她毫不犹豫地杀害野狗，\n并将内脏作为礼物赠送给自己的残暴本性，\n维克多害怕地逃跑了。
4	82	然而，被丢弃的弗兰肯斯坦通过接触这个世界，\n逐渐磨练自己的知性与感情，\n终于萌生了对抛弃自己的维克多的愤怒。\n面对执着地追赶自己到南极的她，\n维克多精疲力竭，选择了自尽。
5	82	她之所以会寻求自己的对象，不是因为本能的欲望，\n而是为了追求理性——即希望能如同普通人类般生存。\n唯有成功令她敞开心扉，才有可能被她选为御主吧，\n也就是「弗兰肯斯坦的新郎」。
1	84	身高／体重：177cm·72kg\n出处：摩诃婆罗多\n地域：印度\n属性：秩序·中庸　　性别：男性\n爱用的弓是『甘狄拔』。是火神阿耆尼赠与他的神弓。
2	84	若说迦尔纳是“施舍的英雄”，\n那阿周那就是“天授的英雄”。\n俱卢国王的儿子，他作为般度五子中的第三子，\n同时也是雷神因陀罗的儿子。
3	84	作为一名才干、性格等各种方面都毫无瑕疵的英雄，\n他却因在兄长在赌注中失败而被国家放逐。\n这时，他已经预感到与迦尔纳的对决是不可避免的。\n这都是因为迦尔纳将般度五子的宿敌——难敌尊敬如父。
4	84	爱着兄弟，也被兄弟所爱。\n爱着父母，也被父母所爱。\n爱着人民，也被人民所爱。\n尽管如此——。
5	84	已然记不起何时下决心必须杀了迦尔纳。\n或许是从最初见面的那刻起吧。\n这不是诸神所注定的命运。\n这是阿周那本着纯粹的敌意选择的业（Karma）。\n哪怕这并不正确，阿周那也不得不去完成。
1	85	身高／体重：178cm·65kg\n出处：摩诃婆罗多\n地域：印度\n属性：秩序·善　　性别：男性\n也可作为Archer、Rider存在。
2	85	迦尔纳是人类女性贡蒂与太阳神苏利耶所生的半神英雄。\n但他出生后，立刻遭到贡蒂的抛弃，\n被作为车夫的儿子抚养。\n可他作为英雄的资质绝不可能被埋没。
3	85	母亲贡蒂抛弃了迦尔纳之后，生下了般度王家的五兄弟。\n其中第三子就是迦尔纳终生的宿敌阿周那。\n长大后的迦尔纳成了与般度家对立的俱卢家的养子。
4	85	然而，就连迦尔纳与阿周那的战斗，\n都遭到了众多诅咒的妨碍。受婆罗门诅咒，\n被因陀罗欺骗，答应了母亲贡蒂的请求，\n发誓不与阿周那以外的任何人战斗。\n尽管如此，迦尔纳还是接受了一切。
5	85	在铠甲转让因陀罗的传说中，\n迦尔纳分解、抛弃了黄金铠甲，\n从而获得了弑神之枪。\n连诸神之王都无法自由掌控的光之枪。\n沾染全身剥离之血所释放的一击\n能一扫所有不净之物。\n\n——日轮啊，顺从死亡。
1	86	身高／体重：154cm·42kg\n出处：2013年愚人节\n地域：从者界\n属性：混沌·善　　　性别：女性\n用神秘魔剑『无铭胜利剑』把敌人都杀掉吧。
2	86	「阿尔托莉雅种族就像是宇宙的癌。\n　必须有人去切除才行。\n　必须有人去做。」\n\n面露苦涩的表情，女主X背井离乡。\n驾驶着爱机金色神驹Ⅱ号在星海驰骋。
3	86	其外形与一般从者截然不同，\n身着休闲运动风的服装。\n蓝色的围巾是勇气的标志，\n帽子是为了隐藏其呆毛真身。\n但戳出来了，戳出来了，彻底戳出来了。
4	86	作为对Saber决战兵器，\n只知一味打倒所有Saber的她，\n赌上这把圣剑，宁将此身化为修罗模式，\n然而她唯独对Saber Lily敞开了心怀。
5	86	在来到这里之前，她曾拯救了古代王朝的危机，\n解决了人类统一工会的内斗，\n赶走了从其他宇宙到来的侵略者。\n但这些事对她而言都是小菜一碟。\n这都是些鸡毛蒜皮的事，所以她根本没记在心上。\n\n为了达成悲愿，她将继续挥舞无铭胜利剑。\n另外黄金大帝宇宙吉尔伽美斯是无论如何都要干掉的。
1	87	身高／体重：181cm·63kg\n出处：凯尔特神话\n地域：欧洲\n属性：中立·中庸　　　性别：男性\n身为Lancer职阶时，将枪与治愈的力量作为自己的宝具。
2	87	效忠于爱林的上王，在光荣的费奥纳骑士团中，\n立下了足以被称颂为最伟大骑士以及骑士团之长的功勋。\n衰败的神灵亚连，魔猪，冥界之马，\n最终甚至连自己的神祖，也就是战神努亚达都被他击败了。\n平时据说是一位喜爱和骑士团的部下们打打猎，\n过着平静生活的大人物。
3	87	本应顺着无可非议的大英雄之路前进的他，\n却注定拥有桃花劫的命运。迷上美丽的姊妹，\n遭到诅咒是他遭遇的第一难。之后灾难便接连不断。\n由于第一妻子，他与妖精们敌对，耗费了七年的时光，\n而围绕第三妻子格兰妮引发的争斗，\n则让辉煌的骑士团土崩瓦解。
4	87	问题难道并非出在女人们身上，而是出在自己身上──\n直到最后，芬恩·麦克库尔都没有产生这种念头。\n到底做错了什么。哪怕化为英灵，\n作为从者现界的现在，他都没有弄明白。
5	87	『无败紫靫草』\n阶级：A　　种类：对军宝具\nMac an Luin。\n拥有自动攻击，精神干涉无效化等效果。真名解放之后，\n可以释放出伴随着司掌着「流水」的战神努亚达之力的\n激烈奔流的强烈一击。\n真名源自其爱剑的剑铭。这把剑常常也被视作长枪，\n作为宝具而成立之际，同化为杀死了神灵亚连的长枪。
1	88	身高／体重：172cm·52kg\n出处：北欧神话\n地域：欧洲\n属性：中立·善　　　性别：女性\n在『沃尔松格传』，老埃达的『古德伦之诗』，\n以及『齐格鲁德短歌』等作品中，\n被描述为阿提拉王（阿特利王）的妹妹。
2	88	性格文静舍己。\n稳重的微笑中带着一丝寂寥，不幸的女武神。\n作为女武神中长姐尚为神灵之身时，\n虽然行为仿佛「人偶」般缺乏自我意识，\n但在惹怒了父神奥丁，\n被贬入人间之后，由于与齐格鲁德的邂逅，\n逐渐开始拥有人类的性质与人格。
3	88	心怀慈悲，爱情情感丰富，会对自己所爱之人付出一切。\n若未发生那种悲剧，她本应作为一名贤妻终其一生。\n尽管比谁都更为深爱着英雄齐格鲁德，\n却在被诅咒的悲剧命运下，心中燃起了杀意之火，\n最终不仅杀死了齐格鲁德，也将自己灼烧殆尽。
4	88	『直至死亡拆散两人』\n阶级：B　种类：对人宝具\nBrynhild Romantia。\n将对宿命对象心怀的深刻爱憎之情\n化为她生前所使用的魔银之枪形态的宝具。\n对于对方的爱情越是强烈，\n枪就会变得越为沉重而巨大。\n对于深爱着的齐格鲁德则能发挥出极为鲜明的效果。\n（对于与齐格鲁德颇有因缘的齐格飞也同样效果卓越）
5	88	即使是已成为英灵的现在，她依然深爱着齐格鲁德。\n然而，如果万一他真的在自己眼前应召唤而来的话，\n她应该会自动将枪头对准他吧。\n这是由于作为英灵的她自身以及其宝具\n已经一同被定义为「杀死齐格鲁德之物」的缘故。
1	89	身高／体重：186cm·81kg\n出处：贝奥武夫\n地域：北欧\n属性：混沌·善　　　性别：男性\n因狂化所带来的正负面效果都几乎已消失殆尽，\n所以可以通过对话与之进行沟通。
2	89	狂化：E-\n这名英雄的真名本身即受到Berserker这一名词的影响。\n保有理性，能够进行高等的对话。\n多少仍残留着些许凶暴性，但对于能力没有任何影响。
3	89	整个故事由两部分构成，第一部记述了，\n贝奥武夫与15名部下共同前往讨伐巨人哥伦多的事迹，\n第二部中则详细描述了50年后，\n年迈的贝奥武夫与巨龙死斗的传说。
4	89	传说与年迈的贝奥武夫对抗的巨龙喜好囤积财宝，\n能够口喷火焰——\n或许可以说这就是后世奇幻作品中巨龙的原型吧。\n虽然他平时所用的两把长剑被称为魔剑，\n但这并非贝奥武夫真正的力量。
5	89	作为从者职阶之一的Berserker的语源\n来自于北欧神话中的Berserk，\n同时传说贝奥武夫之名也同样来自于Berserk一词。\n然而，在垂老之年仍保持着理性\n完成屠龙伟业的贝奥武夫没有表现出丝毫狂暴之意。
1	90	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·新娘　　性别：女性\n唔嗯，这可是余珍藏的新娘服饰哦！
2	90	头痛宿疾：B\n由生前的出身而来的诅咒。\n由于患有慢性头痛，\n导致精神类技能的成功率显著降低。\n尼禄虽然是位艺术家（自称），\n但难得的才能也因为这个技能的原因难以充分发挥。
3	90	『星辰驰骋的终幕蔷薇』\n阶级：B+　种类：对人宝具\nFax Caelestis。\n由『邀至心荡神驰的黄金剧场』派生而来的特殊技能。\n虽然只是剑技，但豪华而瑰丽，\n将新娘服饰释放而出的强烈婚礼感称作宝具也未尝不可吧？　\n由于本人的申告而升格为了宝具。\n\n另外，才不是对某个蓝色狐耳Caster的新技能\n产生了对抗心理呢。
4	90	于公元59年（也有60年的说法），\n模仿希腊的奥林匹克运动会，\n设立了五年一度的竞技大会「尼禄祭」。\n开设了音乐、体育、骑马三个分类，\n而自己也参加了其中数个项目。\n于公元69年发生的叛乱中被逐下皇帝的宝座，\n从罗马逃亡。中途意识到无路可逃，决心自尽。
5	90	尼禄在17岁时继位帝位，\n其慷慨的政策在民众中赢得了极高的人气。\n同时也十分注重外交，\n罗马日后于英国（不列颠尼亚）获得的人气\n也是起因于她所推行的政策。\n波斯也对尼禄赞赏有加，据说在尼禄死后，\n波斯也因罗马是「尼禄的国家」而十分关照。
1	91	身高／体重：160cm·47kg\n出处：空之境界\n属性：中立·中庸　　性别：女性\n遗憾的是，猫属性略有减少。
2	91	与身着和服与皮革外套的少女——\n两仪式是同一人物。只不过人格不同。\n若说两仪式是名为「式」的少女，\n那这位就是名为「两仪式」的女性。\n由两仪继续回溯的起源的一，\n表现「　」的肉体自身的人格。\n是不该出现在这个世间的存在，\n因此从诞生到死亡都沉睡在式的体内。\n\n式无法认知「两仪式」的存在，\n此外，「两仪式」也无法代替式。
3	91	阴阳鱼：A\n阴阳螺钿。\n欲学是，即弃是，\n欲救是，即忘是。\n憧憬与悔恨表里如一。\n犹如生与死。\n\n矛盾螺旋。这位式可通过失去NP来补充HP。
4	91	『无垢识·空之境界』\n阶级：　　种类：对人宝具\n有效范围：1～999　最大捕捉：64人\nMukushiki Karanokyoukai。\n应用直死之魔眼的理论，\n切断对象“死之线”的全体攻击。\n由彼岸释放的幽世一刀能赐予所有生命安宁。
5	91	根源接续：A\n其为由「　」而生，至「　」之物。\n告别两仪，回转四象，统帅八卦，\n世界之理的基石。\n两仪指的是太极图所示的阴阳。\n她的名字是取自数式之式、式神之式的式。\n\n也就是万能愿望机的证明。\n对拥有该技能的人而言，普通的能力值毫无意义。
1	92	身高／体重：160cm·47kg\n出处：空之境界\n属性：混沌·善　　性别：女性\n身轻如猫。或者不如说她身心都是猫。
2	92	直死之魔眼：A\n在被称为魔眼的异能中也属于最上级的存在。\n异能中的异能，稀少品中的稀少品。\n无论无机还是有机，读取“活物”的死之要因，\n并将其作为可干涉现象进行目视。\n\n从直死之魔眼中看到的世界，\n是充满了“死之线”的终末风景，\n一般的精神构造根本难以面对着这些过上普通生活。\n式平时总是通过模糊焦点，以俯瞰事物的姿态\n来面对处理这异样的视野。
3	92	阴阳鱼：B\n阴阳螺旋。\n欲生是，即杀是，\n欲成是，即损是。\n恩惠与损失表里如一。\n犹如男女关系。\n\n痛觉残留。这位式可通过失去HP来补充NP。
4	92	『唯识·直死之魔眼』\n阶级：　种类：对人宝具\n有效范围：1　最大捕捉：1\nYuishiki Chokusinomagan。\n最大限度睁开直死之魔眼，\n切断对象“死之线”的攻击。\n哪怕拥有上亿年的寿命，或是从停滞到复活的恢复力，\n或是数以百计的生命储备，\n由于该能力能暴露“其个体的死亡概念”，\n所以依然能付与对象无视不死身特性的致命伤。\n\n世间有难以死亡之命，但无能逃离死亡之命。\n——终结对于万物都是共通的。
5	92	两仪家历史十分悠久，\n代代钻研『理想的人体』并予以实践。\n理想的人不要“自我”。\n只要有能根据用途进行切换的人格（软件），\n以及能确实完成命令的万能肉体（硬件）就行了。\n虽然其信仰、信念通过数百年的岁月得以证明，\n但这与他们想要的截然不同。\n\n作为其结果而诞生的两仪家当代的继承人，\n就是两仪式。
1	93	身高／体重：169cm·59kg\n出处：史实\n地域：日本\n属性：秩序·善　　性别：男性\n并未被正式认定为圣人。
2	93	在江户初期的起义——岛原之乱中担任领袖的少年。\n幼年期就为学问所倾倒的他以某个时期为契机，\n忽然开始能够创造各种各样的奇迹。\n治愈伤口，能在水面上行走的他作为神之子\n开始被信禁教的农民们热心地崇拜。
3	93	随后，以他为领袖的小西行长的旧家臣们，\n成立了对抗江户幕府的叛乱军。\n与当时在痛苦中挣扎的岛原农民们一起，\n掀起了大规模的叛乱。\n起初没把起义当回事的江户幕府，\n在派去讨伐军结果被击败之后，才终于认真了起来，\n请出了老中松平信纲作为部队统帅。
4	93	松平信纲对在原城闭门不出的起义军采用了\n断绝其兵粮的战术，看准对方食物弹药用尽的时机，\n发动了总攻击。传说除了一名内奸以外，\n包括天草四郎时贞在内的三万七千人，\n全部被幕府军杀光（有各种说法）。
5	93	『双腕·零次集束』\n阶级：A+　种类：对军宝具\n有效范围：1～200　最大捕捉：500人\nTwin Arm Big Crunch。\n将双腕与灵脉连接，\n使用过剩的魔力令双腕的魔术回路失控。\n精炼出拟似黑暗物质，\n来吸收周围一切存在的破灭型宝具。\n由于需要极为庞大的魔力，\n所以本应不可能作为宝具来使用。\n为了让其作为宝具发挥完全的实力，\n必须确立与御主不同的其他形式的魔力供给路径。
1	94	身高／体重：164cm·56kg\n出处：查理曼传说\n地域：法国\n属性：混沌·善　　　性别：？？？\n根据本人的要求，性别是个秘密。
2	94	查理曼十二圣骑士，\n是法兰克王国国王查理曼麾下的十二名骑士。\n由于阿斯托尔福是罗兰的表兄弟，\n才得以加入这十二人——\n尽管如此，传说中的阿斯托尔福还是以「弱小」而著称。
3	94	史无前例、实力尚未成熟、稀里糊涂等等。\n不管怎么说，阿斯托尔福无视这些传言，\n以骑士之道解决了各种难题。\n顺便说一下阿斯托尔福的这身服装。\n是为了让失恋狂奔的罗兰冷静下来而准备的。
4	94	阿斯托尔福的理性彻底蒸发了，比起有益或无益，\n此人更注重「自己心情是否愉快」，\n并将其作为判断标准。\n被作为从者召唤后这点依然未变。\n尽管总让人提心吊胆，但因为本人本性还是善良的，\n所以不会为恶。
5	94	此外，阿斯托尔福本人虽然确实很弱，\n但在冒险路上获赠，或是借来的各种宝具极为强大，\n足以作为可靠的战斗力来算。\n只不过，要把阿斯托尔福作为从者来操控却极为困难。
1	95	身高／体重：140cm·30kg\n出处：史实、吉尔伽美什史诗\n地域：西亚\n属性：混沌·善　　　性别：男性\n喜欢的女性是「犹如盛开于野外的鲜花」类。
2	95	究竟是以通常状态现界的「他」，\n吃下了返老还童的灵药变幼小后的存在，\n还是打从一开始就是幼小的形态现界的存在这点不明。\n但其精神的原型应为过去曾被称为明君时的精神。
3	95	红颜美少年：C\n表现了能吸引他人的美少年性质的技能。\n不分男女全部魅惑的能力会以魔术效果发动，\n但用对魔力技能可进行回避。\n就算没有对魔力，只要有抵抗的意志，也可减轻效果。
4	95	『全知且全能之星』\n阶级：EX　种类：对人宝具\nSha Nagba Imuru。\n如星辰光辉般遍览地上所有角落，通晓万象，\n英雄王精神性升华为宝具的存在。\n时常发动型的宝具。\n在本作中进行真名解放的宝具还是『王之财宝』。
5	95	宝具全知且全能之星的效果极为可怕，\n别说对方的真名和宝具了，\n连被隐藏了几重的真相都能一瞥看穿。\n虽然是处于时常发动状态的，\n但应该有意识地进行了限制。
1	96	身高／体重：185cm·75kg\n出处：大仲马著『基督山伯爵』？\n地域：法国\n属性：混沌·恶　　　性别：男性\n口头禅是「——等待，并心怀希望吧」。
2	96	其激烈的人生，隐藏真实身份的复仇剧，\n对遭践踏被夺走的恋人梅尔塞苔丝的爱恋与执着，\n以及经历了苦恼与后悔，最终悔改的过程，\n获得了包括法国在内的世界各地人们的喝彩，\n并将他作为「世界上最有名的复仇者」记在心中。\n基督山伯爵虽然是大仲马所创作的故事，\n但根据现代的考证，发现被关押在伊夫堡监狱，\n指引爱德蒙的「法利亚神甫」是实际存在的人物…… 
3	96	真名是爱德蒙·唐泰斯，但他认为马赛的水手\n「爱德蒙·唐泰斯」和自己并非同一人物。\n因为「爱德蒙·唐泰斯」在巴黎完成激烈的复仇后，\n抛弃了自己的恶行……而作为从者现界的自己，\n将继续作为「复仇鬼的偶像」而存在。\n他表示既然如此，那自己就不是爱德蒙。 
4	96	『基督山伯爵』\n阶级：C　种类：对人宝具\n有效范围：─　最大捕捉：1人\nMonte Cristo Mythologie。\n他是复仇的化身。不适应任何一个职阶，\n作为EX职阶·Avenger现界的肉体，\n将其人生升华为宝具。用强韧肉体与魔力发动攻击。\n可以隐蔽自身能力与职阶，并展示虚假信息给对方。\n\n时常发动型的宝具。\n存在真名解放的效果，但本作中不会被使用。
5	96	『虎啊，煌煌燎燃』\n阶级：A　种类：对人／对军宝具\n有效范围：1～20　最大捕捉：1～100人\nEnfer Chateau d\\'If。\n在地狱般的伊夫堡监狱内培养出来的\n钢铁般坚韧的意志力成为宝具的存在。\n不止囚禁肉体的牢笼，\n基督山伯爵甚至能逃脱时间，空间等无形的监狱。\n超高速思考，并强行反应在肉体上，\n得以主观实现媲美「时间停止」的超高速行动。\n\n在本作中，表现为通过超高速移动造成「分身」，\n进行同时攻击的形式。
1	97	身高／体重：165cm·52kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　　性别：女性\n说话时表情平静，但由于所有的话都是“对自己”说的，所以很难进行交流。
2	97	出身富裕的绅士阶级。身为社交界之花，\n年轻的她却希望成为被世人视为卑贱职业的护士。\n学习了医疗与看护的知识与技术后，\n她在伦敦哈利街的医院作为监督人，\n开始着手改革看护体制。动用私人财力开发先进设备，\n并力求改善护士们的状况。之后，她接受了知己，\n也是战时大臣西德尼·赫伯特的委托，\n作为大英帝国陆军医院护士总监督，\n从军参加克里米亚战争，但是──\n\n等待她的，是地狱。
3	97	由于当时由于对医疗与看护的不理解，\n导致了各种不卫生现象以及落后规则的横行，\n但她发奋努力，对如同地狱的战地医疗进行改革。\n在「战地医院死亡率急速提升」的情况下，\n继续坚持自己的改革，\n贯彻清洁的卫生工作与正确的看护方式，\n毫不吝惜地用自己个人的财产添置物资，\n获得了喜人的成果。\n最终将将近40%的死亡率控制到了5%。\n\n士兵们都这么说，「我看到了天使」。
4	97	伦敦各新闻报纸都称颂她为战场上的天使。\n在女王统治的时代出现的女性英雄令人们为之疯狂，\n纷纷献上喝彩。\n——然而她并没有露出微笑。\n自己不是什么天使。只是为了拯救人们。\n\n她继续着自己的活动，\n着手大幅改革战时医疗以及陆军卫生状况。\n连维多利亚女王都成了她的盟友，协助她推进改革。\n为了改革，她推进医院记录分析的行为，\n令她也成了统计学的先驱。
5	110	精通百科：A+\n可随意切换多重人格，自如地运用专业技能。\n在战术、学术、隐秘术、暗杀术、骗术、话术、\n以及其他总计32种专业知识方面，均可发挥\nB级以上的熟练度。
5	97	『我将根绝一切毒物，一切害物』\n阶级：C　种类：对军宝具\n有效范围：0～40　最大捕捉：100人\nNightingale Pledge。\n由驰骋于战场、直面死亡的南丁格尔的精神升华，\n再加上她本人的各种轶事，以及近代才成立的\n「帮助伤病员的白衣天使」这一概念结合而成。\n能令效果范围内所有毒性与攻击性无效化。\n强制产生绝对安全圈。还有回复效果。
1	98	身高／体重：185cm·72kg\n出处：凯尔特神话\n地域：欧洲\n属性：混沌·恶　　　性别：男性\n卢恩魔术仅是用来强化自身肉体。
2	98	精灵的狂躁：A\n库·丘林的低吟之声，\n唤醒了大地中沉睡的精灵，\n粉碎了敌军士兵的精神。属于精神系的干扰。\n使敌方全员的筋力等级与敏捷等级暂时性地下降。
3	98	库·丘林在女王梅芙的愿望下转变而成的姿态。\n作为狂王库·丘林侵蚀着美国大地。\n不同于生前的狂战士状态，\n而是以与Berserker完全不同的姿态被召唤。\n在受到圣杯辅助的情况下，\n拥有着超越了Lancer甚至是Caster的强度。
4	98	『剜穿鏖杀之枪』\n阶级：B++　种类：对军宝具\n有效范围：5～50　最大捕捉：100人\nGae Bolg\n寻的制导魔枪导弹。\n库·丘林原本的宝具。\n作为Alter的情况下会无视自己肉体崩坏的可能，\n进行全力投掷，因此相比通常召唤时，\n威力和有效范围均有提升。对敌方全体产生即死效果，\n即使没有发生即死也会带来巨大的伤害。\n（凭借卢恩魔术，实现了「使崩坏的肉体再生的同时」\n进行投掷，因此库·丘林不会受到伤害——\n除了惊人的痛苦之外。）
5	98	『噬碎死牙之兽』\n阶级：A　种类：对人宝具（自身）\n有效范围：─　最大捕捉：1人\nCurruid Coinchenn\n疯狂的库·丘林之怒，将作为魔枪原型的\n红海怪物·海兽Curruid的外骨骼暂时具现化，\n作为铠甲穿在身上。攻击型的骨甲装备。\n穿着之后耐久等级上升，筋力等级变为EX。\n发动这个宝具时，无法使用『剜穿鏖杀之枪』。
1	99	身高／体重：154cm·41kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：混沌·恶　　　性别：女性\n拥有与生俱来如同女神般完美的肉体。
2	99	无垢而清纯。淫荡而恶毒。\n两面都是她真实的样子，没有哪一面是虚假的。\n只不过多数人所接触到的「印象」是前者，仅此而已。\n她仅仅只是，清纯而喜欢淫荡，\n无垢而成就狠毒。喜欢好男人，喜欢强大的男人！\n完全顺从自身的欲望，\n生前使无数男性拜倒在她的石榴裙下。\n魔剑Caladbolg的所有者弗格斯也是其情人之一。\n最喜欢财宝，并以此为由掀起了\n以阿尔斯特全土为对手的大战，\n自己也乘着战车以指挥康诺特军队。
3	99	「并不讨厌和我敌对的人。\n　但是，在阿尔斯特的男人中，存在着一个我「想要」，\n却得不到的男人这种事情我绝对无法容忍。\n明明都跟他搭话了，明明都诱惑他了。\n然而不仅没有向我献媚，\n反而一副“你在干什么”的那种态度！」\n「不能原谅。不能原谅不能原谅不能原谅不能原谅\n不能原谅！绝对，要把那家伙──」\n「阿尔斯特的库·丘林！\n以所有男性的恋人同时也是支配者的梅芙之名发誓！\n绝对要让你屈服于我！」
4	99	虽然梅芙被称为众多士兵之母，\n但实际并非是以自己的身体生产下士兵。\n而是将战士给予的遗传信息吸收后，在体内进行复制。\n以刀刃将食指的指尖划开，当她的血滴落地面时，\n这仅仅一小滴的鲜血变化为血池，\n士兵们就这样和血泡一同被“制造”出来。\n梅芙正如其名，是无名士兵们的“女王”与支配者。
5	99	在现代爱尔兰也存在着很多“她”的目击情报。\n当然，这并非只是玩笑话。\n而是女王梅芙作为永远的贵妇人，\n至今也存在于人们的心中。
1	100	身高／体重：145cm·38kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：女性\n喜欢的国家是印度。\n讨厌的团体是SPR（英国心灵现象研究会）。
2	100	通过突然变异诞生的天才魔术师。\n她将抵达根源的先人们称为「Mahatma」，\n「Hierarchy」，将其规定（假定）为高次元的存在。\n海伦娜表示自己总能感受到他们的信息，\n但其他人若想要感受到这些，\n必须拥有与她相同的才能（特殊魔术回路）才行吧。\n\n雷姆利亚大陆和Mahatma实际都不存在，\n她「只是个解释了自创的世界的天才」的可能性也很高。
3	100	作为从者存在的她能操控以神智学为基干的，\n自古到近为数众多的魔术，是个全能型Caster。\n她也尝试着操控过古代埃及魔术，\n以及圣堂教会的洗礼咏唱，\n但貌似她还是不太擅长古代的魔术。
4	100	道具作成：B\n制作带有魔力的器具。\n现界的布拉瓦茨基以过去自己的助手，\n「奥尔科特上校」为参考样本，\n制作了复数台自动人偶，用来当便利的杂役来使用。\n顺便说一句，这东西不太擅长战斗。
5	100	『金星神·火炎天主』\n阶级：A　种类：对军宝具\n有效范围：1～50　最大捕捉：150人\nSanat Kumara。\n让飞行物出现，对四周发动攻击。\n她表示「这是在短时间内“重现”由金星来到地球的\n神性，也就是地球创造神之一的Sanat Kumara\n（护法魔王尊）力量的神智学的奥义！」，\n但飞行物的真实身份至今不明。
1	101	身高／体重：168cm·65kg\n出处：罗摩衍那\n地域：印度\n属性：秩序·善　　　性别：男性\n第一人称为「余」。
2	101	罗摩天资聪颖，却因为亲族的阴谋，\n被剥夺了王位继承权，最后被流放国外。\n陪伴他一同启程的爱妻悉多被魔王罗波那劫走，\n罗摩毅然决定讨伐罗波那。\n得到了圣人授予各种武器的罗摩，\n和有名的哈奴曼所率领的猴国军队一起，\n与魔王罗波那的大军持续战斗了十四年之久。
3	101	即使是罗摩，也曾经有过一次致命的失策。\n就是介入了猴国内战，为了帮助猴王须羯哩婆，\n而将其敌人波林以偷袭的方式杀死。\n这是无法原谅的行为，\n这样说着的波林之妻对罗摩施加了诅咒。\n“即使你能救回你的妻子，\n你们也永远无法共享这份喜悦。”\n……这份诅咒，至今也依然束缚着他。
4	101	对御主基本上总是表现出略显傲慢的态度。\n因此也许会给人以自大的小鬼这样的印象。\n其实是因为拥有老年时期的丰富知识，\n但是在精神方面却无法跟上，\n这种从者独有的现象才使得他表现出那样的态度。\n对待部下和动物们十分温柔，而面对有着暴君之名的\n从者时，态度就会变得有些固执。
2	110	『妄想幻像』\n阶级：B+　种类：对人宝具\nZabaniya。\n以生前多重人格为出处的宝具能力。\n伴随着多重人格的分割，自身的灵也进行了潜能分割，\n可作为不同的个体进行活动。\n由于身体根据人格的不同，以不同形态现界，\n因此存在男女老幼高挑矮小各式各样的容貌外形。
5	101	『穿透罗刹之不灭』\n阶级：A+　种类：对魔宝具\n有效范围：1～10　最大捕捉：1人\nBrahmastra。\n为了打倒魔王罗波那，伴随其一同降生的「不灭之刃」。\n对于魔属性的存在能发挥极大的威力。\n本来是用弓来射出杀敌的箭矢，\n因为罗摩想成为Saber而硬是被改造成了剑的形态。\n但并没有放弃作为投掷武器的性能，仍可作投剑使用。\n「结果还不是要扔出去」这种话可不能当着他的面说。
1	102	身高／体重：166cm·60kg\n出处：史实\n地域：中国\n属性：中立·恶　　　性别：男性\n虽然作为Lancer被召唤，但基本性能并没有太大变化。
2	102	中国武术（六合大枪）：A+++\n中华之至理。\n将以天人合一为目标的武术修炼到何种境界的标准。\n属于习得难度最高的技能，和其他技能不同，\n到达A级才能被称为“习得”的等级。\n到达A+++的人物已经是高手中的高手。\n虽然作为Lancer被召唤，\n但已经将包含枪术的八极拳修炼到了极致。
3	102	清朝末期，出生于沧州的李书文在修炼八极拳之初，\n就已经开始崭露头角，直到被称为拳法史上最强为止，\n比起熟学百艺，选择了精通一门并修炼至极致的他，\n正如字面一般体现了一击必杀的精髓。
4	102	『神枪无二打』\n阶级：无　种类：对人宝具\n有效范围：2～5　最大捕捉：1人\nShinsou Nino Uchi Irazu。\n是和『燕返』以及『无二打』同样，\n由修炼到极致的武技升华而来的宝具。\n效果和作为Assassin召唤时的『无二打』相同，\n但手持长枪所以射程更广。\n推测其精密动作性和空手时并无差别。
5	102	李书文具有Lancer，Berserker，\n以及Assassin的职阶适应性。\n并且，也有过将「老年」的李书文召唤出来的事例。\n全盛期的肉体当然是以青年时代作为基准，\n但他武术方面的全盛期则是在其年过花甲之后，\n这样的说法也是有的。\n所以有过青年时期的李书文作为Assassin被召唤，\n也有老年的李书文作为Lancer被召唤的例子。
1	103	身高／体重：182cm·88kg\n出处：史实\n地域：北美\n属性：秩序·中庸　　性别：男性\n因为和生前肉体的组成完全不同，\n所以身高体重都和历史记录不同。
2	103	虽然爱迪生的能力是除了E就是EX的极端状态，\n但这是因为在特殊的情况下被召唤出来的缘故。\n实际能力在D～E等级之间。\n职阶技能EX也只相当于一般的「D」等级。\n\n因为是近代的英灵，又受到了额外的补强，\n所以状态表示出现了若干的混乱。
3	103	发明王爱迪生的事迹也没必要再多说了。\n比起新发明，将前人的发明以更容易普及的形式，\n进行再构筑……在这一点上无人能出其右。\n\n现在日常使用的大多数产品，\n都是基于爱迪生的发明而来。
4	103	作为他终生的对手、宿敌，只要见面就会干架的，\n就是从者尼古拉·特斯拉。\n相反对于贝尔和巴贝奇，\n则能够保持着一定的理智与之相处。\n不知为何，对特斯拉总是例外。
5	103	『W·F·D』\n阶级：EX　种类：对民宝具\n有效范围：不明　最大捕捉：不明\nWorld·Faith·Domination。\n以爱迪生毕生的三大发明来进行的幻想支配。\n照亮黑暗、记录逝去之音、映射出真实世界的装置，\n因为发明了这一切的爱迪生，\n世界的隐秘变得不复存在了。准确来说，\n是以「原本存在，但被爱迪生给夺走了」这样的形式。\n正是通过隐藏与秘而不宣而才能发挥其力量的隐秘，\n就这样被随意的揭露出来，\n将无法计量的能量以零的状态固定。\n将民众对于神秘的信仰贬低至零，\n「世界信仰强夺」――对民宝具。
1	104	身高／体重：174cm·76kg\n出处：史实\n地域：北美\n属性：中立·善　　　性别：男性\n虽然身为魔术师，但是和魔术协会完全没有关系，\n或者说更接近于魔术使。
2	104	血染的恶魔：B\n因与Caster不相称的英勇传说而被夸耀。\n拥有能够熟练运用弓、枪、小刀等等武器的技术。\n使得近身战斗力得到了极大的补正。\n\n作为优秀的战士，更何况身处熊熊燃烧的复仇之火中，\n据说枪折矢尽后，全身也早已沾满自己与对手的鲜血，\n他仍以一把小刀为武器和墨西哥士兵周旋到底。
3	104	给墨西哥士兵带来恐慌的他被称为「杰罗尼莫！」\n（圣杰罗姆，因为如狮子一般战斗而驰名的圣人），\n之后，他的名字就变成了杰罗尼莫。\n\n使他的名声达到巅峰的，应属第三次投降前的战斗了。\n面对拥有着数倍于己方军力的对手，\n杰罗尼莫只身前往暗杀司令官，并且获得了成功。\n然而，司令官在那个时候，\n已经发出了「剿灭阿帕切族」的指示。
4	104	杰罗尼莫绝不仅是野蛮与残忍之人。\n他冷静而又慎重。不会拒绝投降，\n却也有绝对不能舍弃的自身骄傲。\n\n为了捕获杰罗尼莫所率领的35位阿帕切战士，\n美国政府甚至动用了多达5000人的兵力。
5	104	『大地的创造者』\n阶级：B　种类：对军宝具\n有效范围：1～30　最大捕捉：100人\nTsago Degi Naleya。\n召唤出阿帕切族传说中的巨大的《郊狼》。\n召唤成功后，被他夺去烟草的《太阳》便开始追赶他，\n就结果而言，会因为强烈的阳光而造成大范围的伤害。\n与此同时，因为守护者郊狼的存在，\n己方军队也会获得战斗力的提升。
1	105	身高／体重：158cm·49kg\n出处：史实\n地域：北美\n属性：混沌·中庸　　性别：男性\n一般来说，很大可能性在圣杯战争中，\n作为Extra Class「Gunner」而被召唤。
2	105	12岁时，将侮辱母亲的男人刺杀之后，\n他就此踏上了亡命之徒的人生道路。\n之后，在做着物资护卫的同时，\n也干着偷盗牛畜与抢劫杀人的勾当。\n由于经常在街上被其他亡命之徒纠缠，\n他开始将笑容挂在脸上，从而避免不必要的纠纷。
3	105	严谨的态度让他为众人所接受，\n然而作为亡命之徒的宿命，\n他被卷入了雇主——牧场主约汉·坦斯托尔的组织战争。\n而这场俗称林肯郡战争的结果，\n是比利小子被曾是友人的保安官派特·贾雷特逮捕。
4	105	但是，他在一年之内逃走。\n深怀执念的保安官派特·贾雷特一直尝试追捕他，\n最后在新墨西哥州的萨姆纳堡发现了他。\n不知道是因为认为自己正面迎击的话，\n是无法战胜比利小子的，还是有着别的什么原因——\n派特·贾雷特选择了，\n在比利小子走出房门寻找食物的瞬间偷袭了他。
3	110	因为对自身进行了「分割」，因此个体数虽然增加了，\n但力量的总量并未改变。\n基于这点，越是分割，单体能力就越是减弱，\n但固有技能的「气息遮断」并不会衰退，\n通过最大程度利用这点，她成了非常优秀的\n「谍报组织」。
1	111	身高／体重:158cm·52kg\n出处：—\n地域：—\n属性：混沌·善　　性别：女性\n临时的形态，临时的从者。
5	105	『坏音霹雳』\n阶级：C++　种类：对人宝具\n有效范围：1～100　最大捕捉：1人\nThunderer。\n由比利小子的爱枪——\n柯尔特M1877双动转轮手枪造成的逆转三连射击。\n准确来说，手枪本身并不是宝具，\n而是将「持有该枪的比利小子的射击」这一整体\n包括在内并视为宝具，近似于固有技能的存在。\n这个宝具最毒辣的一点是，\n「技术」占据宝具概念的大部分而使魔力消费减少。\n具体来说差不多与使用级别E的宝具造成的消耗同等。
1	106	身高／体重:159cm·44kg\n出处：史实\n地域：法国\n属性：混沌·恶　　　性别：女性\n数量极少的特殊职阶，Avenger中的一人。
2	106	虽然被称为Alter，\n但她并不是贞德的另一面。\n而是哀叹着贞德之死的法国元帅，\n吉尔·德·雷利用圣杯所制造出来的，复仇的贞德。\n作为与原来的贞德完全相反的英灵，\n以Avenger的职阶现世。
3	106	原本的贞德并非英雄而是圣女，\n因此绝对没有「以另一面召唤」的可能。\n这位黑色圣女的根本，是基于吉尔·德·雷的愤怒……\n以及偏见与单方面的执念……将这些混杂在一起，\n从而产生的原本根本不可能存在的“另一面”。\n对法国进行复仇的龙之魔女。\n对于那些理所当然地述说自己的正义，\n以及对此毫无疑心的各色人等产生怒火，进而为之所驱使，\n这才是吉尔·德·雷所期盼的圣女姿态。
4	106	龙之魔女：EX\n因为某个男人的愿望而诞生的她，\n拥有与生俱来的统帅龙的力量。被认为是圣女玛尔达，\n亦或是圣乔治等拥有的驱散龙种的圣人逸闻的反转现象。\n拥有使龙服从的特殊领袖气质，\n同时能够提升队伍的攻击力。
5	106	『咆哮吧，吾之愤怒』\n阶级：A+　种类：对军宝具\nLe Grondement Du Haine。\n作为龙之魔女而降临于世的贞德所持有的诅咒之旗。\n以复仇者之名，将自身与周围的怨念进行魔力转换，\n并燃烧。对手的不正，污浊以及独善都将被燃至骨髓。\n可怕。
1	107	身高／体重：167cm·58kg\n出处：琐罗亚斯德教\n地域：古波斯\n属性：混沌·恶　　性别：男性\n「请各位劳驾击掌打个拍子。\n对任何人而言都很好用的坏人登场了，\n所以请热烈欢迎哦―――嘻嘻嘻嘻！」
2	107	他当然不是真正的恶魔。\n他只是某个村落中一位没有犯下任何罪行，\n也没有建立什么功勋的平庸青年化为英灵的模样。\n他只是一个因村里某个教法，一个稀疏平常的决定，\n就被选为活人祭品的，某个像你一样的存在。
3	107	教法，为判定恶的教法。\n村落中，为了能忍受日常的痛苦、清贫，才需要教法。\n『我们的生活之所以无法变好，全都是因为恶』。\n无法解决的问题。而在无法被拯救的人们的内心中，\n为了化解这种纠葛，产生了对必要恶的需求——活祭。\n青年被选为「威胁村人善良的恶」、「万事无法如意\n的元凶」、「可以无条件贬低的某种存在」，\n被幽禁在山顶，被推入了人间地狱。
4	107	尝遍人类所能体验一切痛苦的青年，理所当然地死去了。\n但对这种纠葛的憎恨烧灼着岩石牢狱，\n他化为了无名亡灵。哪怕在他消失后，在憎恶的村民们\n消失后，甚至村子也彻底消亡后，他依然被束缚在山顶，\n眺望着人类的生活、人类的丑陋、人类的喜悦。\n温暖的光。如贤者一般，思索着自己未能获得的\n“理所当然的日常”。
5	107	『万象之伪誊抄』\n阶级：D　种类：对人宝具\nVerg Avesta。\n琐罗亚斯德教的教典·阿维斯陀的伪书。\n将自身所受创伤直接反弹给对手的起源的诅咒。\n……这么说或许很好听，但如果本人受了致命的伤，\n会导致在宝具发动前就死亡，所以若不能\n「受自己正好死不掉程度的伤」，宝具是无法发动的。\nAvenger一个人是无法战胜敌人的，\n需要有能在宝具发动后替自己打倒敌人的搭档才行。\n正可谓最弱。
1	108	20岁继承了马其顿王位之后，镇压了\n希腊诸都市国家，便开始向西亚发动侵略。\n在埃及获得了法老的地位，击败了\n以强悍著称的波斯王国，建立起疆域远至印度的大帝国。
2	108	其征服热情并非完全出自为扩大领土的支配欲，\n更多是基于想要探索未知世界的探险家精神。\n在统治征服地域时，他起用了当地的人材，\n积极推进与西亚文化的融合，奠定了希腊化文明的基石。
3	108	身高／体重：212cm·130kg\n出处：史实\n地域：马其顿\n属性：中立·善　　性别：男性\n征服王，胜而不灭，霸而不辱。
4	108	『王之军势』\n阶级：EX　种类：对军宝具\nIonioi Hetairoi。\n召唤的固有结界。征服王的王牌。\n人材即为珍宝。与无与伦比勇士们建立的功勋\n才是王的证明。\n他生前率领的近卫军团作为独立从者被连续召唤，\n以数万人的军队蹂躏敌人。
5	108	在『王之军势』中，生前整个伊斯坎达尔军团\n都会被召唤。君臣间的维系甚至跨越了时空，\n升华为宝具，也是他王道的象征。\n这就是他为什么不是作为一名拥有个人武勋的英雄，\n而是作为指挥军队而战的英雄的原因。
1	109	身高／体重:175cm·63kg\n出处：─\n地域：远东\n属性：混沌·恶　　性别：男性\n性格与青年期的性格较为接近。
2	109	原本的他并不是英灵。\n他作为暗杀者杀害了很多人，\n但英灵座并没有刻下他的存在。\n是被称为守护者的“仿造从者”，\n同时也是在正确人类史中不存在的人物。\n只有当企图将人类史本身彻底破坏的威胁……\n也就是Grand Order事件中，这“可能性的IF”\n才会存在。
3	109	圣杯的宠爱：A+\n某个时代的圣杯深深地爱着他。\n这份爱等同于世界最强的诅咒。\n由于本技能的存在，他的幸运级别大幅提升。\n即便是那些没有特定条件是无法突破的\n敌方从者的能力，他也可能突破。\n但这种幸运会残酷地夺取他人的幸福。
4	109	『花开堪折直须折』\n阶级：B　种类：对人宝具\nKhronos Rose。\n时光流转，今日绽放的花朵明日将会枯萎。\n能够操作自身的时间流的能力。\n是建立在生前他所具备的\n「固有时制御（Time alter）」基础上的能力。
5	109	通过加速时间流来进行高速攻击与移动，\n通过减速停滞生理节律来进行隐身，\n这就是「固有时制御」的运用方法。\n基于升华为宝具的这种力量，在对人战中，\n他可以几近无敌地完成超连续攻击。
1	110	身高／体重：根据个体各不相同\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　　性别：根据个体各不相同\n为群亦为个，为个亦为群的影子。
4	110	被分割出来的个体若死亡，其个体并不会还原至\nAssassin整体，而是直接消灭。\n并非是所谓由上位的「本体」产生下位「分身」的机制，\n而是所有Assassin都是同位的存在。
2	111	与隐藏在冬木圣杯之中的『世间一切恶』、\n被污染圣杯所表现的性质不同，\n作为人妻人母的「爱丽丝菲尔·冯·爱因兹贝伦」\n的一面更为鲜明地表现出来。\n是能够归类于神灵，也具备大地母神性质的存在。
3	111	女神的神核：C\n只有完成的女神才会具备的技能。\n虽说性质相近，但她并非由正式神灵所派生出的分灵，\n所以阶级仅限于C级。
4	111	『白之圣杯啊，咏唱吧』\n阶级：B　种类：魔术宝具\nSong of Grail。\n将爱与母性与圣杯关联，得以短暂实现\n真挚且纯洁的祈祷。\n不是作为愿望机的机能，\n而是她自身存在得以升华而成的宝具。
5	111	献身的觉悟：A\n不惜牺牲自己，对深爱之人的感情。\n对防御、回复系魔术、技能和道具的使用\n有加成补正效果。
1	112	身高／体重：145cm·46kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　　性别：女性\n基于轶事与留下的痕迹，被分类为「反英雄」。
2	112	京城内年轻人与公主们相继失踪，经过安倍晴明的占卜，\n发现这些都是酒吞童子的所作所为。\n接到命令前去讨伐的源赖光率领的赖光四天王假扮成\n修行僧侣，造访鬼们所在的城。\n在酒宴中，赖光他们让酒吞童子喝下了毒酒，趁众鬼\n沉睡之际偷袭，得以讨伐了他们。\n被斩下的酒吞童子的首级向赖光发动了攻击，但却被\n神明赐予的头盔挡了下来。
3	112	本人不太谈及自己的身世。\n伊吹童子这个别名纯粹是看透了八岐大蛇力量的\n茨木童子所取的名字罢了。\n本人或许早就忘却了自己的过去。\n只要有美味好酒，有华美宴席，\n有能享受的美味佳肴，她就不会有什么恨意了。
4	112	与坂田金时的缘分是起于金时青年时代。\n由于金时很好欺负，所以不止一次找他来酒宴玩耍。\n对酒吞而言，这些只是普通的酒宴，但对金时而言，\n这些可是一旦掉以轻心就会被杀的魔之宴。\n酒吞曰，\n「边沉醉于美酒，边以命相搏。\n　边肌肤相亲，边互相欺瞒，岂不觉别有风味？」
5	112	果实的酒气：A\n仿佛沉醉于音容吐息般的果实酒之芬芳，\n仅用视线就能令对象烂醉如泥。\n若是没有魔力防御手段的存在（普通人或动物），\n思考就会瞬间被融化。
1	113	身高／体重：160cm·48kg\n出处：「西游记」等\n地域：中国\n属性：秩序·善　　　性别：女性\n将徒弟之一的猪八戒称呼为「悟能」。\n不用特地说也应该知道，\n这是因为他不再吃五荤三厌了。
2	113	作为中国小说『西游记』的主要人物而出名。\n在观音菩萨的指示下，\n骑着西海龙王儿子变化而成的白马·白龙（玉龙），\n并收下了齐天大圣孙悟空（孙行者）、天蓬元帅猪八戒\n（猪悟能）、卷帘大将沙悟净（沙和尚）为徒弟，\n冲破众多妖怪的阻拦，前往天竺的美貌僧人。
3	113	在『西游记』中，本因是释迦如来的弟子「金蝉子」，\n身在天界，但基于「某件事」，落入凡间。\n也就是说，玄奘三藏是金蝉子的转世。
4	113	『五行山·释迦如来掌』\n阶级：B　种类：对军·对城宝具\nGogyousan Shakanyoraishou。\n借用了自己敬仰的佛，也即自己（前世）\n在天界时的师父——释迦如来的一小部分力量。
5	113	传说中孙悟空曾抵达的「世界尽头」——\n也就是释迦巨大的手掌从空中落下，\n惩罚藐视佛法的敌对者。\n对军·对城宝具。觉者掌底。
1	114	身高／体重：175cm·？？kg\n出处：史实、依据『御伽草子』『丑御前之地』\n地域：日本\n属性：混沌·善　　　性别：女性\n身为冷酷的武人，全身却充斥着满满包容力的美女。\n可谓母性爱的化身。\n「啊啊……妈妈我到底哪里错了……？」
2	114	『牛王招雷·天网恢恢』\n阶级：B++　种类：对军宝具\n有效范围：1～100　最大捕捉：200人\nGooushourai Tenmoukaikai。\n短暂召唤将魔性、异形作为自身源头的\n牛头天王的神使之牛（或是牛鬼），\n并与其一同扫荡战场。\n通过神鸣显现的武具是模仿她部下四天王的魂的存在。
3	114	雅致、清洁且美艳的妙龄女性。\n虽然是认真的职业军人，但只要是与金时有关的事，\n就会变成为孩子烦恼的母亲，还很爱哭鼻子。\n看上去虽然是个温和有理智的人，\n但由于本质并不是人类（混着神性），\n所以会用俯瞰、纵观大局的角度判断事物。\n与之相反，对自己喜欢的对象则非常重情义，\n是「为了儿子不惜与世界为敌」的母性爱的化身。\n对她来说，「恋人」等于「自己的儿子」。\n本人压根没有意识到这种判断基准存在偏差。
4	114	古净琉璃『丑御前之地』\n\n作为牛头天王天赐之子诞生的源满仲的孩子\n由于其异常的诞生（鬼之子），被视为不祥之子，\n并被寄放在寺院秘密抚养长大。\n十五岁的时候，不祥之子自称「丑御前」，\n在品川的铃之森建立了自己的魔国。\n为了消灭魔国而踏上旅程的，正是与她同父的武士，\n源赖光，以及源赖光率领的四天王。\n\n「丑御前」就是牛头天王的化身，\n而牛头天王则是帝释天（因陀罗）的化身。\n\n……丑御前究竟是什么人。\n这场战斗的结局究竟是什么样的，\n知道真相的，只有源赖光，与坂田金时。
5	114	狂化：EX\n用理性作为代价，强化身体能力的技能。\n赖光没有失去理性，依然保持了原本理性的她。\n但其精神却因为鬼之血的污浊，\n以及异常的母性爱表现，导致道德面出现异常。\n（只要是为了所爱之物，不惜排除任何东西，\n或是疯狂地想要守护所爱之物）\n嘴上谈论正当的爱，实际为了爱却可以无视社会道德，\n容忍任何行为……也就是说，她精神已经异常了。\n但由于这种异常不会被外部觉察，\n所以她与其他的Berserker截然不同。\n不可能说服、或是让她改变主意。
1	115	身高／体重：190cm·88kg\n出处：史实、古净琉璃灯\n地域：日本\n属性：秩序·善　　　性别：男性\n由于暧昧地解释了「Rider」这个词，\n所以装备了原创造型的骑士腰带。
2	115	『夜狼死九·黄金疾走』\n阶级：B　　　种类：对军宝具\nGolden Drive Goodnight。\n变形为超加速突击形态的黄金熊号发动的突击。\n熊号的轮胎是雷神太鼓变化而成的，\n越是旋转，威力就越大。\n虽然此乃强调的雷神之子这个性质进行的召唤，\n但也同时强调了山姥之子的侧面，\n其结果导致他或许会变成\n比Berserker更为「危险的男人」。\n也可以看成——他兴致勃勃地想要驾驶怪物坐骑驰骋。
3	115	扬善，惩恶！\n对性格败坏的家伙发动特攻一击！\n不过这也要看心情。\n有时候会忘记一切麻烦事，\n骑着爱骑驰骋，化为一阵风——
0	32	15世纪的法国贵族。\n连续绑架领地内的少年，残忍地凌辱、杀害他们，\n因成为后世童话『蓝胡子』的原型而为人们所知。
4	115	——然而，世间无情，事情总是不能如意。\n无条件爱着自己，等同于母亲以及姐姐的源赖光，\n曾经相互吸引却又互相残杀的酒吞童子，\n由于敬爱酒吞而总是来找茬的茨木童子，\n等等这些孽缘总是会来打扰金时。
5	115	只不过，金时倒不是不喜欢她们。\n无论是赖光还是酒吞，\n都是缔结了深深缘分与情义的对象，\n两位无疑都是占据金时内心深处重要地位的存在。\n只不过在现世后，总是无法把握与她们的距离感罢了。
1	116	身高／体重：147cm·50kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　　性别：女性\n由于其传说以及痕迹，被划分为「反英雄」类。
2	116	是唯一存活的大江山之鬼，\n在京的罗生门（也可能是在一条归桥）袭击渡边纲，\n却被对方斩下了手臂。\n手臂虽然一度被渡边纲作为战利品夺走，\n但最后被茨木取了回来，并消失无踪了。
3	116	实际上――据说茨木并非酒吞童子的部下，\n而是作为「大江山鬼众的魁首」而存在的。\n（虽身为强大的存在，但由于过度沉溺于享乐，\n酒吞压根没打算亲自统治鬼群）
4	116	茨木童子才是在大江山建立起庄严的城池，\n将酒吞童子视为义兄弟姊妹般敬爱，\n统帅一骑当千的鬼群，在平安京肆虐，\n令人类陷入恐惧的「灾难之鬼」。
5	116	鬼种之魔：A\n基于鬼之异能以及魔性显现的技能。\n是天性之魔、怪力、领袖气质、魔力放出等的\n混合技能，但在本作中，效果被进行了调整。\n魔力放出的形态与「热」相关的范例较多。\n茨木的情况是「炎」。
1	117	身高／体重：158cm·49kg\n出处：史实\n地域：日本\n属性：混沌·恶　　　性别：男性\n与「北条五代记」的记载存在差异。
2	117	与代表了日本忍者的伊贺、甲贺不同，\n关于风魔的文献十分稀少。\n最重要的原因或许是因为\n他们所侍奉的北条氏在战国灭亡了吧。\n连风魔究竟使用的是什么忍器都不得而知。
3	117	与出身情况类似，同样不清楚他们究竟是经历了什么，才会居住到风间谷。\n有种说法甚至主张他们是从大陆移居而来的骑马民族。风魔众决不暴露自身的出身。总之他们通过惊人的集团战法，给各种人带去了恐惧。\n而他们的头领，正是风魔小太郎。
4	117	『不灭的混沌旅团』\n阶级：B　种类：对军宝具\n有效范围：2～50　最大捕捉：100人\nImmortal Chaos Brigade。\n与其说是风魔小太郎的宝具，\n不如说是风魔忍群的宝具比较妥当。\n将两百名部下作为灵体进行召唤。\n自动将敌方集团周围化为黑暗，\n将他们打入鬼哭狼嚎的地狱。\n被北条方雇佣的第五代风魔小太郎率领两百名乱波\n潜入武田军阵地，一路杀害伤兵，边高声呐喊，\n边将火种扔进敌阵，并掠夺武器与粮草。\n经历了连日的夜间偷袭，武田军被迫撤退。
5	117	风魔小太郎流淌着西洋人的血脉，\n同时也混着鬼种的血。\n是一族的人通过彻头彻尾的配种操作诞生的风魔头目，\n生来就是为了在战国乱世生存下来\n而被创造的至高杰作的「忍者」。\n打从一出生就是头目，就是忍者，\n是风魔一族达到的一个顶峰。\n\n……然而，问题在于小太郎自己的本性却十分善良，\n还很小心谨慎。肉体虽然达到了忍者的顶峰，\n但精神却不适合当一名忍者，\n每天都躲在房内闭门不出。
1	118	身高／体重：179cm·65kg\n出处：史实\n地域：埃及\n属性：混沌·中庸　　　性别：男性\n推测生前的身高最高时应该超过180cm。\n但是他自称，爱妻奈菲尔塔利为他生下第二位王子的时期，\n才是他的全盛顶点期。
2	118	与赫梯交战，之后缔结和约，\n以此通过『交流』而为古埃及带来了繁荣的名君。\n既是勇猛之将，也是娶尽天下美女，育有百名子嗣的男子汉，更是留下了众多保存至今的巨大建筑的知名人物。
3	118	很多传记都记述称，他与摩西是共同长大的义兄弟。\n根据这个传说，统领大军追击摩西，\n试图阻止摩西带领犹太民族『出埃及』的埃及王，\n正是奥斯曼狄斯。
4	118	他既是太阳神拉之子，也是其化身。\n因而他以大地之上唯一的绝对者身份宣称：\n正如飞鸟于空中振翅，游鱼于大海穿梭，鲜花于野间绽放一般，他理应为神王（法老）。
5	118	『光辉之大复合神殿』\n阶级：EX　种类：对城宝具\nRamesseum Tentyris\n法老·奥斯曼狄斯的神威以宝具的形式具现。\n由复数的巨大神殿及灵庙组合而成的巨大异形复合神殿，\n属于一种固有结界。\n主要攻击手段为『丹德拉大灯泡』的魔力炮击，\n但在本作中施放的是作为杀手锏的大质量攻击。
1	119	身高／体重：171cm·57kg？\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：女性\n关于其身为Lancer时的体重与体型的问题，诸说纷纭。\n另外，作为Lancer时，她一定会骑马。\n这次的坐骑为『东·斯塔利恩』。
2	119	与通常的阿尔托莉雅为『不同可能性』的英灵。\n虽然有着人的躯体，但已难以再称之为人类英灵。\n由于圣枪中秘藏的性质，她已经变化·变质为神灵，\n或更甚至说是接近女神的存在了。\n比圣剑之阿尔托莉雅更为冷静理性，也仍保留了人性。\n不如说由于变得成熟，因而能够做出更为从容的选择。\n作为君王而言，她实现了自己理想中的存在方式。
3	119	她就是在卡姆兰之丘亲自归还圣枪，\n同时自己也归于大地的天之英灵。\n但是与她有着相同外貌的从者『狮子王』，\n因未能在本应迎接死亡命运之时死去，\n结果成为了手持圣枪徘徊于世的亡灵。\n继续持有圣枪的『狮子王』因彻底神灵化，\n故而有着与她完全不同的精神内面。
4	119	『闪耀于终焉之枪』\n阶级：A++　种类：对城宝具\nRhongomyniad\n圣枪。锁系星辰的风暴之锚。\n传说其真正的模样是连接世界表里之塔。\n真名解放时阶级和种类都会发生变化。
5	119	即使有着十三拘束对其真实力量的限制，\n仍然散发着星辰般的光辉，终焉之柱——\n圣枪其本体为固定世界表层的『光之柱』。\n借由与『拯救世界的星之圣剑』同等过程的十三拘束的存在，使之得以勉强作为宝具成形。
1	120	身高／体重：162cm·51kg\n出处：史实\n地域：埃及\n属性：秩序·善　　　性别：女性\n她所制作的道具上，必定刻有神圣文字。
2	120	基本上是一名楚楚动人而聪慧的女性，\n能够冷静应对危机，有着十足的知性与精神力，\n让她可以每次都完美处理各种事态……\n虽本应如此，但因某些理由，她不时会显得性急以及武断。\n这是因为，在她心中，有着一股如烈焰般的强烈意志。
3	120	虽是作为傀儡而被推上王座的女王，\n但她同样有着身为神之子，\n同时也是形同半神的法老的清晰自觉。——即便如此，\n在太阳王奥斯曼狄斯或征服王伊斯坎达尔等，\n这些伟大的法老面前，她仍不免有所心虚。
4	120	神性：B\n在作为统治万民，君临天下的支配者的同时，\n也有着接近神明的神格，这即是法老。\n法老虽然在时代等因素的影响下神性会发生变化，\n但据传她确为天空神荷鲁斯之子，及其化身。
5	120	『冥镜宝典』\n阶级：B+　种类：对军宝具\nAnpu Neb Ta Djeser\n据尼托克丽丝本人宣称，\n这是能够映射出冥界，或说是暗黑异界姿态之镜，\n但具体不明。也可能是映射出了她的精神世界。
1	121	身高／体重：191cm·81kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　　性别：男性\n兰斯洛特原本的职阶。
2	121	伟大的骑士兰斯洛特以最接近原本姿态的\n职阶Saber被召唤出来的状态。\n热爱正义，敬重女性，憎恶邪恶的清廉，\n而又洋溢着浪漫的身姿，\n亚瑟王评价其为「理想的骑士」。
3	121	永恒的理想是不存在的，\n兰斯洛特正是导致了\n亚瑟王传说步入黄昏的根本原因。\n他对自己施以惩罚，\n希望以此令王理解人类的极限，\n然而结果并未能达成他的目的。
4	121	确实，兰斯洛特最适合以Saber职阶进行召唤。\n但是，兰斯洛特本人可能比任何人都觉得，\nSaber职阶是莫大的讽刺。\n高洁的骑士这种说法真是令人发笑。\n那个为不列颠的毁灭推波助澜的自己！\n兰斯洛特因此确信。\n与自己最相称的职阶，应当是Berserker。
5	121	『缚锁全断·过重湖光』 \n阶级：A++　种类：对军宝具\nAroundight Overload。\n令无毁的湖光过载，使其包含的魔力外放而出。\n转而作为进攻手段使用。\n并不释放原本应该用作光之斩击的魔力，\n而是在斩断对象之际再做解放的，富含剑技的宝具。\n庞大的魔力自切断面溢出，而那青色的光芒被称为宛若湖一般。
1	122	身高／体重：186cm·78kg\n出处：亚瑟王传说\n地域：不列颠\n属性：秩序·善　　　性别：男性\n无论做什么都显得如此悲伤而优美。
2	122	崔斯坦是罗奴亚王利瓦兰和康沃尔公马克的妹妹，\n布兰什弗尔所生之子。\n然而，其境遇确实符合『悲伤之子』的称号。\n首先其父利瓦兰都没能见到崔斯坦一面，就已战死。\n而其母布兰什弗尔则将孩子托付给利瓦兰的忠实部下，\n罗亚尔，并为孩子取名崔斯坦之后，也随即死亡。
3	122	崔斯坦在之后，成为了其叔父马克麾下的骑士。\n崔斯坦作为一名优秀的骑士侍奉其主——\n而王也对这名眉清目秀的骑士抱以深厚的信赖。\n\n然而，有一天，崔斯坦和一名叫伊索德的女性坠入爱河。\n不，应该说是不幸坠入爱河。
4	122	悲剧的是，伊索德正是马克王所深爱的，\n并立誓将要迎娶为妃的女性。\n终于，在马克王那些嫉妒崔斯坦的廷臣的谏言下，\n他被无情地逐出了宫廷。\n\n之后，虽然他巧合地迎娶了一位同样名为伊索德的女性，\n但对曾经的那位伊索德的思念，与日俱增。
5	122	在某次战斗中，崔斯坦不幸身中剧毒，\n在濒死的状态下，他祈愿能再见伊索德一面。\n『她来的话就扬白帆，不来的话就用黑帆——』\n崔斯坦一心等待着伊索德的到来，\n但其妻伊索德却在他耳边轻语道，\n『扬着黑帆的船，正往这边驶来』\n正是这一小小的，\n对于迎娶了自己却从未有过爱意的丈夫的叛逆（谎言），\n为崔斯坦的故事拉下了帷幕。
1	123	身高／体重：180cm·78kg\n出处：亚瑟王传说\n地域：不列颠\n属性：秩序·善　　　性别：男性\n无论是什么样的工作都会认真对待。\n就算有时候碰到的是讨债这样的工作。
2	123	『轮转胜利之剑』\n阶级：A+　种类：对军宝具\nExcalibur Gallatin。\n在剑柄处收纳了拟似太阳的日轮之剑。\n与亚瑟王所持的「誓约胜利之剑」相同，是由妖精「湖中仙子」所赐予的姐妹剑。\n与受到月的加护的王与那把剑相对应的，他与这把剑受到了太阳的恩惠。
3	123	与温和笑容相称的白马王子。\n一本正经的性格却没有任何让人觉得沉闷的地方，\n无论对谁都能做到认真而真挚地应对。\n虽然会出现冲动的情况，\n但绝对不会抱有嫉妒与怨恨等负面情绪，\n无论在怎样的战场上都是十分清爽的状态。\n其他的圆桌骑士这样说过，\n「完全不令人讨厌这也算是一种才能吧」。
4	123	拥有得天独厚的才能与家世却不招致嫉妒，\n除了源于高文自身的良好性格，\n还有那理所应当而又不骄傲自大的天性使然。\n作为忠诚的骑士，对王的忠心犹如钢铁一般。\n高文自身所期望的，\n便是能够成为为王所使的一柄利剑。\n……那副姿态，\n在不熟知他内在的第三者眼中，便是一种盲目吧。
5	123	圣者的数字：EX\n高文卿所拥有的特殊体质。\n从上午的9点到正午的3个小时，\n以及下午3点到日落的3个小时，\n持有的力量将会变为3倍。\n是凯尔特的神圣数字3所表示之物。
1	124	身高／体重：161cm·42kg\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　　性别：女性\n潜入行动时的『面孔』基本依靠变化技能来制作，\n而第三阶段时的『面孔』为其本貌。\n因其暗杀手段的性质关系，她会使用本貌。
2	124	以公元前的印度为首，\n世界各地，各时代都流传着『毒女』的传说，\n而暗杀教团将之打造为现实中的暗杀道具与兵器。\n这正是她的由来。
3	124	美少女的外貌，其实也不过是暂时的。\n其肉体百毒不侵，同时也是剧毒的集合。\n其指甲自不用说，哪怕肌肤或是体液，都可作为猛毒，\n悄无声息地在闺中夺去王侯将相的性命。
4	124	常常与暗杀对象结下恋人甚至婚约关系。\n也就是说，她一直重复亲手摧毁着，\n由她自己亲手构筑的虚无缥缈的『拟似幸福』。\n渐渐地，她的精神开始错位。
5	124	对于她的结局有着多种说法。\n有说是因某军的将军怒于她完全拒绝肢体接触而将其斩首，\n有说是她亲自向将军表明暗杀者身份并哀求『杀了自己』，\n也有说是在将军未能顾及她的间隙，被他人斩杀。
1	125	身高／体重：183cm·98kg\n出处：俵藤太物语\n地域：日本\n属性：中立·善　　　性别：男性\n虽身为从者，但却对食物有着相当的讲究。
2	125	俵藤太手舞自始祖藤原镰足起传承下来的黄金太刀，\n多次立下战功，是一名不可多得的勇将。\n某日，他接下龙神化身的请求，前往击退三上山的大蜈蚣。\n他在箭矢上吐了唾沫，并向八幡神祈祷，成功击退了大蜈蚣。
4	125	『八幡祈愿·大妖射贯』\n阶级：B　种类：对人宝具\n南无八幡大菩萨·请赐予此箭矢加持\n使用自年轻时就爱用的五人张强弓进行射击。\n有着栖息于湖中的龙神的特别加持。
5	125	无尽米袋\n阶级：EX\n美味的大米，源源不断地涌出。
1	126	身高／体重：187cm·88kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　　性别：男性\n「银之臂」占据了10kg以上的体重。
2	126	在聚集了众多超越人类的英雄的圆桌骑士中，\n作为「唯一的人类」侍奉着亚瑟王。\n虽然只有一只手臂，\n却也是一名优秀的将军，一名拥有卓越剑技的骑士。\n但是，他并非英灵。只不过是过去的人类。
3	126	本作的他，是活在\n「未能将圣剑还给亚瑟王的if」中的贝德维尔，\n亚瑟王在未能见证归还圣剑的情况下便已离世。\n为了赎罪，他怀着「这次一定将圣剑归还」的愿望，\n度过了漫长的岁月。\n最终，在阿瓦隆精疲力竭。
4	126	然后，这次面对人理烧却以及狮子王对圣都的统治，\n他再次站了出来。\n梅林赋予了他身为区区一介骑士也能与圆桌骑士们战斗的力量，\n那也是最后将剥夺他生命的东西。\n而这份力量，丝毫不逊于圆桌骑士。\n此即为——未能归还的圣剑。
5	126	『紧握其剑，银之臂』\n阶级：C　种类：对人宝具\nSwitch On Agateram。\n与凯尔特战神所使用的的神造兵装同名，\n其真身为「未能归还的圣剑Excalibur」。\n常时发动型宝具。\n「一闪即逝，银之臂（Dead End Agateram）」，\n以真名解放来发动对军队歼灭攻击。
1	127	身高／体重：160cm·40kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：女性（身体）\n现存的大卫像是以青年期的他为模特制作的。
2	127	正因为是睿智伟人，才被赐予了Caster的职阶……\n其实并非如此。\n生前他／她就是个强大的魔术师。\n这没什么好奇怪的。只是除了科学、数学、工学、\n博物学、音乐、建筑、雕刻、绘画、发明、兵器开发\n等以外，也具备魔术才能而已。
3	127	○黄金律（体）：B\n拥有媲美女神的完美肉体，并能维持美丽。\n莱昂纳多将自己的肉体「重新设计」为女性（蒙娜·\n丽莎）时，刻意获得了这个技能。
4	127	『万能之人』\n阶级：EX　种类：对人宝具／对军宝具\nUomo Universale。\n传说中的万能性获得形态后的存在。\n能瞬间解析对象，配合对象调整自身的最大攻击并释放，俗称万能特制宝具。\n原本貌似是通过瞬间临时重构对方的宝具，来反弹对手攻击的反射系宝具，但这部分资源好像被用来运营迦勒底了。
5	127	被迦勒底召唤的英灵第三号。\n在英灵召唤系统·命运尚未完成时召唤的从者。\n由于系统不安定，据说本打算当即离去，但听说了迦勒底的情况，产生了兴趣，并被罗玛尼·阿其曼说服，选择留在了迦勒底。\n达·芬奇亲制作了自己的复制人偶，并声称这就是自己的御主，得以留在现世。做的这事和某位人偶师没什么两样。
1	128	身高／体重：160cm·49kg\n出处：日本神话。三大化生之一。\n地域：日本\n属性：中立·夏　　　性别：女性\n「唔？　美女穿泳装有什么问题吗？」
2	128	做个说明吧。\n玉藻前是贤妻愿望满载的巫女咒术师。\n平安时代末期，侍奉鸟羽上皇的绝世美女，\n同时也传说是白面金毛九尾狐变化而成的，\n在英灵座，也被视为天照大御神的分御灵。\n既然拥有如此经历，那在南国享受假期的人生也不错……\n小玉藻是这么认为的。
3	128	『常夏日光·遮阳伞宠爱一神』\n阶级：C　种类：对人宝具\nTokonatsunikko Hiyokegasachouaiisshin\n「遮阳」加了「除魔」的存在。\n其中包含了击退所有纠缠御主的坏虫子的愿望。\n在某个世界也被称为「一夫多妻去势拳」。\n当然，是男性特攻的。\n详细内容（大概）罗宾汉会比较熟悉。
4	128	就算身着泳装，也还是平时的玉藻前。\n只不过这次是在度假，所以她用尽了所有魔力，化为夏日野兽了。\n身体能力之所以异常强大也是由于这个原因。\n或许是基于充足的从容吧，比平时的玉藻更为优雅，更为高贵。本人貌似以优雅的模特自居。\n只不过真正的淑女不会兴致勃勃地到处玩乐，也不会带着救生圈。
5	128	沙滩之花：EX\n正可谓向日葵的化身。\n夏日女神，在此降临！\n「不不，其实我就是神哦？」\n夏日的玉藻并没有采用一边表现着女性的美，一找到机会就会设下LOVE陷阱的态度。\n夏日、海滨、沙滩遮阳伞，此乃展现优雅的机会。只要在夏日的海滨表现得比平时更有魅力，就算回到日常，也已经被迷得神魂颠倒的作战。\n「这已经不是什么淑女，而是猎手了吧？」\n「嗯，说得没错哦，主人。\n　那家伙虽然是本体，但也已经一只脚踏入TAMAMO NINE\n　范畴的玉藻前……海边猎手，人称玉藻鲨鱼哦。」
1	129	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n当然是Archer职阶啦，有什么问题吗？
2	129	还是一如既往的阿尔托莉雅，但身在海边多少令人心情放轻松了一些。班长气质依然未变，但不用说，比平时和善多了。\n秉持难得的假期，这次稍微玩得疯一些也无妨的心态。\n该玩的时候就要好好玩。\n无论是游戏还是体育运动都不服输的她的目标，是Archer职阶的最强宝座。
3	129	『阳光璀璨胜利之剑』\n阶级：A　种类：对人宝具\nExcalibur Vivian\n明明都说自己是Archer职阶了，结果还是用这套。真是幼稚。\n「但原本誓约胜利之剑就是湖之妖精托付给我的东西，就算有水属性也没什么好奇怪的吧？」\n对此，小阿也只能苦笑。
4	129	海之家的佑护：EX\n以NP为代价，回复HP的固有技能。\n海边的她被大多数摊贩敬为「食物之王」。豪爽的点单，豪爽的进食景象，以及一扫而空后面带灿烂笑容表示这家店一定会生意兴隆的。是真的吗。大概吧。\n但唯有对土豆泥要说No, thank you。
5	129	阵地建造：A\n原本应该是Caster职阶的技能。\n也被称为魔力放出（水）。\n在妖精的佑护下，提升同伴们的士气、提升幸运、提升命中、消除焦躁、外加能变得凉爽的梦幻效果。在生存游戏中可谓作弊技能。发挥该技能的阿尔托莉雅成为了水枪闪电战世界大赛的霸者，但这已经是其他故事了。
1	130	身高／体重：160cm·48kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　　性别：女性\n在战斗时使用的是沙滩排球。不如说玛丽本人就是在海滩边玩球，有可能压根没意识到自己在战斗。
2	130	无论身在王宫，还是身在海滨，王妃就是王妃。一如既往的玛丽·安托瓦内特。\n不过还是要比平时更为欢乐一些，与作为Rider现界时相比，微笑的次数也稍微多了一点。
3	130	秀丽贵夫人（海）：A\n不是以统率力的形式，而是能吸引周围人的领袖魅力。由于与沙滩之花技能的复合效果，只要存在，玛丽就会被周围人奉为海边公主。……请仔细看。现在保护玛丽免受敌人袭击的，可不只有装作正好路过的音乐家、刽子手以及白百合骑士……
4	130	虽以泳装身姿现界，但完全不介意暴露程度。美丽、快乐、华美，玛丽·安托瓦内特始终在闪耀。不如说她对自己的外貌过于没有自觉，以至于在外人看来或许显得特别大胆。
5	130	『吾爱辉煌永恒长驻』\n阶级：A　种类：对军宝具／对民宝具\nCrystal Dress\n将古代确实存在的幻想——王权的光辉本身作为宝具缠绕周身。\n好好见识作为海滩之花、太阳之花动真格的玛丽的光辉吧。超级亮晶晶，亮晶晶，光辉，闪耀！
1	131	身高／体重：171cm·54kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　　性别：女性\n安妮·伯妮的资料。\n这次较为重视安妮的属性，所以作为Archer被召唤。
2	131	身高／体重：158cm·46kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　　性别：女性\n玛莉·瑞德的资料。
3	131	沙滩之花：A+\n在海边究竟能聚集多少视线。\n既然是A+，那已经是到优雅领域了。\n安妮·伯妮绝不是什么著名的英雄，但她能用自己的肉体美，不分男女吸引所有人的爱恋目光。
4	131	无论是安妮·伯妮还是玛莉·瑞德，追求的都是「值得信赖的存在」以及「能够共通战斗的同伴」。\n从这点来看，迦勒底的御主好像合格了，她们很粘御主……但是，擅自潜入御主房间未免有些犯规吧，某匿名公主如是说。
5	131	『比翼连理』\n阶级：C++　种类：对人宝具\n有效范围：1～3　最大捕捉：1人\nCaribbean Free Bird Act2\n这次是以安妮为主轴，玛莉做辅助。无论哪种，想要阻止她们俩的合作是极为困难的。因为干海盗这行的，一直都在打背水之战。
1	132	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：混沌·善　　　性别：女性\n由于特别兴奋，所以表现得比平时更为老好人。
2	132	冲浪小莫处于夏日状态，所以兴致一直很高。将与父亲的不和与自己的存在理由搁置一边，先好好享受夏日的大海再说。
3	132	『掌控翻涌波涛王者心境！』\n阶级：A　种类：对波宝具\n有效范围：1～5　最大捕捉：10人\nPrydwen Tube Riding\n用普利多温（Prydwen）使出被誉为冲浪最高级难度的Tube riding（就是穿越波浪隧道的那个）来发动攻击。\n使用期间有种支配海洋的帝王感。
4	132	冲浪小莫比平时更为容易表现对御主的好感与撒娇心。\n或许是由于夏日的酷暑令兴致高昂的关系吧，平时的不易近人感貌似早就抛到脑后去了。
5	132	召唤时，为了寻找能承受自己力量的冲浪板，厚颜无耻地从父王的宝物库里偷……永远借出来了。其名字为「普利多温（Prydwen）」。根据传说，是既能当船又能当盾的不可思议的道具。但亚瑟王如是说，谁让你拿去当冲浪板啦！
1	133	身高／体重：168cm·55kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：中立·善　　　性别：女性\n手腕上戴着的符文手镯是对海、水进行了特化的产物。
2	133	和平时的斯卡哈没什么两样……本以为如此，\n但为了适应海边，其实她的兴致要比平时高得多。\n虽说没有很明显的变化，但只要仔细观察还是能发现的。
3	133	沙滩危机：A+\n在海边究竟能「聚集」多少视线。\n和沙滩之花不同，连超越爱恋领域的视线都会集中于此。\n斯卡哈只是普通行走，就有可能令海边陷入混沌境地。
4	133	「难得来一次海边，得好好享受才行」\n这是Assassin斯卡哈的基本态度。\n就算面对御主，也主张该享受的时候就要多享受，\n虽说看上去如此……
5	133	『蹴穿死翔之枪』\n阶级：B+　种类：对人／对军宝具\nGae Bolg Alternative\n真名与Lancer的时候相同。能夺走对象的性命。\n只不过，达到目的的过程不同。\n这是令众多勇士惊叹的著名的踢踹迦耶伯格。\n能击中战士之心的夏日骚动之一。
1	134	身高／体重：158cm·41kg\n出处：『清姬传说』\n地域：日本\n属性：混沌·恶　　　性别：女性\n夏日为爱而生的女人（也就是和平时没什么两样）。
2	134	由于这次是作为Lancer被召唤的，所以手持薙刀。\n「身为少女，自然需要浅尝所有武艺。但是，像我这样柔弱的女性根本没法帮上忙。啊啊真不甘心。」这是本人的说法。此外，正如本人所言，她薙刀的实力只能算二流，但由于她凌厉的杀气和毫不留情，传说在战场上已经可以称之为无双了。
3	134	恋之追踪者：A\n跟踪的强化版技能。在炎炎夏日，清姬加速了体内引擎。咆哮的脏腑、加速的肺、呼吸中充满了硝基的气味，无论对方身在何处，都能以超高高速开始追踪。
4	134	……也就是说和平时的清姬没什么两样，但在这样的夏日，何不夸奖夸奖她的泳装呢。这个夏天一定会转瞬即逝的……是指感动万分的清姬一定会将你关在什么地方的意思。
5	134	『道成寺钟百八式火龙薙』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\nDoujyoujikane Hyakuhachishikikaryunagi\n用钟囚禁对手，并刺入薙刀，千钧一发之际吹飞。\n夏日酷热，这东西的热气逼人属于最高级。\n为此，与她同行的从者在夏天期间对她评价十分糟糕。
1	135	身高／体重：161cm·49kg\n出处：史实、新约圣经\n地域：欧洲\n属性：秩序·善　　　性别：女性\n隐约可窥获得圣杖之前「那时候」的气息。和以Rider现界的时候比起来，频率略高。
2	135	由于以泳装模样现界，失去了圣衣与圣杖，所以玛尔达只能徒手阻止争斗了。这是无可奈何的事。不是什么争斗，而是仲裁。\n圣女终于解放了赤手空拳……屠龙者（空手）……等等这种话可绝不能说出口。
3	135	水边圣女：B+\n在船上漂流，在罗纳河边压制了塔拉斯克的玛尔达和水的关系很密切。这次的泳装强化了这种性质。当意识到在水边时，玛尔达的攻击力就会上升。精神百倍。
4	135	天性的肉体（海）：A\n脱去了圣衣的玛尔达的肉体作为生物来说非常完美。\n脱掉以后可是很厉害的。这是展示肉体绝对性的技能，但也具备魅惑他人的技能效果。
0	41	希腊神话中戈耳工三姊妹的长女。\n男性所有的憧憬的具现化存在，\n作为完成的「偶像」以及「理想女性」而诞生的女神。\n犹如优雅与高贵的代名词的美丽女性。\n有尤瑞艾莉、美杜莎两位妹妹。
5	135	雅各布的追随者：B\n从雅各布、摩西，然后到玛尔达脉脉相传的古老格斗术。只要能精通，甚至能打赢大天使。根据传说，学会了这种技术的圣者殴杀了率领一万两千名天使的『破坏天使』。\n当解放宝具真名之时，玛尔达之所以会有「那种言行」，也都是因为本技能的效果。
1	136	身高／体重：133cm·29kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：中立·善　　　性别：女性\n其实已经习惯于迷失在其他世界中了。很正常很正常。
2	136	某天晚上，伊莉雅正打算洗个澡给观众送福利的时候，\n一把魔法杖从夜空中突然来袭。\n被这把会扭来扭去地动，还喋喋不休地说话的\n可疑度MAX的杖子诱骗上当，\n如今的魔法少女Prisma☆伊莉雅才闪亮诞生了。\n当然，对班上的各位可是保密的哦☆\n\n——这天夜晚，邂逅了命运。
3	136	驯服奇妙的杖子，\n打开寡言少女的心灵，\n将企图杀害自己的少女当做家人迎接，\n总之适应能力与沟通能力极为强大。\n说得难听一点就是容易被影响的体质。\n在不断被影响的过程中，终于来到了迦勒底，\n不过应该也能适应这里吧。\n只要有魔法杖、追求未来的意志，\n以及可爱到有些狡猾的可爱，一定能行。
4	136	『多元重奏饱和炮击』\n阶级：A+　种类：对人宝具\nQuintett Feuer\n通过将肌肉系统、神经系统、血管系统、淋巴系统被拟似地误认为魔术回路，来提升瞬间输出力量的舍身一击。\n游走全身的五种回路奏响的雄壮魔力奔流甚至具备能与星光相匹敌的歼灭力。
5	136	○可疑的药：A\n红宝石每天晚上在阁楼里精炼的神秘药物。\n正可谓琥珀药草。\n原料主要是植物（毒草）。\n不为人知地在爱因兹家庭院种植可疑的花草，据说已经形成了只要被人看到必然会报警的异常花园了。\n效果卓越到令人后怕，多半不会导致什么好结果，所以尽可能不要使用。
1	137	身高／体重：133cm·29kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：混沌·善　　　性别：女性\n「那就麻烦你……供给魔力了哦？」
2	137	起初小黑遭到了伊莉雅的拒绝，\n但在和解之后就住进了爱因兹的家。\n对外宣称是表姐妹，但由于两人过于相似，\n常被人认为是双胞胎。\n当第一次见到伊莉雅的义兄士郎时，\n小黑被错当成是伊莉雅。\n虽然在不知小黑存在的情况下，这也是无可奈何的，\n但他人没能分辨出两者间区别这件事\n似乎还是给伊莉雅造成了一些打击。
3	137	对借用哪位英灵造型一事尚无自觉。\n只继承了这位英灵锻炼的战斗技术。\n小黑会以瞬间思考能力奔放地运用自己的高战斗力，\n感到这是一种威胁的凛为她施加了痛觉共有的诅咒。\n目的是通过让她与伊莉雅共有痛觉，\n来让她遏制对伊莉雅的危害，\n但对这个小恶魔来说，这种程度的障碍丝毫无法阻止她。
4	137	『鹤翼三连』\n阶级：C　种类：对人宝具\nKakuyoku Sanren\n某位英灵使用的绝技。\n投影出三对拥有相互吸引性质的夫妻剑，\n不断通过投掷斩击组成的必中不可回避的连招。\n再配合小黑转移到敌人背后的能力，\n就算拥有心眼，也很难看穿这招。\n若想破解这招，必须拥有全方位的防护，\n或是无视伤害，直接对术者本体发动敢死攻击。
5	137	吻魔：B\n小黑就类似在没有御主情况下意外现界的从者，\n始终需要魔力。\n最喜欢不通过契约的最简单方法，\n也就是通过粘膜接触来进行魔力供给。\n一有破绽就强行插入亲吻镜头，\n令客厅陷入冰点的褐色小恶魔。\n\n但本人表示，\n「但这归根结底还是医疗行为，可别误会了哦」。\n原来如此。
1	138	身高／体重：154cm·48kg\n出处：万圣节回归！\n地域：监狱城恰赫季斯\n属性：混沌·善　　性别：女性\n※体重包括铠甲的重量。
2	138	由于被选为勇者，平日的躁郁与邪恶得以削弱，\n成了尽管依然很任性，但喜欢锄强扶弱，\n拥有勇敢性格的伊丽莎白了。\n或许是基于Saber=正义的同伴这个认知吧，\n错以为自己的定位就是勇者，\n伊丽莎白似乎……也为了做到这点而不停努力着。\n但由于扮演的是平时不习惯的正义方角色，\n所以失误也比平时要多。
3	138	双重职阶：E\n通过Lancer与Caster合体诞生的\n令人惊异的变异体。\n然而并没有因此得到什么特别的好处。\n\n魔力放出（勇气）：D\n虽然是魔力放出，但属于世间稀有的内向型。\n能提升防御力。微妙地开心不起来。
4	138	『鲜血龙卷魔女』\n阶级：B　种类：对人宝具\n有效范围：10～30　最大捕捉：一人\nBathory Brave Erzsebet\n鲜血魔女的Saber版。\n用风暴般的勇者力封印对手，并趁此破绽\n全力高速旋转突击，令对手爆炸的禁忌的剑技。\n当然，所谓的勇者力就是伊丽莎白的音波冲击产生的。\n向着被伊丽莎白的超音波震得身心都麻痹的对手释放的\n超雷鸣回旋斩甚至能粉碎禁止入内的告示板。
5	138	勇者大原则：EX\n其一，勇者必须要无敌。\n其二，勇者必须要士气高昂。\n其三，勇者可以自由使用大部分掉落物品。\n……等等，据说有十条原则。\n从技能角度来说，类似动作类漫画中，\n主人公大逆转前的铺垫那种东西。\n\n绯红勇者传说：EX\n据说只有在剧场版的时候才能使用的勇者最大奥义，\n也是超·特权。\n通过消耗大量勇者力让力量超级提升。\n和小玉藻夏日版的女神变生属于同种类型的超级buff。\n不过，使用条件那么苛刻，技能本身却是个\n充满了随机要素的赌博技能。\n令人不禁觉得这不过是个游手好闲之人的技能吧。
1	139	身高／体重：171cm·58kg\n出处：史实\n地域：埃及\n属性：秩序·中庸　　性别：女性\n严格来说，『最后的法老』应该是最后数年间\n与克娄巴特拉一起作为共同统治者被选中的\n她的亲生儿子恺撒里昂。\n因为在克娄巴特拉死后，恺撒里昂至少还多活了几天。\n然而殒命之际，恺撒里昂年仅9岁。\n从统治国家，与命运抗争来看，\n实际上『最后的法老』应该是克娄巴特拉吧。
2	139	在公开场合，作为女王，她的言行举止十分高傲，\n但作为克娄巴特拉个人时，她会克制这种非同寻常的\n行为，化身成一位家教好、深思熟虑、冷静的大小姐。\n用一句话形容属性，那就是蛮横抖S亲切。\n明明有施虐兴趣，却很亲切。抖S虽意味着爱好施虐，\n但并不是指通过欺负他人得到快感。\n不是为了令自己愉快而怒斥对方，\n而是纯粹性格就是这样而已。
3	160	领袖气质：B\n指挥军团的天生才能。\n这次的亚瑟被特化成擅长与巨兽战斗。\n与巨兽战斗时，同伴并不会追随左右，\n只有他孤身一人，所以没有发挥领袖气质的余地。\n\n巨兽猎手：A\n亚瑟王与蹂躏不列颠的众多魔兽战斗，\n将它们悉数打倒。\n是表现了他擅长与巨大敌对生物战斗的技能。
3	139	虽说举止很有女王风度，但本质还是很讲礼数的，\n是在意周围人的心情，努力维持平稳的品格高尚之人。\n在别国使节团到来时，之所以先怒斥他们一顿，\n其实都是为了他们的健康着想，\n\n「在妾身的国家里，妾身就是绝对的标准，\n　无论是谁，只要丑陋，就和奴隶没什么差别。\n　哼，你们觉悟吧，下级而劣等的蠢男人们！\n　尽情在这里彻底放松好好休息吧！」\n\n诸如此类，她总会用最高级别款待使节团。\n为此，虽然知道会遭到克娄巴特拉的怒斥，\n但为求谒见，来访的使节团依然络绎不绝。
4	139	克娄巴特拉一生中曾与两个男人相伴。\n第一位，是恺撒。对他，她毫无疑问坠入了情网。\n这份热情与思念之甚，\n令地中海上微风都显得无比闪耀……\n然而他却去世了。在即将统一地中海世界前，\n被暗杀了。留下了儿子恺撒里昂。\n\n此时，又有个人出现在了以泪洗面的克娄巴特拉面前。\n这位宣告要守护克娄巴特拉以及托勒密王朝的男人，\n正是罗马将军安东尼。\n\n深爱着自己的国家、臣民、以及两个男人——\n罗马的恺撒与安东尼，最后自杀而亡。
5	139	陪伴过两位男性的她去世了。\n这是爱恋。是思念的结局。怎可能是算计的产物。\n——然而，别说后世了，连当时的人都纷纷交头接耳，\n说「魔性之女诱惑了罗马的将军们」。\n结果，成了英灵，作为从者在当代现界的她，\n获得了作为「拥有魔性美貌的诱惑之女」的存在。\n\n即便如此，为了自己的尊严——\n就算要寻找伴侣，也只能选择卓越的男性才行。\n只有那些拥有值得信任的诚实内在，\n值得自己不惜与其共同赴死的人物才行，\n就像自己曾经爱过的男人们一样，\n自己定将成功诱惑他们。
1	140	身高／体重：191cm·90kg\n出处：史实\n地域：罗马尼亚\n属性：秩序·善　　性别：男性\n容貌与言行犹如狂战士，但其眼中尚残留着最后的理性。残留着相信真正的爱，并想要保护其碎片的骑士的感情。
2	140	『串刺城塞』\n阶级：C　种类：对军宝具\n有效范围：0～50　最大捕捉：三百人\nKazikli Bey\n让四周地面出现无数长枪，处决敌人，\n由魔枪释放的诅咒与铁锤的拷问魔城（Draculea）。\n由于对象是敌对的所有敌兵，\n所以是在一对多战斗时才能发挥真正价值的宝具。\n基于这个由来，该宝具拥有随对方不义·堕落之罪\n的提升，施加的痛苦也相应提升的特性。\n肃正对象越是犯下『逃跑』、『不道德』、\n『暴力』之罪，破坏力就越巨大。
3	140	弗拉德三世为保卫瓦拉几亚独立，不择手段，\n被土耳其方视作魔鬼般厌恶。\n时值1462年。\n为了以1万兵力对抗15万土耳其大军，\n弗拉德三世下达了焦土战术与游击战的指示。\n不仅让民众逃进喀尔巴阡山脉，\n还让整座首都化为空城，并迎击土耳其军。\n当时首都特尔戈维什泰周边排列着的，\n是超过2万名被穿刺了的土耳其士兵的身影。\n\n屹立于特尔戈维什泰要塞周围的无数被穿刺的尸体。\n这异样的光景与恶臭令以勇猛著称的土耳其士兵们\n完全丧失了斗志。\n据说连被誉为“征服者”的勇猛的穆罕默德二世\n都留下了「我不害怕任何人，但恶魔另当别论」的话，\n并带领军队撤退了。\n当时穿刺的原野长3公里，宽1公里。\n据说日后奥斯曼土耳其帝国在占领瓦拉几亚之后，\n也由于这次心理阴影，同意了瓦拉几亚的自治权。
4	140	德古拉本是他自己报上的名号，\n意味着「龙的儿子」。\n他父亲·弗拉德二世是神圣罗马帝国龙骑士团的骑士，\n也是龙公（Dracul）这个称呼的由来。\n弗拉德公相信对主的爱，\n想要履行贵族应纠正不正当行为的职责。\n然而沉溺于特权阶级财富的领主们厌恶他的清贫，\n拯救了基督教世界的武人就这样因阴谋而遭到了惩罚。
5	140	无辜的怪物：A\n由于生前的所作所为给人带来的印象，\n以至于扭曲了过去和存在方式的怪物之名，\n令能力、样貌大为改观。\n在如今世界里，『德古拉』依然是世界最有名的怪物\n之一。也可以说是创作扭曲了现实的最好案例吧。\n……然而，实际上确实无法断言这一切都是创作者\n布莱姆·斯托克的傲慢所致。\n弗拉德三世为了维护瓦拉几亚的独立，不择手段，\n无论是土耳其方，还是本国的民众，\n都将他视为恶魔，恐惧不已。\n根据教廷收到的记录，据说他一生中穿刺的人的数量\n已经达到了10万人。而可怕的是，这个数量并不包括\n敌国的人。
1	141	身高／体重：141cm·39kg\n出处：史实（史实……？）\n地域：圣诞岛（自称）\n属性：混沌·善　　　性别：女性\n和变成大人的我是不一样的！　哎嘿！
2	141	不用说也知道贞德乃是悲剧的圣女，\n但她活跃年数仅仅两年，非常短暂。\n贞德·Alter是本不存在的贞德黑化后的模样，\n而贞德·Alter·Lily则是这不存在的少女年幼的样子，\n无论哪个时间轴都不存在像她这样的存在的记录。
3	141	性格严格来说更像原来的贞德。\n也就是非常认真、死板、偶尔会胡来，万不得已的时候不惜使用非法手段，就算不是万不得已，也会采用更有效率的非法手段之类的。\n\n和原本贞德不同之处在于，一旦陷入恐慌，\n就会慌张得手足无措以至于哭泣，令周围陷入混乱。\n她本人似乎觉得看到成年后的贞德·Alter\n自暴自弃的样子会很丢人。\n\n「至今似乎仍对自己成为从者的事感到不好意思，也不知道该如何应对御主，真是个让人没辙的人啦！」\n\n这乃是贞德·Alter·Santa·Lily的意见。\n不过本人其实也挺想对御主撒娇的，\n但她也压根不知道该怎么撒娇。\n从这点来看，真不愧是贞德·Alter成长前的样子。
4	141	圣者的礼物：C\n通过成为圣诞老人获得的技能。\n赠送礼物，滋润心灵。\n尽管还不成熟，但万事都认真对待的态度\n从圣诞老人的角度来说，也值得给予较高的评价，\n以新手圣诞老人的等级来说，做得还算相当不错了。\n\n自我变革：A\n原本，从者应该以全盛期的样子被召唤，\n但她属于例外，她作为「今后将会继续成长」\n的存在被召唤了。\n心向恶即成恶，心向善即成善。\n她的未来或许不会那么光明，\n可即便如此，只要渴望，就会被赐予圣者的灯火。
5	141	『优雅歌唱吧，为那圣诞』\n阶级：A+　种类：对军宝具\n有效范围：1～10　最大捕捉：10人\nLa Grace Fille Noel\n与咆哮吧，吾之愤怒成对，\n只有在贞德·Alter·Santa·Lily兴致高昂的时候\n才会发动的圣歌宝具。\n对坏孩子就要予以教训（伤害），\n对好孩子就要给予赠礼（buff）。\n如雪花般飘落堆积的礼物\n似乎在等待圣诞节的孩子们之间大受好评什么的。\n\n另外，其实并不需要唱什么歌。
1	142	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：秩序·善　　　性别：女性\n「原本的我应该更有魅力才对，\n　但这躯体也不赖呢。」
2	142	苏美尔神名乃是伊南娜，\n从名字角度来说，这个更古老。\n伊什塔尔是阿卡德神名。\n乃金星女神，\n是司掌给人类带来繁荣的丰收的女神，\n也是司掌战斗与破坏的女神，\n还将可怕的神兽『天之公牛』送去乌鲁克市，\n总之是个会给人添麻烦的女神。\n\n以多情著称，据说无论对象是人类还是诸神，\n只要是中意的对象，就会全力献殷勤。\n另一方面，一旦对方不顺着自己的心意，\n就会表现出恶魔般的残忍。\n据说她之所以将神兽放到地上，\n也是因为乌鲁克之王吉尔伽美什没有回应自己的诱惑。
3	142	『山脉震撼明星之薪』\n阶级：A++　种类：对山宝具\nAn Gal Ta Kigal She。\n在苏美尔神话中，伊什塔尔做过的\n最具「破坏性」，最「残忍」的行为——\n就是凭一句“只是看不顺眼而已”，\n就蹂躏了诸神之王都敬畏的灵峰艾比夫山，\n让整座山死绝这个传说化为的宝具。\n美索不达米亚神话曰，伊什塔尔闯入艾比夫山，\n每走一步就提升其神威，最后甚至一把抓住山脉之巅，\n用枪刺入地脉的心脏部分，令艾比夫山脉彻底崩溃。\n\n根据这个传说，在使用宝具时，她会先瞬移到金星，\n使用管理者的权限，将金星的概念收入手中，\n并作为概念行星塞入马安娜的弹仓中发射，\n完成这种连神都会感到恐惧的行为。\n别称为Jebel Hamrin Breaker。
4	142	魔力放出（宝石）：A+\n将过剩的魔力附加在武器上来增加攻击力。\n原本伊什塔尔自如的神气可以称得上万能，\n但由于附体对象的影响，不知为何，\n变得只能在宝石中积蓄魔力了。\n虽然是强大的魔力放出技能，\n但由于需要注入宝石并释放这个工程，\n所以使用的时候稍微有些麻烦。\n\n美之显现：EX→B\n作为美之女神的可怕魅力。\n能吸引他人的能力。虽然处于附体于他人的状态，\n但也已经超越人的领域了。\n原本是以强大诱惑为主体的复合技能\n（充能吸收、诅咒、技能封印），\n但由于被附体之人的强烈要求，\n因此去除了向对手施加的束缚效果，\n实质只剩下领袖气质单体技能了。\n（从原本的EX阶级降到了B阶级。）
5	142	以巨大的弓，也就是飞船『天舟马安娜』为主武装。\n马安娜是驰骋于美索不达米亚世界的神之舟，\n也是连接地球与金星的星间转移门（Gate），\n但由于本人是拟似从者，所以传送功能基本被封印。\n伊什塔尔也能运用枪，但这次贯彻了Archer职阶。\n虽说是美索不达米亚的神，\n但给人一种从金星攻打地球的侵略者的印象。\nbiubiu。
1	143	身高／体重：可变\n出处：吉尔伽美什史诗\n地域：美索不达米亚\n属性：中立·中庸　　　性别：－\n「若让我战斗，我就会战斗哦。\n　因为我其实并不讨厌战斗。」
2	143	吉尔伽美什史诗中描述的最古老英雄之一。\n由诸神创造而出的兵器。原本是诸神创造而出的\n“能变形成任何东西的粘土工艺品”。\n能根据状况随心所欲改变形态。\n全身等同于诸神的武器。\n只不过不具备人类那样的精神与感情，\n起初与野兽几乎没什么差别。\n\n据说在显现于地上之后，由于遇见了一位圣妓，\n获得了诸多认知，\n才终于选择了人类的形态（作为基本形态）。\n这姿态是因为尊重那位圣妓，而模仿她的结果。
3	143	战斗力与英雄王吉尔伽美什全盛期几乎等同。\n在史诗中描述的与吉尔伽美什的一战中，\n他发挥出了与被誉为人类史最强英雄之一的他\n不相上下的性能。\n\n是孤傲的吉尔伽美什王首次选出的朋友，\n他自身也将吉尔伽美什视为独一无二的朋友。\n在乌鲁克市的战斗后，\n成为了朋友的吉尔伽美什与恩奇都经历了众多冒险，\n最终在与神兽古伽兰那的战斗后殒命。
4	143	内向、主动、强势。\n平时犹如美丽的花朵般伫立，但一旦行动，\n却会成为不等人、不留情、不自重的可怕活跃怪物。\n\n人类也是地球上的生命，所以是“喜欢”的对象，\n但人类会基于知性将自然与自己划分着考虑，\n因此不是很愿意拥护。\n动物、植物身上有与自己相近的感觉，\n因此大多数行动都是为了保护它们。\n\n不过由于原本就好奇心（求知欲）强烈，\n所以恩奇都很喜欢与人类对话。\n如果这个人具备讨人喜欢的性格（充满博爱精神，\n全体主义者，但依然最优先自己）的话，\n会由衷表示敬爱与敬佩，乐于作为朋友支持对方。
5	143	变容：A\n根据情况，将能力值从一定综合值中\n重新分配的特殊技能。是恩奇都最大的特征。\n阶级越高，综合值越高。\n有时将筋力变化为A，有时将耐久变化为A。\n只是参数值变换极限是固定的，\n因此无法将所有数值都变成A。\n恩奇都拥有30数值，各参数消耗数值分别为\nA7、B6、C5、D4、E3。\n\n气息感知：A+\n最高级的气息感知能力。\n能通过大地，远距离探测气息。\n\n完全之形：A\n利用大地的魔力，复原原本的形态。\n利用神代粘土制作而成的恩奇都的身体\n只要还有大地提供魔力，就不会崩溃。\n具备他人不可比拟的强大再生、复原能力。\n但灵魂除外。
1	144	身高／体重：181cm·64kg\n出处：阿兹特克神话\n地域：中南美\n属性：秩序·善　　性别：女性\n通过将身为从者的形态赐予了分灵之一\n从而现界。
2	144	名字的意思是「有羽之蛇」、「有翼之蛇」。\n被人们奉为否定活祭仪式的善神。\n与身为启明星化身的善神特拉威斯卡尔潘泰库特利神、\n玛雅的库库尔坎被视为同一存在。\n拥有诸多善良的传说，\n但也具备凶猛战神的一面。\n\n魁札尔·科亚特尔虽然身为善神引领人们走向繁荣，\n但最后却因输给了特斯卡特利波卡神，\n从阿兹特克失去了踪影。\n留下了总有一天将会回归的预言。\n\n阿兹特克的人们相信之后来访的西班牙征服者就是\n「归来的魁札尔·科亚特尔与其军队」，\n最终走向了毁灭。
3	144	本来是男性神。\n在现界时获得了身为女性神的存在。\n本人表示，或许是在长时间被视为\n同一存在的金星的影响下，导致被\n金星=美神维纳斯（阿佛洛狄忒）的印象牵连所致。\n\n南美的神与其他神话体系有很大的不同，\n他们南美的诸神会通过『转移到人类身上』的方式活动。\n魁札尔·科亚特尔神也随地域不同，被确认有复数存在，\n或许某个时代的魁札尔·科亚特尔会以女性体出现。
4	144	『炽焰，亦焚尽神灵』\n阶级：A　种类：对人·对城宝具\nXiuhcoatl\n传说过去魁札尔·科亚特尔离开阿兹特克的时候，\n为了不将众多财宝拱手让给恶神特斯卡特利波卡，\n将自己的宫殿燃烧殆尽的火焰的再临。\n让周围被火焰所包围，短暂阻止对手解放宝具真名——\n\n本应如此，但由于本人沉迷摔角，\n这宝具便成了极为古怪的存在。\n基本是让对手飞向天空，并头朝下摔落，\n根据情况，甚至可能改为从1000米的高空\n朝着对方使出飞踢的打击技之类的。\n本人将其取名为Ultimo Tope Patada。
0	76	莫德雷德是圆桌骑士之一，亚瑟王的亲生子。\n同时也是终结了传说的反叛骑士——\n在卡姆兰之丘，他杀死了亚瑟王。
5	144	『持翼之神』\n阶级：A　种类：对人·对军宝具\nQuetzalcoatl\n之所以拥有Rider职阶的原因宝具。\n召唤赐予了自己名字的白垩纪翼龙——\n羽蛇神翼龙，并进行骑乘。\n其实是比栖息于白垩纪的羽蛇神翼龙更为大幅强化了的\n幻兽～神兽级的幻想种。\n羽蛇神翼龙以历史上最大的飞行动物而著称。\n\n真名解放时，\n虽说骑乘翼龙的魁札尔·科亚特尔本应能够\n大规模操控风雨雷电……\n但这效果在本作基本没被使用。
1	145	身高／体重：182cm·68kg\n出处：苏美尔文明、吉尔伽美什史诗\n地域：巴比伦尼亚、乌鲁克\n属性：秩序·善　　　性别：男性\n不是作为暴君，而是作为从冥界归来，\n身为王得以成长的状态现界的。
2	145	道具作成（伪）：A\n制作带有魔力的器具。\n原本不是魔术师的吉尔伽美什并没有这个技能，\n但由于宝具的存在，令他获得了与该技能同等的能力。\n制作而出（从宝具中取出）的道具全部是\n「存在于巴比伦宝库中」的东西。
3	145	领袖气质：A+\n身为最优秀王者的吉尔伽美什身为贤王的领袖气质。\n具备仿佛带有魔力或是诅咒般的极高魅力。\n\n魔杖支配者：EX\n表现了身为能操控多彩魔术礼装的\nCaster吉尔伽美什王存在方式的技能。\n被赋予了魔术系的攻击加成。\n只要用心战斗，就会善待道具。\n他就是这么一位王。
4	145	阵地建造：A\n不仅能身为魔术师制作道具，连建筑都能建造。\n再说乌鲁克的要塞本来就是吉尔伽美什设计的。\n由于用粘土与石材建筑存在极限，所以虽然嘴上说\n「想要更多木材。\n　得去杉木林才行……」\n但由于恩奇都一事的影响，始终不想去杉木林的王。
5	145	『王之号炮』\n阶级：B　种类：对军～对城宝具\nMelammu Dingir\n从乌鲁克要塞发动的远距离轰炸。\n不只吉尔伽美什，而是集结全体生活于神代的\n乌鲁克民众的力量发动的令人震惊的炮击。\n\n吉尔伽美什怀着断肠之痛，\n将自己的收集品装填于弩上，并交由士兵操作。\n「幻想崩坏？\n　那种事情，本王4000多年前就干过了！」
1	146	身高／体重：134cm·30kg？\n出处：希腊神话\n地域：欧洲\n属性：中立·善　　　性别：女性\n「和姐姐们一样」体重是自己声称的。
2	146	外观与两位姐姐相似的可怜少女，\n性格也与身为Rider时发生了变化。\n但与身为『不借他人之手就无法生存的永远少女』\n的姐姐们不同，\n已经具备了战斗的力量，\n具备了足以夺取众多生命的复数魔之萌芽了。
3	146	『女神的拥抱』\n阶级：B　种类：对人宝具\nCaress of the Medusa\n原来的美杜莎（Rider）作为技能具备的能力，\n也就是当前状态的美杜莎\n将在『未来』获得的存在作为宝具使用。\n当用手中的屠戮不死之刃攻击之后，\n能将视野中捕捉的对手瞬间石化的\n最高级别魔眼「库柏勒」的效果。\n她就是以此为轴发动猛烈攻击的。
4	146	魅惑的美声：B\n与姐姐们相同的固有技能。\n能对男性起到魅惑的魔术效果，\n但可以通过对魔力技能回避。\n就算没有对魔力，只要有抵抗的意志，\n也可有所减轻。
5	146	怪力：C\n能短暂增幅筋力。只有魔物、魔兽才具备的攻击特性。\n只要使用，就能让筋力提升一个阶级。\n持续时间依“怪力”阶级而定。\n…由于魔的性质较薄弱，因此阶级很低。\n\n心念远方：A\n或许终将有一天会存在的远方——\n对那些深爱日子的感情，成为了她战斗的最后支柱。
1	147	身高／体重：172+？？cm·57+？？kg\n出处：希腊神话\n地域：欧洲\n属性：混沌·恶　　性别：女性\n若要包含人类以外的怪物部分，\n就会具备相当的身高以及体重数值。
2	147	作为无限接近「戈耳工的怪物／戈耳工」显现的她\n原本应该是人类的威胁。\n虽然被迦勒底的系统作为从者召唤出来，\n但依然需要小心对待。\n一旦掉以轻心，就算御主也会丢掉性命。
3	147	变转之魔：B\n英雄或是神生前转变为魔的表现。\n通过强调过去的事实，\n来大幅强化身为从者能力的技能。\n戈耳工实现了作为人身绝对不可能达到的\n筋力与耐久力的阶级。
4	147	魔眼：A++\n拥有最高等级魔眼「库柏勒」。\n但平时处于封印状态。\n\n畏怖的咆哮：A++\n令生物产生本能畏惧的咆哮。\n为敌方全体付与恐怖、连续性的防御下降、\n瞬间防御大幅下降、诅咒状态等。\n但本作中基本不会使用。
5	147	『强制封印·万魔神殿』\n阶级：A　种类：对军宝具\nPandemonium Cetus\n通过放弃身为女神最后的余韵，\n让最终到达的悲惨结局\n『戈耳工的怪物』短时间实体化，\n来溶解指定领域内所有生命。\n若是人类，就会立即失去生命，\n就算是从者，也会遭到强烈打击。\n\n虽然是Rider状态的美杜莎拥有的宝具\n『他人封印·鲜血神殿』强化后的存在，\n但不需要准备时间，靠真名解放就能发动。\n对无机物对象的效果略弱。
1	148	身高／体重：165cm·？？kg\n出处：中南美各时代的神话\n地域：中南美\n属性：混沌·中庸　　性别：女性\n属性不是附体对象人类的，而是豹人本身的。\n性别是附体对象人类的。
2	148	中南美神话中被称为纳瓦尔（Nahual）的灵性存在、\n影子，或是超自然守护灵般的存在常被提及。\n阿兹特克文明中被崇拜的主神之一\n特斯卡特利波卡也具备纳瓦尔，\n据说那就是令人恐惧的豹子纳瓦尔。\n\n本作的豹人虽具备古代神灵的性质，但也融合了\n继承自身系谱的特斯卡特利波卡的纳瓦尔的一面。
3	148	拟似从者。\n豹子纳瓦尔通过附在特定人类身上，\n作为分灵实现现界。\n自古以来，据说拥有豹子纳瓦尔的人类\n都会拥有超自然的力量。\n纳瓦尔传说一直流传到了现代。\n\n另外，附体的选择基准是在于圣杯有缘的人中间，\n选择最具野性力量以及野性宿命的人。
4	148	豹之拳：A\n正式技能名：豹子的佑护\n豹子之拳就是破坏力。\n豹子神灵赋予的佑护。\n不会感受到恐惧与疼痛。\n是结合了勇猛技能与直觉技能效果的复合技能。
5	148	豹之踢：B\n正式技能名：：怪力\n豹子之踢也是破坏力。\n总之自己无论如何先得活下来。\n充满了这种坚强意志，以及令人感到希望的技能。\n\n豹之眼：A+\n正式技能名：昏暗密林之颚\n豹之眼就是光炮之力。\n处于「森林」场地时，会追加各种加成效果判定。
1	150	身高／体重：178cm·68kg\n出处：亚瑟王传说、其他\n地域：西欧诸国\n属性：秩序·善　　　性别：男性\n「问我为什么不用咒语？\n　但比起念经，还是殴打比较快吧？」
0	77	操控电磁的19～20世纪的天才科学家。\n毫不含蓄的天才，宣称甚至能斩断星辰。\n解开了在众多的神话中，\n被誉为神（自然）之传说的雷电的秘密，\n给人类文明带来「电力」的伟大学者之一。
2	150	传说母亲是威尔士的公主，但父亲\n却是月与大地间诞生的超自然梦魔。\n据说年轻时候就已经做出了许多预言。\n\n其中令梅林声名远播的预言，\n是说中了艾利尔山地下沉睡着红龙与白龙的存在后，\n还描述了觉醒了的红龙与白龙相互争斗的场面。\n\n作为梅林预言流传后世的这段话中，\n红龙指的是不列颠，\n白龙指的是撒克逊，\n在伟大王者的领导下，不列颠将集结力量，\n并打倒高卢与罗马的吧——\n内容就是这样。\n除此以外，他还留下了诸多预言，\n其中甚至还有关于战争与王之死的内容。\n\n梅林帮助亚瑟的父亲尤瑟·潘德拉贡迎娶了王妃，\n从亚瑟王诞生前就一直守护在旁，根据传说，\n他教导了年幼的亚瑟很多知识，犹如见证其成长的\n养父般的存在。
3	150	『永世隔绝的理想乡』\n阶级：C　种类：对人宝具\nGarden of Avalon。\n在周围再现至今仍幽禁着梅林的『塔』的景象。\n地面开满了鲜花，无论在何种黑暗或是地狱，\n都能令温暖的阳光洒向地面。\n哪怕他被允许的空间只有区区十平方米的四边形牢房，\n哪怕他被给予的景色只有遥远上空被划分出来的天空，\n那里也会作为理想乡永远存在下去。\n\n花之魔术师梅林所在之处不是地狱，\n而是充满了希望的大地。 \n\n幻术：A\n能迷惑人的魔术。\n指介入精神，并在现实世界投影虚像。\nA阶级的存在不仅能令精神世界化为噩梦，\n更能轻松在现实世界创造出\n一个村落规模的虚像，欺骗人们。
4	150	犹如吹拂于草原上的风一般的青年。\n只要在他的面前，任何人都会松懈下来。\n是个飒爽且正义的人。\n但看上去欠缺紧张感和责任感，\n因此有时会令人觉得他是个可疑的诈骗犯。\n是个虽然能客观认识事物，承认人类世界十分残酷，\n但依然能用一句『但这样就没意思了吧？』\n将气氛活跃起来的能言善道之士。\n\n喜欢人类的世界，喜欢恶作剧，喜欢女性。\n是能用「好啦好啦」与飒爽笑容对大多数情况\n予以反击的花之魔术师。\n\n看上去是那种没有任何烦恼的完美乐天人格，\n但梅林自己很清楚自己在人类社会中属于异物，\n所以始终不会破坏最后一步……也就是名为好友的壁垒。\n为了最后，人类能迎来完美的结局，\n日夜守护着。
5	150	英雄塑造：EX\n人为创造王、培养王的技术。\n甚至可以说是亚瑟王真正父亲的梅林\n乃是广为人知的世界上屈指可数的国王培育者。\n\n混血：EX\n混着人类以外存在的血脉。\n梅林被视为梦魔的混血，\n完全继承了梦魔的特性。\n\n单独显现：A\n单独出现于现世的技能。\n梅林本来是不会被作为英灵召唤的。\n因为无论怎样的未来，他都不会死亡。\n他之所以作为从者服从于御主，\n是为了释放个人的欲望，\n换种说法就是个人兴趣。\n为了实现自己的兴趣，他靠自己获得了\n只有某个特殊职阶才能拥有的该技能，\n并假装作为从者被召唤了。
1	153	身高／体重：167cm·56kg\n出处：史实\n地域：日本\n属性：混沌·善　　　性别：女性\n「正式的名字？　新免武藏守藤原玄信。\n　但是，还是直接叫武藏比较方便嘛。」
2	153	在正确的史实中，\n出生于作州（现冈山县美作市）。1584年生。\n父亲是侍奉竹山城主新免家的武术指导师，\n被主家赐予了新免之名，被誉为新免无二斋的武艺高手。\n新免无二斋在吉野乡宫本村建立了十手术道场，\n武藏也将此地视为故乡，因此之后以宫本为姓。\n成人后留下了众多传说故事，\n尤其是在二十来岁的这十年间，与众多武艺高手战斗，\n这些著名的战斗也成了如今娱乐节目的热门题材之一。\n然而这十年间的战斗的真正内容几乎全都成谜，\n被人们深深怀疑乃是杜撰的。
3	153	开朗活泼，凛然而又娇艳的女性剑士。\n总是春风得意，泰然自若，但并不会看不起对手。\n只是很享受人生罢了。\n感情表现略有些夸张。常会笑，常会惊讶。\n对大多问题都会一笑而过，性格豁达大方，\n但本质却是“钻研剑道之人”，在事关人命的问题上，\n是非常冷漠＆严厉的。\n\n话虽如此，却很容易着迷，最喜欢被人依靠。\n也最喜欢被人夸奖。禁不住赞辞。喜欢打架的大姐气质。\n虽然是正义之士，但自己不会主张正义。\n基本是个飘浮不定无忧无虑的流浪者，\n但遭遇『单方面虐杀』、\n『为了娱乐，践踏人的尊严与信念』、\n『在人饿肚子的时候抢走食物』这类情况时，\n就会修罗化。
4	153	天眼：A\n天眼被视为「达成目的的力量」。\n一旦决定要完成某件事，\n就会全身心投入，保证目的必定达成。\n也可以说是将自己的全部存在寄托于视线上，\n并投射向目的地的能力。\n不过武藏只会将天眼用在『斩这个地方』这种事上。\n比如说，一旦她决定『切下对方的右臂』，\n那最后她会不惜使用任何手段都要切断对方的右臂。\n那将会成为最合理的斩击，\n『没有任何多余，制服时间与空间的一刀』。\n将『为达目的使用的手段』范围『缩小到一种』的力量。\n将本应无限的未来限定成『只有一个』的结果，\n可以说是极为特殊的魔眼。
5	153	无空：A\n剑术家能到达的最高位。究极的境界。\n相当于柳生新阴流·水月。\n因无空，故无敌。能捕捉此物者，\n只有抵达无限境界的剑术家。\n\n五轮之书\n武藏临死前将自己毕生到达的境界，\n以及钻研的技法整理撰写而成。\n这是一套分为地水火风空5卷的书籍，\n是“武藏”这个人集大成的存在。五轮之书中，\n地之卷描写了二天一流兵法的理念与概略，\n水之卷则描写了具体的技法，\n火之卷是关于从战略或战术角度而谈的兵法，\n风之卷是对通过否定特定技与战法，\n让读者以“脑海中主动浮现出”的形式，\n从根本上理解二天一流的解说。\n而最后的空之卷，据说是用名为“相对”的技法，\n将武藏个人对“空”的理解撰写而成的东西。
1	154	身高／体重：220cm·？？？kg\n出处：中东\n地域：中东\n属性：秩序·恶　　　性别：？？？\n可以称之为王哈桑……
2	154	在暗杀教团中，没有任何见过他的目击者，\n这也是情理之中，因为当见到他的时候，\n生命就已经终结了。\n作为『山中老人』起源的他，\n同时背负起为教团的腐败进行断罪的职责，\n选择了担任教团监视者的人生。\n虽说教团乃是在神的教诲下建立的正确的存在，\n但执行者难免会做出人的恶行。\n所以，这个人物是不会允许教团发生腐败的。\n遵守神之教诲的人们沉溺于人的欲望。\n这才是对神最深重的亵渎。
4	160	『誓约胜利之剑』\n阶级：EX　种类：？？？\nExcalibur\n拯救星辰的闪耀圣剑。\n为打败企图摧毁星辰的外敌而铸造，\n能击退所有邪恶的黄金之刃。\n\n圣剑的「十三拘束」中的六拘束被开放后的形态。\n由于开放的拘束没有超过半数，也就是七拘束以上，\n因此未能发挥真正的力量——\n即便如此，还是能够击毙巨恶的激烈之光。\n\n在本作中，「贝德维尔拘束」的开放\n被自动承认，\n可以视为预计将与巨大的存在展开决战。
3	154	教团的腐败，也就意味着首领『山中老人』的堕落。\n因为无论是精神的堕落还是技术的堕落，\n衰退之人是不能被赐予『山中老人』的名号的。\n衰退意味着死。通过斩断首级来宽恕其罪行，\n并成为托付给下一个『山中老人』的希望。\n为了赐予暗杀暗杀者这不正常的职责以大义名分，\n这位人物不使用隐藏的武器·暗器，\n而是选择了能正面战斗的大剑作为武器。\n当见到这骷髅的时候，这个人类已然终结。\n在为违反教团教义的愚者降下制裁后，\n见过骷髅剑士身影之人就会从世间消失。\n据说葬送了众多Assassin的他会一直潜藏在黑暗中，\n直到暗杀教团毁灭。\n作为活生生的传说，没有任何目击者的暗杀者之深渊。\n那就是这位骷髅剑士。
4	154	『死告天使』\n阶级：C　种类：对人宝具\n有效范围：1　最大捕捉：1人\nAzrael。\n稀疏平常的大剑。\n被这个人物一生不断挥舞，不断坚信的信仰所浸透。\n\n据说由于这个人物始终在幽谷境界中行走，\n因此他的剑的所有攻击都会附加即死效果。\n虽然概率很低，\n但无论多厉害的强敌都会遭到即死的危险性。\n身在幽谷之人早已习惯了死亡，\n由于与死早已同化，因此拥有即死耐性与魅惑耐性。
5	154	气息遮断：A\n消除自身气息的技能。曾学会的技能的残留。\n带着强大诅咒的这位剑士\n就算在隐秘行动判定中完全成功，\n也会让“接下来将要杀害的对手”感知自己的存在。\n\n晚钟：EX\n告知人们葬礼的到来，在死亡造访时响起的晚钟。\n与这种仪式一体化的结果产生的特殊技能。\n这位剑士不会凭自己的意志选择杀害的对手。\n当对手化为「迷失了应赴死之时」的亡者时，\n代替天主赐予对方救赎。所有一切都是天的意志，\n因为都是天的意志，\n所以见到这位剑士之人的命运注定已经终结。\n——能否听见，这钟声。\n这才是汝之天运的尽头。\n接受吧，解放灵魂吧。这是，\n身为一个人获得安息的最后机会了。
1	155	没落骑士潘德拉贡卿\n身高／体重：154cm·42kg\n出处：2018年情人节活动\n地域：从者界\n属性：中立·恶　　　性别：女性\n引以为傲的剑『邪圣剑死之胜利剑』\n是通过可疑的邮购买来的。
2	155	「战斗吧。直到打倒女主角X，\n　将宇宙染上反派黑暗之色的那天为止。」\n\n机器人“K6－X4”，通称“黑骑士君”始终在暗中\n默默见证着发下如此誓言的她。\n若换一种说法，也可以说是随手找个地方躲起来偷懒。
3	155	态度认真谨慎的少女。\n喜欢的东西是甜品。一有机会就会要求高级和果子，\n她的饥饿其实还挺费钱的。\n休息的日子里，她会躲在黑色圆桌型被炉里一步不出，\n读读书听听音乐地度过。\n\n基本上比较懒散，怕麻烦。\n对他人的命令和指挥虽然会反唇相讥，\n但不可思议的是最终还是会老老实实地服从。\n用甜点勾引她比较方便。
4	155	魔力转换炉Alter莉雅反应炉能够将隐藏在体内的\nAlter元素结晶作为触媒，并把卡路里变换为魔力。\n她强调说，\n「和三盆糖的成分平衡效率最高。最好还能有茶。」\n眼镜是为了能让强化过的视神经能够休息所需的\n必要道具。佩戴期间的视力反而会下降。\n\n她所拥有的神秘道具\n「∞（无限）黑豆沙馅」是通过\n欲望（灵魂）、糖分（力量）、\n柜台（空间）、原价（现实）、\n制作（时间）、需求（心灵）\n这六种原始力量制作而成的，\n所以能为持有者带来无限的力量什么的，\n但X·Alter似乎不是很明白。
5	155	已经崩溃消失的暗黑骑士团\n黑暗圆桌中最后的幸存者。\n被赋予的称号是潘德拉贡卿\n\n能够使用念动力“Alter力锁喉”，以及通过手臂\n释放魔力来使用的绝技“Alter力闪电”之类\n似乎在哪里见过的多种多样的技能。\n释放出赤色魔力的“邪圣剑死之胜利剑”\n能够自如变化成双剑或是电锯之类的样子，\n但经常会坏或是发生爆炸。\n越是帅气的武器越是不强，\n这似乎是宇宙共通的规则。\n还是平淡无奇的长剑最棒了。
1	157	身高／体重：187cm·78kg\n出处：Fate/Grand Order\n地域：日本\n属性：混沌·恶　　　性别：男性\n「你问正义的伙伴为何要为恶？\n　那还用问吗。因为我的内心早就腐朽了啊。」
2	157	没有理想，没有思想，因此效率很高。\n号称与机械一样的无铭反英雄。\n由于根本的部分彻底腐朽，所以为了达成目的，\n他能毫不留情地大开杀戒。
3	157	嗤笑铁心：A\n反转时被付与的精神污染技能。\n与精神污染不同，是作为固定概念被强加的，\n近乎于某种洗脑。\n被付与的思考推崇以守护人理为最优先事项，\n除此以外一切均可舍弃的守护者原本的存在方式。\n若没有A级的付与，\n这男人是无法以反转状态充分发挥力量的。
4	157	『无限剑制』\n阶级：E～A　种类：对人宝具\n有效范围：30～60　最大捕捉：？\nUnlimited Lost Works\n『无限剑制』是专精锻炼剑的魔术师\n究其一生到达的最高境界。\n这个固有结界中积蓄着所有他所看见的\n拥有「剑」的概念的兵器。\n……然而，这男人的『无限剑制』居然能在对方体内生成。\n极小的固有结界能在体内以极强的威力让对方破碎。
5	157	当然，能让一个人类的人生发生如此巨变\n自然有其理由。\n让如剑一样强韧的男人的灵魂坠落的，\n据说是一个拥有如圣母般慈爱的女人。\n男人为了将这魔性逼入绝路，\n过程中屠戮了众多信徒，\n仿佛为他们的生命献身般坠入魔道。
1	158	绝不可能相互理解。\n身在此处的，乃是播撒憎恶的野兽是也。
1	159	星在天，无赖在地。\n本应只存于幻想中的男人，与拳法一同被创成。\n猜猜看，我究竟是谁！？
1	160	身高／体重：181cm·68kg\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：男\n擅长吃，也很擅长制作（料理）。
2	160	既是与英灵阿尔托莉雅·潘德拉贡拥有相同过去\n与传说的完全同一人物，又不是同一人。\n以「理想的王子殿下」「苍银的骑士」的\n清廉形象现界。\n算是从不同世界造访的英灵，但是——
5	160	自己原本是隶属其他世界·异世界的英灵，\n为追寻某个强大的敌人、恶相之兆而来到这个世界\n——本人如是说。\n这是凭迦勒底的系统都无法判断真伪的\n令人诧异的发言，\n但至少他是不会对御主说谎的。\n\n他向御主寄予了完全的信任。\n不可能存在虚伪或背叛。
2	161	抛弃了浅葱色羽织，身披洋装，手持枪械，\n为贯彻自己的诚，不断与时代做斗争的武士。\n虽为Berserker，却可以正常对话。\n与其鬼人般的战斗方式相反，\n他在战场上是个合理主义者，\n并兼具为了胜利不择手段的灵活性。\n当召唤自己的御主放弃战斗之时，\n御主就会即刻成为他的肃清对象。
3	161	局中法度：EX\n　其一，不得违背武士道精神\n　其二，不得离队\n　其三，不得私自赚钱\n　其四，不得擅自卷入官司\n　其五，不得私斗\n是对自身施加强制束缚的技能。\n一旦违背禁令，就会受到伤害，\n但反之会令能力提升。
4	161	『不灭之诚』\n阶级：C+　种类：对人宝具\n新选组。\n自己才是，唯有自己，只要有自己在，\n诚之旗帜便是不灭的。\n这是他强烈的自信与疯狂编织而成的宝具。\n发动时，能让肉体损伤对身体能力的劣化暂时无效化，并在消灭对手之前用尽各种手段令战斗持续。但效果时间一结束，累积的伤害会一口气爆发，可谓双刃剑。
5	161	被剑豪云集的新选组队士们评价成\n「就算不会输给土方，感觉也赢不了他」\n的战鬼·土方岁三的修罗之剑。\n宛若重现了他不停战斗的生涯。发动时，他周围会化为子弹横飞炮火轰鸣的战场。\n看似通过召还大量人员呈现对军宝具的态势，本质却截然不同。一切都表现了「新选组现在仍在此处」的他的那份疯狂。
1	162	身高／体重：138cm·34kg\n出处：史实\n地域：日本\n属性：混沌·中庸　　　性别：女性\n不知为何不是以全盛期，而是以幼小时候的模样现界。\n「反正茶茶的魅力Everything都没有改变！」
2	162	浅井三姊妹中的长女，茶茶。\n近江国的战国大名·浅井长政的女儿，母亲是织田信长的妹妹阿市。\n一生经历了三次城池的陷落，三次分别失去了父亲、母亲，最后失去了全部。\n被后世民众烙上了毁灭丰臣恶女的烙印，是个充满悲剧的女性。\n「……这……这是不白之冤！」
3	162	黄金律（凶）：B\n能自由使用号称收集了全日本黄金的天下人的黄金。和纯粹浪费狂的茶茶相性极佳的技能。\n「哎？　钱？　殿下会付的！」
4	162	日轮的宠姬：EX\n能让对象能力阶段性层层下降的诅咒。\n曾令日轮沉没的她本人无论是不是愿意，都会令周围与自己有瓜葛的存在走向破灭。\n「胆敢触碰茶茶可是在玩火自焚的哦！　这话是认真的！」
5	162	『绚烂魔界日轮城』\n阶级：C　种类：城塞宝具\nKenran Makai Nichirinjyou\n日轮之子，作为丰臣秀吉象征的『日轮城』的余韵。燃烧的大阪城具现化，与丰臣相关的亡者们从地面出现，攻击敌人，周围被红莲火焰包围。\n最终一切都会化为灰烬，连自己也被烧尽的毁灭之显现，堕落的日轮残渣。\n作为毁灭了丰臣的女人，被诅咒的倾国美女，火焰地狱公主的茶茶最后具现化的宝具。
1	163	身高／体重：190cm·33kg\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：秩序·善　性别：女性\n※身高是包括了高跟鞋的部分。\n体重是去掉了高跟鞋的部分。\n从这些数据的上报就可以看出Meltryllis的性格。\n\n拥有液体的性质，彻底成长后甚至可能成为海洋，\n是完全流体。……然而不知为何，\n却为古典芭蕾所倾倒，拘泥于拥有人类的手脚。
2	163	好战且冷酷无情。还有嗜虐的兴趣。\n喜欢构造上的美，拥有无法原谅丑陋存在的洁癖。\n认为自己是完美的存在，\n坚信只有自己能做到任何事，自尊心很高。\n\n看不起人类，对事物表示悲观，觉得万事都很无聊，\n总是显得非常不愉快。但这些表现都是基于她\n「想要看到美丽存在」的愿望。\nMeltryllis是由『少女的愿望』而生的Alterego，\n所以其本质与Passionlip一样，\n有着憧憬白马王子的愿望。\n\n虽冷酷，却深思熟虑，十分理性，\n虽慈悲，却拥有判断事物的公平性，\n虽嗜虐，却是源自想一味干涉喜欢对象的照顾人性格。\n\n因为很清楚自己是个怪物，\n所以不觉得自己能与人类相互理解。\n也因为不觉得能与人类相互理解，所以会表现得\n像是个怪物。然而一旦坠入情网，就会无视自己是否为\n怪物，全身心为对方着想，是个为爱恋而生的女主角。
3	163	『弁财天五弦琵琶』\n阶级：EX　种类：对人宝具　有效范围：20～500\nSarasvati Meltout\n由于舞台不是完全的SE.RA.PH，\n因此对原本的能力进行了限制，调整成物理攻击特化型。\n\n本来不是对人，而是对众、对界宝具。\n不是用于战斗或是对战士使用，\n而是针对建立了一定文明的文明圈使用的存在。\nMeltryllis的蜜不仅能令肉体，\n还能令精神甜美地融化。\n这宝具能让集团理性、道德融化，\n并一体化出类似群体的存在。践踏这种身心与社会全部\n泥浆化的存在，并予以吸收，这才是该宝具原本的力量。\n对非战斗人员能够发挥极大效果，\n这充分体现了Meltryllis的性质有多么恶劣。
4	163	高等从者：A\n通过合成复数神话精髓制作而成的人工从者。\n拥有阿耳忒弥斯、利维坦、萨拉斯瓦蒂（辩才天女）的\n要素。\n\n施虐体质：A\n在战斗中，对自己的攻击型进行加成的技能。\n虽常被视为正面技能，但拥有该技能的人战斗时间越长，\n施虐性就越是提升，以至于会失去了平时的冷静。\n\n罪恶芭蕾：A\n就是纯粹的战斗风格。\n为古典芭蕾所倾倒的Meltryllis在经过自主调整后，\n成立的各种攻击技能。\nMeltryllis原本是基于BB的「侍奉需求」与\n「快乐」创造而成的Ego，\n其本质是激发男性难以遏制保护欲望的\n可怜少女形象——曾是如此。\n之所以为芭蕾所倾倒应该也是由于这个印象。\n但在不断夺取他人能力的技能影响下，\n现在性格变得十分好战。
5	163	Melt病毒：EX\n这是名为id_es的Alterego们天生就拥有的特殊能力。\n由技能『吸收』进化而成的作弊技能。\n能量吸收的最高级。可做到吸收、拷贝、降级等。\n只要是有形之物，无论有机物还是无机物都可吸收。\n但无形之物……精神或技能之类的存在虽能融解，\n但似乎很难变换成“属于自己的东西”，\n只能成为纯粹的养分。\n\n因此可以被Meltryllis化为“属于自己的东西”的，\n主要是『经验值』与『容量』。\n\n神经障碍：\nMeltryllis的五感中，触觉十分低下。\n尤其是手——指的感觉几乎没有了，\n因此她变得更为积极追求与外界的联系。\n换言之，她的嗜虐兴趣是基于\n“光凭自己无法感受他人的存在”而生的。
1	164	身高／体重：156cm·1t\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：秩序·中庸　性别：女性\n「1……1吨只不过类似通讯时会造成的负荷而已，\n　并不是实际的体重啦！」
2	169	剧中剧构造的故事集『一千零一夜』。\n山鲁佐德正是位于这故事集最外围，\n担负起整体叙述者职责的人物。\n这里的『她』究竟是故事的登场人物，\n还是作为其原型的史实人物——我们无从得知。 
2	180	参加了本次比赛的她的第一目的，\n是「尽情享受！」。\n当然，如果能赢自然最好不过……\n在有胜机的场面毫不客气地争夺胜利乃是她的方针。\n但实际上海伦娜依然不是很积极。\n\n这次海伦娜内面的姐姐属性和母亲属性（或是奶奶属性）或许会比平时表现得更为明显。
2	164	性格内向、一心一意，且容易钻牛角尖。\n拥有一旦事情不顺利，就会将责任推给对方（周围人），\n自己则躲回属于自己的小世界的坏毛病。\n在CCC中，她的这种性质……\n一心一意，无法主动向对方表白……\n以跟踪狂的形式表现出来，但由于认识到自己的错误、\n缺点，克制住了自己跟踪狂的性质，向着“要好好努力，\n以便成功与对方和睦相处”这个目标前进。\n然而懒惰（只要有理由，就会偷懒不干活）的毛病\n依然未变，她本人也对自己这个缺点有自觉，\n并且在努力改正。\n\n认知障碍：\n她无法认知自己双手的形状。\n“大脑”主动回避自己丑陋的模样，\n将自己的手臂在脑海中自动变换成普通少女的手臂。\n在她的眼中，认为自己的爪子是「普通的存在」。\n过去的Lip无法理解“他人为何会如此害怕自己？”，\n但现在的她已经能直面自己的肉体，\n接受自己的怪物性质了。
3	164	『纵使死亡分离两人』\n阶级：C　种类：对人宝具　最大捕捉：10人\nBrynhild Romantia\nAlterego们的宝具是通过非法改造正规宝具而来的，\n作为材料的从者是『沃尔松格传』中登场的瓦尔基里——\n布伦希尔德。为了报复背叛了自己，\n伤害了名誉的丈夫齐格鲁德而挥动的爱憎之枪。\n虽说Passionlip的宝具也拥有这种性质……\n对对方的爱越深力量就越强大，但那都是过去的事了。\n曾经呐喊着『直至死亡拆散两人』的内心\n现在已经变革为『纵使死亡分离两人』的愿望。\n分别迟早会到来。哪怕最终是不欢而散，\n或是背叛，都无法否定爱情本身。\n「无论是怎样的分别，\n　我都相信在分别前的爱是真实、永恒的。」\n正如Lip所愿，这并不是为了憎恨所爱之人，\n而是为了保护所爱之人的力量。\n正可谓纯洁无瑕且成熟的圣女力量。
4	164	高等从者：A\n通过合成复数神话精髓制作而成的人工从者。\n拥有帕尔瓦蒂、杜尔嘎、布伦希尔德的要素。\n\n胸部之谷：A\n就是单纯的回收箱。\n临时收纳、保管不需要的数据文件的功能。\n也叫垃圾箱。Passionlip的情况下，\n不知为何那个图标被设置在胸部的中心。简单说来，\n就是可以无限囤积垃圾的虚数空间口袋。\n如果是Passionlip毁掉的垃圾数据，\n无论容量多大，都能无限收纳。\n看上去很方便，但由于无法把垃圾数据恢复原样，\n所以完全是没用的功能。由于Passionlip是个\n会将感情囤积于内部，并有自毁／自伤倾向的少女，\n所以才会获得这种特殊构造吧。\n\n在CCC中，一度坠入死之谷的存在再也无法爬回来，\n但在FGO中，只要是缔结了契约的御主，\n是可以将那些捞回来的。
5	164	受虐体质：A\nPassionlip的id_es技能。\n在集团战斗中，能将对方的敌意（仇恨）集中在自身，\n提升自己成为攻击对象的概率。\n\n废弃＆崩溃：EX\nid_es。由『怪力』进化而成的作弊技能。\n无论容量多么巨大，只要是“能用手包住的存在”，\n就能用爪子捏碎、压缩。\n被压缩的东西会成为边长一公分的立方体，\n但其质量只能轻量化到压缩前的十分之一左右。\n被压缩的东西会作为垃圾数据被处理。\n只有比Lip的手小的存在可以被压缩——\n事实并非如此，而是在她看来\n“可以收入手中的东西”都算作处理对象。\n虽然这是一种无视远近法则的平面性物理干涉，\n但越大的东西压缩起来还是会越耗时间。是只有在\n电脑空间中才存在的错觉画式压缩方法（编码）。\nLip是破坏特化的存在，如果对象不会移动……\n比如地形或是建筑物之类的话，\n她的破坏力甚至凌驾BB之上。\n不过在面对从者或御主时，会发生对手立刻意识到危险\n并逃脱Lip的视野→笨重的Lip根本追不上的情况。
1	165	身高／体重：164cm·51kg\n出处：铃鹿草子、田村三代记，等等\n地域：日本\n属性：中立·恶　性别：女性\n※当然，身高不包括狐狸耳朵。
2	165	将任性且武断，辣妹感十足的女高中生性格\n『认真』演绎出来的才女。\n原本的性格与JK截然相反，\n是个深思熟虑，明辨事理姿态凛然的公主。\n虽具备身为天魔之姬的冷酷，\n却会认真对待自身的职责与责任，自尊心很高。\n……与之相反，这种认真与聪颖却让她坠入「鬼女」的\n邪恶属性，性格变得有些自体中毒倾向，\n也稍微有些喜欢家里蹲。\n才色兼备，但略有些阴暗的倦怠系班长，\n差不多这种感觉吧。不过多亏了JK演技，\n这些本性几乎完全被隐藏起来了。
3	165	『天鬼雨』\n阶级：B+　种类：对军宝具\n有效范围：1～40　最大捕捉：250人\nTenkiame\n准确说应该是文殊智剑大通连。\n爱剑·大通连分裂成最多250把，\n毫不留情地向敌人落去的神通力。\n作为与生前丈夫拥有的大通连夫妻剑素早丸的连携技，\n据说本来能降下500把剑雨。\n现在则将包含着回忆的发簪代替素早丸，\n通过接触漂浮在半空的大通连来发动天鬼雨。\n射击精度相当粗糙，但在「才智的祝福」发动时，\n可以做「掉落在自己周围时唯独避开自己」等细微操作。
4	165	神通力：B（A）\n神之力的一部分。能随心所欲移动周围的物体。\n但由于现在作为从者显现，能力被降级，\n能力的对象仅限于自己拥有的道具。\n\n魔眼：B+\n能魅惑目光对上的男性，\n让对手对铃鹿御前产生强烈的恋爱之情。\n可用对魔力技能回避。\n\n神性：A\n对其身体究竟是否具备神性属性的判定。\n身为第四天魔王之女的铃鹿御前具有很高的神灵适性。
5	165	才智的祝福：C\n原本是被作为宝具对待的技能。\n通过装备传说由智慧之菩萨打造的小通连，\n得以大幅提升INT的宝具。\n原本十分粗糙的剑术会变得十分扎实，战术也更为宽泛。\n另外还能提升「天鬼雨」的性能，或是能够使用\n「三千大千世界」等，可谓皆大欢喜，\n但由于需要过度使用头脑，因此会反省表演女高中生这种\n毫无效率的生活方式，以至于短时间内陷入自我厌恶。\n所以铃鹿御前不会积极使用这个技能。\n\n三千大千世界：EX\n原本是被作为宝具对待的技能。\n通过将铃鹿御前的爱剑——显明连映照在朝阳下，\n得以在太刀中创造并纵览三千大千世界……\n也就是各种世界，甚至包括平行世界。\n……这究竟意味着什么，铃鹿御前对此保持沉默。\n一旦长时间使用，身为英灵的资格就会被剥夺。
1	166	身高／体重：156cm·46kg\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·善　性别：女性\n「其实Ruler会比较好，但最后还是放弃了。\n　如果连游戏管理员都要被规则所管束，\n　那这种构造根本就是机械嘛。\n　BB亲要为了爱，强咽着泪水，让所有人类痛苦！」
3	173	天赋的见识：A++\n能发现事物本质的能力。敏锐的观察力不会放过任何情报。\n虽然与千里眼的原理截然不同，但能做到与千里眼预知未来几乎等同的预测。\n\n巴流术：B++\n学会了极为适合实战的东洋武术。\n夏洛克·福尔摩斯除了使用这个技能与拳击组合而成的打击术以外，还很擅长防御反击与投掷技。\n只要条件符合，甚至能作为宝具真名解放级的绝技来使用……
2	166	言行邪恶且意气轩昂，台词或言行就算搞砸了，\n也会顺势猛冲的不顾一切型黑幕女孩。\n原本性格消极保守不愿出面，但为了所爱之人，\n不惜化为极端活跃的恋慕化身。\n本人兴致勃勃想要演好反面角色，\n但因为没有这种素养，所以总会搞砸。\n\n之所以十分强势，也是因为潜在的嗜虐嗜好。\n小恶魔系也是出自这里。\n再加上她是那种忍无可忍后爆发的类型，\n所以在发挥时会展现出非常可怕的抖S属性。\n在扮演反面角色的过程中会因为「简直太开心了！」\n而兴奋不已，可一旦回到后台，\n就会冷静下来抱头陷入消沉，前后相映成趣。\n\n她制作了自己的下位AI——Alterego作为使魔\n协助自己的工作，但和Ego们关系极为恶劣。\n这很正常，她们并不是『BB的人格拷贝』，\n而是『以人格为样本制作的』AI，\n所以和身为母亲的BB意见各不相同。\nMeltryllis或是Passionlip之所以没有被称为\n分身，而是被称为Alterego（其他人格）\n就是因为这个原因。
3	166	『C.C.C.』\n阶级：A　种类：对人宝具　有效范围：1～10\n最大捕捉：1\nCursed Cupid Cleanser\n过去BB运用的是灵子虚构陷阱\n（Cursed Cutting Crater）这个宝具，\n但基于「咦，用了那么多次，都腻了。\n这次的主题是可爱＆治愈！　\n啊，但就算成为各位的同伴，\n诅咒的部分还是不会消失的。\nBB亲的诅咒可是永恒的！」\n综上所述，她一脸得意地展示了新招数。\n\n提取Mooncell的力量，变化成无敌护士。\n顺势在自己领域的虚数空间中提取出恶性情报，\n用混乱的存在覆盖周围频道（共通知觉）。\n展开固有结界『BB频道外联版』，\n将对手扔进混乱的坩埚。……说了那么多，\n实际就是换装成护士BB，并用注射器发动的攻击。
4	166	十之王冠：EX→D\n权能级超级技能。\n十之王冠指的是十位邪恶的王，\n七座山丘指的是令人厌恶的恶之都市。\n单纯来看，就是能让受到的伤、发生的事等\n各种结果“变得不存在”的技能。\n实际只要有这个，BB就是无敌的。\n开玩笑啦，这些都是过去的事了。\n你看，无敌挂什么的在旁人看来显得很没品吧？\n这次美丽可爱的BB亲可不需要这种技能啦☆　\n啊，但稍微用一下还是OK的哦？　你看～就像这样！\n\n自我改造：EX\n改造自身的技能。\nMooncell的AI身负“不能提升自己机能”的\n绝对命令。然而，由于故障得以从这枷锁中逃脱的\nBB开始扩张自己的机能。为了提高计算能力，\n用黑色噪声捕食、分解NPC、AI、甚至从者，\n并作为自己的存储器来使用。\n由于这种不惜自我崩溃的后期扩建，\n导致BB成了拥有庞大容量的超级AI。\n其样子犹如边沉没边不断建造的填海造田都市，\n或是类似弗兰肯斯坦的怪物。
5	166	曾导致了案件·CCC的失控AI。\n本是保健室的管理AI，但由于BUG，\n自我保存的命令系统失控。基于某个理由，\n得出了『无论牺牲什么都要保存自己』的结论，\n成了不断吸收NPC们、从者和御主，\n并不断成长的怪物。\n公开表示「讨厌人类」，将某位御主困在月之背面\n并让其痛苦。本人觉得自己很正常，\n但从客观来看，她明显已经疯了。\n言行中时不时表现出她爱情过剩·爱恨混同的矛盾性，\n导致这种现象的原因请参考CCC正篇。\n\n另外，她属性值中的幸运值曾是最低阶级的E-，\n但BB本人基于能扭曲世界的努力（与献身），\n幸运成了EX。也就是说，她曾经实现过\n如果不假定她是『幸运EX』就无法达成的“奇迹”。
1	167	身高／体重：166cm·53kg？\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·恶　性别：女性\n「作为女性来说身材高挑的问题还请您能谅解。\n　能允许我恳求您，千万别把我和孩童外形的童话作家\n　放在一起吗？」
2	167	性格内向、软弱、主动。\n是个举止端庄高贵的女性，但并不死板。\n拥有对无论什么玩笑话都能微笑以待的包容力与洒脱，\n性格温和且和蔼。\n具备贞淑的价值观和言辞，\n但言语中时不时会露出一丝性感。温厚但积极。\n看似病弱，实际活泼。容易被人情打动，慈悲心肠。\n能认清事情的道理，读懂万人的心情，\n正确理解他们的立场与苦恼，深思熟虑。\n\n——然而。\n其本性却是一味自恋与快乐的凝聚体，\n解脱的魔性菩萨。\n柔和的虐待狂，也是强大的受虐狂。\n由衷表示自己深爱着人类，\n但谈论道德只是“为了自己”，\n谈论生命宝贵只是“为了自己”，\n守护世界也只是“为了自己”，\n纯粹是个自恋的怪物。
3	167	对祈荒来说，「人类」只有自己一个，\n除此以外的人类全都不过是拥有人类外形的野兽或蝼蚁。\n所以，她的爱虽然面向外界的一切，\n但最终目标都是“为了自己”。\n\n不仅将性的快乐，\n还将周围那些『为了自己』而消耗人生，\n最终自我毁灭的生命视为极致快感的错乱者。\n为此可以被侵犯，可以被杀害。\n可以侵犯，也可以杀戮。\n总之只要靠『杀生院祈荒』这个女人的身体\n终结这个人类的人生即可。\n祈荒会见证这一切，\n感受着恍惚，露出微笑。\n其模样如同见证人们人生的慈悲菩萨一般。\n……对于在被玩弄于她股掌之中的人来说，\n哪怕是通往破灭之路，其过程一定也犹如天上极乐吧。
4	167	『快乐天·胎藏曼荼罗』\n阶级：EX　种类：对人宝具　最大捕捉：七骑\nAmitabha Amidala Heaven\\'s Hole\n对人理，或是对冠宝具。\n体内饲养着几乎可谓无限魔神柱的BeastⅢ专用宝具。\n她的体内已是整个宇宙，\n已是极乐净土了。\n被吸入其中的存在会在现实中消失，\n从自我中解脱出去，理性被融化。\n无论肉体多么强健，无论防御装甲多么坚固，\n在祈荒的体内都毫无意义，\n就像初生的生命般被无力化，并得到解脱。\nBeastⅢ是存在于现实中的『孔』本身，\n但掉落孔中之人在消灭的瞬间，\n会感受到最为极致的快乐，并在法悦中被祈荒吸收。\n从现实这个苦界中被解放出去的末路，\n从某种角度来看或许也能称之为济度吧。
5	167	单独显现：E\n通过变化成Alterego被自我封印了。\n也就是所谓的自重。\n话虽如此，她依然具备单独显现拥有的\n「即死耐性」与「魅惑耐性」。\n\n千里眼（兽）：D\n作为千里眼的阶级很低，不能看穿遥远的存在。\n但能看透、揭开眼前人类的欲望与真理。\n……如果只有这些，那也算是身为贤人的技能。\n但通过揭开对方的兽性与真理，\n祈荒自身会变得极为亢奋，获得随喜。\n如同在猎物面前舔舌头的毒蛇一般。\n\n五停心观：A\n杀生院祈荒开发的医疗软件。\n是以精神治疗为目的的电脑术式，\n测定精神的浑浊与混乱，\n通过物理的方法摘出来令精神获得安定。\n原本是为了绘制患者的精神图，并用于理解而制造的。
1	169	身高／体重：168cm·58kg\n出处：一千零一夜（阿拉伯之夜）\n地域：波斯\n属性：秩序·中庸　　性别：女性\n除她以外，无人真正知道『她自己故事』的全部内容。 
0	24	以圣乔尔乔斯或是圣乔治之名为人们广为知晓的圣者。\n他手持圣剑阿斯卡隆，击败了龙的故事尤其有名。\n其坐骑——名为贝亚德的马能化解一次来自对手的攻击。
3	169	山鲁亚尔王重复着与处女结婚一晚便杀害对方的行为。\n身为大臣之女的山鲁佐德为了阻止王的恶行，\n主动要求与王结婚。\n山鲁佐德在与王共度一夜之后，叫来了妹妹敦亚佐德，\n并设计让她向自己撒娇要听故事。\n王非常中意山鲁佐德向敦亚佐德说的故事，\n还想继续听后续，然而天已经亮了。山鲁佐德表示\n「明天的故事会更精彩」。\n就这样，王为了倾听山鲁佐德的故事，\n不断让她活了下去，最后——\n……现在可以阅读到的近千个故事中，\n大部分都是后世译者们追加的内容。有说法表示，\n作为核心的最初故事集只有两百多个故事，\n也不存在结局。
4	169	『一千零一夜』\n阶级：EX　种类：对王宝具\nAlf Layla wa Layla\n基于其由来，拥有王属性特攻。\n严格说来就算不是王，但只要是类似的存在，\n在她心目中也有可能被视为「王」。\n\n这是名为「她叙述的故事」的固有结界。\n通过使用甚至能令世界都感到信服的压倒性存在感\n与现实感的方式叙述，来令「故事」具现化。\n通过召唤一千零一夜故事中出现的登场人物、\n道具、精灵等的形式。\n在原来（正当历史）的一千零一夜中不存在，\n但经过后世创作，并吸收进来的阿拉丁及阿里巴巴等\n篇章能对身为英灵的她的生存起到作用，因此可以使用。重要的不是正确与否。而是王觉得是否有趣。\n故事（宝具）的最后当然会以这种方式来收尾。\n\n「——故事就是这样。」\n
5	169	『一千零一夜』\n阶级：EX　种类：对王宝具\nAlf Layla wa Layla\n基于其由来，拥有王属性特攻。\n严格说来就算不是王，但只要是类似的存在，\n在她心目中也有可能被视为「王」。\n\n这是名为「她叙述的故事」的固有结界。\n通过使用甚至能令世界都感到信服的压倒性存在感\n与现实感的方式叙述，来令「故事」具现化。\n通过召唤一千零一夜故事中出现的登场人物、\n道具、精灵等的形式。\n在原来（正当历史）的一千零一夜中不存在，\n但经过后世创作，并吸收进来的阿拉丁及阿里巴巴等\n篇章能对身为英灵的她的生存起到作用，因此可以使用。重要的不是正确与否。而是王觉得是否有趣。\n故事（宝具）的最后当然会以这种方式来收尾。\n\n「——故事就是这样。」\n
1	170	身高／体重：138cm·35kg\n出处：史实\n地域：中国\n属性：秩序·恶　　性别：女性\n优先顺口的话，自称「武则天」。\n这是基于死后谥号「则天大圣皇后」而来的。\n她本人则好像喜欢登上皇位时的尊号「圣神皇帝」。 
2	170	中国史上唯一的女帝。\n起初是唐朝第二代皇帝太宗后宫中的妃子之一，\n但与太宗儿子高宗私通，在太宗死后成了高宗的妃子。\n而武氏虽然生下了高宗的孩子——\n那幼小的生命之火在嗷嗷待哺的婴儿时期就熄灭了。 
3	170	据说武氏指认王皇后为杀害自己孩子的犯人，\n并让她与宠妃萧氏失势，自己坐上了高宗皇后的宝座。\n据说当时，武氏斩下了两人的手足，并扔进酒缸中处刑。\n由于一连串的事，甚至有人猜测或许正是武氏杀了自己的孩子，并将罪名嫁祸给皇后——\n但真相不得而知。 
4	170	成为了皇后，掌握了实权的她\n陆续杀害（暗杀）了碍事的亲人与政敌。\n高宗死后，将国号易为「周」。\n终于自己登上了皇帝的宝座，自称「圣神皇帝」。\n据说她在统治国家的时候，奖励密告，施行恐怖政治。\n名为「酷吏」的官吏实施的残忍拷问\n令民众由衷感到恐惧—— 
5	170	『告密罗织经』\n阶级：B　种类：对人宝具\nKokumitsu Rashokukei\n据说告密罗织经是在她统治的时代著作而成的\n酷吏（拷问官）们的指导书。也就是如何罗织罪名，\n造就罪人的拷问与审问的学习手册。\n\n这宝具等同于「她能自由创造罪人」这一国家法则的\n体现。也就是说，当她展开这宝具的时候，\n她将成为任何人的「拷问的实施者」，\n而对手则不由分说地成为「被拷问之人」。\n\n原本应该能用多种多样的拷问方法处罚不守规矩的人，\n但最近，她将过去用于陷害政敌的酒缸与毒进行了\n拷问向的改造，并经常使用。\n
1	172	身高／体重：180cm·84kg\n出处：史实\n地域：西班牙\n属性：中立·恶　　性别：男性\n敲碎鸡蛋底部让鸡蛋竖起来的方式是邪道。 
2	172	大航海时代，\n作为基督教文化圈的白人首次到达美洲海域的人物。\n他产生并确信向西航线的想法是在1480年前后。\n然而在筹措费用，寻找资助人的问题上遇到了困难，\n实际出发是在1492年。\n1492年，哥伦布终于率领着旗舰圣玛丽亚号、\n尼尼雅号、平塔号这三艘横跨大西洋。\n在不安的船员即将发动叛乱前，\n抵达了美洲海域，发现了圣萨尔瓦多岛。
3	172	到达了目的地的哥伦布做的第一件事——\n就是从那里的原住民身上掠夺有价值的东西，\n并将他们作为奴隶带走。\n已经没有人能阻止发现了新天地的他了。\n他很快就开始了第二次航行，并陆续发现了新的岛屿。\n当然，哥伦布率领的西班牙人对原住民施行的杀戮、\n凌辱、掠夺也毫无止境——\n
4	172	征服者：EX\nConquistador在西班牙语中是「征服者」的意思。\n大航海时代，通过航海，征服未开化土地之人的技能。\n也表现了对未开化土地的入侵、支配、奴隶化等手段。\n严格来说，通过航海征服了「美洲大陆」的人\n才能被称为征服者，但作为其源流——\n作为让「来自西班牙的征服者」这概念最初出现的人，\n哥伦布的这个技能是EX级的。\n
5	172	『新天地探索航行』\n阶级：A　种类：对军宝具\nSanta Maria Drop Anchor\n最为有名的第一次航海获得成功的存在。\n他乘坐的旗舰圣玛丽亚号出现、靠岸\n（哪怕在陆地中间），并且——\n服从他的指示，做应做的事。\n那就是「圣玛丽亚号啊，抛锚」，\n也是身为船长发出的开始掠夺的命令。
1	173	身高／体重：183cm·65kg\n出处：夏洛克·福尔摩斯系列\n地域：英国、全世界\n属性：中立·善　　性别：男性\n假如他真的是从故事中产生的存在，那可能不仅限于道尔的小说，还包括了其他模仿作品……迦勒底职员如是说。
2	173	既深思熟虑，又有行动力，大胆而缜密，\n同时又是个冷静沉着的男人。\n无论什么谜题、犯罪、还是阴谋，都无法逃脱福尔摩斯的眼睛。不管是什么可怕的杀人犯、古老的诅咒、暗夜中的怪物、还是超国家规模的组织，他都能揭开真相——有必要则打倒。用名为真实的锋利之剑。\n\n他的生活方式已然超越了人的领域，\n甚至可以说是“贤明之人”、“揭露者”的具现化。
3	180	夏日休假！：A+\n海伦娜在一心决定今年夏天自己也要玩个痛快后，\n进而获得的技能。\n由原本（Caster）海伦娜拥有的\n伟大灵魂技能变化而来。\n是作为 Archer 活动的海伦娜的核心。
4	173	『这是常识，我亲爱的朋友啊』\n阶级：B　种类：对人宝具／对界宝具\nElementary My Dear\n作为从者现界的夏洛克·福尔摩斯得到的宝具。将自身起源的『究明』升华成宝具的存在。\n哪怕面对的谜题是真正无法究明的存在，也必定会「产生」抵达真实的线索或途径。\n比如说，哪怕有个失去了钥匙的宝箱，也能让钥匙变得「没有失去」，钥匙会变得必然能在世界的某地被找到。\n（只不过，再怎么说也不可能突然出现在手中。所以福尔摩斯或是其协助者必须自行发现位于世界某处的那东西才行。）
5	173	原本是始终发动型宝具，\n但在『Fate/GO』中会解放真名。\n真名解放时，会出现来路不明的「球体」，向周围一带释放出炫目的光芒。弱化敌方阵营，强化己方阵营，哪怕是无法打倒的对手，福尔摩斯也能寻找出打倒的方法。\n\n另外，其真名虽然是与福尔摩斯有关的名台词之一，但实际上这句台词第一次出现的地方不是在道尔的小说中，而是出自威廉·吉列特负责主演、剧本、演出的舞台剧。据说道尔曾称赞吉列特扮演的福尔摩斯「超越了自己的小说」。\n顺便说一句，道尔的短篇『驼者』中，福尔摩斯对华生说\n「这是常识（ \\""Elementary.\\"" ）」。\n据说吉列特就是从这里获得了灵感。
1	174	身高／体重：不确定\n出处：传承\n地域：美国、加拿大\n属性：中立·中庸　　性别：女性\n身高一般目测超过3m，但正确的数值会随着每次测量发生改变，所以无法确定。
2	174	正如传说所述，带着自己搭档的巨大青牛，但其形状怎么看都不像是牛，而是个球状怪物。\n或许是开拓时代的美国传说中的Fearsome critters（可怕生物），或是现在俗称的UMA吧。
3	174	班扬爱着人们，坚信文明的发展会给人们带来幸福，开拓着未开垦的土地。为了让众人过上富裕的生活，会毫不犹豫地破坏雄伟的大自然。\n然而年幼的班扬尚不理解这会给将来的人类带来什么样的后果。
4	174	『令人惊叹的伟业』\n阶级：A　种类：对军宝具\nMarvelous Exploits\n将美利坚合众国本身作为概念宝具，将建国历史能量化攻击敌人，将目标位置的一切全部扫荡干净……本人是这么说的，但实际看起来根本就是用巨大的脚踩踏罢了。\n\n在全宝具中拥有令人惊叹的施放速度。
5	174	其实，保罗·班扬的传说在开拓时代当时几乎无人提及。\n\n现在一般认知的离奇巨人传说多半都是在20世纪之后被捏造的存在。班扬作为民间传说的英雄而言，只是有名无实的肤浅冒牌货，或许这就是她作为从者无法发挥传说一般力量的原因吧。
1	175	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·夏　　性别：女性\n令人惊讶的是，即便成了Caster职阶，属性也和Saber职阶时没什么太大变化（除了宝具）。
2	175	自称万能的天才。\nSaber职阶时虽为男装丽人（本人这么认为），但这次\n并未掩盖自己身为美女的事实，公然享受着夏日的海洋。\n十分喜爱自己，但也十分喜爱周围的人。\n拥有这种自恋与博爱合二为一宏大价值观的\n罗马帝国第5代皇帝。\n\n尼禄皇帝最大程度活用了从魔术师西门那里学来的知识，完成了剧场礼装而非魔术礼装。\n浮游于身体两侧的管风琴将她的美声转化为攻击力，\n用激光、烟火或火焰弹盛大地乱射。\n\n话说为何歌声会对人造成伤害？\n尼禄本人尚未发现这残酷的现实。
3	175	『讴歌荣耀的黄金剧场』\n阶级：A　种类：对军宝具　最大捕捉：500人\nLauda Lentum Domus Illustrius\n本以为只是在黄金剧场里追加管乐器，\n但该管风琴已经完全成了炮门。\n这是出自何种想象力的产物，设计师的精神还正常吗，\n但管风琴确实很像炮门吧。\n歌剧要塞就是经过了这种复杂经过而诞生的。\n\n获得了『讴歌之人』灵基的尼禄最大程度发挥了其才能。\n黄金剧场是不仅能让歌声响彻剧场内，\n甚至还能将歌声扩散到剧场外部的野外舞台。
4	175	暴走特权：EX\n皇帝特权变化而来的技能。\n出自以前在奥林匹亚中驾驶战车肆意驰骋的逸事。\n也可以说是宝刀未老。无论发生任何情况，\n都确定能赢得第一名的技能。\n\n予夏以梦：A\n沙滩之花的尼禄版。主动展示自身之美，\n这份美同样是为了所有在海滨露出笑容之人。但——\n（然而这个技能已然失去。）\n\n七冠：C\n这芬芳令剑增厚，令铠变尖。\n存在方式十分模糊，因职阶造成的不利变得毫无意义。\n\n不死的马吉斯：A\n曾担任过一段时间魔术之师的西门·马吉斯教导的魔术。西门主动接受了斩首之刑，并且复生了。
5	175	上次，没被邀请到南国岛屿的尼禄内心愤愤不平。\n这次她准备好新的泳装，兴致勃勃地打算参加夏季活动。而伊什塔尔杯正在此时召开，她便得意洋洋地参加了。\n然而比赛需要队友，基于这个理由，她向正巧路过的\n阿尔托莉雅·Alter搭话，组建了这支奇迹的队伍。\n\n爱车乃是红色维纳斯。\n对于为何要取维纳斯这名字的原因，\n详情可参考『Fate/EXTELLA』。
1	176	身高／体重：172cm·48kg\n出处：创作\n地域：欧洲全域\n属性：中立·夏　　性别：女性\n五十多岁中年：「咱家的弗兰是世界上最可爱的。」
2	176	被夏日的酷暑热得无比倦怠的 Saber 弗兰。\n但关键时候常常会失控，\n哈哈哈无论哪种都令人很头疼呢哈哈哈。\n\n印象是「在夏日酷暑中显得十分倦怠的大型犬」。\n\n而某位五十多岁中年会为她的失控推波助澜。\n可靠的人只有巴贝奇老师！\n蒸气·雷·奸计，凑齐了三大要素的这支队伍\n没有任何破绽！　好像是这样！\n\n此外，由于灵基被调整，不知为何成了Saber。
3	176	骑乘：EX\n弗兰亲居然能搭乘巴贝奇火车头模式哦。\n这形象，宛若今日小狗。\n今日弗兰。\n\n对魔力：E\n由于非常倦怠，因此几乎无法抵抗。\n\n狂化：E\n连说话，都嫌麻烦。
4	176	夏日电疗：B+\n夏日的电疗与众不同。\n具体说来，就是在巴贝奇的支援下，\n蒸汽机关也提供了相应的能量。\n负面效果：好热，好倦。\n\n对空虚酷暑之哀叹：A\n只要稍微觉得有些热，\n弗兰亲就会变得慵懒怕麻烦瘫倒在地。\n这样子犹如被夏日的酷暑整垮的大型犬。\n哎呀好可爱。\n\n适度负载：C\n过量负载太累人了，\n所以就适度负载好啦。
5	176	『穿刺之雷刃』\n阶级：D～B　种类：对人宝具　有效范围：1～3\n最大捕捉：1人\n\nSkewered Plasma Blade\n通过将婚礼之刃高速旋转来急速填充能量。\n然后跳跃刺突。其庞大的雷电能量，\n甚至可能不小心将其他人卷入其中。
1	177	身高／体重：162cm·51kg\n出处：史实\n地域：埃及\n属性：秩序·善　　性别：女性\n到底……是什么克丽丝啊……？
0	205	——他既是俄罗斯的皇帝（沙皇），又是恐怖（Terrible）的怪物。\n他在异闻带中变得像魔兽一般，近乎成为神明。\n他就是伊凡雷帝。
2	177	羞愧的尼托克丽丝。\n因自己对法老奥斯曼狄斯做出不敬之举而深感羞愧，\n带着「我已无脸见人了！」的心情，主动披上外套，\n成了酷似梅杰德的样子。\n(灵基第一阶段。）\n\n但是，心中仍隐藏着身为法老的小小尊严。\n她只是羞于面对其他各位法老而已。\n\n服装变更时不知为何，连灵基也发生了变化。\n转化为Assassin职阶，宝具也进行了变更……\n但内在还是平时的尼托克丽丝。\n冒失武断急躁粗心的性格一如既往。\n一切正常，令人放心。
3	177	白色御衣：A\n尼托克丽丝身披的白色御衣。\n据说此御衣乃是受梅杰德神宠爱与佑护的证明。\n由于这事实乃本人的主张，实际究竟如何不得而知。\n\n海滩恐慌：EX\n那是啥……？\n什么……？\n不知是不是缘于梅杰德神的佑护，\n身披白色御衣的尼托克丽丝哪怕站着什么都不做，\n也会异常受众人瞩目。
4	177	热砂的王道：A\n由皇帝特权变化而来的技能。\n通过这个技能，\n尼托克丽丝可以得到原本不具备的白刃战斗能力。\n或许是因为看到了克娄巴特拉的法老斗法，\n产生了某种灵感吧。
5	177	『洗刷污秽吧，青色美丽的尼罗河』\n阶级：B　种类：对军宝具\nSneferu Iteru Nile\n对玩弄亦王亦神的法老宝座之不敬，施以惩罚。\n对夺取我心爱兄弟生命之大逆不道，赐予死亡。\n蔑视诸神的当权者将尼托克丽丝作为自己的傀儡，\n推上了法老宝座，然而成了法老的尼托克丽丝\n决不会原谅他们。\n她将他们邀请到自己秘密建造的巨大地下室中，\n召开宴会，并从尼罗河引入大量河水，灌入地下室，\n令他们一个不剩全部淹死——\n尼托克丽丝的复仇才终于得以完成。\n\n希腊历史学家希罗多德所著的『历史』中记载的\n这段复仇故事，成为了获得Assassin职阶的\n尼托克丽丝的宝具。也就是用石壁包围对象周围，\n注入尼罗河之水，致其死亡的复仇的重现。\n行使的乃是与固有结界似是而非的某种大魔术。
1	178	身高／体重：152cm·44kg\n出处：史实\n地域：日本\n属性：混沌·夏　　　性别：女性\n之所以从普通版信转化成夏日属性这种稀少属性，\n多半是兴致使然。之所以从秩序变成了混沌，\n大概是因为受第六天魔王状态的影响吧。\n\n「哇哈哈哈！　我正是水边的第六天魔王，织田信长！\n　我脱了以后可是很厉害的哦！」
2	178	身披内心燃烧般涌现的激情，\n2018年夏日的『信长 THE 摇滚明星』华丽出道！\n战斗风格犹如尾张大笨蛋时期的战国顽皮风＆摇滚。\n\n哎？　火绳枪？　我没把那家伙带来。\n在海滨战斗湿气会很重，估计那家伙应付不了哦！
3	178	『第六天魔王波旬～盛夏～』\n阶级：E～EX　种类：对神宝具\nNobunaga THE Rock \\'n\\' Roll\n能消灭神佛的魔王信长真正宝具……的小规模改造版。\n变生成能对拥有神性或神秘之人发挥极大效果的\n固有结界的限定解放状态。\n解放状态的信的背后会出现谜之巨大骸骨（暂定名），\n发挥魔王般的实力。
4	178	傻瓜杀法：A\n凭借难以想象的傻瓜思维进行战斗。\n在寺庙门口敲完门就开溜，\n在茶釜里塞进鞭炮，\n或是惹信胜哭泣，简直肆意妄为。\n原本就特别擅长想这种馊点子，\n所以从不好的意义来说近身战斗力得以提升。\n\n敦盛节拍：B\n让敦盛节拍响彻整个战场的必杀超空间舞蹈敦盛之战。\n本想让她说清楚这究竟是跳舞还是唱歌，\n但信表示这就是摇滚。\n\n顺便说一句，谜之魔王武装的名字是\n『压Kill长谷部』。
5	178	水边的第六天魔王：A-\n根据本人的夏日影响，扭曲自己生活方式的怪物。\n能力、外貌都发生了变化。\n原本技能「魔王」的另一种技能形态。\n魔王在水边换上了泳装后就会这样。\n副作用是胸部好像稍微变大了一点，难道是错觉吗？
1	179	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·恶　　　性别：女性\n属性之所以变成了恶，\n并不是因为不喜欢成为了女仆的自己，\n而是因为觉得，\n只有通过动武才能提供理想服务的自己有些笨拙。
2	179	不列颠之王，阿尔托莉雅·潘德拉贡的另一侧面\nAlter基于其他信念觉醒之后的产物。\n迎接夏日，不再作为一名暴君，\n而是作为一介侍者重新审视自己的阿尔托莉雅。\n尽管知道这些话是什么意思，\n但完全不明白为什么要这么做。\n据说也是为了让与御主共度的夏日变得更为美好，\n才会选择了女仆之路。\n本人似乎想隐瞒自己是阿尔托莉雅的事实，\n所以在装备等各种方面做了伪装。\n\n将誓约胜利之剑（Excalibur）化为拖把。\n将塞克安斯（Sequence）化为手枪。\n战斗风格也换做军人的样式。\n用拖把击倒敌人，用手枪阻止敌人行动，\n并用手榴弹进行爆破。\n这就是所谓的女仆。
3	179	『不挠燃烧胜利之剑』\n阶级：A　种类：对人宝具　最大捕捉：一人\nSequence Morgan\n亚瑟王拥有的『只会带去死斗场面』的短剑，\n乃塞克安斯与誓约胜利之剑的合体宝具。\n\n尽管塞克安斯变成了小型自动手枪的样子，\n但通过与誓约胜利之剑组合，可化为大型狙击枪，\n在污秽的外敌入侵『主人的领地』前，击退敌人。\n虽说怎么看都是反器材步枪，\n但如若不希望自己漂亮的脸蛋遭重击，\n就千万不要提及这件事。
4	179	单独行动：EX\n御主不在时也能独自行动的能力。\n尽管有需要侍奉的主人，但一事归一事。\n女佣的服务精神就该是自由的……是自发的行为，\n不应该受到他人强制要求。基于这种信念，\n她获得了极具威胁的单独行动技能。\n为了获得该技能，一般能力会些许降低。\n\n夏日清扫工！：A\n魔力放出技能变化成用于家政方面的用途。\n能用水流清洗一切的洗涤达人。\n一边提升自己的服务能力（攻击力），\n一边严格监督整支队伍，提升队伍的士气。\n\n指导：A\n海边的阿尔托莉雅·Alter是冷血的女家庭教师。\n在她那严格的教育与指导下，纠正错误的战斗方式。\n由于形式极为斯巴达，\n所以受到她教育的人会受到莫大的伤害。
5	179	（本人不会说，也没发现，）中了夏日魔力的魔，\n换上了泳装的Alter小姐。\n「我断然不是那种俗称泳装英灵的存在。\n　因为且不论泳装，我更是个女仆啊。」\n原来如此，确实是无法反驳的真理。\n但是，原本就很严格的性格在成为女仆后变得更为严格。化身鬼之女仆长，坚决不放过懒散颓废的御主。\n\n和尼禄一起参加了伊什塔尔杯。\n『暴君流星』这个队名是她出的主意。\n这名字非常适合著名的任性皇帝\n与暴君女仆联手组成的奇迹之队。\n\n参赛动机是为了表现自己是最强的。\n奖励（物理）理当收下，但撇开这个不说，\n她也希望这件事能帮上御主的忙。
1	180	身高／体重：145cm·38kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　性别：女性\n「有时候我会搞不清楚自己\n　究竟是 Archer 还是 Rider」\n羞涩的海伦娜如是说。
4	180	NYARF！：B\n自如地操控名为NYARF——\n也就是爱迪生制造的超级水枪。\n或许正是因为本技能的存在，\n海伦娜的灵基才被认定为Archer。\n她本身则表示，\n「我本打算将职阶改成 Rider 的啊……」\n\n上校的暑假：B\n哪怕在暑假，奥尔科特人偶们也会为海伦娜鞠躬尽瘁。\n甚至可以说，为了让比平时更为活跃的她\n能充分享受其中，他们更为全力以赴。\n对他们来说，暑假的喜悦完全取决于\n海伦娜是否能获得满足这一点。
5	180	『金星神·白银圆环』\n阶级：B+　种类：对军宝具\nSanat Kumara Wheel\n随着职阶的变更，海伦娜拿出来的新宝具。\n白银圆环。与身为Caster解放宝具真名时出现的飞行物使用的是同一种材质，\n据说其构成与地球上任何物质都不相同。\n真名解放时，会出现无数飞行物体，\n犹如倾盆大雨般向四周发射光线。能引起巨大的爆炸，\n但绝不会射中海伦娜本身。
1	181	身高／体重：175cm·？？kg\n出处：史实、『御伽草子』『丑御前之地』等\n地域：日本\n属性：秩序·善　　性别：女性\n这次好像居然没有精神污染技能（本人主张）。
2	181	为了取缔有违风纪的行为，\n赖光化身为影之风纪委员长。\n口头禅是「禁止禁止，明令禁止！」\n对伊什塔尔举办的赛车结果毫无兴趣，只顾监视那些\n企图利用夏日活动的机会好好放纵自己的参赛者。\n\n一旦达成第三灵基再临，就会兴致高昂地脱下水手服，\n结果让自己成了最有违风纪的人物……\n但本人丝毫没意识到这件事。\n不，也有可能是……？
3	181	狂化：C\n用理性做代价，强化自己身体能力的技能。\n哪怕成了 Lancer 职阶，她的精神却还存在些许问题，\n只是和身为Berserker时有着巨大的差异。\n那就是，道德感。\nLancer 源赖光凭借自身的道德意识，\n监视着暑假期间扰乱风纪的行为。\n然而她却丝毫不在乎自身的打扮，\n因此精神问题依然未能消除……
4	181	影之风纪委员长：A\n由无穷的武练变化而来的技能。\n哪怕失去了水手服，无论发生任何情况，\n都不会放过扰乱风纪的行为。\n\n锻铁悠悠球：C\n一提到水手服，\n就会想起这个的金时的理念也传染给了赖光。\n精通百种武艺的赖光能熟练地运用锻铁悠悠球，\n击溃那些企图扰乱迦勒底风纪的各种夏日诱惑。\n\n夏日灾难：EX\n不脱也很厉害——但脱了更厉害。\n展现自己能在海边吸引多少人的注意力，\n与夏日危机似是而非的技能。与沙滩之花不同，\n完全脱离爱恋范畴的视线也会被她吸引。
5	181	『释提桓因·金刚杵』\n阶级：A+　种类：对人宝具／对军宝具\nShakudai Kan\\'in Kongousho\n牛头天王兼东方神帝释天（因陀罗）的金刚杵，\n也就是用圣仙骨打造的诸神最终兵器伐折罗从天而降，\n歼灭所有敌人——\n基于这个宝具，这次赖光的职阶才被认定为Lancer。\n形态与密教中被视为展现万有本体一真如的独钴杵一致。\n\n阿周那「那宝具是父亲的……」\n罗摩「那宝具是……」
1	182	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：秩序·善　　性别：女性\n这女神还是一如既往地轻飘飘双脚不沾地。\n据说卫衣下面穿着白色的高开叉泳装。
2	182	自由奔放，优雅大胆，然而又很残酷的女神伊什塔尔\n在换上了现代服饰之后，身为女神的高贵与恐怖感\n稍稍得以缓和。开朗与宽容程度比平时有所提升，\n变得十分友好。\n\n身为女神，理应会一两种格斗技……当然是不可能的。\n伊什塔尔的行动之所以会如此灵巧，\n都是多亏了身为自己躯壳的这具肉体\n熟练地掌握了魔术与格斗技。\n将肉体学会的功夫进行伊什塔尔流改编，\n就成了当前的战斗风格。\n「乌鲁克艺术！　原来还有这种东西啊。」\n在神塔上晒着日光浴的某位王这么评论。
3	182	『神峰天回明星之虹』\n阶级：EX　种类：对人宝具　有效范围：0～？？\nAn Gal Ta Seven Colors\n由于马安娜化为了现代风的交通工具，\n真名也被变更成现代风。\n全力享受夏日的样子。\n骑着马安娜小摩托，游览地球上各种度假胜地，\n心情愉悦，并将这种快乐的心情转换成魔力，\n播撒向大地的虹之宝具。服装变更也无比美丽，\n洒向地面的魔力化为闪烁的星星，给敌人造成伤害。\n本人心情快乐而美好，却给地面造成了大麻烦。
4	182	骑乘：EX\n能乘坐天舟马安娜的伊什塔尔的骑乘技能\n与人类完全不是同一次元的存在，根本无法相提并论。\n当然，虽说『无法相提并论』，\n却也不代表会比人类『更精湛或更快』。\n总之是『各种意义上的厉害』。\n是已经不用怎么在意时间或空间问题的乌鲁克驾驶技术。\n\n闪耀水之衣：A\n将大王冠换成泳装的技能。\n大王冠仅对伊什塔尔本人有效，而这个则能对全队奏效。但反之，效果会有所降低。\n\n夏日破坏者！：A\n将夏天（从各种意义上）进行破坏的女神。\n「女神变生」的降格版。
5	182	Archer的伊什塔尔使用的弓，\n是从天舟马安娜船首部分卸下的部分，\n这次是将天舟的「桨」的部分变化为小摩托，\n用作交通工具。这辆小摩托的外观酷似现代小摩托，\n但当然，性能是女神级的。\n能够在天空飞翔，也能进行传送。\n伊什塔尔脚下的谜之生物一直在淅淅索索地动，\n但伊什塔尔对该生物贯彻不做评论解释的方针。\n\n认定拯救乌鲁克的御主是前途无量的勇者，\n但还是对「为什么这么平庸的人会成为勇者呢？」\n感到奇怪。觉得御主是个奇妙的人类。\n这次看中了御主的人望（备受从者们信任），\n雇佣他／她当伊什塔尔杯的工作人员……？
1	183	身高／体重：156cm·46kg\n出处：印度神话\n地域：印度\n属性：秩序·善　　　性别：女性\n严格说来，算是光之后辈。
2	183	帕尔瓦蒂在印度神话中，\n是破坏与创造之神湿婆之妻。\n帕尔瓦蒂没有身为神的权威，\n通常只会被视为湿婆妻子的女神来对待。\n但是，湿婆的妻子中也有被誉为「战神」的存在。\n比如杜尔嘎与迦梨。\n这些女神与帕尔瓦蒂灵基不同，但神核被视为是相同的存在。\n\n也可作为Rider职阶现界，但在这种情况下，就要从湿婆处借用圣牛南迪了。而由于这头牛司掌丰收等要素，因此作为神兽的攻击力会难以置信地低。
3	183	『知恋不为，无爱也』\n阶级：EX　种类：对军宝具\n有效范围：5～10　最大捕捉：30人\nTrishula Shakti\n帕尔瓦蒂从湿婆处借来的三叉戟，特里修拉的限定解放。\n基于湿婆借给她的武器，帕尔瓦蒂的职阶才得以确定。因为特里修拉，帕尔瓦蒂得到了Lancer的职阶资格。\n当然，她是无法像湿婆那样发挥武器真正价值的，但这样反倒协助守住了从者的规则。
2	208	在罗马尼亚展开的圣杯战争——\n在那场圣杯大战中，他是为魔力供给而生的人造人之一。\n原本，等待他的命运将是被榨干魔力后死去。他为了生存而挣扎，最终，他得到了齐格飞的力量，成为了圣杯大战的中心。
4	183	伽摩之灰：EX\n帕尔瓦蒂十分温和，在战斗方面是极为弱小的女神。\n但是，这并不代表她内心也很弱小。\n思念所爱之人的心比任何神都要强烈、深邃。\n为了她所爱之人，不惜破坏自己的躯体，燃烧自己的神性，也要化为战斗的力量。\n尽管只能现出瞬间的火焰，但这力量甚至能与湿婆妻子之一·破坏女神迦梨匹敌。\n\n值得一提的是这和湿婆的感情毫无关系。\n帕尔瓦蒂拥有哪怕被所爱之人无视，也会为了这个人孕育爱情的特性。\n这份爱如此执着，稍微……不，是神话级的沉重。\n\n\n女神的恩惠：A+\n女神（善）的馈赠。\n出自侍从无法忍受饥饿的时候，割伤自己的脖子，赐予其血液的故事。\n\n女神的神核：B\n唯有天生就是完成的女神才会拥有的技能。拥有维持精神与肉体绝对性的效果。能几乎缓和所有精神系干涉，肉体不会成长，无论摄取多少卡路里，体型都不会变化。\n由于是拟似从者，所以等级停留于B阶。但这些无关紧要。\n体型！　不会！　变化！
5	183	女神接受了成为自己凭依之躯的少女性质中光的部分。\n\n性格温和且有包容力。不会自我主张，\n贞淑、在御主身边默默支持的才女。\n……理想女主角力的素质极高，但由于不喜欢夸张，总是选择坚实朴素的道路，所以多少有些迟钝。\n\n另外虽然她性格温和，但并不代表她十分软弱，内心十分坚强。\n无论面对什么样的痛苦，内心都不会屈服，从这个角度来说，她简直就是倔强与毅力的凝聚体。\n因此，如果真的惹她生气，可是会有些可怕的哦。这帕尔瓦蒂在怨恨彻底消散之前，也是决不会忘记的。
1	186	身高／体重：177cm·79kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：男性\n「不需要酒。会令挥砍缓慢。\n  不需要肉。会令刺突迟钝。」
2	186	宝藏院胤舜，俗名满田源之助。作为宝藏院的继承者，\n受宝藏院流枪术祖师胤荣教导了枪术与为僧之道。\n当时，胤荣已让宝藏院的枪术名闻天下。\n对此前只能进行刺突的长枪进行改良，\n创造了除了刺突以外还能斩、挥、打——\n划时代的十文字枪的，正是这位胤荣。
3	186	然而，胤荣却抛弃了枪。\n「一心向佛之人学习枪术并非本意。」\n「倘若一心向佛，就该舍弃枪。」\n同样这么吩咐了继承者的胤舜后，\n他在八十七岁高龄圆寂了。\n\n然而，胤舜并没有放弃枪术。\n表示身为宝藏院之人，就该兼顾佛之道与枪之道——\n在胤荣死后，他复兴了宝藏院流枪术。
4	186	武之求道：B\n无视地位、名誉、财富、女色，\n一心磨练武艺之人才会被付与的技能之一。\n只要宝藏院胤舜手持十文字枪，战斗能力就会提升，\n也会获得一定程度对精神攻击的耐性。
5	186	『胧里月十一式』\n阶级：C　种类：对人宝具\n有效范围：1～5　最大捕捉：1人\nOborourazuki Juichishiki\n由宝藏院胤舜钻研至极致的十文字枪，\n武艺升华后而成的宝具。\n指的是与先代胤荣创出的表十五式招数相对的，\n胤舜所创出的里十一式招数。\n甚至被誉为「此枪可臻神佛之境」的\n胤舜所编出的招数之型，能应对各种敌人、各种招数。\n另外，该宝具在面对初次见到的对手，\n或是无论多么奇妙的武器时，\n都能打消初次见面所造成的不利。
1	187	身高／体重：181cm·71kg\n出处：史实\n地域：日本\n属性：秩序·中庸　　　性别：男性\n根据记录，三代将军·家光对宗矩的爱称是「柳但」。\n是从柳生与但马中各取一个字取出来的爱称。
2	187	以柳生石舟斋之子，柳生十兵卫之父而著称的剑术天才。\n在大阪夏之阵（1615年）保护了将军秀忠，\n据说他瞬间斩杀了七名武士。\n死后，被将军家光赞为「剑术无双」。\n\n剑术家兼政治家。为各大名与其子弟教导新阴流，\n还将自己的弟子送去给有权有势的大名当剑术师傅。\n在时代小说与时代剧中，被描写为稀世阴谋家。\n想必是因为大家都认为在江户时代初期，\n柳生家之所以提拔到一万二千五百石的大名地位，\n光靠清廉洁白是做不到的吧。
3	187	擅长预测，记录称其在第一时间就意识到\n岛原之乱将会扩大。\n宽永十四年（1637年），刚接到天主教徒发动叛乱的\n消息后没多久，宗矩便拼命阻止被任命为讨伐使的\n板仓内膳正重昌。当将军家光问及为何要这么做时，\n宗矩回答「宗教教徒之战都极为重要」\n「重昌阁下一定会战死沙场」。\n\n事态发展完全如宗矩的预料。\n凭借一万五千石大名的重昌，是不足以率领西国大名的，\n结果无奈陷入苦战。认识到状况严重性的将军家光\n派出了重臣·松平信纲担任总大将，\n而得知了这个消息的重昌感到心焦，\n急着在信纲赶到前向敌阵发起了突击，最终惨死沙场。
4	187	新阴流：A++\n修得了柳生新阴流的奥义。\n从幼年到二十四岁的这段时期，\n父亲宗严（石舟斋）直接教育、培养宗矩的剑术。\n拥有A阶级以上本技能的宗矩，\n不仅精通剑术，更对精神攻击有耐性。\n对必须参禅的新阴流高手而言，\n不会被迷惑，不会犹豫。\n\n无刀取：A\n由剑圣·上泉信纲创造，\n并由柳生石舟斋解明的奥义。\n据说哪怕手中无刀，\n新阴流的高手也能胜过拥有武装的对手。
5	187	『剑术无双·剑禅一如』\n阶级：A　种类：对人奥义\n有效范围：0～10　最大捕捉：1人\nKenjutsumusou Kenzenichinyo\n在拥有不动之心的同时，拥有自由——\n泽庵和尚曾道出的剑之奥义，终于，\n在柳生宗矩的内心得以完成。\n剑会在生死狭缝间求得大活，\n禅会在沉思静想中获得大悟。\n由无念无想之域释放的剑禅一如之一刀，\n仅一击，实现必杀。
1	188	身高／体重：165cm·45kg？\n出处：史实、『甲阳军鉴末书结要本』『北越军谈』『伽婢子』\n『绘本甲越军记』等\n地域：日本\n属性：中立·中庸　　　性别：女性\n拥有『妖术斩法·夕颜』这第二宝具，\n但在FGO中基本不会使用。\n似乎是因为本人不太愿意使用过分的杀人术。
2	188	传说中，加藤段藏会操控傀儡、机关人偶，\n但这都是「段藏本人就是机关人偶」的事实中\n派生而出的传说——本作是这么设定的。\n\n活跃于战国时代末期的使用风魔流派的忍者。\n然而其真实身份，是妖术师·果心居士制作的机关人偶。\n在初代·风魔小太郎的协助下制造而成的人造女忍者，\n并非拥有生命的人类。但是，由于其完成了众多任务，\n常被后世的文献提及，\n所以其存在作为英灵被刻印在了人类史中。
3	188	人造四肢（机关）：A++\n肉体是人造机构，尤其是由木制机关构成的。\n会为与战斗相关的行动判定、\n技能成功判定追加额外效果。\n在A阶级的情况下，\n说明不仅四肢，连全身都是人造的「机关人偶」。\n\n忍术：A\n忍者们使用的谍报技术、战斗术、盗窃术、\n拷问术等的总称。各流派的系统各不相同。\n由于加藤段藏搭载了风魔小太郎（初代）的技术，\n因此流派是隶属风魔忍群的。
4	188	『机关幻法·吞牛』\n阶级：C　种类：对兽宝具\n有效范围：0～20　最大捕捉：50只\nKarakurigenpou Dongyu\n创造真空刀刃，将对象吸引过来后进行压缩粉碎。\n将『北越军谈』中提到的\n把牛吞下的幻术进行应用后的产物。\n通过果心居士亲手组装的礼装，获得了魔性特攻的性质。\n正如轶事中所描述的，也可以用作「物体从眼前消失」\n「消失的物体再次出现在眼前」的幻术，\n但在FGO中基本不会这么使用。
5	188	感情稀薄，比较机械化的机关忍者。\n机关少女。\n生前没有自由意志，是只会服从输入命令的机械人偶——\n她是这么定义自己的，但当作为英灵被刻印在人类史上，\n作为从者现界之后，\n她似乎开始觉得自己何不也像人类一样思考，\n何不也像人类一样拥有感情呢，\n若被允许，希望自己能变成这样。
1	189	身高／体重：158cm·51kg\n出处：传承\n地域：日本（姬路城）\n属性：混沌·中庸　　性别：女性\n家里蹲甘甜如蜜。网购是禁忌的果实。\n电子书籍打包价与手办彩色是无底沼泽。\n现实里的好友一个都没有。
2	189	乍一看是黑发清纯的少女，但只要扒去伪装，\n完全是种阴暗卑屈，本质麻烦的的性格。\n尽管能伪装出公主的举止来，但与他人对话的技能\n严重低下，只能按照既定模板交谈。\n若问她性格是否阴险，应该算是阴险的，\n但归根结底只能算个小恶人。会做的最多也就是\n擅自盗用他人信用卡购物的水准罢了。
3	189	千代纸操法：EX\n能自如地操控折纸。可以与攻击、防御、变化相组合，\n用于作为诱饵等各种形式。\n\n变化：A+\n第一次出现在人类面前的时候，\n化作17、18岁左右身着十二单的女人，\n或是身高将近一丈的鬼神等各种各样的形象。\n尽管很朴素，但在日本的化生中属于顶级水准。\n\n城中妖怪：A++\n从神社等地方移居到城里居住的怪物的总称。\n还有传说说刑部姬才是姬路城真正的主人。\n只要看到她的模样就会遭诅咒，或是直接死去。\n反过来说，她具有只要远离这座城，\n力量就会显著衰弱的弱点。
4	189	实际上，她的真面目据说是已经活了三百年的狐狸，\n但根据某化生专用SNS（社交网络）的内容，\n由于她与某狐系贤妻从者经过了\n「角色设定比较重复所以请您让步（文雅的意译）」\n这般令人神清气爽的回复应酬后，\n作为以蝙蝠为主题的从者被召唤了。\n\n摘掉眼镜的行为是出于一种公主举止。\n但在那些可以阴暗气质全开的场所，她会一直佩戴眼镜。
5	189	『白鹭城百鬼八天堂大人』\n阶级：A+　种类：对城宝具（自身）\n有效范围：1　最大捕捉：姬路城的最大笼城人数÷7\n\nHakurojyou no Hyakkihachitendousama\n显现出姬路城的袖珍模型，也就是与所谓的固有结界似是而非的大魔术。\n凭借数以万人承认的美丽与威严，为己方付与精神上的支柱。如果刑部姬攻击性再稍微强一点的话，城会当即化为可以发动攻击的暴力性存在吧，但多亏了她是个天生的家里蹲，才会仅止于防御型宝具。
1	190	身高／体重：156cm·4t\n出处：万圣节·强袭！\n地域：监狱城恰赫季斯\n属性：秩序·善　　　性别：女性型\n「我的正义非常厚重。如你所见，毕竟是钢铁。」\n\n由于面孔是钢铁，所以很难看出来，实际很喜欢努力。\n身为贵族（守护领地的存在），\n扼杀了自己『身为少女的个性』。\n据说在极为罕见的情况下，当面对值得信任的御主时，\n会露出与少女相符的微笑／害羞的面孔。
2	190	（不懂得变通的）正义的从者。\n与伊丽莎白·巴托里截然相反的『秩序·善』\n可是名副其实的。\n平时冷静而深思熟虑，是个真正的大小姐。\n很少会大声说话，但在面对邪恶的时候，\n会切换成自以为是／支配者模式，严厉地斥责对方。\n……如果伊丽莎白没有被鲜血妄想所囚禁。不，\n假如有人能守护她免受『女性若不美丽就没有价值』\n这种压力的困扰，恰赫季斯城的历史或许就会改变。\n这位Alterego也许就是这『假如』化为现实的产物吧。
3	190	『钢铁天空魔女』\n阶级：B　种类：对军个人宝具\n有效范围：40→1　最大捕捉：1人\nBreast Zero Erzsebet\n用机械伊丽亲的全部武器全部攻击一个人，\n终极私人演唱会（Ultimate Private Live）。\n可对军使用，也可对人使用的暴行。\n\n最后的暴风之声看上去像镭射兵器，实际只是噪音。\n是将内部的Dragon lung（龙肺）以最大输出\n解放后的余波。肺可通过空间压缩，\n拥有一整个东京巨蛋分量的空间回声，\n就算没有恰赫季斯城那种增幅器，\n也能发出与伊丽莎白·巴托里同级别的破坏音波。
4	190	无辜的怪兽：EX\n从技能『无辜的怪物』变化而来的id_es技能。\n身为铁之龙娘的机械伊丽亲会用特殊的摄影力量，\n在天空飞行、喷吐火焰、释放电击、发射导弹。\n这种存在方式正可谓钢铁守护神。\n本人内心暗暗觉得在使用该技能的时候，\n应该播放主题曲才对。\n\n过载改：C\n由弗兰肯斯坦、巴贝奇拥有的技能变化而成。\n尽管不会提升宝具的威力，但会牺牲HP提升NP。\n根据伊丽莎研究家的R氏表示，\n「这怎么看都是自爆前的征兆吧！？」\n\n巨型百连发：EX\n从大量生产线上唤来机械伊丽亲，\n对敌方发动特攻的魔之宴。\n最后上百台机械伊丽亲会进行合体，\n化为巨大的枪，对敌人做很过分的事。\n在其他世界观里，也被称为『超人姐妹同盟』。\n在『FGO』中不会被使用。
3	200	歪曲之魔眼：EX\n在被称为魔眼的异能中也属于最上级的存在。\n异能中的异能，稀少品中的稀少品。\n无论无机还是有机，所有“作为物质存在的东西”都可被视为一张打印图像，通过扭曲图像，来无视对方的强度、规模进行扭曲与切断。\n\n痛觉残留：A\n分明已治愈，却依然反复的死之痛楚。人类的证明。浅神一族为封印少女的异能，将其触觉封了起来。\n\n单独行动：A+\n并非喜欢孤独，但有下意识独自乱晃的坏习惯。擅长跟踪之类的。魔力耗尽的本人理应非常痛苦，但因为痛觉很迟钝，以至于完全没发现。
5	190	拥有完美之美的机械伊丽亲也多少有一些缺点。\n其中之一就是『对正义的判断基准』。\n或许是因为基于城之守护者的立场吧，\n无论违反自己规则的人是谁，\n都会被她断定为『恶』而发动攻击……！\n※本人认为这该不会是因为电子头脑在处理\n『人类矛盾性』的时候耗时过长，以至于会教科书般地\n惩罚做了『坏事』的人吧，她甚至为此深刻烦恼，\n但绝不会说出口。\n\n无论是背叛者还是罪犯，都有他们自己的理由。\n理性思考认为有酌情宽大处理余地的机械伊丽亲\n对自己自以为是的思考回路感到不满，\n为改善的必要性而烦恼不已。 \n其实就是个好孩子。
1	191	身高／体重：156cm·4t\n出处：万圣节·强袭！\n地域：监狱城恰赫季斯\n属性：秩序·善　　　性别：女性型\n「兵器所需的物品一应俱全。\n　火力、防御力、以及残酷。\n　无论对谁，我都不会手下留情哦？」
2	191	机械伊丽亲的Ⅱ号机。\nⅠ号机身为领主的属性更为强大，\n而这台是作为『守护神』的属性更为强大的存在。\n比起人之理，更会依照神之理行动。\n失去了身为领主的聪明，以及善于沟通感的要素，\n一味对人类（外来敌人）展现出\n残酷无情防卫机构的一面。\n\n尽管失去了为维持美貌而需要沐浴少女鲜血的猎奇思想，\n但依然继承了原来嗜虐性、残酷性。
3	191	『钢铁天空魔女』\n阶级：B　种类：对军个人宝具\n有效范围：40→1　最大捕捉：1人\nBreast Zero Erzsebet\n用机械伊丽亲的全部武器全部攻击一个人，\n终极私人演唱会（Ultimate Private Live）。\n可对军使用，也可对人使用的暴行。\n\nⅡ号机虽然对此持否定态度，\n但其思考基准与伊丽莎白·巴托里相同。\n尽管Ⅱ号机凭自身的理性与冷静\n将伊丽莎力封印了起来，\n但唯有在使用最大输出肆虐的时候，\n被封印的本性才会偶尔会暴露。
4	191	无辜的怪兽：EX\n从技能『无辜的怪物』变化而来的 id_es 技能。\n身为铁之龙娘的机械伊丽亲会用特殊的摄影力量，\n在天空飞行、喷吐火焰、释放电击、发射导弹。\n这种存在方式正可谓钢铁守护神。\n本人内心暗暗觉得在使用该技能的时候，\n应该播放很有反派风格的主题曲才对。\n\n过载改：C\n由弗兰肯斯坦、巴贝奇拥有的技能变化而成。\n尽管不会提升宝具的威力，但会牺牲HP提升NP。\n根据机器人研究家的M氏表示，\n「咦，这是不是电池漏电了？」\n\n机械伊丽拳：EX\n机械伊丽亲Ⅱ号机的本体，\n召唤巨大框架的手，并进行攻击。\n由于存在『只有身为人类之敌的情况才会使用』的\n这种迷之规定，\n所以在获得了御主的状态下，是无法使用的。
5	191	不喜欢被称作机械伊丽亲，\n希望别人称呼自己为『Ⅱ号机』的帅气女孩。\n看不起人类，人类不过是为国家（领地）添彩的\n零件而已，一旦胆敢反抗，就会予以强制管理，\n这就是她的宗旨。\n\n……话说回来，她也很清楚自己的这种思考回路\n对领民来说并不是什么好事，\n因此绝对不会称其为『好法律』。\n\n身为人类，身为恶，\n要将领民们的生活作为『善之存在』来支配。\n是个在厌恶人类的面孔之下，\n隐藏着这般信念的恶之机械伊丽亲。
1	193	身高／体重：164cm·57kg\n出处：『封神演义』、『西游记』等\n地域：中国\n属性：中立·善　　性别：女性
2	193	原本是印度神话中被称为那罗鸠婆的下级神，\n但作为佛教的守护神传到了中国，被道教吸收，\n成了少年神·哪吒太子。至今仍在以中国为中心的\n东亚地区被人们祭祀，并受人爱戴。\n在『封神演义』中作为主要人物登场。\n在『西游记』中，也曾为了讨伐扰乱天界的孙悟空\n而出动，并数次被天帝派来帮助三藏法师一行人。
3	193	『地飞爽灵 火尖枪』\n阶级：A　种类：对军宝具\nChihisourei Kasensou\n通过风火轮的超加速冲向高空，\n并与枪化为一体突击下降的灼热蓄力攻击。\n打算与齐天大圣·孙悟空决战的哪吒想将身为Lancer的\n宝具·火尖枪的威力发挥到最大，从而使出的大招。
4	193	说到底，哪吒根本就不是人类。\n是以昆仑山的仙人·太乙真人丢入下界的宝珠为核，\n从而诞生的非人也非仙人的存在。\n除了出生时便拥有的宝贝「乾坤圈」与「混天绫」以外，\n太乙真人还时不时赠与哪吒的宝贝。「斩妖剑」、\n「砍妖刀」、「缚妖索」、「降魔杵」、「绣球」、\n「风火轮」和「火尖枪」。\n\n在下界成长的哪吒虽不邪恶，却是一个目中无人，\n喜欢闹事之人。只因弄脏了河川被神明责怪，\n就杀害了神明，甚至连其上位之神都杀了。\n最终因这件事遭到责罚，\n导致其下界的双亲都要遭到牵连之时，无奈只能自尽。
5	193	那之后，经过了一番辗转周折，哪吒化为莲花之精复活。\n其复活时不仅仰仗太乙真人，还借助了释迦如来的力量。\n作为Lancer被召唤的哪吒，\n具有浓厚的『西游记』中佛教守护者的性格。\n倘若作为自尽前拥有残虐性质的哪吒被召唤，\n想必会成为Berserker吧。
1	195	身高／体重：152cm·44kg\n出处：史实\n地域：北美·马萨诸塞\n属性：混沌·恶　　性别：女性\n金发碧眼的12岁少女。
2	195	十七世纪末。\n在清教徒开拓村塞勒姆发生的「魔女审判事件」。\n乃是第一个表现出恶魔附体征兆的一名少女，\n阿比盖尔·威廉姆斯。\n恶魔附体的异常症状甚至传播给了其他少女，\n在大约一年内，众多村民遭到告发。\n其结果导致200人被逮捕，其中19人被处以绞刑、\n2人在狱中死去、1人被拷问至死的惨剧。\n少女们的真实用意与成为契机的要因等至今仍谜团重重。
3	195	『光壳流溢的虚树』\n阶级：EX　种类：对人宝具\nQliphoth Rhizome\n打开通往与人类不相容的异质世界之“门”，\n给对象的精神、肉体带去严重扭曲的，\n伴随邪恶之树克里夫特（Qliphoth）而生的根茎。\n效果对象受身为“钥匙”的阿比盖尔个人认识所束缚。\n因此才是对人宝具。\n原本具备甚至可被称为对界宝具程度的无限性质。
4	195	魔女审判：A+\n无视本人的意图，擅自引来猜忌的冲动，\n掀起不幸的连锁，因纯真造成的威胁。\n\n理智丧失：B\n寄宿在少女身上的邪神散发的疯狂，\n能轻易让人类脆弱的常识与道德心崩溃。\n\n信仰的祈祷：C\n注重清贫与每日坚持祈祷的清教徒的信条。
0	54	有着残暴传说的古代罗马帝国第三代皇帝。\n公元一世纪的人物。皇帝尼禄的舅父。\n起初是个被人们爱戴的明君，\n然而突然受到月亮的宠爱——坠入了疯狂的深渊。\n在他遭到暗杀前的数年间，他以恐惧支配着帝国。
5	195	身为清教信徒的阿比盖尔是个敬仰神明，\n每天都不忘送上感谢祈祷的纯洁的少女。\n不过是个多愁善感，不知怀疑他人的妙龄少女罢了。\n\n以清贫作为自身信条的清教徒们，\n遭到巴结权势的教会的弹劾，为逃避而漂洋过海，\n来到了新大陆。然而他们最终遭到追赶，被逼上绝路。\n他们抗议（Protest）的矛头，指向了身旁的邻人。\n\n就像在颓废与压抑的时代会有“英雄”挺身而出一样——\n严于律己的纯洁信条成了监视他人的道具，\n重复着战乱与掠夺的殖民地的险恶生活，\n孕育了猜忌心与利己之心。\n——他们最终开始渴望内心深处的疯狂，\n开始渴望“魔女”。嘴上则称，\n我们不得不将这不幸与痛苦归咎于恶魔的勾当才行啊。\n\n最终魔女出现在塞勒姆，凄惨的魔女审判之门打开了。\n作为“钥匙孔”的纷乱状况，以及反映人们欲望的\n身为“钥匙”的少女。倘若两者缺一不可，\n那么，罪过究竟在于谁呢。
1	196	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：混沌·恶　　　性别：女性\n「我对区区人类没什么兴趣。活着的东西非常恶心。\n  不过，如果你坚持的话，我还是愿意以死亡为前提\n  陪你的哦？」
2	196	在美索不达米亚神话原典中，\n司掌植物的成长与腐败，使役蛇与龙，\n能自如操控冥界使者迦鲁拉灵。\n身为『天之女主人』的伊什塔尔\n与身为『冥界女主人』的埃列什基伽勒是对手关系。\n从神话学来看，丰收的女神伊什塔尔（伊南娜）是\n代表了人类之生的大地母神，\n而代表了人类之死的埃列什基伽勒则是恐惧母神。\n\n神话中的伊什塔尔前往冥界，并为埃列什基伽勒所杀。\n之后伊什塔尔虽然得以复活，但她为何要前去冥界，\n而埃列什基伽勒为何如此震怒，其中理由一概没被提及，在本作中认为这是基于两人表里一体的关系所致。\n伊什塔尔与埃列什基伽勒。或许这两位神是同一存在，\n又或是由一位神一分为二的神性。
3	196	『灵峰踏抱冥府之鞴』\n阶级：A　种类：对山宝具\n有效范围：10～999　最大捕捉：1000人\nKur Kigal Irkalla\n\n与伊什塔尔的宝具山脉震撼明星之薪是相同的存在。\n只不过这宝具并不是从天空向大地投掷，而是由地底\n顺着绵延不断的大地发动的冥界女主人之铁锤。\n通过地震、地壳变动来令艾比夫山崩溃的大地震动。\n威力虽然比不过伊什塔尔的金星爆破，\n但这宝具的神髓在于『将地形化为冥界』。\n只要身在冥界就能拥有极大权力的埃列什基伽勒\n会赐予所有与她并肩作战之人强大的守护。
4	196	对魔力：D\n能令D级以下的魔术无效化。\n由于被冥界的阴气所浸透，死亡成了极为日常的存在，\n因此对魔力显著下降。\n\n隐藏的大王冠：A\n使用从伊什塔尔那里没收来的宝物制作而成的女神之冠。\n身为天与地、表里一体的女神，\n将伊什塔尔拥有的各种权能化为自己的东西，\n其效果变得有些阴暗（阴沉）。\n\n魔力放出（槛）：A+\n埃列什基伽勒是个勤恳认真，却又有些消极的女神。\n她平时只要一有空，就会将魔力积蓄在枪槛中，\n并在战斗时使用。\n\n冥界佑护：EX\n作为冥界的支柱被献上，\n并统治冥界的埃列什基伽勒的权能。\n会统治冥界到终结时刻的她就是冥界本身，\n同时，也成了被冥界守护的女王。\n能对己方全体进行支援，也能让她的宝具性能产生变化。
5	196	性格被动、内向。\n由于拥有极高的知性与自尊心，\n为冥界主人这份职责鞠躬尽瘁，\n以至于行动遭束缚的死与腐败的女神。\n嫉妒美丽的存在，嘲笑丑陋的存在，\n为了不让自己想要的东西落入他人之手而杀害对方。\n……埃列什基伽勒本是这样一个存在，\n但通过与躯壳的少女融合，她开始客观地认识到\n这种欲望是「不好的」、「令人害臊的」，\n凶暴的性质从而消失在了深层之下。\n然而她性格直率，所以一旦生气就会表现出来，\n成为如神话传说中般可怕且美中不足的女神。\n其行动理念是埃列什基伽勒自己的，\n所以比躯壳的少女更为冷静，也显得更为自虐。\n\n会与伊什塔尔说相同的台词，\n但时不时会使用高贵大小姐的口气。\n直率，或是陷入恐慌的时候，语气会显得有些夸张，\n但这也是循规蹈矩的她『真实一面』的体现。\n被当做千金小姐抚养长大的伊什塔尔\n由于其任性与自由奔放的个性，语气十分活泼，\n反倒是在冥界认真工作的埃列什基伽勒\n会用『千金（不谙世事）大小姐』的措辞。
1	197	身高／体重：160cm·48kg\n出处：冥界的圣诞快乐\n地域：芬兰（自称）\n属性：混沌·善　　　性别：女性\n骑乘的羊名为茨尔戈。\n擅长模仿圣诞老人长老。\n※圣诞老人长老是阿蒂拉想象的生物。
2	197	拥有过度健康的肉体与过度健全的精神，\n以及些许无知……\n不，是无暇性格的她得到了一个千载难逢的机会。\n当迦勒底的工作人员们因为谜之热病倒下之时，\n阿蒂拉·the·San〔ta〕作为唯一『能动的从者』，\n为了迦勒底的和平与圣诞节，骑着名羊茨尔戈飞驰而出。\n\n对于早就想要评估圣诞节这种文明的阿蒂拉来说，\n这乃是求之不得的工作。\n换上华美的圣诞服饰，她潜入冥界的天空。\n唯一令人不安的要素就是圣诞老人服饰不够保暖，\n「和平时的衣服相比，面积是不是太少了……？」\n阿蒂拉不禁歪着头感到疑惑。
3	197	性格基本还是阿蒂拉的，因为有些低烧，\n所以判断力不如平时，也很容易糊弄过去。\n外表看上去惹人怜爱、可爱程度似乎有所提升。\n由于（多亏了）发烧，文明破坏属性显著低下。\n\n平时的阿蒂拉身为战士的人格占9成，\n身为少女的人格占1成，\n而圣诞老人阿蒂拉身为战士的人格占4成，\n身为少女的人格占了6成。\n阿蒂拉本质还是有少女的性质和浪漫主义色彩的，\n所以能担任圣诞老人的工作让她非常高兴＆激动不已。\n\n或许因为她将御主视为可靠的搭档兼美丽的羊，\n所以称御主为「软绵绵的御主」。\n由于她说服自己，现在的自己不仅是阿蒂拉，\n更是圣诞老人，所以在对人处事上比平时更为柔和。\n为了将闪耀的羊托付给自己的『重要礼物』送达目的地，\n她很直率地请求御主帮助。
4	197	对魔力：C\n由于其天生的温柔，\n在受到『这不是我想要的礼物』这种投诉时无法反驳，\n导致魔力抗性比身为Saber时明显低下。\n\n骑乘：EX\n被选为圣诞节的英灵，内心平静地燃起了使命感之火的\n阿蒂拉的骑乘技能大幅提升、变化。\n具体来说，就是成了羊大师。\n她骑乘着非名马的名羊茨尔戈疾驰的样子，\n令人不禁联想起过去驰骋于西方世界的\n游牧骑马民族·匈族最强的王……\n联想……能联想到吗……\n\n文明侵蚀：EX\n英灵阿蒂拉本人毫无自觉地发动的技能。\n能将手持的东西变化成对现在自己而言最好的属性。\n『最好』并不是『优秀』的意思，\n而是指阿蒂拉本人最喜欢的东西。\n这次阿蒂拉最喜欢的东西应该不言而喻了吧。\n原本麾下率领的马匹都变化成了羊（之类的东西），\n而爱剑军神之剑则变形成了拐杖糖（杖）。
5	197	星者的礼物：B\n通过化身为圣诞老人从而获得的技能。\n赠送礼物，滋润心灵。\n尽管阿蒂拉很想赠送他人礼物，但总是无法掌握对方的\n愿望，再加上她内向的性格，技能等级比圣诞Alter\n（阿尔托莉雅）较低，而且不知为何，\n技能名也发生了些许变化。\n\n虹之糖艺：B\n圣诞树顶装饰的星星被称为伯利恒之星，\n据称其象征着救世主。\n据说只要用阿蒂拉的杖砰地敲打一下，\n就会赐予该人极大的祝福与恩惠。\n\n耀星之纹章：EX\n刻印在阿蒂拉身体上的独特纹样与圣诞节的概念\n融合变化而成的技能。\n通过这种强大的祝福力量，能令刻印在阿蒂拉灵基上的\n潜力觉醒，让圣诞阿蒂拉能在地球上行动3分钟！\n只能持续3回合的舍身超强化。\n\n天性的肉体：－\n由于成为圣诞节英灵，被付与了冬天的概念，\n以至于体温无法正常调整，遗憾地失去了这个能力。
1	198	身高／体重：162cm·51kg\n出处：史实\n地域：日本\n属性：混沌·中庸　　性别：女性\n总是与奇妙章鱼“爹爹”在一起。
1	217	身高／体重：147cm·50kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　性别：女性\n总之想着要尽情享用美食。
2	198	江户时代后期的浮世绘画师。\n除了「葛饰北斋」以外，\n还拥有「画狂老人」、「宗理」等30多个雅号。\n是日本的代表性画家，对梵高与德彪西等海外画家、\n音乐家也产生了深远的影响。\n以绘画速度超群而著称，其一生留下了3万件作品。\n内容覆盖了浮世绘的版画、肉笔画、漫画、\n春画等多种类型。\n晚年以三女儿“葛饰应为”为助手，并与她一起生活。\n代表作是连作『富岳三十六景』、『北斋漫画』、\n妖怪绘『百物语』、春画『蛸与海女』等。\n一生一共搬家了93次，丝毫不在意钱财，\n以至于一贫如洗，举止怪异引人注目，\n是个出了名的怪人。\n据说外出时口中常常念着咒语。
3	198	『富岳三十六景』\n阶级：A　种类：对军宝具\nFugaku Sanjurokukei\n\n众人皆知的Mr.北斋大作之伟大波浪（Great Wave）。\n乃是连作浮世绘第二十一作『神奈川冲浪里』。\n钻研自然的表现，宛若处于神灵附体般境地中\n挥洒而出的笔锋具备了神秘的实体，\n为鉴赏者的身心带去冲击。\n通过与深渊邪神进行通信，得以觉醒了的北斋\n陷入了疯狂，画出了独一无二的浮世绘。\n那就是『神奈川异海里兴怀』。\n“表富士”三十六景加上“里富士”十景，\n以及向更深境地踏足的禁忌之笔。
4	198	森罗万象：A+\n究明自然的样貌，看透其真髓的观察力。\n\n父女的羁绊：A\n直到晚年仍陪伴左右的北斋与应为的心灵羁绊，\n是连邪神的疯狂都无法动摇的。\n\n雅号·异星蛸：B\n通过与深渊邪神达到浑然一体的境地，\n从而绘出的非欧几里德几何学的画风。
5	198	性格与众不同的北斋。不局限于一种流派，\n热心学习各种画师技法的同时，也充满了进取心。\n吸收了西洋画的透视，将可以说是现代漫画原点的\n截取动态瞬间的表现运用在风景画之中。\n如果北斋显现于这个现代，脱离幕府严格的监管，\n获得自由的话，一定会欣喜若狂地学习各种技巧，\n并充满干劲地发起挑战吧。\n无论对象是春画、抽象画、还是数码画或行为艺术。
1	199	身高／体重：169cm·51kg\n出处：传承\n地域：中东\n属性：秩序·恶　　性别：女性\n脸上带着嫣然笑容的绝世美女。
2	199	女神得耳刻托与人类间诞下的塞弥拉弥斯，\n因女神得耳刻托感到羞耻，结果被扔在了水边。\n然而，身为继承了神之血脉的婴儿，\n她在无数鸽子的抚养下，活了下来。\n\n长大后出落得亭亭玉立的塞弥拉弥斯，\n嫁给了年老的将军翁涅斯，\n但被她美貌吸引的野心家尼诺斯王，几乎强行\n将她从丈夫那里抢走。因此感到无比悲伤的翁涅斯自尽，塞弥拉弥斯无奈获得了尼诺斯王的宠爱。\n当与别国发生战争的时候，\n由于使用了塞弥拉弥斯建议的独特战法，\n国家获得了胜利，尼诺斯王得知了她拥有卓越的才能，\n终于决定与她正式结婚。\n然而，在婚礼宴席上，喝下杯中之酒的尼诺斯王\n突然痛苦地死去了。人们纷纷传说，\n这是她为死去的丈夫复仇而下的毒。\n于是，成了亚述女帝的塞弥拉弥斯，\n在数十年统治期间，作为摄政执行政务，\n并指导进行了多次远征与建设事业。\n\n有传说最后她被儿子谋杀了，\n也有传说她在让位之后，化为鸽子向远处飞去。
3	199	『虚荣的空中庭园』\n阶级：EX　种类：对界宝具　\n有效范围：10～100　最大捕捉：1000人　\nHanging Gardens of Babylon\n巴比伦的空中花园。\n实际上，塞弥拉弥斯与巴比伦的空中花园并没有关系。\n只是利用了众多误会之人的信仰，作为宝具成立而已。\n\n由于归根结底还是「虚荣」，\n所以宝具的发动条件极为严格。\n只有从存在于中东某年代以后的遗迹处，\n运来一定量的土石并搭建起来，才能做好发动准备。\n其后，通过举行为期三天的仪式，\n作为庭园的机能才能发动。\n\n如字面意思，是作为「浮游于空中的巨大要塞」显现。\n只要身在要塞内部，\n塞弥拉弥斯的能力就会全部提升一个阶级。\n知名度也会提升到最高阶级，\n在攻击时追加更为有利的修正。\n\n在某次圣杯战争中，这座庭园成了决战场地。\n十一防卫术式一一击坠了陆续杀来的飞机，\n但最终被圣女之旗与飞行骑兵的突击突破了防御。
4	199	气息遮断：C+\n隐蔽身为从者的气息，适合隐秘行动中使用。\n只要转为攻击态势，气息遮断的阶级就会大幅下降。\n但隐藏毒时，并不适用于这种情况。\n\n阵地建造：EX\n身为魔术师，建造对自己有利的阵地。\n通过搜集具体的材料，\n甚至可形成超越“神殿”的“空中庭园”。\n\n二重召唤：B\nAssassin 与 Caster，在获得双方职阶不同技能的情况下现界。是只有极少一部分从者才会拥有的稀少特性。
5	199	性格——狡猾，充满野心的女帝。无论是敌还是友，\n都一律踢倒，下毒杀害，或是用毒让对方精神崩溃。\n对他人的猜忌心十分强烈，即便是己方，只要有必要，\n甚至哪怕没有必要，也会下手杀害。与此同时，\n也对自己的力量怀有绝对自信（仅限自身的领域内）。\n所以，她与其他的王极难相容，\n不过与此同时也几乎不会自己主动发难。\n\n例外是当『虚荣的空中庭园』以完全形态成立之时，\n由于在其内部能拥有无与伦比的强大，\n所以就会积极果敢地发动进攻。
1	200	身高／体重：157cm·51kg\n出处：空之境界\n地域：日本\n属性：秩序·恶　　性别：女性\n是个会令人联想到日本人偶的美人。举止略显阴沉，但依然透露着一股清秀感。
2	200	无痛症——五感中触觉麻痹，生来不知痛觉为何的少女。\n由于不知疼痛，无法对他人感同身受，因此受到人们的孤立。\n自幼就极为聪慧的藤乃为保护自己，隐瞒了自己无痛症的事实，向周围表现出“自己是个普通人类”的样子，同时也欺瞒了自己的内心。\n联动活动『复刻版:空之境界/the Garden of Order -Revival-』的追加从者。在剧情中不会登场。作为客座嘉宾特别参战。
4	200	『唯识·歪曲之魔眼』\n阶级：EX　种类：对界宝具　有效范围：1～9999\nYuishiki Waikyoku no Magan\n于夏日降临的怀念之物。\n通过与千里眼（Clairvoyance）并发，从而脱离人类视野的视野——\n把从神之俯瞰视角进行“确认”对象进行扭曲的超远距离物理崩溃。\n\n被封锁的痛苦决堤而出画着螺旋。\n——这种崩溃犹如痛哭的女人。
4	207	“天蝎一射”\n阶级：A　种类：对人宝具　\n有效范围：5~99　最大捕捉：1人\n\nAntares Snipe。\n成为射手座的喀戎经常会瞄准天蝎的故事的具现化。\n被称为击穿星星的、弓兵能达到的终极一击。\n真名解放时即可发射。并非用弓放出，而是从星星放出的\n流星的一击。\n即便是以敏捷著称的阿喀琉斯，也无法回避这个宝具。\n虽然存在着一晚只能使用一次的缺点，但只要把握住时机，\n就绝不会让目标逃离。
0	34	威廉·莎士比亚毫无疑问是世界上最有名的剧作家，\n同时也是一名演员。作为一名英国伟人，\n其名响彻世界，在英语文学史上熠熠生辉。
5	200	不到二十岁的少女。性格温和内向。\n是贤妻良母型谦和的女性形象。\n尽管不喜欢男性暴力的一面，但同时认为这种孩子气非常可爱。\n因此，对完全理性的人怀有一种异于爱情的憧憬（恋慕的情感）。\n\n是个注重常识，尊重对手的才女，但本质却是个彻头彻尾的悲观主义者与现实主义者，所以有时也会说出毫不留情的意见。忍耐力很强，可一旦失去控制，在将对手逼入绝路前（事态解决为止）决不会收手，犹如失控的货运卡车。\n在这方面，和判断不留情面的式很相似。\n\n行为、语气、性格都很女性化，但爱好却和少女相去甚远。喜欢观看恐怖电影等可以独自偷偷享受的阴暗的东西。\n本人到最后都没有意识到，但她具备潜在的嗜虐性质。之所以一旦被逼入绝境，就会变得残酷、冷酷、恶趣味就是因为这个原因。
1	201	身高／体重：158cm·40kg\n出处：史实\n地域：俄罗斯\n属性：中立·中庸　　性别：女性\n毕伊（Вий）是与她定下契约的罗曼诺夫帝国的秘藏精灵。
2	201	基本称得上是个天真烂漫的人。\n但由于不轻信他人，在刚召唤时尚未取得信任的阶段\n会用冷淡的语气说话。\n\n获得她的信赖后，就能看到\n她活泼而喜欢恶作剧的真面目了吧。\n用镜子映出相机的方法\n拍下自己的照片……按当今的说法就是自拍。\n她也留下了像这样令人会心一笑的轶事。\n\n她写给家人的信件也尚有部分留存于世，\n从中可以看到她那天真无邪的样子和对家人深深的感情。
3	201	○小恶魔：B\n既是阿纳斯塔西娅曾经的昵称[1]，\n同时也是毕伊（Вий）持有的能力之一。\n将一切微小的不可能化为可能。\n诸如把对方拿着的东西移动到自己手边，\n或是让一小块土地开裂把对方绊倒等等，\n让这种“恶作剧”级别的现象可以实现。\n\n虽然这个能力听起来相当夸张，\n但其有效范围很小，\n也无法将目标杀伤、破坏。
4	201	“疾走·精灵眼球”\n阶级：EX　种类：精灵宝具\n有效范围：？　最大捕捉：？\nВий Вий Вий。\n解放毕伊（Вий）的魔眼的全部力量。\n看透一切的眼球，甚至可以扭转因果律创造出对手的弱点。\n\n“夕照，不祥的血之城堡”\n阶级：A+　种类：城堡宝具　\n有效范围：1~99　最大捕捉：11人+1只\nSumerki Kremlin。\n分布在俄罗斯各地的城堡（克里姆林，或称为Kreml）的再现。\n继承了皇帝（沙皇）血脉的阿纳斯塔西娅能够\n召唤无比坚固而壮丽的城堡，并用它保护自己。\n\n只有被阿纳斯塔西娅选中的人才能进入这座城堡。\n未被选中的人和入侵者会受到来自整个城堡的攻击。\n在『FGO』中一般不使用。
5	201	名叫毕伊（Вий）的精灵或者说是妖怪，\n严格意义上来说并不存在。\n他是在俄罗斯文豪果戈里创作的\n短篇惊悚小说《维》中登场的虚构角色。\n不过，斯拉夫存在着数个与毕伊（Вий）相似的传承，\n人们推测他就是这些传承的原型。\n\n与阿纳斯塔西娅定下契约的毕伊（Вий）是\n罗曼诺夫帝国拥有的使魔。\n他能用魔眼看透一切秘密、\n找出城堡的弱点，\n更可以杀死敌人。\n\n但是，如果没有才能，\n就无法看到他，也无法操纵他——\n阿纳斯塔西娅在临终前才\n终于得到了与他签订契约的资格。
1	202	身高／体重：166cm·57kg\n出处：希腊神话\n地域：希腊\n属性：混沌·恶　　性别：女性\n脱下卡吕冬的毛皮，\n她就会立刻变回Archer。
2	202	由于是使用卡吕冬的毛皮进行的魔兽化，\n她非常少见地在拥有可以匹敌A等级狂化的数据的同时，\n还能进行冷静的思考。\n（由于不是因愤怒而变身，而是\n在已经兽化的状态下被召唤出来，\n因此，在作为宝具使用时，等级会有所下降。）\n为了打到对手，她会使用最合适的方法，\n也会根据状况考虑适时撤退。\n但是，只要被她视为敌人，\n基本就无法说服她了。
3	202	○自我进化：EX\n比自我改造更加优秀的，对自身的改良技能。\n为了在达成目的的过程中跨越任何障碍，\n让自身以秒为单位不断进行进化。\n但是，由于是重视目的性的技能，\n有着实用性低于自我改造的缺点。\n\n○野兽的理论：B\n变身为野兽后的战斗思维。虽然无法针对对方的弱点，\n但为了迅速击杀对方，思考速度会变得更加快。\n协同自我进化技能使用的话，可以将打倒敌人的速度进一步提高。
4	202	“暗天蚀射”\n阶级：A　种类：对人宝具\n有效范围：1~99　最大捕捉：1人\nTauropolos Skia Thermokrasia。\n利用在Archer职阶时使用的Tauropolos，\n倾注全部的魔力释放出的一击。\n与其说是箭矢，不如说是弹道导弹。\n被击中的对手会被黏着质地的“黑暗”所吸附，\n被强制性同化。\n若要抵抗这一招，必须拥有极其强力的对魔力技能。
5	202	即便持有与狂化毫无二致的技能可以进行对话，\n但一般情况下，想在理论方面说服她几乎是不可能的。\n\n她对你是不是人理的伙伴毫无兴趣。\n无论兽化到何种程度，\n只要不超过刻在她内心的守则，\n她就是你忠诚的从者。\n若是违背了她的守则，\n她就会舍弃御主与从者的关系。\n恐怕就连御主都无法识别。\n当然，只要不违背她的守则，\n就完全没有问题。
1	203	身高／体重：161cm·52kg\n出处：传说\n地域：欧洲\n属性：秩序·中庸　性别：男性\n据说是他创造了卡巴拉基盘。
2	203	他创造了魔术基盘之一的卡巴拉，\n是一位特化了铸造魔偶能力的Caster。\n虽说仅仅是建造魔偶工厂，就需要\n足以让普通魔术师破产十次的预算和漫长的工期，\n但制造出的魔偶可以拥有E等级从者水平的实力，\n只要有预算就可以无限生产。\n不过，一般战斗时出现的魔偶，\n都只是用来战斗的一次性产品，\n毫无持久力。
3	203	○平稳的无花果：EX\n从传说来看，他被嫉妒他作诗的才华的男人杀死，\n尸体被埋在了无花果树下。\n这颗无花果树结出的果实过于甜美，\n对此感到不可思议的人们挖开土地查看，\n男人的罪行这才被揭露出来。
3	207	○永生的奉献：EX\n由献出了不死性，升华为射手座的传说技能化的产物。\n升华为星星后，他成为了从天蝎手中守护人类的存在。\n\n○神授的智慧：A+\n希腊神话中诸神授予的作为贤者的各种智慧。\n除了英雄独有的技能，几乎所有技能都能发挥出B~A等级的熟练度。\n另外，只要有御主的同意，他也可以将技能传授给其他从者。\n虽然在另一场圣杯战争中没有对他人使用这个技能的机会，\n但如今可以在迦勒底尽情使用。
5	207	希腊神话知名的大贤者喀戎最终被许德拉的毒箭射中，\n为了摆脱中毒的痛苦，他还回了身为神明才有的不死性。\n怜悯喀戎的神明让他升上天空化为星星，但现界的喀戎\n后悔自己舍弃了不死性，于是许愿重新获得不死性。\n但是，喀戎这么做并非想要成为神明，也并不是想要拥有\n不死之身。\n只是因为，这是双亲赋予他的唯一的特异性，\n所以喀戎希望能将它取回来。
4	203	“王冠：睿智之光”\n阶级：A+　种类：对军宝具\n有效范围：1~10 最大捕捉：100人\nGolem Keter Malkuth。\n是Caster生前未能完成的宝具。\n它是模仿了“起源的人类（亚当）”，\n是个只要存在，就会不断改写世界的自动型固有结界。\n但是，该宝具与魔偶一样，必须使用现实中存在的材料。\n即使制作了它的Caster死亡，它也会持续运转。\n同时，因为有大地的祝福，\n只要它的双脚还站在大地上，就绝不会毁灭。\n它的武器是黑曜石制成的剑。\n另外，它的心脏部分还需要放置一名魔术师作为炉心。\n根据炉心的强度和相性程度，巨人的实力也会发生变化。\n还有，虽说使用初始材料最多只能达到十五米，\n但借助来自大地的魔力供给，可以逐渐成长到三十米、六十米甚至更大。\n最终，这个巨人会成为乐园本身，\n定会让全世界变得安稳和平吧。
5	203	他作为Caster职阶的从者算是不太好交流的类型。\n若是为了实现他自身的梦想，\n他会毫不留情地将任何人踩在脚下。\n从这点看来，应该就能够明白了。\n\n他身体虚弱，经常生病，尤其是皮肤病最为严重。\n或许是因为这样，也有人说他非常悲观而厌世。\n从他在本作中绝不会摘下面具露出真容这一点，也能窥测到他的心情。\n根据史实，阿维斯布隆将哲学思想从阿拉伯传到了欧洲。他也可以称得上是推动了文艺复兴文化的诞生。\n\n此外，他从希伯来语的“接受”一词创造了“卡巴拉”这一词汇。\n传说中，他还制作了女性魔偶用来做家务。
1	204	身高／体重：181cm·65kg\n出处：“灰色之男”、莫扎特暗杀传说等\n地域：欧洲\n属性：混沌·恶　　性别：男性\n经常自言自语。（自认为）与贞德（Alter）和岩窟王合得来。\n与剧院魅影波长不和。\n在玛丽·安托瓦内特面前则一反常态，变得十分拘谨。
2	204	他是一名优秀的从者。\n能服从御主的命令，将目标迅速了结。\n不会被人类的性格或意识左右。\n\n原本，萨列里是个眼光长远、沉着稳重的人。\n然而，由于变成了无辜的怪物，他的精神已经被摧毁。\n他与等同于死神传说的“灰色之男”融合后，也堕入邪恶的一方。\n当他看到沃尔夫冈·阿马德乌斯·莫扎特时，恐怕会无视御主的命令，\n彻底变成只为杀戮而运转的暴走机器吧。
3	204	○无辜的怪物：EX\n生前的萨列里不曾杀过什么人。\n然而，正是因为广为流传的暗杀传说散布到世界各地，安东尼奥·萨列里才化为了无辜的怪物。\n它与原本是另一个技能的“自我否定”相融合，变成了一种复合技能。\n\n○恸哭外装：A\n萨列里包裹着反英雄的外壳·外装。\n这是他与在关于莫扎特的记录中屡次登场的“灰色之男”——即出现于1791年7月，\n委托莫扎特作了《d小调安魂曲》的死神一般的存在，互相混杂、互相融合而获得的能力。\n战斗时，萨列里会自动穿上这件外装，作为杀戮的战斗机器而行动。\n\n○燎原之火：B\n如诅咒一般，莫扎特暗杀传说的扩散正像是燎原之火。Avenger·萨列里将那些令自己诞生的、\n来自于众人的恶意、中伤、流言蜚语、煽动、令人讨厌的窃窃私语化为自己的力量。\n不仅能立刻削弱敌方全体的精神力，还可以发起强烈的精神攻击。\n若是对方没有魔术防御手段，也有可能令其自杀。
4	204	“至高之神啊，请垂怜于我”\n阶级：C　种类：对军宝具\n有效范围：1~20　最大捕捉：50人\nDio Santissimo Misericordia de mi。\n将普通生物无法驾驭的巨大的杀意压缩、凝固，再混入魔力，\n演奏出同时侵蚀精神与肉体的毁灭之歌。\n生前的安东尼奥·萨列里绝不可能得到的，只有身为无辜的怪物的从者——\nAvenger·萨列里才拥有的，作为绝技的音乐宝具。\n\n……然而，可悲的是。\n那足以匹敌阿马德乌斯的“乐曲”，\n是成为Avenger的萨列里永远无法辨别的“声音”。
5	204	───安东尼奥·萨列里，曾是阿马德乌斯·莫扎特的朋友。\n他本不该作为反英雄被刻在英灵座上。\n萨列里曾是一位宫廷乐师长。不仅如此，他作为一名值得尊敬的音乐家同样广受尊崇，\n许多音乐家或是他们的子女兄弟也是萨列里的学生。其中包括了莫扎特的头号弟子苏斯迈尔、\n莫扎特的儿子弗朗兹·克萨韦尔·沃尔夫冈·莫扎特，以及贝多芬等人。\n\n然而，19世纪20年代，“莫扎特是被萨列里杀死的”这一传说突然在全球扩散开。\n人们据此想出了一个“为神钟爱的天才与痛恨着他并夺走他生命的才子”的残酷故事，\n毫不在意这个故事与事实并不相同。\n甚至连老年的萨列里对学生莫谢莱斯说过的“这只是恶意中伤而已”的话语，\n也被传为是他对自己犯下的罪过的坦白。还有人煞有介事地说，\n老年萨列里为自己所犯下的罪过忏悔，用匕首割喉自尽了。
1	205	身高／体重：531cm·2548kg/与山岳型魔兽融合时的身高及体重不明。\n出处：史实及异闻带\n地域：俄罗斯\n属性：秩序·恶/混沌·恶　　性别：男性\n他既可以被归类为秩序，也可以被归类为混沌。\n登记在迦勒底的灵基属于秩序一方。
2	205	从他被誉为俄罗斯最凶恶的暴君来看，那份残酷与暴虐无人能及。\n而同时，他也是对神明十分虔诚的信徒。\n那份强烈的反差，是作为普通人类所不被允许，\n只有拥有绝对权限的皇帝才能被容许的特权吧。\n\n虽然根据现代的知识，他能够理解自身的状况，\n但如果是普通人的话，大概仅仅是看一眼这位从者都会昏倒。\n不只是因为他的外形是怪物，更是因为他所拥有的权力也是压倒性的。
3	205	○矛盾精神：A\n作为俄罗斯的皇帝，伊凡雷帝在确立了中央集权政治的同时也实行了恐怖政治。\n上午，他会在教堂中忏悔自己犯下的罪恶，\n下午，他则会十分高兴地进行对叛逆者的拷问。\n圣人与凶手完全同化一般的精神，\n使他可以随机变换两种属性。\n也就是秩序，或是混沌。\n\n○无辜的怪物（异）：A\n作为人类的同时自称自己是与“神”同样的存在，\n因曾经压制了位高权重的贵族们，\n从而使自己的权力到达了顶峰。\n在俄罗斯，人们将他敬为绝对的皇帝；在西欧，人们则恐惧着他，称他为“恐怖（Terrible）”。\n在冻土帝国时的他，由于与当时被誉为最强的魔兽融合，结果如他所愿——\n他成为了足以支配异闻带俄罗斯的怪物。\n\n○非常大权：A\n伊凡雷帝为支配对立的贵族而谋求的，对皇帝的绝对服从权。\n他对周围的人类释放出强烈的威压，\n可以带来使全能力等级下降的强烈“重压”效果。\n若是普通的人类，就连直视他都非常困难。\n拥有等级B以上的领导力时，可以抵消其效果。
1	216	身高／体重：159cm·44kg\n出处：史诗\n地域：法国\n属性：秩序·夏　　性别：女性\n当然，虽然班长气质没有消失，但无奈的是由于夏天的缘故，能看到眼中有着些许浮躁。\n第二次再临之时，戴上眼镜的是教师模式(自称)。
1	208	身高／体重：165cm·53kg\n出处：Fate/Apocrypha\n地域：罗马尼亚\n属性：中立·善　　　性别：男性\n他既是从者，也是御主。
4	205	“潜行于余的梦中吧，黑犬”\n阶级：B　种类：对人宝具\n有效范围：领土全域　最大捕捉：3000人\nЧёрный Опричники。\n黑犬兵团。由伊凡雷帝与非常大权一起导入的“亲卫队（Опричники）”变化而成的宝具。\n所谓Опричники，可以称作是伊凡雷帝的左右手。\n他们拥有对所有贵族的财产、土地没收权。\n他们穿着黑衣，骑着佩戴黑色马具、黑色皮毛的马，\n并在马头上绑上了犬的头部。\n同时，他们还拿着用兽毛编成扫帚形状的鞭子，\n据说这象征着“对待背叛者就要像狗一样袭击过去，\n用扫帚肃清他们”。\n曾经作为共同体一度同吃同睡，在同一屋檐下一同生活的他们，现在已经不在这个世上。\n他们只能潜伏在魔兽伊凡雷帝的梦中。\n他们是伊凡雷帝入睡后发动的自动防御，压制宝具。\n他们就那样分散为无数士兵，为杀尽对他们而言的敌兵四处奔走。\n万幸，他们只是作为集团具有压倒性的暴力，个体的力量则很弱。\n但是，首都莫斯科附近的每一只，\n都拥有近乎低等级从者水平的实力。\n\n“服从于我等旅途之兽”\n阶级：A+　种类：对人宝具\n有效范围：0　最大捕捉：1人\n\nЗвери Крестный ход 。\n神兽的游行。是皇帝（坚信）终将会到达天国的游行。\n也就是说，拦在队伍前面的即是对皇帝的叛逆，那也是对神明的亵渎。\n伊凡雷帝会暂时变回曾经的巨兽状态，\n毫不留情地粉碎敌人。
5	205	这个世界是在现在的人类史的进程中，作为“不必要之物、不必要的变化（if）”被切除的“另一个”俄罗斯，\n是“由于前方是道路的尽头（DEAD END）所以将历史截断”的就连平行世界论都舍弃了的永久冻土帝国阿纳斯塔西娅。\n伊凡雷帝成为了这样一个世界的皇帝。\n尽管是作为从者复活的人类伊凡雷帝，但在异闻带的历史上，他是这世界上第一个兽人。\n虽然居住在他的帝国中的都是兽人，但那是因为他们以人类的形态，已经无法在严酷的环境中存活了。\n\n然而，在这个变化过程中，他们失去了身为人类时所获得的重要的东西。
1	206	身高／体重：185cm·97kg\n出典：希腊神话\n地域：希腊\n属性：秩序·中庸　　　性别：男性\n弱点：贯穿脚踝并挖出心脏，就会在短暂的狂乱后死亡。\n要说弱点的话就是这个。
2	206	特洛伊战争，是以赫克托耳的弟弟帕里斯夺走墨涅拉奥斯之妻海伦为开端，而爆发的战争。\n在英雄和国王为海伦而竞争时，他们立下了“若是有人强抢海伦，必定前往救援”的誓约。\n\n……不过，当时年纪尚幼的阿喀琉斯和这个誓约并没有什么关系。\n他是因“若没有珀琉斯之子参战则无法胜利”的预言，而被希腊联军拉拢的。
3	206	据说，女神忒提斯与英雄珀琉斯所生下的阿喀琉斯，从幼年起命运就已注定了。\n为此而担忧的母亲忒提斯，为使他进入不死之身的神明之列，用神圣之火灼烧他的全身，想要蒸发他不纯粹的人类之血(另有一说是将他的身体浸泡在冥河之中)。\n然而，此等行为等同于毁掉阿喀琉斯人类的那一面，父亲珀琉斯坚决反对让阿喀琉斯成为完全的不死之身。\n女神忒提斯返回了故乡，英雄珀琉斯几经考虑，将阿喀琉斯托付给贤者喀戎，请他养育阿喀琉斯。\n喀戎爽快地接受了朋友珀琉斯的请求，于是阿喀琉斯就在希腊屈指可数的名师喀戎手下接受了成为英雄的教育。\n数年后，成长为出色青年的阿喀琉斯被乞求参加特洛伊战争，意气昂扬地出发了。\n——当然，对于前方等待他的是悲剧这一点，即使他知道，也是无法让自己停止脚步的吧。
4	206	彗星跑法\n阶级：A+　种类：对人(自身)宝具\n有效范围：0　最大捕捉：1人\nDromeus Cometes。\n原本是宝具。\n走下“疾风怒涛的不死战车”后启动的长时间持续型宝具。\n在一切时代的一切英雄之中，最为迅速的传说所具现而成。\n一息之间就能穿越宽阔的战场，即使场地上有障碍物也无法降低他的速度。\n虽然不得不露出自己的弱点脚踝，但能捕捉这个速度的英灵数量并不多。\n\n勇者的不凋花\n阶级：B　种类：对人(自身)宝具\n有效范围：0　最大捕捉：1人\nAndreas Amarantos。\n原本是宝具。\n除脚踝之外全身都被作为母亲的女神忒提斯赋予了不死的祝福。\n能使任何攻击无效化，不过固有技能“神性”的持有者可以抵消这技能。\n\n翔空之星的枪尖\n阶级：B+　种类：对人宝具\n有效范围：2～10　最大捕捉：1人\nDiatrechon Astir Lonchi。\n原本是宝具。\n走下『疾风怒涛的不死战车』后才能使用。\n在阿喀琉斯的父母结婚时，喀戎送给他们的长枪。\n是仅在对方同意的情况下，能制作出以英雄之间单挑为目的的领域的、与固有结界相匹敌的大魔术。\n由于并非以枪兵职阶被召唤，失去了无法治愈的诅咒等部分能力。
5	206	『疾风怒涛的不死战车』\n阶级：A　种类：对军宝具\n有效范围：2～60　最大捕捉：50人\nTroias Tragoidia。 \n三匹马拉的战车。马分别是海神波塞冬所赐的不死神马两匹、从城市中掠夺来的名马一匹。\n以其神速蹂躏战场。能够以加速的比例造成额外伤害。在最高速度下，宛如飞奔的巨型割草机。\n\n『包围苍天的小世界』\n阶级：A+　种类：结界宝具\n有效范围：0　最大捕捉：1人\nAchilles Cosmos。\n与『炽天覆盖七重圆环』相匹敌的防具系结界宝具。\n据说是锻造之神赫菲斯托斯所打造的盾牌。投影出阿喀琉斯所看见的世界，外围部分由海神用海流卷入旋涡。\n与这面盾牌相对抗，也就相当于和世界对抗，由于附带了封印所有宝具的条件，连对城·对国宝具都能彻底防住。\n在『FGO』中基本不会使用。
1	207	身高／体重：179cm·81kg\n出处：希腊神话\n地域：希腊\n属性：秩序·善 性别：男性\n喀戎是宙斯之父克罗诺斯与岛之女神菲吕拉之子。
2	207	由于喀戎的父亲，神明克罗诺斯是变为马与菲吕拉结合的，\n所以喀戎生来就是半人马的样子。菲吕拉厌恶他怪物一般的\n模样，拒绝喂养他，并将自己化为了菩提树。\n\n虽然从未得到过父母的爱，喀戎仍旧成长为精通所有知识的\n贤者。这或许与母亲的名字“菲吕拉”象征着菩提树有关。\n菩提树的花可以入药，树皮可以用来占卜或是用于记录文字。\n\n长大后的喀戎开始培养希腊“未来的英雄”。他所教育出的，\n除了大英雄赫拉克勒斯、阿喀琉斯，还有后来成为了医术之神\n的亚斯克雷比奥斯、升华为双子座的卡斯托尔。阿尔戈号的\n领导者伊阿宋也是他的学生之一。\n\n不过，伊阿宋表示“到了我这种水平，像那种简洁明了的教学反而\n会变成废话！倒是想让他教给我如果招惹到地雷女的话要怎么应对！”
3	216	可以操控作为使魔的海豚。\n海豚的名字叫做莉丝，听命于贞德，于大地之上阔步又于天空之中翱翔。\n知能也很高，可以一直出现在视野的右侧，不即不离。\n想知道让你这家伙消失的方法[1]。\n另外，那次相遇是贞德救助了受困的海豚，就是这样的单纯而又柔软的Girl Meets Dolphin。
3	208	○单独行动：EX\n他是凭依从者的亚种。在战斗时必须消耗魔力，但不战斗的时候，他就是和普通人类毫无二致的存在。\n他的年龄原本也应该和人类几乎一样……\n\n○人造人：C+\n借用爱因兹贝伦的技术制造出的人造人。\n诞生时偶然产生了个性与使用魔术的能力。\n\n○人工英雄（伪）：B+\n他是由得到的英雄齐格飞的心脏，再加上体内流动的弗兰肯斯坦的宝具电流所制造出的拟似英雄。\n虽然时间短暂，但他可以通过使用龙告令咒以英雄——从者的身份行动。\n\n○魔术：C\n通过魔术回路制造出的人造人所持有的天赋。\n他可以在了解目标的构造后，使用术式完全逆转其构造，无论多么坚固的物质都能破坏掉。\n但是，除此之外毫无用途。\n\n○龙告令咒：EX\nDeadcount Shapeshifter。\n通过使用自身持有的令咒，在短时间内以体内齐格飞的心脏为媒介，变身为齐格飞。\n限制时间大约为三分钟。
4	208	“灼热龙息·万地融解”\n阶级：EX　种类：对人宝具（自身）　\n有效范围：0　最大捕捉：1\n（龙息范围大约为50）\n\nAkafiloga Argries。\n使自身暂时变身为龙种“法夫纳”的宝具。\n放出的强力龙息（Dragon Breath）\n能够给予敌人巨大的伤害。\n此宝具是由生前变为龙飞上天空而产生的。\n对其本人来说，似乎和人类形态时没有太大的差别。
5	208	他没有过去。\n纯洁无瑕说着好听，然而本质也只是为了某种目的而生，目的实现后再死去而已。\n表面上看来，在知识层面和精神方面都近似青年期，但他已经是脱离了人类的“完美”的存在。\n\n然而，只要他还活着，那份完美就会逐渐消失。\n\n某位神父憎恨着这个事实。但他自己却期望着如此，舍弃了完美。\n……最终，这份对立为圣杯大战落下了帷幕。
1	209	身高／体重：163cm·51kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：女性\n“吾乃魔　神人Sa……不对，Alterego，冲田Alter亲来着。”
2	209	她是冲田总司的另一面。为行使抑止力而被改变、调整了灵基，是一位极其特殊的英灵。\n由于仅仅是为了一次显现调整而成的，她除了基本构架之外，可以说已经变质成了与原本的冲田灵基完全不同的东西。也正是因此，她并非作为冲田的适应性职阶Saber，而是作为Alterego被召唤前来。\n\n她也是年纪轻轻便离开人世的冲田总司或许能够到达的可能性的末路。
3	209	○单独行动：A\n作为抑止的守护者，她可以单独展开行动。由于是以在绝望的状况下显现、单骑歼灭目标、或者是与对方同归于尽为目标进行调整的，该技能等级很高。\n\n○对魔力：B\n与原本的冲田不同，因为预计会与超乎寻常的对手展开战斗，所以她保持着相当于Saber职阶的对魔力。而且还克服了病弱。太狡猾了？就算这么说也……
4	209	○极地：A\n在任何空间都可以行动自如的终极步法。\n\n○不断：B\n照亮持续无尽战斗之路的永不熄灭的光辉。这是那一日的记忆的证明。\n\n○无边：A\n普照一切世界的无边之光。消灭天魔的金色极光。
5	209	“绝剱·无穹三段”\n阶级：A　种类：对界宝具\n\nZekken Mukyuusandan。\n汇聚无量、无碍、无边三束光形成无穹。\n释放黑色光辉的魔　神人·冲田总司的必杀之魔剑。\n甚至可以将这世上原本不存在的事物、不应存在的事物强制驱逐、消灭。\n该宝具利用特殊的大太刀“炼狱剑”释放。\n\n大太刀原本是无名的谜之兵器，现在的名称“炼狱”只是随意起的。不知为何，它似乎有着自己的意识，根据使用者的心情不同，性能也会大幅变化。状态良好时，刀身中央会发出赤红色的光芒。它似乎相当喜欢炼狱这个名字。
1	210	身高／体重：174cm·65kg\n出处：史实\n地域：日本\n属性：中立·恶　　　性别：男性\n“我可是人斩……”
2	210	天诛的名人，冈田以藏。\n幕末被称为日本史上“用刀杀人”行为出现最多的时代，代表了这一时代的“人斩”以藏，虽说是Assassin，但其剑技也几乎可以匹敌Saber职阶。\n生前与龙马可以说是亲友关系，因此也接受过龙马的委托，担任过其护卫。 但是，时代的洪流终将铸就两人决定性的分歧。
3	210	○人斩：A\n特化了用刀杀人的剑术技能。\n这是仅以获胜为目的的实践性剑术，与修道者的精神性无关。\n也因此，强力但脆弱。
4	210	○剑法矫捷如鹰隼：A\n这是以藏在江户的道场修行时代，对其剑术的评价。\n以藏虽说学习了许多流派，但由于不管在哪个道场，都是修行途中离开，没有完全修成，因此并没有得到真传。\n在以藏看来，任何流派、任何道场的剑士都不如自己，事实也是如此。
5	210	“始末剑”\n阶级：无　种类：对人魔剑\n有效范围：1　最大捕捉：1人\n\nShimatsuken。\n人斩以藏，异端之剑。可以将只看过一次的剑术原样再现成自己的剑技的宝具。\n被召唤时只能再现出生前记忆中的剑技，\n召唤后因为见到了新的剑术，其强度预计可能会更上一层楼。\n但是，可以再现的剑技是有限制的。若是对人、或是依靠宝具特性的东西就无法再现出来。
1	211	身高／体重：178cm·72kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：男性\n“诶？你说把阿龙小姐的资料也写上？”\n\n身高／体重：173cm·57kg\n出处：帝都圣杯奇谭\n地域：日本\n属性：混沌·善　　　性别：女性\n“这可是阿龙小姐的秘密大公开哦。”
2	211	维新的英雄，坂本龙马。\n在日本展开的名为“帝都圣杯奇谭”的圣杯战争中，他是一位知名度可以匹敌织田信长的英灵，也是有着特殊类型骑乘宝具的强大从者。\n为了隐藏真名，平常说话时，他会使用流畅的普通话，但偶尔也会不小心漏出一点土佐口音。\n\n搭档阿龙小姐并不是历史上的那一位，而是被封印在某座山中的叛逆的什么东西。龙马年少无知时拔出了用来封印的那把兵器，放出了被封印的阿龙小姐。
3	211	○船中八策：A\n由坂本龙马起草的，表现新的国家形式的八条策略。在当时是作为划时代的近代条文被记录了下来。此技能即使在困难的情况下，也会展现通往更好的未来的希望之路。\n\n○维新的英雄：A\n龙马跨越幕末这一动乱年代，为明治维新这一史上少有的一大改革做出了贡献。这便是赋予他的特殊技能。\n\n○领袖气质：C+\n尽管无法治理国家，但却拥有让志同道合的伙伴不惧生死的深厚羁绊。\n龙马的这一技能，强大到甚至有时能让意识形态互相对立的团体联手合作。\n\n○怪力：A\n马力超强的阿龙小姐的技能。明明是龙却使用马力这种谜之衡量标准。\n\n○神性：B-\n非常坚硬的阿龙小姐的技能。\n刀枪不入的柔软肌肤。及地的长发也因太过坚硬反而会把地面削掉。\n\n○暴走：B\n若是触碰颈部的逆鳞，就会进入短期的狂暴状态的阿龙小姐的技能。
4	211	“翱翔天际宛如龙”\n阶级：EX　种类：对军宝具\n有效范围：2~50　最大捕捉：500人\n\nAmakakeruryuugagotoku。\n这是虽然平时以名为“阿龙”的黑发女性的姿态示人，但真名解放后便会变为巨龙的自律系人型宝具。\n即便是平时的人型形态，也有着与从者不相上下的怪力和战斗力。同时，环绕在她身上的“神秘”也会使通常攻击完全不会伤其分毫，这令她拥有了无可比拟的杰出防御力。真名解放时会展现出如同古时的龙一般的威容，发挥出近乎压倒性的力量。\n等级EX是无法判断的意思。
5	211	跟随着龙马的黑发女性，阿龙。\n她本被封印在某座山中，在被龙马救出时对其一见钟情，用报恩做借口主动上门做了龙马的妻子。严格意义上说她并不是龙，而是近似于被称为蛟或大蛇的妖怪一类，尚未化龙的存在。\n龙马在幕末年代成就的伟业背后，或许有着她不少的帮助，也或许并没有她的帮助。\n顺便一提，在龙马临终前，由于她不巧离开了龙马身边而没能帮上他的忙。\n陷入悲痛的她并没有化为龙升天，而是消失在了无人知晓的海底。
1	212	身高／体重：189cm·92kg\n出处：史实、拿破仑传说\n地域：欧洲\n属性：中立·善　　　性别：男性\n作为Rider被召唤时，身高似乎会缩水。
2	212	生前的他是“回应期待与愿望”的存在。\n他受到众多的支持成为皇帝。即便曾一度被流放至厄尔巴岛，他也因人们对皇帝高涨的期待之情而重返故地，然而若是人们否认了皇帝，他就会走向失败。\n\n英灵拿破仑也同样，回应期待与愿望、\n回应期盼，做到自己该做的事。\n他肯定了任何拿破仑的传说，作为体现了人类（灵长类）的可能性的从者现界。
3	212	据说，他的字典里没有不可能三个字。\n据说，他在金字塔中遇到了伊斯坎达尔。\n据说，他用大炮击毁了吉萨的狮身人面像。\n据说，法国大革命是秘密组织的阴谋，而他与其有着很深的关联。\n\n一生中不断回应着众人愿望的男人，就如同传闻中“是拿破仑的话，那种程度做得到的吧”这一说法一样，能将众多的不可能化为可能。这种状态，甚至已经可以称为某种超人。
4	212	○可能性之光：B\n这是类似星之开拓者却又与之不同，与无辜的怪物非常相似的技能。\n英灵拿破仑，将无论是实际自己亲手达成的伟业，还是与史实毫无关系的传闻全盘接受，成为偶像。现界后的他作为“期待”和“可能性”的具现而行动。\n“——嘛，那也像是我说过的话。”\n可能性之光，宛如彩虹。\n与他相遇的敌人，总会看到翱翔于空中的彩虹吧。\n\n○皇帝特权：B\n他作为法国初代皇帝，虽说拥有皇帝特权这一技能……\n但在本作中基本不使用。
5	212	“高歌凯旋之虹弓”\n阶级：A　种类：对军宝具\n有效范围：1~99　最大捕捉：100人\n\nArc de Triomphe de l\\'Étoile。\n冠以与凯旋门的法文名同样名称的炮击宝具。\n人类（灵长类）所拥有的可能性化为炮弹，仿佛彩虹一般翱翔于天空。\n以英灵拿破仑的存在本身为中心，加上炮击过吉萨的狮身人面像这一传闻升华而成的宝具。\n外观上看来是单手持的变形型大炮。\n由于有着“击毁了狮身人面像”这一炮击传说，该宝具拥有对神秘的特攻。
1	213	身高／体重：178cm·79kg\n出处：北欧神话\n地域：欧洲\n属性：中立·善　　性别：男性\n眼镜是睿智的结晶。
2	213	拘谨认真的超古板家伙。戴着生前不应存在的眼镜。\n基本上来讲是个符合合理性的人类，为父报仇也并不是出于亲情之爱，而是出于义务感。\n无论对谁都是略显冷淡的态度，至少从外表看来几乎完全无法发现他能够表露出任何情感来。\n不过，若是有人能令他奋不顾身去保护的话，那大概就能够证明那人得到了他的信赖吧。
3	213	无论御主身为男性还是女性，只要是能够令其「信任」的人类的话，与他之间的相互理解就并不会那么困难。\n\n与库·丘林等人相同，是个「不执着于第二次生命」的英雄。\n他对圣杯所求之物，恐怕是在追求无法实现的「再会」，于通常的圣杯战争中想要以令咒强制命令他应该是极其困难的吧。
4	213	原初之卢恩（战士）：B\n拥有北欧的魔术刻印卢恩符文。\n受到布伦希尔德的教导，有着足以以caster职阶被召唤的本领。\n\n龙种改造：EX\n根据将龙的心脏吞下这一事迹产生的究极的自我改造。\n形成了作为龙种而产生的魔力炉心，身为从者也能够几乎完全独立行动。\n\n睿智的结晶：A\n本来是神话中不应存在的魔导道具。\n食用了龙的心脏后所获得的睿智结晶化的产物。\n从生前的时候就是，即使在没必要的情况下也会因为自身的喜好而佩戴，\n但貌似在浴室里就会不太好用。\n虽然给别人戴上后也能够发挥效果，但会因为其庞大的情报量而产生剧烈的头痛。
2	216	这次尽管换上了泳装，但对她来讲，与平时并没有什么区别——至少她本人是这样想的。\n当然，区别可太大了。\n并不是善性，而是重视夏天，再加上这份始终飘飘然的轻率性格，很明显是因为夏日而浮躁感全开。\n并且，与其说泳装是自己的装束，\n不如说“仅仅是为了享受夏日的产物”这种想法更加强烈。\n\n但是，进入灵基再临的最终阶段的话，会从『海滨的海豚小姐姐』变成『降临于盛夏的圣女』。\n将主的加护变为『光轮(halo)』，化作为所欲为的高机动射击圣女。
5	213	『破灭的黎明』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nGram。\n在拥有太阳属性的同时却以魔剑成名的稀有宝具。\n据说这柄由先祖奥丁赐予的宝剑，是能够在选定王的同时为其带来荣光、嫉妒、破灭与宿命的稀世武器。\n于「FGO」中被作为通常武装选用。\n\n\n『坏劫的天轮』\n阶级：A+　种类：对城宝具\n有效范围：1～50　最大捕捉：1～900人\n\nBölverk Gram。\n将本来是对人宝具的Gram全力解放后的版本。\n并不是齐格鲁德将能量通过剑释放出来，而是将剑的力量引出后投掷出去，形成对城宝具。\n本人的说法是「我觉得投掷出去这种方法会更有效果」。\n被投掷出去的剑将会喷溅着火焰直接击中对方，之后齐格鲁德会以全力将Gram用拳头楔入对方体内。\n\nBölverk是「引发祸乱者」的意思，即为他的先祖奥丁的别名。
1	214	身高／体重：159cm·46kg\n出处：北欧神话\n地域：欧洲\n属性：秩序·善　　　性别：女性\n盾牌由神铁制成，是奥丁赐予的宝物。
2	217	相比看来还是平时的茨木童子。\n本人看来似乎也没打算变化太多。\n一眼看过去大概“心情多多少少变好了”，但如果这样点明，毫无疑问首先就会遭到激烈地反驳。然而不可思议的是，若是酒吞来说的话就会变成\n“那么高高兴兴又扭扭捏捏，\n哎呀，就像小孩子一样可爱呢。\n你就那么喜欢海吗？”\n茨木也不会反驳。
2	214	作为大神奥丁的女儿存在的，既是瓦尔基里的个体，又是她们的总体。\n由于是近乎神灵的存在（半神），拥有着高等级的神性技能。\n\n瓦尔基里正是大神奥丁为诸神之黄昏——Ragnarök制造出的数量众多的存在，她们作为某种自动机械提供功能并行动。\n驾着天马翱翔在战场的天空，从死去的勇者之中选定应该带去瓦尔哈拉的灵魂。但是，长姐布伦希尔德因与英雄齐格鲁德相遇而获得了强烈的感情和个性并衰败凋零。以这一瞬间为转折点，瓦尔基里的个体数量开始逐渐减少。\n\n1980年代中期，有学术报告提出，在众神与巨人的最终战争Ragnarök开始时，瓦尔基里的数量可能就已经减少到了“刚开始的一半”。这份学术报告提交给了时钟塔诅咒科的君主，也在魔术世界成为话题，风靡一时。
3	214	在本作中现界的瓦尔基里，作为从者来看是特殊的存在。\n具体来说，她们拥有极其破格的灵基。\n\n即使随着与御主的同调率提升，魔力会相应地增加，但并不会像其他从者那样“进行灵基再临，变化为强力的形态”。因为，瓦尔基里的每个个体都各自有着力量的上限。\n按照迦勒底式召唤系统，让瓦尔基里进行灵基再临时，有很高的几率会出现瓦尔基里消失，“符合再定义后魔力容量的其他个体的瓦尔基里”取而代之被召唤的情况。
4	214	瓦尔基里·斯露德\n瓦尔基里·希露德\n瓦尔基里·奥特琳德\n\n在迦勒底式召唤以及伴随灵基再临的代替召唤中确认到的是以上3骑。预计她们是与御主结下了因缘（或者说大概是在未来会结缘）的个体。\n即便有着魔力量多少的差异，她们的本质基本是相同的，因此她们都以“瓦尔基里”为真名现界。尽管准确来说她们各自有着斯露德、希露德、奥特琳德的个体名，但她们坚决拒绝被当做“彼此不同的个体”。\n\n“瓦尔基里没有本质上的差异。”\n“就是，我们从根本来讲就是一体的嘛。”\n“没错。布伦希尔德姐姐大人才比较奇怪……”\n她（们）如此说道。
5	214	“伪·大神宣言”\n阶级：B　种类：对军宝具\n有效范围：5~40　最大捕捉：20人\n\nGungnir。\n大神奥丁授予的武器。\n大神宣言（Gungnir）的劣化复制版。\n只要在真名解放后投掷，就会发动必中功能。\n在FGO中基本不会进行真名解放，而是作为通常武器使用。\n\n\n“终末幻想·少女降临”\n阶级：B　种类：对军宝具\n有效范围：0~40　最大捕捉：100人\n\nRagnarök Lífþrasir。\n完全同步的众多自己——\n复数位女武神们齐聚一堂，将引导抵达瓦尔哈拉的勇者灵魂的全部机能融为一体，一起将得到的宝具“伪·大神宣言”投掷出去。\n在对目标投掷长枪，造成伤害的同时，在效果范围内会展开一种结界。怜爱一切干净的灵魂，同时，否定错误的生命。\n也会制造出驱散从者或是使魔，以及术式、幻想种、吸血种等等类似魔术或魔力的存在的空间（在抵抗判定中失败的个体会被驱散）。
1	215	身高／体重：162cm·50kg\n出处：北欧神话、凯尔特神话\n地域：欧洲\n属性：混沌·善\n性别：女性\n\n属性中的「混沌」是自己申报的，虽然在支配北欧异闻带的时候自身的意愿即为社会秩序本身，但因死后以英灵再现，如今的想法已经与之前不同了。
2	215	此次现界的她既没有培养勇士的师者之态，也不是什么武艺高手。\n与尽管超然但平易近人的Lancer——斯卡哈不同，\n「大概踩着什么」「啊这渺小的人类」「爱着你，还是杀了你」她无疑藏有自然（神）的本身的性质。\n\n——呼气\n化身暴风雪，大部分生物都陷入死亡。\n\n——微笑\n化身永恒的春天，生命华丽的萌发。\n\n无论是哪一方，对她而言都是同等的存在。
3	215	丝卡蒂这一名字在古北欧语[1]中为「受伤之人」的意思。\n据旧埃达史诗（Elder Edda）中的『格里姆尼尔（Grímnismál）之歌』所述，她是「不祥的巨人夏基（Þjazi）」的女儿，她与父亲（夏基）一起住在索列姆海姆（Þrymheimr）的一个古馆当中。\n后来她嫁给了北欧的神，被称为「众神华丽的新娘」。\n\n丝卡蒂又被称作斯安德鲁克（于雪上滑行的神）又或斯安德鲁蒂（于雪上滑行的女神），\n据说是在山中狩猎、于雪上滑行的高手。
4	215	虽然在本作中登场的斯卡哈与丝卡蒂不是完全相同的存在，\n但由于相互影响，得到了「混合」这样的解释。\n\n作为Lancer的斯卡哈继承了主神奥丁全部的原初的卢恩，某种意义上来说，\n大概就是为了这个混合（习合）[2]吧。\n\n据挪威的王朝史书《挪威王列传(Heimskringla）》所述，\n丝卡蒂与自己的第一任丈夫海神尼奥尔德离婚，与奥丁再婚。\n虽然本作中的她未婚，但她本人可能对后人所记载的事情……也很在意吧。\n\n作为「斯卡哈·丝卡蒂」存在于异闻带的她，其中丝卡蒂的成分尤其高，\n因此她多有作为众神的新娘的这一性质。
5	215	『死亡外溢的通往魔境之门』\n阶级：A＋　种类：对军宝具/开战宝具\n有效范围：2～50　最大捕捉：200人\n\nGate of Skye。\n与世界相隔断的魔境、异境，暂时召唤出的通往处于世界外侧的「影之国」的门。\n能见到那并不是由女神丝卡蒂所支配的，而是作为凯尔特的斯卡哈自己原本所支配的领域，作为「影之国」的一部分，「影之城」的姿态。\n\n在效果范围内，只要是她所认同的人，「影之城」会赋予其巨大的幸运和祝福。\n被「影之城」赐爱之人，即使是毫无力量的身体，也能击败强大的敌人。\n如果在普通的圣杯战争中有效使用这个宝具的话，可能会带来惊人的意外效果。\n\n斯卡哈·丝卡蒂完全不能理解自己为何会拥有这个宝具。\n只有“这是北欧诸神所赋予的加护”“使用的是由另一个自己（凯尔特的斯卡哈）而来的异境之力吧”这种程度的认识。
0	47	希腊神话中的两大英雄之一。\n主神宙斯与人类女性所生，半神半人的英雄。\n因与女神赫拉的恩怨而开始了诸多冒险，\n并最终全部予以克服的超人。
4	216	○享受无尽夏日！：A\nEndless Enjoy Summer，简称为EES。\n表现了应当在永不结束的盛夏中，全心全意享受快乐的心情。\n\n○水边圣女（海豚）：A+\n大概是变成了弓阶的原因，不知为何变得喜欢海豚了。\n海豚以用牙齿撕咬的方式袭击与贞德为敌的人。\n\n○从者激励！：B\n即使不再是Ruler，那种应援精神也不会改变。\n「大家共同加油吧！」这样说着，一边紧紧握住他人的手。\n这种做法令他人产生了误解。\n其实本人是只打算应援的。
5	216	『丰收的大海啊，与欢喜一同』\n阶级：A+　种类：对军宝具\n有效范围：1～20　最大捕捉：100人\n\nDe Océan d\\'Allégresse。\n基于向大海献上的祷告，召唤幻兽。\n或许是因为与幻兽有所关联，与大海有关的事物基本上都能召唤出来，并能够行使其力量。\n压轴的是蓝鲸。会被其压碎而死。那之中能够叫出来巨齿鲨什么的也不是没有可能。
3	217	○鬼种之魔（水）：B\n此技能由显现鬼之异能、魔性的技能变化而来。\n魔力放出的性质也变成了“水”。\n那不就成了河童了吗？茨木感到十分奇怪。\n是因为灵基改变了吗？\n啊不等等。说起来在即将进入夏天的时候，骨头还是其他什么地方似乎有被酒吞童子嘎吱嘎吱地摆弄过的印象，从那之后不知为何总觉得身体的状况发生了变化似的……\n不论如何，既然是酒吞给的东西那肯定没坏处吧！\n茨木微笑着如此想到。真好呢。
4	217	○狂化：D\n尽管会让力量和持久力的数值等级提升，但理性会被剥夺。\n虽说即使改变了灵基也留下了身为Berserker时的职阶技能，但由于与鬼的种族特性相合，例外地可以控制。\n在控制期间，理性是存在的，也可以平心静气地进行对话。\n\n○吾还不想回去！：B++\n重整旗鼓技能出乎意料地完成进化后的技能。\n尽管夕阳西下，但还不想回家，还想在海边多玩一会。\n天色变暗也想玩。\n但是，大家都回去的话自己也只好回去了。一个人玩一点意思都没有……\n茨木那种闷闷不乐的心情显露了出来。
5	217	“愚神礼赞·一条归桥”\n阶级：B++　种类：对结界宝具/对军宝具\n有效范围：1~40　最大捕捉：100人\n\nEncomium Moriae。\n和风的念法是“Gushinraisan Ichijoumodoribashi”。\n此外，原本的宝具名为“打破斋戒·一条归桥”。\n无视对方的防御效果或是结界之类用力敲击，是Lancer茨木童子的全力攻击。\n在罗生门发生的事……不，是回忆起在一条归桥发生的事而怒火中烧，由此激发血脉，将对方的魔术防御瞬间击碎。据说茨木在生前使用这份力量打破了可恨的渡边纲的斋戒，取回了自己被砍下的手臂。\n\n另外，本作中茨木童子在罗生门不敌渡边纲，在一条归桥也败给了他。连续两次输给了渡边纲。
1	218	身高／体重：168cm·55kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：中立·夏　　　性别：女性\n「主人，来一起痛痛快快的玩一场吧！」
2	218	通过身穿泳装在夏威夷接触大自然，牛若丸不知为何接近了在自然中随心所欲四处奔跑的鞍马山的修行时代的状态。\n\n山中的师父「玩耍即为修行」的这句教诲深深地刻在了她的脑海中。因此，她在认真履行自己身为从者的职责的同时，一有空的话也还是会寻找和主人一同玩耍（修行）的机会。摇着尾巴想着“什么时候能来陪我一起玩呢——”的同时尽力忍耐老实等待的夏日活泼忠犬。有空的话就陪她一起玩吧。
3	218	○动物会话：D\n可与不会说话的动物进行沟通。\n因为是源自驰骋于山中时期的年幼感性，所以自下山后（Rider时期）就失去了这一能力。并不是能有模有样的讲出动物的语言，也就是凭着感觉来。\n平常的时候偶尔会蹦出一两句像是狸猫话的句子来，可能就是从曾经的修行时代残留下来的。\n\n而且，如果质问她为什么是Assassin职阶的话，\n「为了用木刀从睡着的师父大人那里赢一招，就以林中的动物们作为练习对象一直在进行隐身的修行这种事，就是这样。」\n「骗人的吧，就因为这样就Assassin了？」\n「哈啊。毕竟我是天才嘛。」
4	218	○鞍马的天才：A+\n留存于鞍马山上的「某种东西」赐予的加护。\n虽然牛若丸坚信是「山上的天狗赐予的加护」，但详情不明。\n\nＨ女史[1]「……“鞍马（kurama）”的词源是阴暗的山，古时被称作暗部山或是闇部山。不过在更久以前，说不定这里是被称作“Kumāra”的呢？」
5	218	『天狗之羽团扇·暴风』\n阶级：B　种类：对军宝具\n有效范围：1~30　最大捕捉：300人\n\nTengunohauchiwa Akarashimakaze。\n鞍马山所开发的众多游戏招式的奥义，\n遮那王游戏谭中的一招。\n这是遮那王修行时那玩乐的记忆的再现，并且，还有其他几种像遮那王流离谭之类的招式。\n这是把师父所用的羽扇偷偷拿来用的游戏的再现。\n当然，主要效果是卷起暴风。不过除此之外，天狗的羽扇还拥有分身、飞行、缩地法、火焰操作、魔力的调用……等多方面的功能。
1	219	身高／体重：159cm · 44kg\n出典：史实\n地域：法国\n属性：混沌·夏\n性别：女性\n持有的KATANA(日本刀)是\n「荒霸吐七十二闪」与「大黑毒龙万破(Dendroaspis polylepis 黑曼巴蛇)」
2	219	为了对抗宿命的对手-贞德（本人是这么认为的）、换上了泳装的Alter酱。\n虽然从Avenger变质成了Berserker、\n但本人的模样基本没多大变化。\n硬要说的话、对于一些兴趣爱好的倾向变得更强烈了、\n而且好像变得多用德语了。
3	219	对Master的态度还是老样子、认为自己和Master待在一起、跟着Master走是理所当然的事情。\n话虽如此、但关于夏天的骚乱、社团活动被卷入其中的事情还是稍微有一点点内疚的。\n只有一点点。
4	219	○）Schwarzwald Falke：B\n\n德语。译作黑色森林的雄鹰……非常的……没有深意……。\n「感觉好帅啊」、就是这么起的名字。\n真是不可思议的力量。\n\n○）失坠的魔女：A+\n\n根据从Avenger的而来的职阶变化、\n龙之魔女的技能也发生了变化。\n\n○）Meurs où tu dois：EX\n\n正确的是“Va où tu peux, meurs où tu dois”。\n行至所至、死得其所……这种意思的法国谚语。\n无论如何、身为Avenger的她，都一直在寻求着能让她死得其所的地方。\n并非是寻求很舒服、平静的死去。\n无论多么强烈、多么绝望。\n期望着那是能被人所理解的事情、\n她每天都在不断地战斗着。
5	219	『烧却天理·鏖杀龙』\n阶级：A＋　种类：对军宝具\n有效范围：1～5 最大捕捉：50人\n\nVölkermord Feuerdrache。\n\n为了对抗贞德、她用海之力自己就用山之力。\n她用水自己就用火。\n在这种想法中产生的。\n以过去作为龙之魔女的力量召唤出类似于黑龙的东西，到处播撒灾厄。\n技能名是德语的理由已经无需多言。
1	220	身高／体重：156cm~？？·46kg~？？\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·恶　　　性别：女性\n不知为何属性由善变成了恶。\n即使属性变为恶也不会改变自己是人类的伙伴这一事实啦，所以请放一百个心吧☆　这是她本人的解释。
2	220	在月之里侧飒爽登场的后辈系恶魔女主角。\n作为一名开朗而早熟的后辈折腾着前辈（御主）。\n她称自己并不是小恶魔而是Great Devil，因为原本是个好孩子所以还是有着没有彻底变为恶魔的天真之处……然而，这次的BB则不同。\n灵基第一阶段的BB是一位会为御主喝彩的具有啦啦队风格的女孩，但在进入灵基第二·灵基第三阶段时，隐藏的本性会逐渐显露出来。\n曾经作为自己的分身制造出的Alterego们（Passionlip、Meltryllis等）是合成了女神精髓的高等从者，而BB也与数个“神性”融合，变为比平时更具攻击性的灵基。
0	84	印度古代叙事诗「摩诃婆罗多」的大英雄。\n摩诃婆罗多是印度各英雄集结一堂的华丽绚烂的故事，\n但若说阿周那是位于中心位置的人物，这一点也不为过。
3	220	BB所安装的神性一共有两位。\n其中一位是夏威夷的女神佩蕾。\nBB与既是夏威夷岛火山的化身，又是不死之身的女神佩蕾同化，使得肌肤变成了与南国相称的小麦色，性格也变得更富有攻击性。\n黑皮BB，就这么诞生了。\n安装了『暴力、任性、与她扯上关系的基本都会杀掉』的女神佩蕾的神性的BB变成了『将喜爱之物逼至死亡的抖S女神』。\n「但是，和平时比起来并没有什么变化啊？」\n被BB折腾得狼狈不堪的御主如此说道。
4	220	○自我改造：EX\n平常BB所拥有的，改造自身的技能。\n这次似乎并非刻意，而是因偶然而使用。\n在这世界之终结的度假胜地，\n以人类为名的接收者们做好觉悟吧。\n怎么说呢，今夜，星辰将会明显地聚齐。\n\n○黄金猪之杯：A\nAurea Pork Porka。\n据说，女神佩蕾一边痛骂着半人半猪的神[3]一边又深深地爱着他。\n把喜欢的人当作小猪来对待的BB与她的亲和性十分出众。\n是BB偷来的黄金之杯的夏威夷版。\n与之前不同，这回是对自己使用的东西。\n喝了这个东西的BB会打开S的开关哦。\n\n○无貌之月：EX\n宛如试炼人类般将其逼向毁灭，某位神的余香。即是Third Eye[4]。\n将虚数空间的境界面变得更为确切，令周围堕入『月之里侧（ShadowPhase）』的固有结界。\n当世界被月之影所覆盖之时，一切时间都会被冻结。
5	220	『C.C.C.』\n阶级：EX　种类：对界宝具　\n最大捕捉：9~999\nCursed Cutting Crater。\n『CCC』中与Mooncell同步的BB所使出的，挖起世界的诅咒之洞。\n通过扩大自己的影子的方式将周围转换成虚数空间，\n使世界与存在于那里的生命体降级为低次元存在，自己则作为支配者对此狂气空间随意处置。\n平常的BB的宝具是『穿着护士服可爱地、开心地、残忍地』贬低敌人的手术，\n这里则会变成能力全开的BB进行的运算。\n作为元祖恐怖系的女主角\n以『规模好大、好恐怖、真的糟了』\n为宗旨的最终BOSS一击。\n变为巨大的高次元存在的BB会轻而易举地挖起地面，侵蚀世界。就好像用勺子舀起布丁那样。\n\n……据说只有在第三形态，她所安装的第二个神性将会显现出原型……？
1	221	身高／体重：154cm·41kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：混沌·恶　　　性别：女性\n现在正沉迷于制作相簿。
2	221	○如果我换上泳装的话：A+\n自己的肉体会迷得大众和看中的男子多么神魂颠倒呢？\n达到A+等级的话，其威力便巨大无比。\n原本是包括黄金律（体）在内的复合技能，但在本作中，部分效果有所不同。
3	221	○白色甜蜜香水：B\n声调和气息中荡漾着仿佛要融化一般的蜂蜜的甜美香气，仅仅是站在那里便可以自如地操纵对方的数值。\n若是没有魔力防御手段的存在（普通人类和动物），就会瞬间随心所欲了吧。\n比如说，将尚未成熟的少年变为可与熟练的战士相媲美的勇士也是可能的。反之，也可以让熟练的战士变得仿佛幼稚的少年一般。\n\n即便是从者，只要没有抵御手段，其数值就会被随意改动。\n是与技能『果实的酒气』似是而非的技能。\n因使用技能时会做出喷香水的动作，所以只要妨碍她的动作就可能阻止技能的发动……不过，在这世上有多少能阻止她行动的人呢？
4	221	『心爱的他的虹霓剑』\n阶级：B　种类：对人宝具\n有效范围：1~20　最大捕捉：1~10人\n\nFergus My Good-looking Brave。\n她使用的武器是生前的情人之一、英雄弗格斯的宝具——魔剑Caladbolg。\n当然，真名解放也是可以的，但这次似乎自己克制着。即便是女王梅芙，不，正因是女王梅芙，才不可能会在美妙的度假胜地引发地震。\n\n这到底是与身为Rider时一样，因『将英雄作为自己的东西』这一轶事、传说的性质，使宝具得以实体化的呢？还是说只是从迦勒底的弗格斯那里普通地借来而已呢？谁也不知道真相如何。\n当然与弗格斯本人使用时相比威力有所下降，相对的，灵活性、自如性则有所提升。\n「嘿~」地一下可爱地挥动这把剑，就会立刻展开彩虹头纱。\n梅芙的目标敌兵会被彩虹头纱束缚，在令人恍惚的光芒中，一无所知地失去力气。\n\n在本作中通常型武装，不会进行真名解放。
5	221	『心爱的夏日幽会』\n阶级：A+　种类：对人宝具\n有效范围：1~40　最大捕捉：1人\n\nOneshot My Love。\n一夏的恋情，一张纪念照（Oneshot）。\n原本梅芙是拥有『操纵生前得到的英雄们的宝具』这一特征的Rider，但换上泳装的梅芙改变了灵基，获得了新的宝具。\n也就是说，这是女王梅芙利用自身拥有的强力武器之一『魅力』，获得的可怕的对人必杀宝具。\n「哎呀，你好啊」，被哼着歌散步的她搭话，对象会立刻被她诱惑，陷入夏日的爱河。绝对会陷入爱河。\n之后，被她尽情玩弄，只能消失在夏日的天际——
1	222	身高／体重：154cm·48kg\n出处：宇宙守护者三部曲\n地域：从者界\n属性：秩序·善　　　性别：女性\n※身高体重会在乘镀时发生变化。\n「体重只是因为连日繁重的工作稍微增加了一点而已，马上就可以瘦回原来的42kg了！」
2	222	『苍辉银河即为宇宙』\n阶级：EX　种类：对人宝具　\n有效范围：9~99\n\n以太宇宙也需秩序。\n虽然会趁着当场的劲头大喊『Twinmyniad Disaster』、『XX Dynamic』，但其注音（真名）为『以太宇宙也需秩序』。\n伦戈米尼亚德所守护的宇宙法则投射出的真名。解除伦戈米尼亚德LR的安全模式，提升输出功率后使出的有力Saber斩击。对手会连同星球一道爆炸。\n这是不受沉默的权利、请律师的权利之类约束的最终裁决手段。不仅是Foreigner特攻，还是Saber特攻的便捷宝具。
3	222	『无铭星云剑』\n阶级：EX　种类：对军宝具　\n有效范围：9~99\n\n无铭星云剑。秘密米尼亚德。\n这是用被称为宇宙的天平的伦戈米尼亚德LR使出的银河星云斩击。\n呼呼地挥舞长枪，其光芒就像是星云般旋转着，扫平周围的一切。不论敌我。\n在FGO中基本不使用。\n\n○止境的正义：A\n来自宇宙最顶尖且最遥远的『境界』之力。既是打破『无』的力量，又是扩大宇宙的真理本身。\n这是甚至能击退其他宇宙的上位者的『保持宇宙的平衡』之力，但XX还不了解。
4	222	○乘镀：EX\n圣枪甲胄阿瓦隆的加护。甲胄一直以灵子形态存在于XX的周围。\n在-1秒（就算受到突然袭击，也可以将时间回溯到一秒之前并装备）内实体化·武装的神奇技能，本人将其命名为『乘镀[1]』。基本不行。\n这是即便成为了宇宙刑警，早上也还是经常睡过头的迟到惯犯XX掌握的可怕技能。只是个用来换衣服的技能。\n其实并没有实体化的必要，即便在灵子状态下，它也能发挥作为甲胄的功能。\n若是武装这副甲胄，XX攻击方面的能力会显著提升。\n\n○刑警的直觉：E\n为查明犯人的天启。\n在解决事件时还是不用为好的级别。\n虽然是通过无视道理的异次元灵光一闪来向周围散播解决事件的提示，但XX本人却完全注意不到那个提示。\n根据场合，其缺点会变成优点，实际上是非常优秀的技能。
5	222	谜之女主角X，简单来说就是喜剧主角。\n继承了阿尔托莉雅的认真成分的X\n无论做什么事都追求最短·最快·最简单。\n与其充沛的精力、礼貌的言行举止相反，其本人十分好强（由于并没有自觉，所以不会看场合的问题相当严重）。她有着挑战一切，在获胜之前决不放弃的麻烦性格。\n不过因其善人的本质『最终还是为了周围而工作』，最后还是漂亮地绕了一大圈。\n\n但是。\n从者宇宙由于Extra职阶的泛滥，英雄与反派的比例崩溃，对此也毫无解决办法。当宇宙的天平向反派倾斜时，X重新决定了信条。\n具体来说，就是节目进入了新的一季。\n为没有工作而烦恼的X前往秘密组织·银河警察就职，并在偶然间获得了沉睡于组织中枢宇宙最古老的手工品·伦戈米尼亚德。她的才能受到认可，从此作为宇宙防人（Galaxian）而大大活跃。\n\n　　　　　―CG第1部　故事节选―
1	223	身高／体重：184cm·85kg\n出处：凯尔特神话、费奥纳骑士团\n地域：爱尔兰\n属性：秩序·中庸　　　性别：男性\n技能「爱之黑痣」在这副灵基中基本不能使用。受到了有效的控制。
2	223	重忠义、诚实而高洁的英灵。\n基本与Lancer时为同一人，\n但作为Saber召唤而来的他，身为『骑士』的自觉尤其强。\n期待与强敌一战，对寻求战斗的自己毫不顾忌。而且，不知是自觉还是不自觉地，相比身为Lancer时的自我肯定感略显强烈。\n\n灵基性能比身为Lancer时有所增强，但另一方面，召唤难度也提升了。\n不论召唤者的实力有多优秀，只要没有具备特定的条件，灵基就不会成立，甚至会烟消云散。
3	223	○魔力放出（跳跃）：A\n被众神养大的迪尔姆德\n获得了超乎常人的跳跃能力。\n作为Saber现界的他，比身为Lancer时的\n敏捷数值还要低。但相对的，他拥有了此技能。\n通过放出魔力使机动性爆发性上升，全面地提高攻击力水平。\n\n○费奥纳骑士的荣誉：B\n迪尔姆德罕见的觉悟。\n是作为首席骑士的精神性的体现。
4	223	『愤怒的波涛』\n阶级：B　种类：对人宝具\n有效范围：1~20　最大捕捉：1人\n\nMóralltach。\n要举出迪尔姆德·奥迪那使用的众多武器之中最强武器，就只有这柄可怕的魔剑了。\n一击必杀，初击必胜。\n猛然抽出的魔剑会为迪尔姆德带来切实的胜利，并为敌人带来失败与死亡。
5	223	如同操纵命运般的魔剑Móralltach，\n是凯尔特的大海与异界之神玛纳诺赐予的。玛纳诺正是将宝具Fragarach等赠与太阳神鲁格的神明，他拥有众多宝具，并将宝具赠与他人。\n\n在真名解放时，会使用因作为Saber职阶现界而显露的超越人类智慧的超跳跃，发起下坠攻击。此时，Móralltach便仿佛传说中的『玛纳诺神之脚』一般，化为三支利刃粉碎敌人。
1	224	身高／体重：133cm·34kg\n出处：阿伊努神话、北欧神话、芬兰神话等\n地域：—\n属性：混沌·善 性别:女性\n似乎不太会应对猫。
2	224	露出纯真笑容的少女。\n然而，她也隐藏着深不可测的残酷——\n\n她的人格，接近作为基础的人造人。\n展现与年龄不相称的战斗姿态的勇气来自阿伊努的少女英雄西托奈，对其所爱念念不忘的人产生的共鸣与哀伤的感情来自女神芙蕾雅，冷酷地对敌人展开杀戮的精神来自魔女娄希……虽然作为Alterego，所融合的存在也可以适用为人格侧面，但目前她拥有的是综合起来的『被凭依的少女』的人格。
3	224	○雪仙：EX\n由技能『自然的婴儿』进化而来。\n一旦将对方判断为攻击对象，就连喜爱之物也会将其冻结。是能将周围的对象任意冻结的能力。\n\n○感情冻结：B\n感情冻结。没有感情。\n她既是纯真地微笑着的少女，偶尔也会像冷酷的魔物一样行动。她的想法、精神性化为了武器。\n冰之心有时会化为利剑，有时也会变为铠甲。
4	224	○神谣：A\n自己以神威的身份讲述的第一人称的神谣。\n身为Alterego的她，通过讲述神谣，可以借用阿伊努神话中各种各样的神威的力量。\n就连作为高等神威的高山·村落·大海的重要神威[1]之力也可以使用。\n\n○赤色黄金：B++\n北欧女神芙蕾雅所拥有的技能。\n不仅是众多神明，就连巨人也被芙蕾雅深深吸引。她有一位深爱之人，据说在芙蕾雅在挂念着以旅行而生的爱人时，曾流下了赤色黄金的眼泪。\n在本作中基本无法使用。
5	224	『咆哮吧吾之友、吾之力量』\n阶级：EX　种类：精灵宝具\n有效范围：1~20　最大捕捉：1\n\nOputateshike Okimunpe[2]。\n这是阿伊努的少女英雄西托奈的战友猎犬，变成的一种使魔。\n借由芙蕾雅与娄希的神代魔术进行多重强化，其外表已非猎犬而更像熊，变成近似于精灵的存在。\n作为是女神的使魔，还是勇猛的巨大身躯更为相称，\n属性如果是魔兽或是幻兽就不太相配了——似乎是因为芙蕾雅接受了娄希的这一主张，赞成率变为三分之二，猎犬因此得以熊化。\n\n此为随时发动型宝具。\n在真名解放时，会展开「猎犬（熊）的猛冲」「伴随冰之魔力射出的一箭」「西托奈的斩击」这样如同雪崩一般的连续攻击。\n因西托奈拥有的性质，会发挥出对龙的特殊效果。
1	225	身高／体重：145cm·46kg\n出处：「御伽草子」等？\n地域：日本\n属性：混沌·恶　　　性别：女性\n酒吞童子改变灵基后的样子。尽管本人完全没有打算隐瞒身份，但令人不可思议的是，察觉到「她是酒吞童子」的人并不多。
2	225	最开始只是打算变装、伪装一下的，但自从与在千岁周围抓到的小魔兽「小白」开始同行，似乎整个灵基都（暂时）改变了。\n她看起来简直就像主角一样，但绝对不能搞错了。\n她所扮演的终归是『教诲鬼、杀死鬼，以此来拯救鬼』的存在。
3	225	○护法之鬼·心握杀：A+\n\nHeart Break。\n这是随着职阶的变更，由抽出对象骨头的宝具『百花缭乱·我爱称（Bone Collector）』变化而来的技能。\n将手突刺入抵抗判定失败的对象体内，从心脏开始毫不留情地将重要器官逐个捏碎，是十分可怕的绝技。\n虽然事先宣传的……是为了控制鬼而被赋予的护法少女的能力，但只要心脏被捏碎，大部分生物难道不都会就此死亡吗？对于诧异的迦勒底职员提出的这一疑问，酒吞童子却只是呵呵笑着，什么都没有回答。
4	225	○护法之鬼·殴杀棒：B\n\nBreak Rod。\n「在那种叫“电视”的箱子里的公主殿下啊，不是挥舞着奇怪的短棒吗？就是那个闪闪发光的那个。妾身也想要那个呢~」\n「包在我身上！」\n据说她与使魔小白之间有过这样的对话。
4	234	○心眼（伪）：A\n第六感，也被称作虫子的告知，是源自天生才能的危险预知。\n对于自己与某位剑士有着完全相同的技术、本领一事感受到了缘分，但红阎魔并没有说出口，而是想着下一次遇到那个冒牌武士时就把他斩杀掉。\n\n○腹语术：EX\n为了就算舌头被斩断也能对话的特训成果。使自身能够无效化『技能封印』。
5	225	『护法少女·九头龙鏖杀』\n阶级：C++　种类：对人宝具\n有效范围：0~10　最大捕捉：1人\n\nGohoushoujyo Kuzuryuuousatsu。\n身为鬼种所拥有的强健的身躯和运动性能、与生俱来的温柔和残虐性。将这些糅合起来，释放出变化无常的乱打。\n具体来说，就是通过会错看成瞬间移动的超高速移动展开拳打脚踢。\n虽说射程距离比较短，但几乎是不可能回避的。甚至可以打破神性的加护，并施加殴打。\n大部分对手会死在这里。\n在尽情殴打之后，大葫芦中也会喷射出与宝具『千紫万红·神便鬼毒』相同的毒酒——但这对于酒吞来说是「顺便」「趁势」而为，其攻击的核心终归还是乱打。
1	227	身高／体重：172cm·55kg\n出处：北史、北齐书\n地域：中国\n属性：秩序・善　　　性别：男性\n虽然是Saber，但和马一起被召唤了。
2	227	他因美貌而戴着面具战斗，但是\n为何要隐瞒，传说有两个理由。\n一是因为担心士兵被他的美貌所吸引，士气会下降。\n另一种原因是担心被敌人轻视。\n不管怎么说，其美貌天下闻名，\n一些传说由此而诞生。
3	227	兰陵王生为皇族高澄(文襄帝)的第四皇子。\n虽然母亲是位名为荀的侍女，\n但据说有预言称，\n她将来一定会生下美丽的孩子。\n而诞生的便是高长恭……也就是\n兰陵王。
4	227	○隐美的假面：A\n他为了防止士兵因其美貌而动摇，\n便戴上了面具这一逸闻升华而来的技能。\n阻止周围的人精神上的动摇。因为并非隐藏魅力的缘故，士兵们的士气依然很高。\n\n○魔性之貌：EX\n通过灵基再临而被解禁的兰陵王的真容。\n就连历史书都会称赞他的风采，\n光是露出真容就会影响周围的人。\n不知道月亮是否会发出光束为他声援。
5	227	『兰陵王入阵曲』\n阶级：C+ 类型：对军宝具(自阵)\n有效范围：1~5 最大捕捉：范围内全部\n\n勇猛无匹覆有假面，\n音容兼美的陵王是也。\n这是为了赞美戴着假面的兰陵王的奋战，由士兵们谱写的曲子。\n此曲作为雅乐，在唐代也传到了日本，至今仍有和着这首曲的舞蹈。\n称赞其勇猛和美貌的歌使我方士气提高，令敌人畏惧。\n再加上被称作『音容兼美』的兰陵王自身，给敌人带来了极为沉重的压力和即便如此也无法移开视线的美之恐怖。
1	228	身高／体重：166cm·46kg\n出处：明史\n地域：中国\n属性：秩序·善　　　性别：女性\n也有着她身高186cm的说法。
2	228	秦良玉原是少数民族出身。她嫁给管理忠州这片土地的马千乘为妻，与丈夫一同为镇压叛乱而从军。\n之后，她继因民事诉讼而死于狱中的丈夫之后成为将军，并数次击退了盗贼。\n她所率领的部下们手持梣木枪，被称作白杆兵，据说十分可怕。
3	228	她性格温厚，沉默谨慎，\n另一方面，面对困难之事也有着\n灵活应对的过人机智。\n是不论下属还是上司都十分信任的类型。
4	228	○忠士之相：B\n她向御主发誓效忠，\n同时也从御主那里得到了信任。\n尽管丈夫因冤罪被关进监狱，\n她仍对明尽忠，当时的皇帝\n崇祯帝也给予她极大的信任。\n\n○白杆枪：B\n原本是宝具。\n传闻中是她和部下都喜欢用的\n梣木做成的枪。\n尽管枪本身并没有轶事，但却有着能让反英雄从者稍稍畏惧的效果。
5	228	『崇祯帝四诗歌』\n阶级：B　种类：对人宝具（自身）\n有效范围：0　最大捕捉：1人\n\n无欲忠义之诗。\n这是当时的皇帝崇祯帝\n赠予秦良玉的四首诗歌。\n被召唤至都城的秦良玉，打算负起征讨盗贼失败的责任。\n她将个人财产都分给部下并做好了觉悟，\n却得到了恩赐和皇帝亲自作的四首赞美她的诗。
1	229	身高／体重：180cm·65kg\n出处：史实以及异闻带\n地域：中国\n属性：秩序·善　　　性别：朕\n不言而喻这是真人身体的数值。
1	230	身高／体重：160cm・49kg\n出处：史记、汉书\n地域：中国\n属性：秩序·恶　　　性别：女性\n身高体重在每次使用宝具时会有些许变动。她好像并不打算认真地再生肉体。
2	230	在史记、汉书中有着部分描述，\n被谜团所包围的项羽的宠姬。\n民间故事认为她在项羽死后便自杀了，这一逸闻使雏芥子的花又被赋予了虞美人的别名。
1	231	身高／体重：250cm·400kg以上\n出处：史实、三国演义等\n地域：中国\n属性：中立·中庸　　性别：男性\n喜欢的食物是胡萝卜。\n不过这匹马，声音确实是很好听。
2	231	堂堂正正地标记了『赤兔马』这一真名。\n关于其事实，他是闭口不谈的。
3	231	○骑乘：EX\n能够驾驭所有坐骑。\n不过，在他作为Rider现界的一瞬间便已经是人马一体（？）的状态了，\n因此，对他来说，在此之上的骑乘已无必要。\n\n○千里疾走（马）：EX\n有着能够进行长时间·长距离移动的无穷尽体力。\n同时，还能够发挥短时间内使敏捷参数急速上升，全力奔跑时的耐力及筋力参数上升的效果。
0	192	神话中有名的诱惑与堕落之魔女。\n容易爱上他人，醋劲很大的永恒少女。\n她那溺宠与怜爱的玩赏的手段充满了禁忌的甜蜜滋味。\n只不过，千万要小心称呼她的方式。\n如果你还想继续当一名人类的话……
4	231	○百般武艺（马）：A\n被培养了多方面的战斗技术，可以应对各种战斗状况。\n就连空中战与水中战之类的不同寻常的战斗，甚至是未知·毫无经验的状况，都能运用被培养出的技术与经验进行迅速应对。\n\n○战斗机动（马）：B\n熟习了骑乘状态下的战斗。\n骑乘状态下的攻击判定和伤害都会追加。\n虽然不在骑乘状态下会有着战斗力减少的缺点，但对于随时处于人马一体状态（？）下的他来说，就等于没有缺点。
5	231	『伪·军神五兵』\n阶级：A　种类：对人/对军宝具\n有效范围：1~40　最大捕捉：50人\n\nImitation God Force。\n他并没有身为英灵的吕布所持有的宝具『军神五兵』，即所谓的方天画戟。\n他释放的宝具是……强烈意识着『军神五兵』射击模式的大射击。\n虽说如此，从强弓中射出的竟然并不是大口径的魔力光炮之类，而是「巨大的枪」。\n\n在几经寻找了有迫力的大支箭矢后得出的结论，\n「果然还是把枪射出去比较快啊……」\n也许他就是这样判断的。
1	232	身高／体重：170cm·55kg\n出处：查理曼传说\n地域：法国\n属性：秩序·善　　　性别：女性\n传说中的英雄赫克托耳的后代。骑士鲁杰罗也一样是赫克托耳的子孙。
0	69	战国时期的风云人物，织田信长。\n幼年时虽被称为「尾张的大笨蛋」，\n却在桶狭间击败了今川义元，得以天下闻名。\n之后陆续击败了强敌，就在即将统一天下的当口，\n遭到明智光秀的谋反，在本能寺死去。
2	232	在经历过无数冒险之后，布拉达曼特很快与敌国的将领骑士鲁杰罗陷入热恋。为了成就这段恋情，她面对了许多的苦难。\n就算邪恶的魔术师抓走了他，就算魔女囚禁了他，就算希腊的王子向自己求婚，布拉达曼特也毫不放弃坚决向前。\n\n永不言弃的骑士。精神与力量都很强悍。\n只要是为了实现自己的愿望，\n无论重复多少次，做出什么努力，都会坚持前进。\n绝不会接受不幸的现实并止步不前。\n是一位即使在困境中也心怀正义，为了行善而努力的纯真的少女骑士。
3	232	因为生前曾经吃过几回亏，所以很讨厌魔术师。\n但是梅林是个例外。\n事实上，她跟梅林还有点缘分。在她生前的冒险中，梅林通过巫女向她传达过一些建议。对布拉达曼特而言，梅林是她崇敬的对象。
4	232	『闪光炫目的魔盾』\n阶级：B　种类：对军宝具\n有效范围：1~30　最大捕捉：100人\n\nBouclier de Atlante。\n掳走她的恋人鲁杰罗的魔术师阿特兰特持有的魔盾。\n在真名解放后，这面盾可以放出强力的魔力光线，为对方带来伤害，还可以强行导致昏迷。就算没有昏过去，也会因为眼被闪花而导致敏捷度暂时显著下降。\n\n另外，本来她不会用盾打人的。但由于现界时的她过于兴奋，几乎是在无意识的情况下突击过去进行殴打的。\n据说布拉达曼特打败阿特兰特后，不仅获得了他的盾，还得到的他骑的幻兽骏鹰。（当以骑阶被召唤时，毫无疑问骏鹰也会一起出现）
5	232	『秀丽公主的戒指』\n阶级：C　种类：对人宝具/结界宝具\n有效范围：1~10　最大捕捉：30人\n\nAngélique Catai。\n十二勇士中的罗兰和布拉达曼特的哥哥都为之倾倒的异国美人安洁莉卡所拥有的魔术戒指。拥有可以无效化一切魔术的力量。\n历经命运坎坷才拿到这枚戒指的布拉达曼特在从邪恶的魔术师阿特兰特手中救出恋人鲁杰罗的过程中，有效的利用了这枚戒指的力量。\n\n本身只有C级程度的对魔力能提升到A级，还有身怀魔术解除的技能都是出于这件宝物的效果。\n如果解放真名的话，己方全体对魔术的防御力都能大大提高，然而在这里基本上是不可能解放的了。以前它还有“隐藏身形”的力量，这个也基本不会用。\n这次现界的时候，她将戒指的魔力灌入了右手的枪中，将对魔术的战斗力提上了一个台阶。
1	233	身高／体重：181cm·64kg\n出处：阿兹特克神话\n地域：中南美\n属性：秩序·善　　性别：女性\n为分发礼物和跳桑巴，对状态进行了最优化哦~！
2	233	去年的圣诞老人阿蒂拉·the·San(ta)说着「今年的圣诞老人就是你了」，选中了魁札尔·科亚特尔。\n虽说用轻率地交予自己的圣诞节圣杯之力愉快地圣诞老人化是很好，但发生了三个问题。\n\n其一，魁札尔·科亚特尔把桑巴和圣诞搞错了。\n其二，由于其他信仰体系的概念（圣诞老人）与南美主神的契合度很差，导致\n『作为善神的魁札尔·科亚特尔』和\n『作为战神的魁札尔·科亚特尔』\n分离开来。\n其三，因分离的冲击，那位恶之魁札尔·科亚特尔——黑魁扎尔与圣诞节圣杯一同飞到了墨西哥。\n\n起初说着「不必在意这件事~！」，努力开展着圣诞老人活动的她，自然也有在意的必要。\n没过多久，魁札尔·科亚特尔便收到了墨西哥特异点化的报告。飞往现场，她所见到的是积着雪的异常的墨西哥小镇的景象，以及宣传着优胜队伍即可被赐予真正的圣诞老人之力的谜之摔角活动，\n『圣诞组队淘汰赛』的举行——
3	233	○桑巴爱好者：B\n热爱桑巴之人。\n尽管是由误会开始的桑巴生涯，想着「既然要做就要认真面对」学习的结果，作为喜爱人类的她自然是深深感受到「桑巴可真是个好东西呢……！」了。\n因此现在的她深爱着桑巴，深爱着这作为名为人类的种子在成长正中时完成的美妙的文化。\n\n问题是，由于周围没有了解正确的桑巴的人，她本人认真地练习，最终学习到的姿势与世间普通的桑巴可能有点不一样……不过她并不在意。\n最重要的是“喜欢”这种心情，对吧？
4	233	○圣诞杀法：EX\n魁札尔·科亚特尔是魂之墨西哥摔角手。\n但同时，这一次她也成为了魂之圣诞老人。\n为消除存在的矛盾而开发出的是『维持着圣诞老人的举止在摔角场上战斗的方法』——\n也就是说，这并非空中杀法，正是『圣诞杀法』。\n她所使用的是并非在空中，而是在圣诞这一概念中奔走的战斗体系。\n\n据说圣诞老人飞翔于空中时，倒数三下的圣之铃音会响彻名为厚垫的密林。
5	233	『爱，在圣夜里传递给孩子们』\n阶级：A　种类：对人宝具\n有效范围：50　最大捕捉：100人\n\nYucatán Regalo de Navidad。\n「那是什么？」「是星星！」「是殖民地！」\n「不对，是圣诞礼物！」\n来自化为圣诞老人的魁札尔·科亚特尔，用尽全力的礼物奉送。\nRegalo de Navidad在西班牙语中是『圣诞礼物』的意思。\n别名，尤卡坦式礼物猛击。\n\n或许是伴着满溢着开放感的桑巴旋律释放的原因，落下来的是尺寸无法想象的\n巨大礼物。\n那份冲击，让人联想到古代时坠落在尤卡坦半岛的巨大陨石——这也被视作她神性的起源。\n当然，这份来自她的礼物中装的并不是能让恐龙灭绝之类的东西，而是塞满了能让孩子们高兴的东西。\n就算是在摔角场上将反派（Rudo）炸裂，那也是为了让观战的孩子们开心。归根结底，这个宝具仅仅是为了让孩子们绽放笑容而存在的。
1	234	身高／体重：130cm·??kg\n出处：日本民间故事、宇治拾遗物语等\n地域：日本\n属性：秩序·善　　　性别：女性\n幸运本来是C，只不过她本人相信着因为即使在不幸中也遇到了老爷爷，就算正负相抵，幸运值也绝对是正的。
2	234	民间传说她是『于山中帮助人类的生物』。在镰仓初期的故事集、宇治拾遗物语中也都有所提及她的原型。\n本来她应该是不能够被召唤成英灵的，却作为『接收孩子们愿望的代表』成为了从者。\n\n性格主动又内向。\n虽说外表十分可爱，但比起少女，不如说她有着剑士、官员的性质。认真而又深思熟虑，因此，无论对手是谁，都能够不卑不亢，真挚的对待。\n她不像玉藻前和清姬那样拥有视自身的情况来生活的性格，但就算如此，她也并不讨厌、不排斥自由奔放的人。\n她始终贯彻着公平而冷静的法官气质，但她其实是能够将受到的恩义当作宝物收下，并且极为珍惜的忠义之雀。
3	234	『十王判决·葛笼之道行』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nJyuuouhanketsu Tsuzuranomichiyuki。\n阎雀裁缝（拔刀）术，奥义之三。\n召唤出带来灾祸的藤箱，并打开它。\n从中出现的百鬼夜行（本体是麻雀们）使得敌人混乱，从而将其封印在藤箱中。\n之后，被整箱运送到麻雀旅店的敌人将在扮演地狱十王（裁定死者的十位王。阎魔大王便是其中之一）的麻雀们的房间里，接受红阎魔制裁的一刀。\n有着对『混沌』『恶』属性的特攻。
5	234	○星之笼（大）：EX\n阎雀裁缝术，奥义其一。报应的藤箱。\n从贤者之衣中取出骰子大小的两个藤箱，并打开它们。\n开封的藤箱会实体化成直径一米的大藤箱和直径30厘米的小藤箱。\n酬谢的藤箱会对敌方产生各种各样的厄运……负面效果，但在造成效果的同时会少量回复敌人的HP。\n不论与对手有何种因缘，也不应该失去作为礼物的本质。红阎魔是这么认为的。\n\n○星之笼（小）：EX\n阎雀裁缝术，奥义其二。报答的藤箱。\n送给诚实的爷爷的雀之祝福。\n对己方产生各种各样的好运效果，还能够回复HP。这是什么啊好可怕。\n然后不知道为什么连敌方的HP也回复了。\n不论自军有着何等有利的展开，也要像个礼物的样子。红阎魔是这样认为的。
1	235	身高／体重：166cm・58kg\n出处：史实\n地域：中国\n属性：中立·恶　　　性别：男性\n相比起全盛期时，体重减轻了一些。
2	235	与年轻时代的李书文不同，他是一位稳重的老者。\n虽说挥舞着凶拳，但将其威力保留在最为必要的下限之内。\n那是『隐藏凶暴性』『年轻时无法理解』的稳重境界。\n然若其与敌一战，你就能发现，\n年轻时的利刃至今仍在不断打磨。
3	235	虽然作为Assassin被召唤，\n但并非以杀人谋生，\n而是喜欢从正面发起战斗。\n\n他并非认为暗杀卑鄙，\n只是单纯觉得不太稳定，而已。\n若是在御主陷入危机的情况下，\n他会毫不犹豫地进行暗杀。
4	235	圈境（极）：A-\n是用心感知周围的状况，\n同时，能让自身的存在消失的技巧。\n达到极致之时将与天地合一，其身影甚至能自然地变得透明。\n由于年龄见长，其技巧也更加老练。\n即使是在交战状态下，也能在眨眼间消失无踪。\n\n阴阳交错：B\n人类所拥有性质的开关。\n虽说年老后更偏向阳面，\n但锋利的獠牙依旧凶猛，他可以瞬间切换至阴面，\n并毫不费力地屠戮敌人。\n其冷酷无情也同样并未改变。
5	235	『无二打』\n阶级：无　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nNino Uchi Irazu。\n是和『燕返』以及『神枪无二打』同样，\n由修炼到极致的武技升华而来的宝具。\n其名为猛虎硬爬山，\n是被称作绝招的秘传套路中的一种。
1	236	身高／体重：134cm·30kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：秩序·善　　　性别：女性\n不论是在日常生活中还是战斗中都追求合理性。\n「你好初次见面Gae Bolg」
2	236	虽然从言行举止上可以窥见她与年纪不相符的极高的才智，\n但另一方面，她对社会常识却极其生疏。\n相较于知识量，她似乎基本没有实际体验，\n简直就像是在与俗世相隔绝的环境下长大的一般。\n\n少女决不说出自己的过去。\n但那双与某人相似的眼瞳\n却盛满了深深的哀伤与孤独，以及——\n一些神性的残留。
3	236	她的真正身份是来自不同于伊莉雅所在的平行世界的神之稚儿。\n\n朔月家是在冬木这片土地上，从天正年代起延续至今的世家。出生在朔月的女孩，生来就具有能无差别实现人的愿望的性质。\n女孩被视为神稚儿，\n为避人耳目，她会在结界中成长到\n7岁，直到失去那份性质为止。\n\n历代朔月族人无一例外，\n都舍弃私欲，一直以来只是一心祈求孩子能够幸福。\n这种身为人类、身为父母非常理所应当的行为\n持续了500年，\n才正是胜过神稚儿的奇迹。\n然而——。\n\n这一代的神稚儿美游在虚岁快要满7岁之前，\n被卷入了发生于冬木市的不明真相的『侵蚀事故』，朔月家也就此分崩离析。\n孤身一人留在瓦砾堆中的美游，则受到了寻找着奇迹的切嗣和士郎的保护。
4	236	○愉快型魔术礼装（妹）：A\n奇怪的法杖中的妹妹。\n相较于情绪高涨的姐姐，她比较沉着理性。但是，果然是出于人工天然精灵的本性，折腾主人、引发滑稽可笑的事件的那份麻烦劲，和姐姐毫无二致。\n\n另外，不知为何，她的契约者的装束与姐姐的相比有着暴露较多的倾向。
5	236	『照耀星天的地之朔月』\n阶级：EX　种类：对人~对界宝具\n\n对星许愿。\n通过短时间操纵能无差别实现人的愿望这一神稚儿的性质，有限制地实现愿望。\n由于该宝具是仅以御主的愿望\n为焦点才形成的，\n因此，信赖关系重于一切。\n\n她的哥哥曾说过，隐藏其中的微小的心意，\n并非对着月亮，而是对星星许下愿望。\n地面的月亮汇聚起愿望并让其闪耀光辉，\n向着虚空的那一方投射出光芒。
1	237	身高／体重：163cm·51kg\n出处：史实\n地域：日本\n属性：中立·善　　　性别：女性\n虽然平时表现的像一位「态度沉稳的图书馆管理员」，但是当提及故事、书本或者是和感情有关的东西时她就会开始喋喋不休地谈论诗歌。
0	48	被誉为圆桌骑士中最强的『湖上骑士』。\n与王妃桂妮薇儿的不伦之恋最终导致了卡美洛的毁灭，\n象征了亚瑟王传说中的负面的人物。
0	58	Tamamo Nine的成员之一。\n玉藻前经过千年的锻炼，提升了神格，\n恢复成原来的一尾时切下的八条尾巴。\n这八条尾巴各自获得了神格，\n作为被分割的御魂分别化为了英灵。\n玉藻猫是玉藻前拥有的（姑且还算）纯真部分的结晶。
2	237	紫式部是汉学家兼和歌诗人的藤原为时的女儿。因父系是著名的文人世家（父系的曾祖父藤原兼辅不仅仅以和歌诗人的身份活跃着，也是撰写了传记《圣德太子传历》上下卷等著作的文人，以「堤中纳言」的别名为人熟知），想必她也是濡染着书卷气长大的。\n二十多岁时，她与时任山城守右卫门佐的藤原宣孝结婚，并育有一子。由于年纪太大，丈夫宣孝在婚后三年就去世了。\n成了年轻未亡人的香子，在那年秋天就开始提笔撰写故事。这正是全书五十四卷的巨著——《源氏物语》。
3	237	她是乖巧的优等生类型。\n知书达礼，为人稳重。\n酷爱读书。也喜欢自己写和歌，以及因恋爱的优雅而闪耀的故事。\n也有规规矩矩地写着日记（记的日记还算是比较现实）。\n\n喜欢的故事是《竹取物语》和《伊势物语》。\n——可以看出，紫式部在角色造型方面受《竹取物语》影响，表现、构想、人物等方面则受《伊势物语》影响很大。另外，还受到白居易的白氏文集、《史记》等等诸多影响。据说《源氏物语》中光源氏追求女性的对话也受到了唐代的传奇故事《游仙窟》影响。\n作为一位和歌诗人，她喜欢《古今集》、《后撰集》、《拾遗集》这三代集。\n生前就接触了各种各样的歌集。\n\n对其他时代、其他地域的故事与诗歌也抱有极大兴趣，只要有闲暇就会沉溺于阅读。
0	189	刑部姬（『西鹤诸国奇闻』中的於佐贺部阁下，\n『今昔画图续百鬼』中的长壁）是被供奉为\n姬路地主神的一种妖怪。\n现在作为居住于姬路城天守阁的城中妖怪而著称。
4	237	○歌仙的诗歌：A\n《太平记》第一六卷「日本朝敌事」有曰，纪朝雄被派遣前去讨伐降伏了非人四鬼的逆贼藤原千方时，咏唱和歌「普天之下，莫非王土，鬼栖之处，愿享太平」。四鬼就此退散。\n名列中古三十六歌仙、女房三十六歌仙的和歌诗人紫式部，可以轻松咏唱像这样令恶鬼退散的诗歌。\n此外，她的和歌还被收录了在了小仓百人一首中。歌为「久别偶逢喜在心，端详未尽又离分。一如夜半高空月，甫见即速入密云」。\n\n○咒术（词）：D+\n紫式部多多少少有些阴阳道的心得，看得出《源氏物语》中也有融入相关要素写成的章节。\n用现代风格的话来说，她就是那种「为了写出有魔术出现的小说而实际去学习魔术」的作家。
5	237	『源氏物语·葵·物怪』\n阶级：C\n种类：诗歌宝具\n有效范围：1～20\n最大捕捉：50人\n\nGenjimonogatari Aoi Mononoke。\n「丧色衣淡因遵制，\n 袖泪成渊痛哭多。」\n真名解放时咏唱的和歌，会以某种诅咒的形式发动，为对象招来毁灭。\n给予对象伤害并赋予弱化效果。\n\n记载于『源氏物语』第九帖『葵』的和歌。\n妻子葵之上产下儿子夕雾后身亡时，源氏（光源氏）所唱的后悔的和歌。葵之上的死因，是光源氏的情人六条御息所的怨恨所生之物，换言之也是一种咒杀。\n——通过咏唱附有怨恨和咒杀的悲伤之歌，Caster紫式部为对象的命运悲叹。\n\n另外，与葵之上身亡相关的一系列传闻成为了能剧剧目《葵上》的原典。
1	238	身高／体重：5～??m·??kg\n出处：Fate/EXTRA CCC\n地域：SE.RA.PH\n属性：秩序·善　　　性别：女性\n「……希望你可以多触碰我。请触碰我。触碰我啊。因为……（非常）毛绒绒的。」\n少有断定语气，无论如何都会使用取得确认的措辞，但就像这样，她会罕见地使用命令语气。\n想必，这是其本质中『身为女神冷酷的』部分的流露。
2	238	她是从BB难以处理的超沉重的感情中诞生的电脑生命体，Sakura 5中的一骑。\n如你所见，她拥有巨大的灵基，以及会无限成长的可怕的自我。由于置之不理的话会变成宇宙规模的灾害，BB便亲手将她这个危险物封印在了虚数空间的底部。\n\n原本的Kingprotea是『渴爱的纯洁幼女』，但或许是因为SE.RA.PH再现者的影响，解放于电脑都市SE.RA.PH的Kingprotea拥有了成长中的智力。\n她精神年龄大约14岁，有着畏首畏尾、虚幻的少女形象。然而出于对爱的贪婪，她会一面做出晚熟的行为，一面使出全力行动，是一位最喜欢身体接触的少女。本以为是只怕生的小兔子，结果其实是只爱亲近人的大型犬。这种反差十分厉害。\n\n尽管她并不好战，但并不是因为『讨厌、害怕』战斗。若是开战，不管是多么弱小的对手（低等级的对手），她都会毫不留情地将其歼灭，心中不会感到丝毫痛苦。\n不知是幸还是不幸，Protea对自己是个残忍的破坏神这一点毫无自觉。
3	238	『巨影，自生命之海中诞生』\n阶级：E　种类：对人宝具　\n范围：100\n\nAiravata Kingsize。\n这是以印度神话之一，搅拌乳海的传说为主题的宝具。\n众神为了在荒废的大地上存活下去，寻求着不老不死的灵药·甘露。\n传说，制作甘露必须要搅拌覆盖世界的大海·乳海。众神便与为敌的阿修罗们齐心协力，以须弥山为轴转动世界、搅拌乳海，随之诞生出了众多生命和灵药。\nAiravata（三头神象）便是在那时出现于乳海的巨大白象。\n\n被迦勒底限定召唤的Kingprotea，一直受到『压迫』。\n那既是来自世界的抑止力，又是非电脑世界的、物质世界的极限。\n此宝具是能短时间消除这份『压迫』，让Protea变回原本大小的固有结界。\nProtea变为人类几乎无法尽收眼底的大小，仅仅是简单一击，对敌人挥舞手足，将其歼灭。\n\n本来的她自身就是宝具，但出于在深海电脑都市中灵基等级下降的缘故，她也可以使用宝具了。
4	238	内向而主动。\n不知道在想些什么的天然系。\n因为基本上一直都饿着肚子（渴求着爱），只要是周围存在的东西，遇到什么她就会吃掉什么，是个贪吃系角色。\n\n虽然她的性格与姐妹Passionlip相近（畏首畏尾·窝里横），但由于羞耻心淡薄，也能见到她积极的一面。\n是个少言寡语，但却渴求着沟通和肢体接触的大型犬。\n拥有『正想着“这里有只玲珑可爱的小鸟哦”，试着接近一看，原来是只必须要仰望的巨大的小鸟啊』这种印象。\n\n基本上是个忠诚的巨大机器人……不过会以从者的身份服从。\n虽然少言寡语，但由于有着『希望能爱我』『想要被谁选中』『渴望被人温柔对待』的欲求，就算不爱说话也会寻求交流。\n\n梦想是『成为可爱的新娘』。\n『可爱』和『新娘』并不是各自独立的单词，她认为『只要是新娘就无条件地可爱』，因此，她完全没有考虑过可爱……正是『维持人类的大小』。
0	100	十九世纪的女性神秘学者，神智学的创始人。\n年纪轻轻就与俄罗斯贵族结婚，但很快便离家，\n为魔术世界带来繁荣。俗称布拉瓦茨基夫人。\n坚信雷姆利亚大陆的存在，投身于神秘主义，\n接触高次元的存在「Mahatma（伟大灵魂）」，\n以及其集合体「Hierarchy」，获得了大量的睿智。\n也就是说，也许她盯上了抵达根源的可能性。
0	161	以幕末京都为中心活动的\n治安组织新选组的副长，土方岁三。\n在队内实施极为严格的规矩，\n剑豪云集的队士们都畏惧地称其为鬼副长。\n在战斗方面兼具恶鬼般的粗暴与战术家的理性，\n可谓十分罕见的Berserker。
5	238	○巨大规模：C\n以技能『自我改造』为基础，诞生于『成长愿望』的id_es技能。\n可以无上限地扩大规模。\n等级达到上限后，令自身的规格巨大化，设定更高一层等级上限。将这个流程无限循环，也就是无限增殖。\n总之是破坏星星的宇宙级别的灾害，但由于越是巨大化，她的智力、机能的复杂化便会逐渐消失，普通的知性体无法承受此机能，因此会导致自我崩坏。\n曾经是规格以外的等级EX，但迦勒底式的召唤无法再现，所以等级有所下降。\n从使用的回合开始成长，但由此而增大的数值上限在使用『幼儿退化』之前是永存的。\n\n○幼儿退化：C\n被BB施加的枷锁。是抑制Kingprotea无限成长的安全装置。\n回归自己的等级，将增大的自己重置的技能。\n使用该技能时，从『巨大规模』中获得的成长便会归零。相对的，会根据阶段获得不同数量的NP。\n\n○领域粉碎：A\n完全运转那份巨大灵基使出的攻击，仅凭单纯的挥舞，就会将并非『敌方个体』而是『领域』作为攻击对象。\n操控空间的术式也会用拳头粉碎，这正是『用力量解决一切』的技能。\n不过，觉醒了『心』的Protea封印了这个技能。
0	200	在变异特异点·境界式发现的少女。\n\n刻板为特色的女校制服、谦虚有礼的措辞、果断的行动力。这一切明明极为普通，却能感受到些许立场错位的不安定感。是能够无视硬度、构造、规模，扭曲所有映射于视野中存在的“歪曲之魔眼”的持有者。\n浅上这个姓氏古代写作浅神，据说是能与神（异能）沟通的巫女家系。
0	138	因万圣节兴奋不已的伊丽莎白（Caster）\n经历了坎坷的命运，最终变成了Saber。\n龙之力、音乐之力、再加上这已经是第二次万圣节了，\n总觉得似乎已经没有人能够阻止她了。\n\n纯白的披风加上绯红的铠甲，\n拿着这时代少见的毫无装饰的朴素大剑，\n勇者伊丽莎白今天也在继续前进。\n\n细节部分就不用太过在意了。
0	225	那是否存在于平安之世尚无定论。\n也不知那是否是在21世纪的现代夹缝中\n生存的鬼之间口口相传的存在。尽管如此，\n她也在讲述着。讲述护法之鬼的传说。\n\n拯救人世的英雄会化作英灵，\n拯救鬼世者会化为护法。\n教诲鬼、查明鬼、杀死鬼——\n因此，正所谓拯救所有鬼的存在才是护法之鬼。\n\n「哎呀，毕竟是梦想，\n不那样做可不行的哦？」
0	208	如果有人拼尽全力，向着无法触碰到的星星伸出手的话。\n他就是击落那颗星星的人。\n仅仅是一个人造人、一个人类。
0	110	历代山中老人哈桑之一。\n由于具备多方面的技能与丰富的知识，\n以及任何人都无法预测动向的不可思议的\n精神性，被人们畏惧地称为「百貌」，\n但其实体却是位在现代会被称为有多重人格\n精神问题的人物。
0	31	金羊毛皮持有者埃厄忒斯王的女儿，\n在月之女神赫卡忒的门下学习魔术。\n被英雄伊阿宋带离了祖国，\n在长期的流浪生活后，\n背负着背叛之魔女的刻印离开了人世。
0	185	诅咒吾血。\n降灾吾罪。\n无论经历多少年月，都无法洗净之物就在此处。
0	156	什么，我可是很平凡的哟。\n只是有那么一点，真的只是有那么一丁点坏而已！\n我定会用我的魔弹助你一臂之力。只不过，\n请注意魔弹是有限制的！
0	81	19世纪的小说『化身博士』中，\n登场的角色——或者说是该角色原型的人物。\n他本想将自己人格中「邪恶」部分剥离，\n结果却导致「邪恶」的人格显现出来，\n最终犯下了杀人的恶行，走上了自我毁灭的道路。
0	171	兼具了强大与高洁，强者们的女王。\n然而——■■■■。\n一旦提到『那个』，哪怕是多么微不足道的事，\n她的一切也会被『那个』所彻底覆盖。\n她究竟将什么视为『那个』，\n这只有她自己（也有可能她自己也不）知道。\n因此，她会作为狂战士而存在。
0	93	名为天草四郎时贞的这位少年\n（尽管有多名浪人从旁教导）\n毫无疑问是岛原之乱的领袖。\n然而他究竟是如何被人们所发现，\n他的前半生几乎完全是个谜。
0	145	从不老不死之旅归来的至高贤王。\n传说中称其为「见证一切之人」。\n时而冷酷，时而通理人情，\n严格领导人民的伟大乌鲁克之王。
0	121	兰斯洛特是圆桌骑士中的一员，\n被誉为最强骑士的英雄。\n侍奉着亚瑟王，却因为与桂妮薇儿的不伦之恋\n与王分道扬镳。
0	170	对他人的态度骄傲自大，举动极端任性妄为。\n彻头彻尾喜欢豪华铺张的童女。\n\n「唔呵呵～，朕当然应该比任何人都要奢华闪耀吧～？　……这个暂且不论，不准你放肆地称呼朕为童女。\n你这蠢货！」
0	223	使用两支魔枪、两柄魔剑的强壮的骑士。\n被身为妖精王的爱神安格斯与\n海神玛纳诺抚养成人的绝世美男子。\n既是以芬恩·麦克库尔为团长的费奥纳骑士团中首屈一指的骑士，据说也在妖精王阿凡塔与骑士团的共同战线中十分活跃。\n\n此次以Saber的灵基现界。\n这是因为他不仅擅长使枪，\n也同样擅长用剑——\n但或许因为这次的灵基强调了其身为『神话·传说的英雄』的一面而使其持有多个出自神之手的宝具，相比Lancer时，召唤的消耗量·难度也较高。
0	13	没有容貌，没有名字的侠盗。\n正如本人所述，该青年是被称为罗宾汉的\n诸多“某个人”中的一位而已。\n最原始的传说是出自潜藏于雪伍德森林的侠盗。\n最起初的罗宾汉与暴君约翰无地王对抗，\n最后却因为柯克利斯修道院院长的阴谋，失血过多而死。
0	177	迦勒底出现的谜之存在。\n那神圣，\n那凛然，\n那威严庄重的身姿究竟是何人！\n总觉得酷似古代埃及神话中的某种存在……？
0	98	凯尔特·阿尔斯特传说的勇士。\n赤枝骑士团的一员，同时也是阿尔斯特的最强战士。\n凭借由异界「影之国」的盟主斯卡哈所授予的\n无敌魔枪而威名远扬。\n不同于往常，作为Berserker而现界。\n因为某些原因，全身的装备都发生了变化，\n性格也发生了反转。表情冷酷，其所持有的宝具魔枪，\n也变成了混杂着黑色的赤红，散发着不祥的气息。
0	43	在巴黎代代执行死刑的桑松家的第四代当主。\n在法国革命这动乱的时代，为各阶层的人执行死刑。\n因人道主义而生的刑具『断头台』登场后，\n他行刑的数量更为激增。
0	73	阿尔托莉雅Alter为了拭去自己的世俗印象，\n下定决心，化为孩子们的好朋友——\n圣诞老人活动的样子。手中的袋子里，\n塞满了她耗费了一整年，精心选出的礼物。
0	166	曾发生于Mooncell Automaton的特殊事例。\n原本是为了管理御主健康而被配置的上级AI，\n却因Bug而失控，成了入侵电脑世界的Cancer（癌），\n也是支配月之背面，\n妨碍SE.RA.PH圣杯战争的电脑魔。\n她让圣杯战争的参加者们遵守规则，\n自己却不断破坏规则，是违法改造的化身。\n是个会若无其事地毁灭世界，也会作为开朗老成的后辈\n全力折腾前辈（御主）的后辈系恶魔女主角。\n\n「守规矩的战斗未免太无聊了吧？\n　我想多看看各位痛苦的表情啦！」\n\n这种偶尔可窥的行动设定与性格设定看上去\n虽然极为扭曲——不过嘛，BB亲始终是这样的。
0	220	为了使这个夏天变为最棒的夏天，\n而再次出现在我们面前的来历不明的电脑魔。\n为了从各种特殊事例中拯救迦勒底，\n有时会大量上市不可思议的老虎机，\n有时则提供麻烦的AlterEgo。\n她正是万能、可怜的后辈。\n其真实身份便是换上泳装享受夏威夷的、\n只是一味的可爱的甜美恶魔，\n你的BB亲哦——！\n这一回为了充分地享受夏威夷，她将自己改造成了高等从者，加入了无比激烈的泳装市场（Red Ocean）[2]。\n从清纯的泳衣到刺激的泳衣，为展现女主力而广泛更替泳衣的她却……？
0	142	美索不达米亚神话中美、丰收与战斗的女神。\n传说是最被诸神们溺爱，\n不对，是最受诸神们宠爱的女神。\n她的外形并不是伊什塔尔女神的，\n而是附身在与其波长相近的人类身上的拟似从者状态。\n嘴上虽说守护人类是女神的职责，\n但实际却是会笑眯眯地表示\n「好啦，来看看人类究竟能活下去，\n　还是会灭亡呢？」\n这种意义的守护。\n正可谓金星的（红色）恶魔。
0	128	一提起夏天就会想到海边。\n一提起海边就会想到遮阳伞。\n一提起遮阳伞当然会想到您值得依靠的巫女狐。\n没错，正可谓苇原之国的常识……！\n太阳爆炸。\n将湿漉漉的T恤与救生圈作为武器，\nLancer·小玉藻闪耀于南国！
0	36	世界屈指可数的天才作曲家、演奏家。\n拥有可谓异常的乐感，以其无法撼动的天才，\n创作了大量的乐曲流传后世的十八世纪的人物。\n受神眷顾之子。奇迹的天才。
0	193	天界屈指可数的精锐武将，中坛元帅·哪吒太子。\n在下界不幸凄惨死亡后，以莲花之身复活。\n曾建立了讨伐封印九十六洞妖魔的卓越功勋，\n是齐天大圣·孙悟空最大的对手（本人这么认为）。
0	90	装束焕然一新，\n身着纯白衣装的蔷薇皇帝。\n似乎心态也因服装的变动而改变，\n平日里的战斗风格也发生了变化。\n爱剑·原初之火也顺应这氛围，\n将刀身由赤红变为银白。
0	38	凯尔特、阿尔斯特传说中的勇士。\n赤枝骑士团的成员，阿尔斯特最强的战士，\n不仅是持有异界盟主斯卡哈所赐魔枪的英雄，\n也是继承了师父的北欧魔术——卢恩的术者。 
0	216	那是降临于盛夏的圣女。\n海豚界之星，蓄势待发的神·圣·登·场。\n将神圣的御旗换为泳圈，\n现在，从未有过的幻想将被展开——\n「是的，坦率地说，就是一场无拘无束的泳装狂欢！\n　抛开那些刻板的拘束，\n　一起痛快地度过这一夏吧！」\n\n是夏天是泳装是贞德！Dolphin·Summer的圣女，参上！
0	165	据说是平安时代，以铃鹿山为根据地，\n与坂上田村麻吕一起前去除鬼的舞姬。\n由于其华丽与强大，既被人誉为天女，\n也被称为鬼的绝世美女。\n然而实不相瞒，其真面目乃是\n天界派来的第四天魔王的爱女。\n受命将日本化为魔国而从天而降的铃鹿御前\n却不愿意亲手让人类之国变得混乱，在经历了诸多冒险、\n悲伤恋情之后，被恋人坂上田村麻吕亲手打倒。\n虽说是位悲恋的天女姬，\n但追求美、打算将美钻研到最高境界的她\n所抵达的最为时髦的风格则是——\n\n「哎呀，肯定是JK吧！\n　巫女虽然也不错，但一说到恋爱\n　自然非女高中生莫属的感觉啦！」\n\n——话说……大小姐。这样真的好吗？
0	235	作为Lancer被召唤的李书文的另一侧面\n便是这位老年的李书文。\n但其凶拳却丝毫未有蒙尘之象，\n如若交战必能以绝杀定局。\n\n于精神层面迎来全盛期的拳之老者。
0	229	嬴政，别名始皇帝。\n公元前221年便统一了中国大陆，自称最初的『皇帝』。\n实际上乃是存在于异闻带・中国的始皇帝的姿态。\n这便是使用源自中央集权制度的莫大权力，将全部力倾注于内政与技术开发，并且尝试凭借探求仙道来更新生命大限的，真人的最终结论。
0	39	作为日本屈指可数的剑豪——\n宫本武藏的宿敌而留名历史的剑士。\n年纪轻轻就将岩流钻研到极致，\n被誉为所向无敌的天才剑士。\n然而——
0	167	觉者的敌对者。\n出现在深海电脑乐土SE.RA.PH的圣者。\n将稀世的救世主资质全部为己所用，\n变生成非人之物的存在。\n然而她的誓愿、渴望却在千钧一发之际被斩断了。\n那时，祈荒本人虽然消灭了，\n但她或许在临死之际改变了自己的想法，\n将力量的一部分作为Alterego遗留了下来，\n希望得到被迦勒底召唤的未来。\n\n「迦勒底真是不错。\n　能够投身于各个时代、各个地点的纷争中……\n　我也好想感受一下啊。」\n\n本人谦恭地微笑着这么说道。\n但其真正的目的，当然不是「为了人类」。\n就算多少变得圆滑了一些，但本性丝毫未改，\n这点还请多加小心。
0	72	凯尔特·阿尔斯特时代（故事群）的勇士。\n赤枝骑士团的一员，操使魔剑。\n以英雄库·丘林的友人与养父的身份广为人知。\n精力绝伦的大胃王，性格豪爽，不知嫉妒，不识恐惧——\n坦荡磊落勇士的弗格斯之名流传后世至今。
0	233	于是，她变成了世间罕见的桑巴圣诞老人的样子。\n「哦，我好像搞错了点什么……」\n但是，已经变成了这副样子也没有办法。\n从带给人们笑容这个意义上来说不是差不多的吗？\n像这样，天生的积极性格让她重振精神，\n她就这样作为『为最喜欢的人类们送去幸福的女神』站了起来。\n跳桑巴也要竭尽全力，送礼物也要竭尽全力。\n当然，墨西哥摔角也是要竭尽全力的！\n\n舞动吧，魁札尔·科亚特尔。为了人们的笑容。\n战斗吧，魁札尔·科亚特尔。为了人们的和平！
0	132	夏日！　大海！　冲浪啦！\n呀嗬～～～～～～～～～～～～～～～～！\n于是诞生了超级极限冲浪手\n莫德雷德·比基尼版。\n简称冲莫，也就是冲浪小莫。\n这次不是Saber，而是作为Rider被召唤，所以没有带着克拉伦特(Clarent）。\n别说剑了，连铠甲头盔都没带。
0	134	烧光、烧光、烧光烧光烧光烧光烧光烧光烧光————\n呜呼，这正可谓是热情之相！　思！　病！\n……综上所述，是陷入奇怪情绪中的清姬。\n喂，说你呢，不准说什么平时情绪也很奇怪。
0	18	作为吸血鬼卡米拉原型的鲜血伯爵夫人。\n……然而，被召唤为从者的她，\n还是犯下罪行前的十四岁的模样。\n自称为偶像明星的甜美系从者。\n高贵、高傲、残忍、无情，\n以及和传说完全一致的不人道。
0	30	驯服了恶龙塔拉斯克的公元一世纪的圣女。\n与弟妹共同款待了救世主，\n在救世主的话语的指引下获得了信仰。\n是一名拥有美貌，且魅力四射的完人。\n——连可怕的怪兽都为之神魂颠倒的圣少女。
0	129	降临于夏日海边的国王陛下。\n这次她将身为王的职责全部丢在办公室，全力应对夏日的阳光。\n由于某种原因，无法充分享受游泳的乐趣，只能在海滨玩劈西瓜游戏的阿尔托莉雅偶然发现了水枪闪电战（用水枪玩的生存游戏），回过神来时已经是这种打扮了。\n不服输的她的目标，自不用说，当然是世界冠军。\n\n——这一天，她邂逅了（其实不是很重要的）命运。
0	1	迦勒底局成员——玛修·基列莱特， 与从者附体融合后的模样。 被称为亚从者。
0	51	平安时代最强的神秘毁灭者，\n源赖光四天王之一。乳名为「金太郎」，\n在日本知名度媲美桃太郎。\n粗暴傲慢，看似十分危险——\n但其实是个重情义的正义男子。\n口头禅是「GOLD」「GOLDEN」。\n喜欢的犬种是黄金猎犬。
0	131	安妮·伯妮＆玛莉·瑞德。\n稀世女海盗组合，但这次身着休闲的泳装登场。\n安妮用“伯妮！”感十足的高暴露泳装，而玛莉则用“瑞德！”感十足的体格对御主采用撒娇闹别扭的方式进行夹击。
0	219	「连那家伙都穿上泳装了的话!那我也当然、非得穿上泳装不可啊！」\n夏天的魔力将龙之魔女逼到了这里。\n当听说这次的任务先是在夏威夷的那一瞬，她就下定了决心。\n通宵查看各种攻略书直到上面全部塞满了便签、考察如何在有限的天数内来回游览观光地、\n身着不亚于偷偷登陆度假村的好莱坞女演员的盛装搭配，就此、去往常夏的乐园。\n化身为最强特工的神经大条的英灵，她即为被漆黑的复仇之炎所燃烧的Berserker，贞德(Alter)是也！\n\n来吧！来画漫画啦!从圣杯中诞生的黑圣女，狂乱的社团活动开始了！
0	188	江户初期的假名草子、军学书籍中\n提及名字的盗窃（忍）之辈，水破——\n也就是忍者。\n以「飞加藤」、「鸢加藤」这些外号为众人所知，\n有报告称其在甲斐及越后活动，\n但关于其实际出身与目的，诸说纷纭，充满了谜团。
0	95	乌鲁克的英雄王。人类最古老的英雄。\n性格冷酷无情。不听他人的意见，\n只以自己基准为绝对标准的暴君——的这种性质，\n并不能适用于这个模样的他。\n他基本还是名彬彬有礼而谦虚的少年。
0	46	因为谁都没有告诉我啊！\n谁也没有对我说这是错误的啊！\n所以我才沦落到这幅下场！\n啊啊，我的真名是——伊丽莎白·巴托里！
0	150	乐园的流浪者。亚瑟王传说中登场的\n宫廷魔术师兼导师、预言者。\n面对想要跨越众多敌人与困难的亚瑟王，\n他时而引导，时而增添烦恼，时而出手相助。\n但虽说是贤人，本质上也依然不是人类。\n毕竟他是梦魔与人类的混血。\n\n「虽然我最喜欢人类的世界了，但算到个人头上的话，\n　其实啦，啥来着，那个嘛，嗯！\n　好，我总觉得还是不说为好！」\n\n如你所见，他其实并不是人类的同伴。\n虽然身为最高位Caster之一，但本人却觉得自己\n一点都不擅长魔术。因为念咒语会咬舌头。
0	195	其乃罪人，乃七个绳结。\n在异端之地寻求赎罪的，乃是恶魔的收获。\n\n——无垢少女指向的下个牺牲者会是谁？
0	212	有着可能性的男人。\n从人们的期待中诞生的英雄偶像。\n\n法国初代皇帝。\n虽曾一时支配了欧洲的大部分地区，但最终还是以衰亡收场。\n其波澜壮阔的一生，并不仅仅是依存于个人的愿望和能力，而是受人民的愿望所引导——至少，“英灵座”是如此定义英灵拿破仑的。\n\n因此，现界后的他常常为了回应“某个人的心愿”而行动。
0	118	公元前十四～十三世纪时期的人物。\n统治了庞大帝国的古埃及的法老。\n如欧西里斯一般爱民，同时也深受民众爱戴。\n被称为拉美西斯二世，\n或梅利阿蒙（阿蒙神所爱之人）。
0	116	平安时代，出现在京的为非作歹的鬼之一。\n被视为栖息于大江山的酒吞童子的部下，\n在源赖光与四天王的「大江山除鬼」途中，\n她曾与四天王之一的渡边纲交手。\n在罗生门传说中，以「美女」的形象出现。
0	191	出现在极度混乱的万圣节，\n另一台怪从者。\n\n其外表与机械伊丽亲十分类似，\n宝具与机械伊丽亲如出一辙，\n技能与属性也完全一致。\n如此奇妙的吻合究竟意味着什么……\n在伊丽莎白种中最为聪明，\n据说女主力（力量）也很高，\n但事实究竟——？\n\n「……先忠告你一句。\n　只要你敢提兼容，小心我杀了你。」
0	111	不知由于什么原因造成了奇迹。\n圣杯的终端。回归大圣杯的婴儿作为分灵得以从者化。\n在这个不知此处为何处，比远方更为遥远的此地，\n不断守护着那位被命运诅咒的守护者。
0	174	在美利坚合众国开拓时代的Tall tale（荒诞故事）中登场的樵夫，传说中是个身高直冲云霄的魁梧男人。\n由于其巨大的身材，产生了很多规模大到离谱的传说，传说北美众多极具特征的地理都是由于班扬的行为所导致的。\n这次作为年幼少女被召唤的原因不明。
0	115	令人愉快的皮夹克。\n与场合相符的发型。\n还有闪耀于腰间的皮带扣。\n怎么看都已经没有丝毫和风要素的雷光骑手，\nMr.Golden即坂田金时，在此登场！\n\n「要和我一起骑摩托吗？\n　那就戴上安全帽，衣服好好扣上哦？\n　因为我会以迅雷不及掩耳之势，\n　狠狠抓住你的心哦！」
0	237	平安时期的作家、诗人。\n具体生卒年不详。\n著有『源氏物语』『紫式部集』『紫式部日记』等\n作品。她创作的数十首和歌被收录在\n『后拾遗和歌集』之后的敕撰集中。
0	22	古代罗马建国神话中登场的建国英雄。\n军神玛尔斯与美丽的公主西尔维亚的孩子，\n传说与神兽之狼为伴一起被抚养长大。\n一统地中海周边国家，为罗马帝国的永恒荣光，\n奠定了基础的建国王。赤红的神祖。
0	125	俵藤太在东方之国被推崇为武艺之祖，\n是平安时代中期的武将。\n之后自称为藤原秀乡，经讨伐平将门一役，一举成名。\n传说中以弓箭击退了身长足以绕山七圈半的大蜈蚣。
0	141	吉尔·德·雷向圣杯许愿，导致了贞德·Alter诞生，而贞德·Alter喝下了吉尔伽美什王那可疑的药，导致了贞德·Alter·Lily的诞生，由于她想成为圣诞老人，才成了贞德·Alter·Santa·Lily。\n\n正可谓第二代Alter亲！\n\n……差不多该有人挺身而出阻止这一切了。
0	53	阿斯忒里俄斯——被赋予雷光之名的怪物（英雄），\n然而几乎无人用这个名字称呼他。\n传遍整个世界的是他的外号——\n弥诺陶洛斯，代表了弥诺斯王之牛的含义。
0	140	罗马尼亚历史上著名的英雄。\n坚持瓦拉几亚的独立，\n是甚至被誉为基督教世界之盾的高洁武人。\n然而，德古拉这个名称却更为普及，是无辜的怪物。\n\n为保护瓦拉几亚免受土耳其军的侵犯，\n肃正了让国土荒废了的贵族们，\n将敌对的2万土耳其士兵施以穿刺刑，\n但由于坚持严惩主义，导致贵族们的背叛。\n他最后是被部下的瓦拉几亚贵族们暗杀的。
0	42	——十步杀一人。\n刺客荆轲企图暗杀秦始皇，但最终功亏一篑。\n若是没有外部因素的阻碍，\n或许本应是一名足以改写中国历史的人物。
0	211	坂本龙马是萨长同盟的中心人物。他创建了龟山社中（海援队的前身），协助促成大政奉还的实现，是为明治维新做出种种重大贡献的志士之一。\n\n他是一位清新脱俗又捉摸不定的约二十五六岁的青年。尽管是北辰一刀流的高手，但其本人却不喜争斗，是个彻头彻尾的好好先生。他的身边常常陪伴着一名谜之美女。
0	29	隶属哈布斯堡家族系谱的法国王后。\n十八世纪，路易十六的王后。如梦似幻的贵妇人。\n象征欧洲世界「由高贵者支配」的存在。\n随着王权绝对性逐渐丧失的时代奔流，\n在世界发生变化前死去。
0	20	凯尔特、阿尔斯特传说中无双的大英雄。\n继承了太阳神鲁格之血的『光之皇子』，\n外号是库林的猎犬。\n虽说与以相同真名被召唤的Lancer是同一人物——\n但无论是肉体面还是精神面，都比「那边」略年轻。
0	172	饱尝酸甜苦辣的壮年男子。\n表示重要的是永不放弃，\n会拍着即将气馁的同伴鼓励他们。\n他的脸上永远不会失去从容。\n他那自信的笑容永不会消失。\n\n——他知道。\n只要不断前行，必将会到达目标地点。
0	52	弗拉德三世是罗马尼亚的王与英雄。\n原本应以Lancer的职阶被召唤，\n但在这次的圣杯战争中却作为Berserker被召唤。\n毫不留情地使用吸血鬼之力，可谓灾祸的化身。
0	67	科尔基斯的公主美狄亚，\n以被称作「魔女」前的少女时期的形象被召唤而来。\n纯真无邪、惹人怜爱的少女身上，\n还看不到「科尔基斯魔女」的征兆。
0	71	凯尔特神话，费奥纳骑士团团长芬恩麾下的骑士。\n拥有惊世美貌，面颊上有着妖精赠送的黑痣，\n具备能打动少女芳心的魔力。
0	232	查理曼十二勇士之一。\n纯真的少女骑士，白羽之骑士。\n是长公主阿雅与克莱蒙地区的艾蒙公爵所生下的公主。\n与她同为十二勇士之一，持有魔剑弗尔贝尔塔的剑士里纳尔多则是她的哥哥。像她哥哥一样是个水平很高的剑士的名声广为流传。\n相传，她在查理曼军与阿格拉曼特的战斗陷入绝境时亲自殿后，与敌将阿尔及利亚王罗德蒙打了一场漂亮的单挑决斗。
0	130	——亮晶晶，在海滩闪耀的王妃殿下。
0	112	平安时代，身居大江山的城中，统领鬼众的头领。\n关于酒吞童子的出处诸说纷纭。\n有人说是伊吹山伊吹大明神（＝八岐大蛇）与人类之子，\n也有人将其视作是户隐山（＝九头龙）之子。\n无论哪个，都是龙神之子，与坂田金时有着共通的背景。
0	89	贝奥武夫是公认为英语文学中最古老的叙事诗——\n『贝奥武夫』的主人公。\n这部叙事诗的舞台位于现今瑞典南部至丹麦附近。
0	182	金星女神伊什塔尔夏日的模样。\n夏日的祭典令人为之疯狂……\n被信仰打动了内心，举办了这个大规模活动，\n简直就是女神般的女神。\n也是驾驶着改装成现代风格的天舟马安娜，\n轻快而痛快地驱使肉体的功夫系女神。\n\n「各位，都玩得尽兴吗～～！？　觉得非常棒～～？\n　嗯嗯，很好很好！\n　继续这样努力下去，直到极限哦～！」\n\n像这样和蔼可亲阔绰大方地向聚集在会场中的所有人\n送去祝福的女神中的女神。\n\n隐藏在她笑容背后的，究竟是什么。
0	3	被圣杯的诅咒侵蚀，骑士王冷酷无情的另一面。\n亦或亚瑟王所追求的“理想之王”，\n正是这样的一种存在吧。\n阿尔托莉雅平时会克制自己的力量，\n但处于这种状态下的她,\n不会对使用强大魔力有丝毫的踌躇。
0	227	中国南北朝时代中侍奉北齐的武将。\n以美貌与勇武而闻名，\n被人们誉为大齐军神。\n传闻即便赐下的只是一个水果，\n他也会与部下们一同分享。\n在死后被赐予了兰陵武王的谥号。
0	226	姓为项，名为籍，字为羽。\n在泛人类史是与推翻秦王朝的刘邦争夺下一个天下的霸王。\n残酷暴虐杀人如麻，一面以无敌的武勋为傲，一面又用反复无常的政策令己方阵营自我毁灭。因此等事迹，他被人嘲笑是「匹夫之勇、妇人之仁」。\n年少时完全没有熟习学问与武艺，仅仅学了些兵法的毛皮，之后则仅凭才气崭露头角。\n\n在异闻带中，霸王的武力已不仅仅是人之城中之物，他的疾驰相当于吞没大军的风暴。\n正所谓是超越了人智、道德的荒野霸王。\n其真实，究竟是——
0	147	希腊神话中戈耳工三姐妹的三女。\n本来的真名是美杜莎。\n受诅咒成长后的悲惨下场\n是基于某种要因，本体（原型）的怪物性质\n被极度强调后的状态。\n处于从女神即将变成完全魔物「戈耳工」前的阶段，\n原本是不会作为从者被召唤的。\n\n——已经是可以被称之为魔兽女王的存在了。
0	217	夏天到了。\n说到夏天就是庆典。\n说到庆典，就是华丽的、满是欢乐的，在夜市上有许许多多的美味。\n原来如此偶尔这样也不错嘛。\n\n……反应过来已经换上夏日服装改变了职阶。\n因为种种原因宝具也改变了。大概变了吧。\n\n虽然不知道什么原因，总之就用现在的这副灵基尽情体验吧！\n茨木童子要全身心享受夏日。
0	17	不喜欢装饰，爱好维持野性战斗的枪兵。\n工作时，是个为了封口会不惜杀害平民的无情人物，\n但相反，业余时性情粗犷。是个很会照顾人的大哥。
0	66	安妮·伯妮与玛莉·瑞德是活跃于大海盗时代的，\n实际存在的女性海盗。\n偶然相遇的两人以海盗的身份，\n在约翰·瑞克姆船长的麾下大展身手。\n安妮是著名的枪手，而玛莉则使用弯刀担任突击职责。
0	218	在鞍马山引起纷纷议论（大概吧）的那个天狗女孩降临在海岸了！\n\n这个用兵高手，同时也是游乐的高手。\n换上了泳装的牛若丸已经几乎不再是牛若丸，那轻捷，那神通力，那少儿不宜的泳装身姿，简直就是鞍马的女天狗本人。\n\n「这轻便的装备，还有四周广阔的大自然……让我回想起在山中修行的时代来了！\n　啊，您问我这把团扇吗？这是师父的旧东西，请别在意！」
0	103	托马斯·阿尔瓦·爱迪生是出身于美国的发明家。\n作为出生于19世纪的人物，\n在全世界有着数一数二的知名度，\n但因身为近代人物的缘故，作为从者的实力略显不足。\n在这次的召唤中为了弥补这一点，\n作为美国这一国家的支柱的历代总统，\n则以补强「爱迪生」这一概念的一种礼装形式而存在。
0	27	在日本无人不知无人不晓的著名悲剧武将。天赋异禀，\n有着过人的领袖气质，然而却遭到了兄长赖朝的疏远，\n最后与随从弁庆一起被打败。牛若丸是源义经的乳名。
0	143	安定的语调，温和的举止，\n却具备了难以想象超强战斗能力的“拥有意识的宝具”。\n曾被英雄王吉尔伽美什誉为最强之人，\n连接天与地之锁。\n既是由众神之手所造的人偶，\n亦是自然与调和一体化的大地分身。\n\n作为英雄王唯一的友人，曾与其经历许多冒险，获得\n人之心之后，却最终以人偶之躯归于尘土的可悲兵器。
0	180	不知不觉服饰＆职阶都进行了伟大灵魂变化！\n借助护法魔王尊的力量，将新宝具，\n也就是竞速用白银圆环实体化，\n海伦娜·布拉瓦茨基向夏日活动发起挑战！\n\n手持NYARF也就是帅气的水枪，\n将在场的对手全部击溃！\n「顺便说一句这把NYARF是我制作的！」\n「改良是我负责的你这庸才！」
0	178	水边的第六天魔王，在此降临！\n加入了大量夏日尾张的流行要素，\n穿着美妙服饰的那位信又回来啦！\n哎？　问我难道不觉得那件垃圾俗气的T恤很丢人吗？\n哼……这次的我和以前的我是不同的！\n在这个夏日，我居然还剩大概2次再临。\n没错，是期待已久的换衣再临！\n等看到再临后我那艳美的身姿，可别惊讶得站不起来哦！\n哇哈哈哈哈～！\n\n……话说我觉得这件T恤还挺帅气的，挺帅气的！
0	108	伊斯坎达尔是亚历山大三世在波斯语中的称呼，\n而其双角王（Dhu al-Qarnayn）的异名也广为人知。\n远征东方的事迹让伊斯兰世界无人不知其武勇，\n这也派生出众多英雄传说，\n在亚洲传播甚广。
0	176	夏日季节到来！！\n「好热！　好懒！　好倦！」\n不喜欢夏天的人造人弗兰亲，\n为追求凉爽，换上了泳装，\n向竞速比赛发起挑战！\n搭档是形迹可疑的五十多岁中年，\n和变形后的巨大机器巴贝奇。\n真像夏天的超巨作电影啊！
0	120	于古埃及第六王朝，短暂在位的魔术女王。\n神奇的是，她有着与巴比伦的古老女王相同的名字。\n传说中，当时的掌权者们谋杀了她深爱着的兄弟，\n而她在成功复仇，将他们都淹死后，\n随即也结束了自己的生命。
0	187	江户柳生最强剑士之一。\n不带任何感情，\n凭寒冰般理性凝视一切的合理性之鬼。\n术理即为合理，换言之，只要将剑术钻研到极致，\n自然就能摈弃无谓实现一切——\n\n从来不提热情，不着急，不焦虑。\n为达目的，会极端冷静地采用最优、最快捷的手段执行。\n成为己方时会是位非常可靠的人，\n但若为敌，则是个冷如钢铁的可怕男人。
0	119	传说中统治了不列颠的骑士王，亚瑟王。\n作为国王君临天下之后，主武装由圣剑改为圣枪的亚瑟王if。\n不再受到圣剑导致的成长停止的影响，\n于是肉体年龄成长到了与王的身份相切合的阶段。\n因使用了圣枪而成为接近神灵的存在，\n但由于使用时间仅为十年左右，\n所以精神构造·灵子构造并未有大幅变化。
0	64	赫克托耳在特洛伊战争中，是特洛伊方的第一英雄。\n无视压倒性不利的兵力差，想尽一切办法持续守城战。\n甚至有人觉得，若没有阿喀琉斯，\n或许战争会以特洛伊方的胜利而告终。
0	55	勇猛的古代波斯王。\n公元前四世纪的人物。\n作为阿契美尼德王朝最后的波斯王而为人们所知。\n同时也是马其顿的征服王伊斯坎达尔的“宿敌”，\n数次挡在他的面前。
0	215	来自于北欧异闻带的从者。\n与泛人类史的斯卡哈是「完全的另一个人」。\n她是仅在异闻带才能成立的神，\n是更倾向于作为女王的存在。\n\n与凯尔特的英雄斯卡哈是同样由来的北欧的巨人，她出现了山之女神——丝卡蒂的大量特征。\n与其说她是有着浓重丝卡蒂一面的斯卡哈，不如说是「有着一部分斯卡哈性质的丝卡蒂」吧。
0	194	所有人都对其大名有所耳闻的传说中的女王。\n其真面目至今仍充满了谜团的神秘人物。\n超越了时代与幻想，她出现在我们迦勒底亚斯的面前。\n\n为了完成一个\n难以忘怀的约定——
0	65	冒险家兼私掠船长，同时也是舰队司令官。\n完成了环游世界一周的壮举，并以其收益，\n为英国开辟了大航海时代霸者之路的人物。\n此外，还葬送了强大的西班牙无敌舰队，\n令俗称日不落帝国的西班牙瓦解的“射落太阳的女人”。
0	102	作为Lancer被召唤，躯体处于全盛期的李书文。\n是一位生于近代，却在武术史上\n刻下无数传奇的中国传说中的武术家。\n作为八极拳的高手名扬四海，\n但其枪术造诣之精妙也足以被人誉为「神枪」。
0	234	于日本民间故事中被冠以『剪舌麻雀』之名的少女剑士，掌管着阎魔亭的可靠老板娘。\n对懒汉给予责备，\n对诚实之人进以诚心诚意的服务以此激励对方，\n同时也是一位勤快的服务生。\n其居合术能够切断对方的薄皮，就连传达邪恶的舌头都能切断……？\n\n「我不会取你的性命啾。\n　不过啾，说谎是不能原谅的啾！」
0	105	比利小子。本名威廉·亨利·麦卡蒂·Jr.。\n美国西部开荒时期的具有代表性的亡命之徒，\n在现代也有极高的人气。现在残留的他的照片，\n在拍卖会上以两亿日元的价格成交，其人气可见一斑。\n父亲的身份不明，但似乎从母亲那儿接受了高等教育，\n从残留的信件中可以看出，在西部亡命之徒中，\n属于能言善书的。
0	60	阿耳忒弥斯带着作为附属品的俄里翁应召唤而来的。\n修正前言，说反了。\n不知为何召唤时女神阿耳忒弥斯也跟来了，\n但其实召唤的是希腊神话的英雄俄里翁。\n外加俄里翁竟沦为了,\n非人非兽的奇妙生物（吉祥物）的模样。
0	157	并非社会创造的无铭，\n而是主动舍弃名字并堕落的毫无杂念的执行者。\n缺失了记忆，也丧失了过去。\n男人放弃了道德，蔑视亲爱，\n不断嗤笑着化为行尸走肉的自己。
0	78	传说中的圆桌骑士王亚瑟本人。\n其真正的形态是位惹人怜爱，\n但也正如传说中一般清廉而高洁的少女骑士。\n其作为圣剑士的模样为人们所熟知，\n但她所拥有的圣枪其实也十分强大，\n因此可作为Lancer现界。——同时正如所见，\n她同样可能作为被圣杯诅咒侵蚀的存在而现界。\n是冷酷无情的骑士王持枪的一面。
0	127	被誉为万能的天才。十五～十六世纪欧洲的人物。\n对文明发展造成了大量影响，\n留名于人类史的屈指可数的天才。\n记录说他曾是绝世美少年、绝世美青年，\n但实际情况却是现在这样。\n在真正的天才面前，性别和年龄都没有关系。\n主义以及流行会随着时代而改变，但真相只有一个。\n无论什么情况，他都是万能无敌的达·芬奇亲！
0	2	不列颠传说中的王。也被誉为骑士王。\n阿尔托莉雅是幼名，自从当上国王之后，\n就开始被称为亚瑟王了。\n在骑士道凋零的时代，手持圣剑，\n给不列颠带来了短暂的和平与最后的繁荣。\n史实上虽为男性，\n但在这个世界内却似乎是男装丽人。
0	137	由伊莉雅分出去的半身\n通过获得了某位英灵的形态现界的模样。\n与幼小容貌不相称的蛊惑言行\n总在不停折腾周围的人。\n自称「伊莉雅的姐姐」。\n但伊莉雅也自称自己是姐姐，\n所以这对如同镜中自己的姊妹总是吵个不停。
0	183	印度神话中至高神湿婆的伴侣……\n本人却是个与战斗无缘的心地善良女神。\n身为神灵，这次借波长相符的少女身体作为自己的躯壳现界。\n\n贞淑、温和，擅长所有家务，\n简直就是理想的年轻妻系女主角，\n但她的真实身份究竟是——？
0	207	希腊神话中的大贤者。\n他精通所有知识，凭借温和的性格和巧妙的教学方法教育出的希腊英雄不胜枚举。\n赫拉克勒斯、阿喀琉斯、伊阿宋、亚斯克雷比奥斯、卡斯托尔……\n即使所处的年代各不相同，他们都是喀戎的门下弟子。
0	19	与源义经一同活跃于日本史上的最有名的僧兵。\n直至现在，也在歌舞伎以及净琉璃等多种作品中，\n受到广泛爱戴。弁庆的仁王立姿、弁庆的痛处等，\n不少有关他的故事传承至今。
0	11	由于和其他英灵的出处不同，\n无法称之为正统的英灵。该英灵被称为守护者，\n是由认为人类“应该延续”的集合无意识所产生的\n防御装置般的存在。这种防卫被称为人类的抑制力。\n也就是无名者所挑选的无貌之正义代表。
0	196	苏美尔神话中的冥界之神。\n能自由操控外形似枪的牢笼，时而穿刺敌人、\n时而囚禁灵魂、时而降下闪电的可怕冥界支配者。\n自诞生以来就担任管理冥界的职务，\n不知地表与自由为何，就随神代一起消失的女神。\n其外表并不是属于埃列什基伽勒女神的，\n而是处于将灵魂附身在与她波长相近的人类身上的\n拟似从者状态。\n尽管非常有冥界女神风范地称监视人类是自己的职责，\n但依然会说什么「……很多人一股脑涌进冥界只会给我\n添麻烦啊……制作囚禁灵魂的牢狱是很辛苦的……\n不知道我是否能为他们提供舒适的居所呢……」，\n难以掩盖自己很会照顾人的一面。\n简直就是冥界的（红色）天使。
0	61	作为吸血鬼卡米拉原型的鲜血伯爵夫人……\n因技能『无辜的怪物』的关系被魔人化……\n但又因偶然捡到的圣杯而附带了万圣节属性。\n好吧真是莫名其妙。为偶像文化所倾倒的同时，\n追加了城堡中的做梦小公主属性，真是属性满载的从者。
0	68	以幕末的京都为中心活动的治安组织——\n新选组的一番队队长，冲田总司。\n作为剑客集团也同样为人所恐惧的新选组中，\n冲田是被誉为最强的天才剑士。
0	181	赖光听说上次，在南国岛屿发生了严重扰乱风纪的事态。\n为了让这次活动不会再次发生这种事，\n通过主动向牛头天王献上祈祷，进行了强制职阶转换。\n变生而成了虽不如原本的Saber职阶，\n但依然是遏制了母性力量，强化了守护都城性质的\nLancer 源赖光。\n\n「赖光如果成了原来的Saber职阶，\n　就会变得非常严肃认真。超·风纪委员长那种。」\n「如果是Lancer的话，对，类似影之风纪委员长吧。\n　也就是说——」\n\n也就是不良少女。\n母性力量受到遏制，\n身为守护都城的英勇武士的赖光会斩断夏日！
0	97	以奉献与献身为信条的克里米亚的天使。\n信念至上的女人。绝不会挫折，拥有强韧精神，\n无论对方是谁——哪怕是大英帝国的君主，\n也会堂堂道出该说之话。外号是「小陆军部」。\n坚强不屈到甚至可称其为孤身一人的军队。\n\n在这次的现界中，由于其精神与狂化技能EX融合，\n（大概）和生前不同，「根本不会好好听人说话」。
0	33	世界三大童话作家之一。\n想必『美人鱼』『卖火柴的小女孩』这些童话人尽皆知。\n1805年生，1875年因肝癌去世。\n现代虽然将其誉为三大作家之一，\n但据说他的半生都充满着挫折与苦恼。
0	15	希腊神话中戈耳工三姊妹的次女。\n男性憧憬的体现，作为完成的「偶像」，\n以及「理想少女」而诞生于世的女神。\n仿佛无暇与纯真拥有了具体形态般的美丽少女。\n姐姐是斯忒诺，妹妹是美杜莎。
0	122	亚瑟王传说中的圆桌骑士之一。\n职阶虽为Saber，但由于其弓术声名在外，\n常常是以Archer职阶被召唤。\n崔斯坦与其深爱的女性伊索德的故事传说，\n在欧洲有着数一数二的超高人气。
0	23	希腊神话中登场的戈耳工三姊妹中的三妹。\n原本是当地的地母神，因奥林匹斯诸神的策略，\n被疯狂的信仰者逼迫逃亡至无形之岛。\n被描写成一个能将全部所视之物变化为石头的蛇怪。
0	74	『童谣是儿歌。\n　拇指汤米的可爱绘本。\n　鹅妈妈的最初形态。\n　寂寞的你，悲伤的我。\n\n　一同去实现，最后的愿望吧。』
0	45	活跃于世界暗处的女间谍。\n但其实玛塔·哈丽在间谍中也是极为奇特的存在。\n直到身为脱衣舞者的她被定罪为间谍予以处决为止，\n她那曼妙的肢体不知迷惑了多少军队的将校们。
0	213	于沃尔松格萨迦中登场并被誉为「战士之王」的大英雄。\n他悲剧的结局，在经过数个故事的变形后，最终以「尼伯龙根之歌」之名广泛流传于世界。\n\n此外，他与齐格飞究竟是否为同一人物也还无法定论。\n到底谁才是打倒传说中拥有共通背景的那条邪龙之人这一疑问如今尚不明朗，也有二人都打败了「不同的」龙这种可能性。
0	214	身穿铠甲的女武神。\n大神的女儿们。\n她们是由北欧神话中的最高存在——大神奥丁大量制造出的。\n\n飞翔在众多战场的空中，从战死的勇者之中选定拥有资格之人，将其灵魂带到大神的宫殿，闪耀着黄金光辉的瓦尔哈拉去。\n为了让其在北欧神代的结局——\n诸神之黄昏中，加入歼灭巨人们的大神之军队。
0	79	传说中的医生、炼金术士。\n作为16世纪文艺复兴时期的人物为人们所知。\n留下了包括「四元素（五元素）的再发现」，\n「三元质的再发现」在内的大量成就与书籍。\n在人类史与魔术史中都留下其功名的稀有人物。
0	28	公元前四世纪，马其顿王国的年轻王子。\n他是一名绝世美少年，\n也是以哲学家亚里士多德为首的贤者们所赏识的天才，\n打从心底里爱着叙事诗「伊利亚特」的天真无邪的孩子。\n可谓是可能性的具现化般的存在。
0	203	正式名为所罗门·本·犹大·伊本·盖比鲁勒。\n他是十一世纪的哲学家、诗人，同时也是使用卡巴拉这一魔术种类的卡巴拉教徒。
0	6	「尼伯龙根之歌」所讴歌的万夫莫敌之英雄。\n手持圣剑巴鲁姆克，打倒邪龙法夫纳的“屠龙者”。\n为人沉默寡言，重情义。\n在战场上总是一马当先保护同伴。
0	117	风魔一族。\n原来的名字取自村子之名，名为「风间」，\n平时通过狩猎、砍柴、耕种小面积田地来获得粮食。\n但一旦开始执行任务，就自称「风魔」，\n其可怕之处名震天下。\n风魔小太郎为第五代头目，\n侍奉北条早云的后继者氏纲。
0	136	就读于穗群原学园小学部的普通女孩子。\n银发赤眼，名字很有贵族的风格，\n常不在家的双亲从事神秘的工作，\n分明是普通住家，却不知为何有两位女仆在，\n顺便还有一个没有血缘关系的哥哥，\n但还是一个非常普通的小学五年级女孩子。
0	153	以日本历史上最强剑豪著称，\n江户时代初期的剑术家。\n精通号称由武藏创始的流派“二天一流”，\n运用大刀与小刀的“二刀流”达人。\n……本应如此，但与正确历史上的武藏\n情况似乎有些不一样。\n\n「哎？　这个世界的武藏是男人？\n　而且还超级有名，太令人惊讶了！」\n\n本人就是这么一个不自大也不矫揉造作的人物。\n对胜利与名誉没什么兴趣，\n好酒，财迷，抵挡不住吃白饭的魅力。\n但与她较量，并输给她的人都这么说。\n\n——艳丽的天元之花。\n　　其剑，能达无空之高度。
0	221	无垢而清纯。\n淫荡而恶毒的女王梅芙。\n绽放于世界中心的一朵美丽的花。或者说，是几乎要覆盖全世界的正盛开的大朵鲜花。\n再加上，这次是写真偶像般的存在——身为诱人花朵的自觉很强。\n\n正因为她对于自己的肉体拥有多大的价值和威力有着正确的认知，才能说她成为融入现代的华丽上流从者只是时间问题。
0	62	极为想要成为贤惠妻子的巫女咒术师。\n平安时代末期侍奉鸟羽上皇的绝世美女。\n传说是白面金毛九尾的狐狸化身而成。\n最后因为很多原因被放逐出宫廷，\n在那须野与人类殊死一战后，据说是乖乖地被讨伐了。
0	56	深爱、眷恋、深爱、眷恋、\n被背叛、伤心、伤心、伤心伤心伤心、\n憎恨憎恨憎恨憎恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨\n恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨恨——\n所以把他烧死了。
0	5	自称男装丽人。虽然是个自我至上主义者且擅自妄为，\n但由于其开朗豁达，如同孩童般天真无邪，\n因此成了被万民爱戴的万能任性皇帝。\n本名是尼禄·克劳狄乌斯·恺撒·\n奥古斯都·日耳曼尼库斯。\n罗马帝政的第5代皇帝。\n一生被阴谋与毒药所妆点的恶名昭彰的暴君。
0	96	是世界上知名度最高的复仇者。\n以外号「岩窟王」或「基督山伯爵」广为人们所知。\n遭到恶毒阴谋的陷害，背上莫须有的罪名，\n被关进了地狱般的伊夫堡监狱。\n但拥有钢铁般坚强意志的他并没有绝望，\n最终获得了基督山小岛上的财宝，回归巴黎——\n将那些巴黎有权有势的人，\n也就是当年陷害自己的人拉向地狱。
0	70	凯尔特·阿尔斯特传说中的战士，女王。\n异境·魔境「影之国」的女王兼守门人，\n枪术与卢恩魔术的天才。她关闭了「影之国」大门，\n并以其自身的强大力量支配着其中的无数亡灵。\n收年轻的库·丘林（之后的阿尔斯特英雄）为徒，\n毫无保留地传授技能并引导他，甚至赠与爱用的魔枪。\n后来还教导了他的儿子康莱。
0	162	战国霸王，织田信长的侄女，日轮之子，\n丰臣秀吉的侧室。\n性格天真烂漫旁若无人，爱好绚烂豪华，超奢侈浪费，总之是个让人费钱费神的女人。\n任性到连天下人都为之头疼不已，但不知为何就是不遭人记恨，令人疼爱的淘气公主。\n「综上所述我现在就有个想要的东西！」
0	155	由从者宇宙而来的无依无靠的反派。\n世间极为罕见的文科Berserker。\n魔力转换炉Alter莉雅反应炉熊熊燃烧，\n发誓打倒谜之女主角X的\n对·对Saber用决战兵器。\n\n你说这太莫名其妙了？\n——不要思考。去感受。
0	107	拜火教是被誉为人类最古老善恶二元论。\n冠以该拜火教传说中的恶魔王之名的从者。\n他是否是真的是安哥拉曼纽这点，\n只能由召唤者自行判断了。\n虽然他乃专门用于杀害人类而存在的英灵，\n但除此以外别无它用。\n在圣杯战争这个超人们的战场上，他毫无用处，\n是名副其实最弱的从者。
0	21	身为斯巴达之王，\n统领着这个催生了“斯巴达教育”一词的国家。\n因在温泉关战役中，用区区三百人，\n挡下了入侵的十万波斯大军而名扬天下。
0	209	为了仅仅一次的光辉被调整的决战英灵。\n别名“魔　神人·冲田总司Alternative”。
0	126	侍奉亚瑟王的骑士中的一人。\n最初的圆桌骑士成员，担任宫廷的执事，照看王的日常生活。\n同时也是见证了王的终末的一人。
0	238	渴爱的Alterego。\n被封印在虚数空间尽头的废弃物。\n她与其他的Alterego……Meltryllis、Passionlip……一样，是摘出、再现于深海电脑都市SE.RA.PH的高等从者。\n\n在樱系列中拥有最高的输出，\n是会无限成长的巨人。\n\n尽管Alterego是多位女神的复合体，但Protea是从所有神话中共通的大地母神的精髓中制造出的。\n也就是说，其中也包括古代美索不达米亚的GrandMother，提亚马特。
0	8	建立起巨大帝国的大王。匈人之王阿提拉。\n匈奴的后裔，匈人族的战士和王。\n制霸了覆盖西亚至俄罗斯、东欧、高卢地区的\n辽阔版图的五世纪的大英雄。\n据说她导致了西罗马帝国的灭亡。
0	228	中国正统的史书『二十四史』。\n她是在其中的『明史』列传中\n唯一一位留下名字的『女性武将』，\n秦良玉。
0	199	世界最古老的毒杀者，也是亚述帝国的女帝。\n由于毒杀了丈夫尼诺斯王而一跃成名。\n\n另外，曾经有一段时间盛传世界七大奇迹之一的\n『巴比伦空中花园』也是她建设的。\n（实际建设者为尼布甲尼撒二世）
0	163	快乐的Alterego。\n由BB创造出来的Alterego之一。\n能融化所有存在的毒之蜜，撕裂所有触碰事物的铁之脚，\n且拥有充满冷酷无情施虐性性格的超攻击型Alterego。\n在BB创造而出的Alterego中拥有顶级的性能，\n其吸收性能甚至凌驾于BB之上。\n因此对BB没什么敬意，另外，也轻视其他Ego。\n由于意识到自身是完整的个体，\n因此自尊心十分高。\n\n「我拥有连自己都觉得有些过分的施虐体质。\n　将厌恶的对手彻底踹翻这种事，太令人蠢蠢欲动啦。」\n\n其身躯正可谓水之女王，\n而肉体却比任何Ego都像瘦小而惹人怜爱的少女。
0	230	谁也未曾原谅过她。\n恐惧、拒绝、苛责。\n\n就连那唯一爱过的男人的真相，\n也没有任何人想去了解。\n\n因此她诅咒人世。\n用憎恨的歌侵染夜风。
0	222	她是为破坏Servant Festival\n而来的一道流星。\n她既是宇宙之法的代言人，又是\n抹杀地球人类与其同伙Foreigner的\n冷酷无比的机器从者。\n\n尽管，当那出人意料的真面目公布于众时，\n无论是谁都十分震惊地移开了视线——？
0	204	阿马德乌斯·沃尔夫冈·莫扎特！\n───我是要杀死你的人。\n\n你的名誉、你的乐曲、你的痕迹\n全部由我抹杀殆尽。\n当你现界之时，\n我定会亲手杀了你。\n戈特利布，被神宠爱的男人啊。
0	4	拔出了选定之剑Caliburn，\n刚开始踏上王之道路的阿尔托莉雅的模样。\n还是个不成熟的少女骑士。\n其容貌宛若惹人怜爱的百合，\n此外，其眼瞳中充满着闪烁的希望。\n她为了积累更多的经验遍历国境，\n留下了诸多冒险传说。\n被她搭救的人们似乎纷纷称颂这华美的少女为骑士姬。
0	139	以美丽留存于历史上的悲剧女王，\n克娄巴特拉七世。\n埃及托勒密王朝最后的女王，\n也是实质上古埃及最后的法老。\n在诸多作品中，将她描写成沉溺于爱情，\n将国家私有化的妖艳美女，但事实正相反。\n她拥有极高的智慧，尤其是经济手段可谓天才，\n是能通过指挥，令军事实力较弱的托勒密王朝\n成为全世界屈指可数经济国家的女性领袖。
0	50	——该男子，就是肌肉。
0	146	希腊神话中戈耳工三姐妹的三女。\n作为男性憧憬的具现，以完全体的「偶像（Idol）」\n降生的一位女神。\n由于某些关键原因，反英雄美杜莎\n与作为女神的两位姐姐以接近的形式现世为从者。
0	99	凯尔特神话、阿尔斯特传说中登场的康诺特女王。\n与众多王者和勇士订婚、结婚，\n时而有着仅止于肉体关系的多情少女。永远的贵妇人。\n阿尔斯特传说的最大战争的起因，\n正是她盯上了忤逆自己的阿尔斯特勇士库·丘林的性命。
0	201	阿纳斯塔西娅·尼古拉耶芙娜·罗曼诺娃。\n罗曼诺夫帝国最后的皇帝，尼古拉二世的小女儿。\n因卷入十月革命的动荡，\n她与家人、仆人、宠物一起，在伊帕切夫别墅被虐杀。
0	44	以十九世纪为舞台的小说『剧院魅影』中，\n登场的幽灵——其实应该是该幽灵原型的人物。\n居住于在歌剧院地下宏大的迷宫水道中，\n被年轻女演员所吸引，并引导她成为一名优秀的歌姬，\n却因无法实现的爱情而犯下了连续杀人的罪行。
0	37	君主·埃尔梅罗Ⅱ世，\n他个人的能力与历史本不足以使其成为从者。\n然而在这次的圣杯战争中，基于极为特殊的情况，\n他作为中国英灵诸葛孔明的附体容器被成功召唤。
0	9	身高／体重：186cm·91kg\n出处：史实\n地域：法国\n属性：秩序·善　　性别：男性\n显得过度消瘦的美男子。兴致尚不是很高昂的时期。
0	197	仰望天空吧。\n向平安夜许愿之人一定能看到。\n看到驰骋过夜空的彩虹，咩咩叫的羊群，\n以及身着大胆服饰，\n似乎有点感冒倾向的美丽圣诞老人的身影……！\n\n其名为阿蒂拉·the·San〔ta〕。\n西方大王，拥有星之纹章的剑姬从多舛的命运中\n觉醒了身为圣诞老人的使命，克服了起初的身体不适（低烧），毅然挺身而出的令人倍感可靠的第三位圣诞英灵。\n\n这次在大王轶事中多次登场的游牧骑兵也随侍左右。\n……然而，它们都长着可爱绵羊（只不过是宇宙规格）的\n样子。这究竟是为什么呢。
0	88	北欧主神奥丁的女儿，女武神瓦尔基里中的一人。\n北欧神话中的悲剧之女。\n是被视作与『沃尔松格传』中的大英雄——\n齐格鲁德的命运爱人希格德莉法为同一存在的女武神。\n在老埃达的『希格德莉法之歌』，\n以及『布伦希尔德的冥府之旅』中，\n同样被描述为与齐格鲁德坠入爱河的女武神。
0	16	古代波斯传说中的大英雄。\n作为被誉为西亚神代最后王者的曼努契黑尔王的战士，\n终结了波斯与图尔库之间长达六十年的的战争。\n为两国民众带来和平与安宁的救世勇者。
0	104	杰罗尼莫是北美大陆的原住民之一，阿帕切族的战士。\n「瞌睡人」，正如他的名字在阿帕切语中的意思一样，\n他原本过着悠闲的生活。然而这一切，\n在他二十岁的时候改变了。\n妻子惨遭墨西哥士兵杀害的他，\n在演说上发表着豪言壮语，\n并以『战士』的身份加入了对墨西哥军的复仇行动中。
0	101	印度两大叙事史诗之一，「罗摩衍那」的主人公。\n通过从大神处骗得的神力，连神明也能够使役的魔王，\n罗波那，据说唯有人类才有资格将其打倒。\n接受了众神祈求的毗湿奴，放弃了所有记忆，\n作为某国的皇子转生成为了凡人。\n这便是罗摩。
0	224	她是以与圣杯结缘的人物为核心，融合了多位英灵（神灵）的存在。\n成立的经过虽然可以看做与像诸葛孔明那类的拟似从者相同，\n但她在现界时的性质是英雄复合体的高等从者，\n并与作为强烈的自我提炼的Alterego是同一性质。\n凭依的对象并非人类魔术师，而是爱因兹贝伦制造出的\n最新、也是最后的人造人。\n据说她是一位拥有几乎覆盖全身的大规模令咒，魔术精度一流，\n作为御主的性能超一流的人物。\n此外，也有说法称她的体内藏有小圣杯的功能。\n作为灵基所登录的真名为西托奈。\n这似乎是因为，聚集在凭依者身上的三种英灵（神灵）之中，\n西托奈是最强的，并显现在外表的缘故。
0	80	十九世纪的数学家、科学家。\n梦想给世界带来变革的蒸汽王。天才学者。\n提出了「差分机」与「分析机」的设计概念，\n也即基于蒸汽机关的世界首台计算机雏形。\n现代称其为「计算机之父」。
0	82	维克多·弗兰肯斯坦创造的人工生命体。\n作为与亚当成对的夏娃而被制造出来，\n但由于无法流畅地表现喜怒哀乐等感情，\n被判定为失败作品。
0	173	世界上最优秀，也是唯一的顾问侦探。\n侦探这个概念的结晶，“揭露者”的代表。\n19～20世纪亚瑟·柯南·道尔爵士所著小说的主人公，是能解开各种谜题的侦探，也是后世众多推理小说中登场的「侦探」的始祖之一——\n他受到了如此评价，\n而实际究竟如何呢？
0	49	三国演义中反复无常的将领。\n两度斩杀义父，数次背叛主公。\n在注重儒家道德的中国，\n他的所有这些行为都令人难以置信。\n但他所成就的功劳与武勋也是他人远不能及的，\n在三国演义的世界中可谓最强的人物之一。
0	87	凯尔特战神努亚达的后裔，光荣的费奥纳骑士团团长。\n他打倒了能操纵睡眠与火焰的邪恶神灵，拯救了都城，\n身为爱林（爱尔兰）的守护者，打倒侵略者与魔物，\n是位建立了无数功勋的大英雄。\n钻研魔术与睿智，原本拥有诸多能力与宝具。
0	148	中南美传说中的古代神灵之一。\n豹子是「战斗」与「死亡」的象征，\n是永世在中南美各时代文明被崇拜的存在，\n据说过去时常会在地上现身。\n在前古典时期的奥尔梅克文明中，\n祭祀着豹神、人类与豹的混血……\n之类的『豹人类（豹人／半豹人）』的像。
0	91	在变异特异点·境界式得以一窥的女性。\n豪华的和服，优雅的举止，充满慈爱的判断力。\n这一切都是异常中显得尤为突兀的日常。\n存在自身尚不确定，虽知晓诸多奇怪事件的全貌，\n但却不会介入其中。\n\n原本是不可能邂逅的贵人。\n即便如此——如果能够相遇，\n那一定是在那万籁俱静的雪之日。
0	124	戴着骷髅面具的暗杀者。\n担任暗杀教团党首『山中老人』的，\n历代『哈桑·萨巴赫』中的一人。\n生前则是有着『静谧哈桑』之异名的毒杀名手。
0	154	面带骷髅假面的暗杀者。\n在暗杀教团作为阿萨辛成立，『山中老人』的名号\n成为称号代代相传的那刻起诞生的最初的哈桑·萨巴赫。\n然而其他18名哈桑，\n以及教团的信徒们都不知道这个人物的真面目，\n也没有任何他实际存在的证据。\n然而他乃是会在当代哈桑·萨巴赫走上歧途时出现，\n斩断其首级的传说中的暗杀者。\n也就是斩杀哈桑的哈桑。
0	109	作为抑止力代行者现界的暗杀者。
0	12	公元前，统治苏美尔的都市国家乌鲁克的半人半神之王。\n并不仅限于传说，据说也是现实中存在的人物，\n人类最古老叙事诗『吉尔伽美什史诗』中记述的王。
0	164	由BB创造出来的Alterego之一。\n爱憎的Alterego。\n是个会因过于巨大的胸部与凶恶利爪而给人留下\n深刻印象的少女。\n不喜欢战斗，但由于技能·受虐体质，\n总会遭到周围的袭击，无奈只能迎击。\n在Alterego中是首屈一指的力量型角色。\n将对方包起来、切割，并收入胸膛内独占，\n盲目求爱的化身……\n她曾经是这样的存在，但因某次邂逅认识到\n单方面的求爱并不好，从而改头换面，\n开始注意不让自己身体上的各种凶器伤害到他人，\n成长为一名消极保守但十分善良的AI了。
0	26	公元一世纪，古代不列颠尼亚年轻的战斗女王。\n由于无法忍受罗马帝国在恶毒的侵略中，\n凌辱了自己与女儿们的暴行，而率诸王发动了叛乱，\n最后败给了皇帝尼禄的军队，战死。\n后世化为了不列颠「胜利的女王」的传说。
0	85	印度古代叙事诗「摩诃婆罗多」的大英雄。\n是身处摩诃婆罗多中心位置的英雄阿周那的对手，\n也是他的异父兄弟。遭到众多诅咒，身体无法动弹的他，\n最终以近乎谋杀的形式被阿周那杀害。
0	144	中南美阿兹特克神话中的至高存在之一。\n看上去自由奔放，实际却是善良而充满知性的女神。\n厌恶活祭仪式，深爱人类。\n生命与丰收之神、文化之神、风雨之神。\n曾经有一段时期还有过司掌太阳的传说。\n\n最高存在（通过分灵）的现界。\n在如此异常事态中，魁札尔·科亚特尔表现出了\n谁人都不知道的崭新的一面。\n那就是作为深爱兴盛于现代墨西哥的自由斗争——\n深爱墨西哥摔角的神。\n……她并没有被人奉为摔角之神。\n只是本人很喜欢摔角而已。
0	236	和伊莉雅、克洛伊一同\n就读于穗群原学园小学部5年1班的小学生。\n她与万华镜之杖魔法蓝宝石签订契约，成为了第二位魔法少女。\n不知为何无依无靠的她被露维亚带回家，\n并得到了艾德费尔特的姓氏，\n从此过上了身为女仆的生活。\n\n她掌握着大学水平的物理和数学知识，但相反，\n与其他人的沟通能力比幼儿园的孩子还要差。\n她所交的第一个朋友，\n就是伊莉雅。\n不知是因为区分不开友情和爱情还是别的原因，\n美游和伊莉雅之间突然没有了距离感。\n尽管伊莉雅对此感到困惑，但还是回以亲爱之情。\n在日常与非日常的循环中，两人不知不觉便成为了挚友。\n\n顺便一提，克洛伊似乎是争夺伊莉雅的对手一般的存在。
0	206	希腊神话中知名度之高屈指可数的英雄。\n其生涯既如同疾风一般飞驰而过，同时也有着与英雄之名相应的光辉。\n是期望平凡、安稳地活着，\n还是作为英雄壮烈地死去，\n当母亲询问时，他毫无迷惘地选择了后者。\n阿基里斯腱这一人体部位的名称，就来源于传说中有着不死之身的阿喀琉斯唯一的弱点。
0	14	希腊神话中登场的著名女猎人。\n击退卡吕冬野猪时，因射中了第一箭而闻名遐迩。\n此外，她也加入了希腊勇者齐聚一堂的阿耳戈号，\n成了他们的一员。
0	186	突为枪 挥为雉刀 抽为镰 总而言之 必中无疑——\n声名远播的宝藏院十文字枪。\n宝藏院胤舜乃宝藏院枪术二代传人，\n传说其招数能达神佛境地的男人。
0	10	传说此人亦男亦女。\n是十八～十九世纪法国传说中的人物。\n文武双全的剑士和文学家。\n作为机密局的间谍，活跃于对抗各国列强，\n同时担任全权公使、龙骑兵队长等职务。
0	57	手持血斧的维京之王。\n这就是血斧埃里克，俗称「血斧王」。
0	160	推崇善良的存在，追究邪恶的存在。\n犹如每一颗孩童之心都梦想过的白马骑士般的英雄。\n也被称作星之圣剑使。\n其真面目，是追逐着某种存在\n来到这个世界的异世界的「骑士王」。
0	113	公元7世纪，唐代的法师。\n为了寻求佛教原典，顺着丝路旅行，\n由中亚到达印度，将多达六百五十七部经书\n带回了大唐，成了法相宗的祖师。
0	86	从被称为从者宇宙的神秘时空来访的异乡之人。\n自称Saber职阶的决定版，\n身为一名骑士，\n光明正大地发动暗算的对Saber用决战兵器。\n\n代号·A-X。
0	59	主啊，我将为您献上此身————。
0	35	啊啊，恶魔！　恶魔！　恶魔来了！\n是梅菲斯托费勒斯！\n是那该死的最邪恶的恶魔！
0	202	这是阿塔兰忒使用自己的宝具——\n卡吕冬的毛皮变身后的姿态。\n即为Atalanta Metamorphosis。
0	94	阿斯托尔福是法国经典骑士道故事——\n查理曼传说中的登场人物。\n查理曼十二圣骑士之一，也是英格兰王子。\n若要补充一句的话，\n此人也是个彻底丧失理性的无能英灵。
0	184	她一定会温柔地微笑。\n只要愤怒尚未填满她的内心全部。\n\n她是与■■间的■■之裔，因此具备浓厚的粗暴性质，\n但基于对所爱之人的情感，这种性质在关键时刻\n被封了起来，她才获得了文静人类女性的个性。\n——看似如此。
0	210	被列为幕末四大人斩之一，别名“人斩以藏”。\n学习了小野派一刀流、镜心明智流、直指流剑术等多种剑术。由于与多起暗杀事件有关，他最终被下狱处刑。\n\n虽然他以自己的才能为傲，有着看低自己以外的剑士的毛病，但他的剑术被评价为“剑法矫捷如鹰隼”，是一位真真正正的天才。
0	40	白骷髅的暗杀者。\n起源于中东的暗杀教团党首。\n别名「山中老人」，作为Assassin语源，\n尼查里派传说中的头目之一。\n据说山中老人历代共有18人，\n每位都是修炼成特殊技能的达人。
0	114	公元十～十一世纪的人物。\n作为源氏的嫡长子出生，是摄津源氏的祖先，\n也是为整个清和源氏的发展做出贡献的人物。\n消灭了「大江山的酒吞童子」、「京的大蜘蛛」、\n「浅草寺的牛鬼」等诸多怪异，\n被誉为平安时代最强的神秘杀手。\n在史实上为男性。她之所以是女性，\n应该都与其出身的秘密有关……？\n率领部下的赖光四天王——渡边纲、坂田金时、\n卜部季武、碓井贞光，一直守护着都城的安宁。
0	133	异境·魔境「影之国」的女王，勇士之师的斯卡哈本人\n——本应如此，但这次号称为了适应环境，做出了将自\n己与周围数名女性从者改成泳装模样的暴行。\n其结果如你所见，完全是夏日状态。\n斯卡哈本人曰，偶尔这样也不错嘛。
0	75	世界著名的连续杀人犯。\n在英国被称呼为「Jack the Ripper」。\n五名女性被其杀害，尽管苏格兰场拼死搜查，\n她却依然逍遥法外，最终消失得无影无踪。
0	135	铁拳一闪裂钢铁。\n钢拳一击穿巨龙。\n心怀救世主（那个人）的话语，\n现在仍谨记圣女的誓言。\n\n——此身一定都是为了民众。\n\n这个姑且不论，就算是夏日，也不能允许怠惰的生活！
0	25	恐怕是世界上最著名的大海盗，\n定义了海盗这一名词的大恶人。\n支配着整个加勒比海，\n沉溺于美酒，美女以及暴力，拥有大量财宝。
0	123	亚瑟王传说中的圆桌骑士之一。\n作为最早追随王的骑士之一，\n与王并肩而战，一直侍奉王到终结之时的忠义骑士。\n持有被称为Excalibur的姐妹剑的太阳之圣剑，\n身负圣者的祝福，在白天时，\n作为无人可比肩的无双骑士而驰名于世。
0	175	「一提起夏天自然会想起避暑胜地。\n　一提起避暑胜地自然会想起高级酒店。\n　一提起高级酒店，没错，自然会想起\n　特别设置的竞技场！\n　黄金剧场现已改成常夏规格，皇帝尼禄，\n　在夏日的海洋闪耀七色光华～！　的说～！\n　映射的阳光乘着流淌的水流！\n　现在，要让余的歌剧响彻整个迦勒底！」\n\n事实上，据说相性好过Saber职阶。
0	231	在以三国志为首的诸多史书与故事中拥有着活跃表现的飞将·吕布。\n他拥有着无与伦比且为之骄傲的武勇。既为将军又是武人的他直至生命的尽头也仍在战斗，\n据传还有着被称作赤兔的爱马与之共同驰骋战场。\n\n「于是吕布如今便通过与自己的宝具、同时也是爱马的赤兔融合成一体，正所谓是人马一体！\n  人・马・铠・武具完美地合为一体，甚至超越了古希腊传说中所述的半人马，作为最强人马兵现界于世！\n  总而言之我就是吕布了。咴咴！」\n\n咴咴。\n这份热烈的自我介绍简直是毫无任何怀疑的余地啊。
0	198	你说我看上去实在不像北斋？\n很抱歉我长得那么娇小可爱，如果你想了解个中缘由，\n就来加入我的故事吧！
0	63	大卫是旧约圣经中登场的以色列王。原本是牧羊人，\n挺身主动孤身挑战巨人歌利亚，并将其打倒。\n之后，虽与当时的王产生了纠纷，\n最后还是成功即位当上国王，实施明政。
0	106	——如果神明当真存于此世，\n想必会降天罚于我身吧——
0	92	在变异特异点·境界式遭遇的少女。\n和洋折衷的打扮，男性般的口吻，\n毫不犹豫的行动力。\n这一切都是日常中显得尤为突兀的异常。\n由于拥有可目视死亡的特异体质，\n因此常遭遇各种奇怪的事件，并进行压制。\n本人虽毫不知晓，\n但她自身已然成为逍遥的都市传说之一。
0	169	……是这样啊。\n我被……召唤了啊……呼……（叹息）。\n您应该知道，何谓适材适所。\n比起战场，还是在您的房间——
0	190	人类科学已经发展到这个程度了吗！？\n\n不，不对，这和科学没什么关系。\n遭遇了一次次异变的恰赫季斯城终于使出了最终兵器。\n那就是无名贤者留下的遗产。\n安放于恰赫季斯城地下的宝物。\n一言不发的守护像与一次次捡到圣杯\n并失败的鲜血魔女的身姿相呼应，\n终于作为守护神觉醒了。\n\n其名字为Alterego·机械伊丽亲。\n觉醒了领主之心，做事略有些过火的\n正义的魔女。
0	7	古代罗马最伟大的英雄之一。\n在高卢战争以及不列颠尼亚远征中声名远播。\n作为一名将军，是一位优秀的统治者。\n英语名为西撒。\n传说是女神维纳斯后裔，甚至曾与非人类妖精共育后代的风流成性的男子。
6	236	她未能以普通少女的身份生活。\n仅仅是一个能实现人愿望的容器。\n非凡的才智让她正确理解了其含义与意义，\n并看透了自己只是这个道具所附带的\n不必要的人格。\n对这样的她伸出援手的，\n是仅仅身为美游的哥哥的士郎。\n\n「希望美游能得到幸福。」\n\n这是哥哥为妹妹献上的，小小的祈愿。\n这份祈愿的结果，\n以离别的形式实现了。\n\n少女终于学会了靠自己的双脚站立。\n尽管赤脚接触到的地面很冰冷——\n但哥哥的心意跨越了世界，\n如今仍在温暖着美游的心。
6	238	渴爱的Alterego。\n在深海电脑都市，祈荒SE.RA.PH化的过程中，再现为“SE.RA.PH附带物”的存在。\n（※虽然Meltryllis、Passionlip两骑是『（与）吸收这两骑的祈荒（同步之物）』以祈荒的意志摘出的存在，但Kingprotea的再现并非出于祈荒的意图。）\n\n本应是不为任何人所察觉，\n不与任何人相遇就和SE.RA.PH祈荒一同化为泡影的存在。\n\n自从成为从者后，她便等待着御主的命令……不如说，她变得十分喜欢命令。\n这是出于受到命令=获得爱的喜悦，以及Protea对自己没有自信的缘故。Protea因为知道自己是废弃物，所以一直感到『心虚』。\n\n无论是外面的世界还是新的人际关系她都没有兴趣，她仅仅是渴求着御主的爱意。\n纯洁的求爱，一心一意的献身虽然听起来很美好，但那种关系就仿佛走钢丝一样危险。\nProtea并非『因为喜欢御主所以爱着御主』，而是『因为御主爱着自己所以喜欢御主』。她对恋情一无所知，只懂得爱意。\n一旦来自御主的亲爱之情中断……Protea感受不到爱意、觉得爱意不够……那么，她就会忍受不住饥饿，最终捕食掉御主吧。\n\n归根结底，Protea与其他Alterego一样，也是由扭曲的自我诞生的。\n尽管她会坦率地服从御主的命令，但那并不是绝对服从。御主在与Kingprotea缔结契约之前，必须要让Protea的精神性得以成长才行。\n让她摆脱无论怎样汲取也无法满足的『渴爱』。\n让她学会，仅凭渴求的心只会把对方啃食殆尽，相互认可、互相给予的关系才正是『心之食粮』。
6	216	和玛丽·安托瓦内特一起组建了社团『st.奥尔良』。\n虽然她们原本是打算画爱情喜剧漫画的，\n但是……\n「无论读到哪都会出现爆炸场面」\n「比起酸酸甜甜的，更像是饱和的砂糖水」\n「为了要到联系方式，居然要炮轰智能手机，无法理解为什么要这么干」\n就像这样，似乎在另一种意义上获得了评价。
6	169	在现在我们阅读的『一千零一夜』结局中，\n是以「山鲁佐德最终生下了三个孩子，王也学会了宽容」的形式画上句号的。正如前文所述，\n这是原本内容中没有的结局，\n身在此处的『她』从未经历过这一切的可能性很高。\n然而如今，这结局之所以煞有介事地被传颂——\n\n与击碎幻想都市之虹中存在之物相同。\n\n一定是，有谁在许愿。\n\n并非她本人的某人——渴望她自身被救赎的形式。
6	211	——我既不想对任何人挥刀，\n　　　　　　　　　也不想对任何人开枪。\n　　　　　　　　　\n\n最初是为了邻居家的小孩子，接下来是为了家乡的朋友，再之后是为了志同道合的同伴，最后是为了日本这个国家。\n天生的好好先生自始至终都在全心全意地为了某个人在时代中不断地奔驰。受无数人爱戴、又被无数人厌恶，尽管最终被残忍地杀害离开人世，他却也毫无怨恨与后悔。他从头到尾都在梦想着一个大家快乐地生活在一起的世界，仅此而已。
6	148	为何会尝试现界这点上不明确。\n究竟是跟着魁札尔·科亚特尔一起来的，\n还是带着玩耍的心情来的，\n亦或是特斯卡特利波卡正打算出来的时候，\n抢在那位前面跑来……等等可能性，令人兴趣盎然。\n\n卖点在于由于是神灵系从者中最下级的存在，\n所以不怎么费消耗点。\n怎么看都是附体对象的人格占了主体，\n但这件事万万不能指出。
6	170	出人意料的是武则天相当迷信。\n虽然她喜欢变更年号、称号或是城市的名字，但这么做\n不仅是因为她喜欢新事物，同样是因为为了好彩头。\n此外，据说她相信了被自己杀害的萧氏死去时喊出的\n「愿阿武为老鼠，吾作猫儿，生生扼其喉」这一诅咒，\n从此以后，宫中严禁饲养猫。\n再加上还有人说因为她害怕出现幽灵，\n甚至将国家的首都从长安迁至洛阳——\n\n「啊……喂！　别在这种地方偷偷记录朕的弱点，\n太卑鄙了，不对，这内容本身就是假的，\n朕根本就不怕什么猫或是幽灵啊，\n哎，总之必须好好惩罚！」\n
6	136	这位伊莉雅丝菲尔是「她」可能存在的if的样子。\n是某些成年人反抗命运、祈祷、并赌上性命成功守护的「极为普通的女孩子」。\n抚养孩子，然后终将发现。\n存在于平凡中的幸福，才是这世间最难能可贵的愿望。\n\n——所以，伊莉雅一定不会犯错。\n哪怕残酷的命运逼迫她选择，哪怕为挡在面前的现实感到犹豫不决，最后也一定能抵达。\n她的目标，是真正的大团圆。
6	129	谁说亚瑟王只能是剑的英灵啊？\n\n能用剑、能用枪、还能用弓、也能骑驯鹿，更会偷袭同属Saber的存在。\n这才是不会为骑士王之名蒙羞的万能战斗技术吧？\n这先搁置一边，阿尔托莉雅不会游泳的原因，是因为她受到妖精「能在水上行走」的佑护。生前没有必要游泳的她根本就没有练过游泳。也就是说她在游泳方面——
6	210	只需观摩便可模仿出所有剑法的剑术奇才，冈田以藏。\n拥有这份惊人天赋的以藏作为当代独一无二的人斩，活跃在幕末的舞台上。\n以藏被誉为天诛的名人，与数起暗杀事件有关，可以被称为\n日本史上屈指可数的Assassin，因此，他并未作为剑士出名。\n该说是因为时代的洪流，还是命运呢，可惜的是，\n稀世的剑之天才，却没能作为天才让自己的才华得以磨炼，开花。
6	200	藤乃所在的时代由于人理烧却化为了灰烬。\n她也同样被烧尽了，但世界的抑止力却没有放过她的特异性。\n阿赖耶识采用她的异能作为颠覆人理烧却的战力之一，她才会作为暂定从者被召唤到了迦勒底。\n对她来说，现在的自己不过是个『梦』。\n和式一样，见证了燃尽前的景象，倘若无法颠覆人理烧却，就会消失的一夜幻梦。\n一般的感性下或许早就混乱，并陷入恐慌了，但藤乃淡然地接受了这样的异常。\n她明确理解作为从者被召唤而来的自己的立场，并在自己力所能及范围内努力帮助御主。
6	164	Meltryllis是『恋上恋爱的少女』，\nPassionlip则是『追求爱情的少女』。\n然而她的外表令她无法得到他人的爱，\n即便追求也无法得到的现实令爱转化成了憎恨。\n爱憎的Alterego——Passionlip就是由此而生的，\n但现在的Lip身上已经完全找不到这种性质了。\n由于性格原本就很率真，在改邪归正后，\n她与身为『BB根源』的那位少女的性格\n变得有些相似了。\n\nLip很清楚自己这个从者拥有的性能是多么凶恶与麻烦。\n因此，她对没有抛弃自己，\n依然决定陪伴自己的御主心怀感谢之情。\n这份感谢逐渐化为亲爱与憧憬，\n最后或许会变得梦想爱情吧。\n……但了解了自己出身与特性的Lip\n已经不会再「天真无邪地追求爱情」了。\n只要恋爱，只要被爱，就会伤害到这位温柔而善良的人。\n所以她努力维持着这种梦想，暗中成为御主的助力。
6	232	鲁杰罗对于作为从者现界的布拉达曼特而言，就相当于『追寻光辉的英灵』的目标。\n只要她还作为“布拉达曼特”这个传奇，追求和寻找的『希望』就会是鲁杰罗。\n也就是说，无法迎来像生前那样的幸福结局——因为“不断探索的传奇”才是作为英灵的她的定义。\n\n「当然啦，我对此是有点悲伤的！\n但首先我是一个圣骑士，所以为了取回世界我必会全力以赴！」\n『这样就好了哦。我会直接和你的心灵进行对话的。』\n「梅林大人！」
6	218	精神上算是年轻，有着喜欢恶作剧的一面。\n但是牛若丸本性中的，\n往往感受不到人情味的『干脆利落』却没有消失。\n倒不如说是正因为成了和天狗相近的存在，偶尔会（不是挖苦，而是自然而然地）表现出『因为是天狗所以比人类强大』这样的特权意识。\n综上所述，牛若丸的恶作剧大多是「给没有意识到自己愚笨的人惩罚（教训）并对着他大笑」这样的类型。\n多多少少是站在贴近非人类的立场的。\n\n「那个家伙真的是让人没有办法啊。\n　好，戏耍一下，给他个教训吧。」\n\n但是，对于杀人这种真正的恶行则是「没有惩罚的必要了，直接斩杀了吧。」这种态度。
6	178	第六天魔王波旬，织田信长。\n\n原本的第六天魔王状态是不仅能烧尽神佛，\n甚至会烧尽自己的危险模式，\n所以才通过用 Berserker 这个职阶进行封印，\n以便暂时维持第六天魔王状态。\n尽管她总使用愚蠢的言行糊弄过去，但对信长来说，\n这个形象是非常危险的状态，因此需要定期\n释放（Shout）魔力（Rock）来降温才行。\n\n——算了，这也是无可奈何的！
6	32	由于过度称颂神明以至于无法不质疑神明，\n进而诅咒并贬低神明的这名执着的男性，\n最终也没有受到神的制裁，走向了毁灭。\n只有能表现出理解他这份热情与失落的御主，\n才能完美地将其作为从者来使役吧.
6	143	『世人啊，冀以锁系神明』\n阶级：A++　种类：对肃正宝具\nEnuma Elish\n将恩奇都自己的身体变成一件神造兵器。\n化为用庞大能量变换而成的楔子，\n贯穿、固定对象。\n\n恩奇都原本就是诸神为了让吉尔伽美什\n『回到神的身边』而派遣的兵器。\n\n为了神与人不分离而制作的『天之楔』，\n那就是吉尔伽美什。\n但由于这位吉尔伽美什反叛神明，\n他则担负着束缚吉尔伽美什并将其带回天上的职责。\n\n然而恩奇都却成了吉尔伽美什的朋友，\n这“甚至能束缚天的锁”依照朋友的愿望，\n选择了为人而用之路。
6	196	从神话时代开始，埃列什基伽勒就因自己遭人厌恶，\n生活在阴暗处而感到痛苦、憎恨。\n她甚至拥有「我也想像伊什塔尔那样自由地生活。\n我想遇见一个明知我是冥界主人，\n也能不在乎冥界主人地位，并与我相处的人」\n这种极为少女的愿望。\n正当她内心纠结于\n「我不否定反派，明明恶也会以恶的方式帮助人类，\n  为什么大家都那么害怕呢！」的时候，\n得知了美索不达米亚世界即将迎来的终焉，\n她为了以自己的方式守护人类，\n才加入了三女神同盟，成了乌鲁克的敌人。\n\n那之后发生了不少事，她也沉入了深渊，\n但她也由于一些事肯定“现在的自己”，\n选择帮助迦勒底修复人理之路。\n\n她手持的枪乃是发热神殿美斯拉姆忒亚。\n是只有拥有这个灵基时才被允许拥有的，\n存在于地底的温暖之光。
6	221	成为宝具『心爱的夏日幽会』的目标，应当为自己感到自豪。\n被女王梅芙搭话的人，没错，就是被选中的俊美勇士……不，应该是只有俊美勇士才会被搭话……！\n\n这可怕的宝具是以她的魅力为中心构成的，但意外的是，宝具并没有连续的魅惑效果。\n「所谓一夏的恋情，你看，就是这样的吧？」\n梅芙本人如此解释道。
6	163	明明想吸收他人，却不想要他人的理解与共鸣，\n这都是由于Meltryllis不理解他人的感情所致。\n\n她不需要别人。\n也无法共享爱与梦。\n倘若这样的她获得了“恋慕之情”，\n一定会向那位对象奉献一切，倾尽所有吧。\n\n对自我完结的Meltryllis来说，\n对象的心情不值得考虑。\n她会以高傲的态度断言自己的爱情才是正确的。\n\n不打算商谈\n（已经深爱到觉得没有这个必要性了），\n没有触碰的欲望\n（已经觉得这种程度的快乐远远不够了），\n也不打算说出渴望被爱的心情\n（已经不需要这种相互理解了）。\n\n简直就是什么都没有的高傲Ego。\n总是一副看不起人的高压态度的背后，\n是没有丝毫迷茫与瑕疵的过于纯粹的“恋慕之心”。
6	222	成为宇宙刑警的X说着「这是个好机会啊」，将名字·户籍改为XX。\n如此一来她变成了另一个人，便将迄今为止的所有借款都赖掉，并设立了取缔来自外宇宙的入侵者Foreigner的特搜0课。\n这就是邪神猎人·XX的诞生。\n\n身为Saber猎人的本能变得薄弱，而作为Foreigner猎人的本能则十分卓越。\n即便如此，也并不是说Saber排除运动就停止了，因此Saber特攻还是不变。\n\n\n○动机·对御主的态度\n在地球的搭档。可靠的钱包。\n因为是恋爱技能基本为零的X，所以感觉上和御主是好友。但不久后她发现御主是重要的人，\n却又因「心扑通扑通地跳，这到底是……难道说这颗星球上有Saber邪神吗！？」\n之类的误会，错失了机会。\n基本上与X一样，但身为刑警的自觉使意识变高，相对于X，摆出一副姐姐的架势。\n因为是X的数年后的系列，因此有着对生活感到疲惫的OL感。
6	219	夏日活动的中心人物。 \n创建了社团『亡灵异端（Gespenst Ketzer）』，和主人公一起不断地画着漫画。 \n虽说所有的起因都是对贞德的对抗心理，但根本上好像是对「不可能的展开」、「完美结局的故事」包含着憎恶和憧憬的难以释怀之情。 \n在夏日活动结束后，「我到底为什么会变得那样拼命啊。」\n据说她一边对自己的行为惊呆了，一边觉得与之前相比，自己和文学系从者间的距离感更近了。
6	128	女神变生：B\n变化技能的最高位。\n变生为女神。\n简直是Buff狂欢。只不过之后会立刻麻痹。\n在某个电脑空间里，有个圣女貌似也得到过这个技能。\n话说玉藻的神性貌似轻描淡写地就变成了A++，但这也是夏日得到太阳补正的天照侧面的表现什么的。
6	172	他向圣杯许下的愿望当然是「金钱与快乐」。\n他将御主作为一同赚钱的搭档对待。能赚到钱让自己心情愉快的御主就是好御主，喋喋不休地说着伦理或正义之类的御主就是坏御主。\n被迦勒底召唤时，因为人类史被烧却，更不用说金钱了，没办法才提供帮助。他通过计较得失行动，因此也可以理解没有利益的事。然而只要有可趁之机，他就会去满足自己的欲望。
6	130	与玛丽·安托瓦内特度过的夏日时光一定能让人梦见真正的贵族假日吧。既然是梦，就迟早会醒来，但依然能留在回忆中。
6	183	仅由『凭依之躯少女』的善性构成的拟似从者。\n但是，虽说是光，并不代表没有『恶性』。就如同正义中存在浑浊一样，『凭依之躯少女』拥有的病娇感……一不小心，就会变得非常危险的方面依然留存了一点下来了。\n话虽如此，若只是稍微惹怒她，是绝对不会如此轻易堕落的。唯有深陷烦恼却依然不违背秩序，才是所谓的『光之属性』啊。\n\n帕尔瓦蒂是『自己无错』的神格，因此没有了畏缩不前、怕生的性格，社交性得以提升。\n是个会为些许小事就发火或是闹别扭，但只要是误会或是误解，就会认真思考问题，主动原谅对方的道歉丽人。
6	132	冲浪小莫在夏日精力充沛，秋天低落，冬天陷入谷底。所以御主请务必在秋冬季节耐心十足地陪伴她。她迟早会发现，通往夏日的门扉始终在自己的身边。
6	38	作为Caster现界的他，\n似乎给自己施加了作为引导者的使命。\n不是作为真正的德鲁伊，而是作为临时的——\n只要与其在一起，他一定会指引御主的前进方向吧。
6	144	沉迷于墨西哥摔角（格斗）的起因很单纯，\n因为在某个被召唤的时代目睹了墨西哥摔角，\n由于冲击过于巨大，导致这种印象被\n深深烙印在了本体……好像是这样。\n\n「没错，肉体！\n　厮杀时就该尽量避免使用武器吧～！\n　商谈时也用摔角才是最合适的～！」\n\n最喜欢的摔角选手是La Mistico。\n作为风之神，以及金星之神，看到没有翅膀\n却能自由飞翔的Luchador（女性被称为Luchadora），\n禁不住感动到流泪，甚至从中感到了未来。\n之后，凭借天生的律己心与好学，\n转眼间就成了墨西哥摔角大师。\n\n号称只要自己有心，无论面对怎样的神性或怪物，\n都能用头部固定来解决，\n但为了传播以跳跃技为主的墨西哥摔角，\n暂时封印了作为摔角精髓的关节技。
6	135	哪怕外观发生变化，措辞有些许改变，她依然是她。依然是那位想要拯救世界与人的完美圣女。\n只不过，这毕竟是特殊的现界。或许正如她所说的，这是主的考验，还是说——
6	131	两人丝毫不掩饰对御主的好感。虽然两人表示这是因为恋情只持续一个夏天，但实际上，她们只是很中意御主而已——无论御主是异性还是同性。
1	19	身高／体重：199cm·88kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：混沌·善 性别：男性\n小腿并非弱点，只是被踹会很痛而已。
\.


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.book (book_id, book_name, isbn) FROM stdin;
1	罗马人的故事-Ⅰ-罗马不是一天建成的	978-7-5086-3025-0
2	亚瑟王传奇	7-5366-8399-5
3	罗马人的故事-Ⅱ-汉尼拔战争	978-7-5086-3039-7
4	罗马人的故事-Ⅲ-胜者的迷思	978-7-5086-3194-3
5	罗马人的故事-Ⅳ, 上-恺撒时代	978-7-5086-3242-1
6	罗马人的故事-Ⅴ, 下-恺撒时代	978-7-5086-3245-2
7	罗马人的故事-Ⅵ-罗马统治下的和平	978-7-5086-3357-2
8	罗马人的故事-Ⅶ-臭名昭著的皇帝	978-7-5086-3463-0
9	罗马人的故事-Ⅷ-危机与克服	978-7-5086-3515-6
10	罗马人的故事-Ⅸ-贤君的世纪	978-7-5086-3610-8
11	罗马人的故事-Ⅹ-条条大路通罗马	978-7-5086-3725-9
12	罗马人的故事-Ⅺ-结局的开始	978-7-5086-3803-4
13	罗马人的故事-Ⅻ-迷途帝国	978-7-5086-3883-6
14	罗马人的故事-ⅩⅢ-最后一搏	978-7-5086-3948-2
15	罗马人的故事-XIV-基督的胜利	978-7-5086-3975-8
16	罗马人的故事-XV-罗马世界的终曲	978-7-5086-4049-5
21	吉尔伽美什史诗	666
\.


--
-- Data for Name: book_and_writer; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.book_and_writer (book_id, writer_id) FROM stdin;
1	2
4	2
5	2
6	2
7	2
8	2
9	2
10	2
11	2
12	2
13	2
14	2
15	2
16	2
2	1
3	2
21	6
\.


--
-- Data for Name: class; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.class (class_id, class_name) FROM stdin;
1	Caster
2	Assassin
3	Lancer
4	Saber
5	Archer
6	Berserker
7	Rider
8	Alterego
9	Avenger
10	Ruler
11	Foreigner
12	MoonCancer
13	Shielder
\.


--
-- Data for Name: illustrator; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.illustrator (illustrator_name, illustrator_id) FROM stdin;
AKIRA	1
AOTUKI TAKAO	2
Azusa	3
BLACK	4
BSUKE	5
BUNBUN	6
danciao	7
GINKA	8
HIROYAMA HIROSHI	9
hou	10
huke	11
I-IV	12
ISHIDA AKIRA	13
Katou Itsuwa	14
KOYAMA HIROKAZU	15
lack	16
MATA	17
MATSURYU	18
MORII SHIZUKI	19
NAMANIKU ATK(Nitro+)	20
NEKOTAWAWA	21
okojo	22
pako	23
PFALZ	24
RIN KUSUSAGA	25
RIYO	26
Ryota-H	27
saitom	28
SAKAMOTO MINEJI	29
SHIMADORILL	30
SHIMAUDON	31
SHINJIRO	32
SHIRABI	33
sime	34
TAIKI	35
TAKENOKO SEIJIN	36
TASUKUOHNA	37
TENKU SPHIA	38
toi8	39
WADA ARUKO	40
三轮士郎	41
下越	42
东冬	43
中原	44
中央东口	45
佐佐木少年	46
余湖裕辉	47
元村人	48
冈崎武士	49
前田浩孝	50
原田雄一	51
古海钟一	52
小松崎类	53
山中虎铁	54
左	55
广江礼威	56
曾我诚	57
本庄雷太	58
森山大辅	59
武内崇	60
绿川美帆	61
近卫乙嗣	62
高山箕犀	63
高桥庆太郎	64
黑星红白	65
ReDrop	66
\.


--
-- Data for Name: origin; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.origin (origin_id, origin_name) FROM stdin;
1	明史
2	德古拉
3	贝奥武夫
4	古代美索不达米亚神话
5	摩诃婆罗多
6	日本民间故事
7	一千零一夜
8	中东
9	印度神话
10	查理曼传说
11	英国童话
12	传承
13	尼伯龙根之歌
14	黄金传说
15	波斯神话
16	剧院魅影
17	日本战国
18	浮士德
19	日本神话
20	空之境界
21	创作
22	水浒传
23	凯尔特神话
24	史记
25	义经记
26	希腊神话
27	大仲马著
28	清姬传说
29	苏美尔文明
30	吉尔伽美什史诗
31	传说
32	三国演义
33	史实
34	阿兹特克神话
35	封神演义
36	英法百年战争
37	御伽草子
38	琐罗亚斯德教
39	北史
40	史实及异闻带
41	公平的羊皮纸
42	北欧神话
43	特洛伊战争
44	Fate
45	中南美各时代的神话
46	史实以及异闻带
47	夏洛克
48	化身博士
49	旧约圣经
50	铃鹿草子
51	万圣节
52	亚瑟王传说
53	灰色之男
54	罗摩衍那
55	西游记
56	阿伊努神话
57	俵藤太物语
58	匈人
\.


--
-- Data for Name: origin_and_article; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.origin_and_article (origin_id, article_id) FROM stdin;
\.


--
-- Data for Name: origin_and_book; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.origin_and_book (origin_id, book_id) FROM stdin;
52	2
\.


--
-- Data for Name: pedia; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.pedia (prototype_id, pedia_id, pedia_url) FROM stdin;
39	3	https://baike.baidu.com/item/%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A7%E5%A4%A7%E5%B8%9D/30529
39	1	https://zh.wikipedia.org/zh-cn/%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A7%E5%A4%A7%E5%B8%9D
39	2	http://www.baike.com/wiki/%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A7%E5%A4%A7%E5%B8%9D&prd=button_doc_entry
39	4	https://baike.sogou.com/v110291.htm?fromTitle=%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A7%E5%A4%A7%E5%B8%9D
61	1	https://zh.wikipedia.org/zh-cn/%E5%B0%BC%E7%A6%84
61	2	http://www.baike.com/wiki/%E5%B0%BC%E7%A6%84%5B%E7%BD%97%E9%A9%AC%E5%B8%9D%E5%9B%BD%E7%9A%87%E5%B8%9D%5D
61	3	https://baike.baidu.com/item/%E5%B0%BC%E7%A6%84%C2%B7%E5%85%8B%E5%8A%B3%E7%8B%84%E4%B9%8C%E6%96%AF%C2%B7%E5%BE%B7%E9%B2%81%E8%8B%8F%E6%96%AF%C2%B7%E6%97%A5%E8%80%B3%E6%9B%BC%E5%B0%BC%E5%BA%93%E6%96%AF/5101737?fromtitle=%E5%B0%BC%E7%A6%84&fromid=2573043#viewPageContent
61	4	https://baike.sogou.com/v21306.htm
110	1	https://zh.wikipedia.org/wiki/%E5%B0%A4%E5%88%A9%E7%83%8F%E6%96%AF%C2%B7%E5%87%B1%E6%92%92
110	2	http://www.baike.com/wiki/%E5%87%AF%E6%92%92&prd=button_doc_entry
110	3	https://baike.baidu.com/item/%E7%9B%96%E4%B9%8C%E6%96%AF%C2%B7%E5%B0%A4%E5%88%A9%E4%B9%8C%E6%96%AF%C2%B7%E6%81%BA%E6%92%92/4842994?fromtitle=%E5%87%AF%E6%92%92&fromid=344268
110	4	https://baike.sogou.com/v128347.htm?fromTitle=%E5%87%AF%E6%92%92
139	1	https://zh.wikipedia.org/wiki/%E5%8D%A1%E5%88%A9%E5%8F%A4%E6%8B%89
139	2	http://www.baike.com/wiki/%E5%8D%A1%E5%88%A9%E5%8F%A4%E6%8B%89&prd=button_doc_entry
139	3	https://baike.baidu.com/item/%E5%8D%A1%E5%88%A9%E5%8F%A4%E6%8B%89/3412997
139	4	https://baike.sogou.com/v22465.htm?fromTitle=%E5%8D%A1%E5%88%A9%E5%8F%A4%E6%8B%89
111	1	https://zh.wikipedia.org/wiki/%E7%BD%97%E6%85%95%E8%B7%AF%E6%96%AF%E4%B8%8E%E9%9B%B7%E7%A9%86%E6%96%AF
111	2	http://www.baike.com/wiki/%E7%BD%97%E6%85%95%E8%B7%AF%E6%96%AF&prd=button_doc_entry
111	3	https://baike.baidu.com/item/%E7%BD%97%E6%85%95%E8%B7%AF%E6%96%AF/816570
111	4	https://baike.sogou.com/v581787.htm?fromTitle=%E7%BD%97%E6%85%95%E8%B7%AF%E6%96%AF
118	1	https://zh.wikipedia.org/wiki/%E4%BA%9A%E7%91%9F%E7%8E%8B
118	2	http://www.baike.com/wiki/%E4%BA%9A%E7%91%9F%E7%8E%8B&prd=button_doc_entry
118	3	https://baike.baidu.com/item/%E4%BA%9A%E7%91%9F%E7%8E%8B/5945
118	4	https://baike.sogou.com/v131540.htm?fromTitle=%E4%BA%9A%E7%91%9F%E7%8E%8B
165	1	https://zh.wikipedia.org/wiki/%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9
165	2	http://www.baike.com/wiki/%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9%5B%E4%BA%9A%E7%91%9F%E7%8E%8B%E4%BC%A0%E8%AF%B4%E4%B8%AD%E7%9A%84%E4%BC%9F%E5%A4%A7%E5%9C%86%E6%A1%8C%E9%AA%91%E5%A3%AB%5D
165	3	https://baike.baidu.com/item/%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9/35017#viewPageContent
165	4	https://baike.sogou.com/v64803143.htm?ch=ch.bk.amb&fromTitle=%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9
27	1	https://zh.wikipedia.org/wiki/%E8%8E%AB%E5%BE%B7%E9%9B%B7%E5%BE%B7
27	2	http://www.baike.com/wiki/%E8%8E%AB%E5%BE%B7%E9%9B%B7%E5%BE%B7%5B%E4%BA%9A%E7%91%9F%E7%8E%8B%E5%9C%86%E6%A1%8C%E9%AA%91%E5%A3%AB%E4%B9%8B%E4%B8%80%5D
27	3	https://baike.baidu.com/item/%E8%8E%AB%E5%BE%B7%E9%9B%B7%E5%BE%B7/28878#viewPageContent
27	4	https://baike.sogou.com/v64758367.htm?ch=ch.bk.amb&fromTitle=%E8%8E%AB%E5%BE%B7%E9%9B%B7%E5%BE%B7
80	1	https://zh.wikipedia.org/wiki/%E5%B4%94%E6%96%AF%E5%9D%A6
80	2	http://www.baike.com/wiki/%E5%B4%94%E6%96%AF%E5%9D%A6&prd=button_doc_entry
80	3	https://baike.baidu.com/item/%E5%B4%94%E6%96%AF%E5%9D%A6
80	4	https://baike.sogou.com/v175659679.htm?fromTitle=%E5%B4%94%E6%96%AF%E5%9D%A6
92	1	https://zh.wikipedia.org/wiki/%E9%AB%98%E6%96%87_(%E4%BA%9A%E7%91%9F%E7%8E%8B%E4%BC%A0%E8%AF%B4)
92	2	http://www.baike.com/wiki/%E9%AB%98%E6%96%87%5B%E4%BA%9A%E7%91%9F%E7%8E%8B%E4%BC%9F%E5%A4%A7%E7%9A%84%E5%9C%86%E6%A1%8C%E9%AA%91%E5%A3%AB%E4%B9%8B%E4%B8%80%5D
92	3	https://baike.baidu.com/item/%E9%AB%98%E6%96%87/27445#viewPageContent
92	4	https://baike.sogou.com/v64795499.htm?ch=ch.bk.amb&fromTitle=%E9%AB%98%E6%96%87
126	1	https://zh.wikipedia.org/wiki/%E6%A2%85%E6%9E%97_(%E4%BA%9E%E7%91%9F%E7%8E%8B%E5%82%B3%E8%AA%AA)
126	2	http://www.baike.com/wiki/%E6%A2%85%E6%9E%97
126	3	https://baike.baidu.com/item/%E6%A2%85%E6%9E%97/2369118#viewPageContent
126	4	https://baike.sogou.com/v113568322.htm?fromTitle=%E6%A2%85%E6%9E%97
158	1	https://zh.wikipedia.org/wiki/%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94
158	2	http://www.baike.com/wiki/%E8%B4%9D%E7%8B%84%E5%A8%81%E5%B0%94&prd=so_1_doc
158	3	https://baike.baidu.com/item/%E8%B4%9D%E7%8B%84%E5%A8%81%E5%B0%94/17766834?fromtitle=%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94&fromid=5325749
158	4	https://baike.sogou.com/v167781782.htm?ch=ch.bk.amb&fromTitle=%E8%B4%9D%E7%8B%84%E5%A8%81%E5%B0%94
90	1	https://zh.wikipedia.org/wiki/%E5%8A%A0%E6%8B%89%E5%93%88%E5%BE%B7
90	2	http://www.baike.com/wiki/%E5%8A%A0%E6%8B%89%E5%93%88%E5%BE%B7&prd=button_doc_entry
90	3	https://baike.baidu.com/item/%E5%8A%A0%E6%8B%89%E5%93%88%E5%BE%B7/9534724
90	4	https://baike.sogou.com/v74593763.htm
\.


--
-- Data for Name: pedia_name; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.pedia_name (pedia_id, pedia_name) FROM stdin;
1	维基百科
2	互动百科
3	百度百科
4	搜狗百科
\.


--
-- Data for Name: prototype; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.prototype (prototype_id, prototype_name) FROM stdin;
1	赤兔马
2	武藏坊弁庆
3	宝藏院胤舜
4	血斧埃里克
5	沃尔夫冈・阿马德乌斯・莫扎特
6	巴御前
7	望月千代女
8	安哥拉曼纽
9	亨利・杰基尔＆海德
10	百貌哈桑
11	咒腕哈桑
12	海伦娜·布拉瓦茨基
13	恩奇都
14	阿蒂拉
15	尤瑞艾莉
16	哪吒
17	柳生但马守宗矩
18	彭忒西勒亚
19	爱德华・蒂奇
20	土方岁三
21	伊莉雅丝菲尔・冯・爱因兹贝伦
22	夏洛克・福尔摩斯
23	燕青
24	威廉・莎士比亚
25	两仪式
26	冲田总司
27	莫德雷德
28	齐格鲁德
29	女王梅芙
30	安东尼奥・萨列里
31	示巴女王
32	瓦尔基里
33	兰陵王
34	魁札尔・科亚特尔
35	坂田金时
36	拿破仑
37	弗朗西斯・德雷克
38	伊凡雷帝
39	亚历山大
40	葛饰北斋
41	安妮·伯妮＆玛莉·瑞德
42	铃鹿御前
43	阿拉什
44	荆轲
45	机械伊丽亲
46	豹人
47	赫克托耳
48	弗拉德三世
49	齐格飞
50	吉尔伽美什
51	浅上藤乃
52	杰罗尼莫
53	加藤段藏
54	阿比盖尔・威廉姆斯
55	静谧哈桑
56	塞弥拉弥斯
57	贝奥武夫
58	武则天
59	吉尔·德·雷
60	梅菲斯托费勒斯
61	尼禄·克劳狄乌斯
62	托马斯・爱迪生
63	山鲁佐德
64	尼古拉・特斯拉
65	童谣
66	赫拉克勒斯
67	间桐樱
68	茶茶
69	骑士迪昂
70	剧院魅影
71	帕尔瓦蒂
72	弗格斯・马克・罗伊
73	酒吞童子
74	黑森·罗伯
75	阿纳斯塔西娅
76	玉藻前
77	布狄卡
78	吕布奉先
79	魁札尔·科亚特尔
80	崔斯坦
81	斯巴达克斯
82	俵藤太
83	克娄巴特拉
84	莱昂纳多・达・芬奇
85	阿周那
86	喀戎
87	开膛手杰克
88	牛若丸
89	列奥尼达一世
90	加拉哈德
91	布拉达曼特
92	高文
93	冯・霍恩海姆・帕拉塞尔苏斯
94	项羽
95	美游・艾德费尔特
96	源赖光
97	乔尔乔斯
98	玛丽·安托瓦内特
99	南丁格尔
100	虞美人
101	西托奈
102	保罗・班扬
103	埃列什基伽勒
104	坂本龙马
105	阿塔兰忒
106	天草四郎
107	红阎魔
108	詹姆斯·莫里亚蒂
109	大卫
110	盖乌斯・尤利乌斯・恺撒
111	罗穆路斯
112	迦尔纳
113	茨木童子
114	玛塔・哈丽
115	汉斯・克里斯蒂安・安徒生
116	刑部姬
117	喀耳刻
118	亚瑟王
119	紫式部
120	诸葛孔明
121	卫宫
122	斯忒诺
123	伊丽莎白・巴托里
124	克里斯托弗·哥伦布
125	杀生院祈荒
126	梅林
127	“山中老人”
128	阿斯忒里俄斯
129	冈田以藏
130	织田信长
131	爱丽丝菲尔
132	风魔小太郎
133	宫本武藏
134	贞德
135	岩窟王
136	罗宾汉
137	戈耳工
138	库·丘林
139	卡利古拉
140	阿喀琉斯
141	尼托克丽丝
142	芬恩・麦克库尔
143	奥斯曼狄斯
144	罗摩
145	秦良玉
146	阿斯托尔福
147	克洛伊・冯・爱因兹贝伦
148	弗兰肯斯坦
149	玄奘三藏
150	佐佐木小次郎
151	布伦希尔德
152	美杜莎
153	查尔斯・巴贝奇
154	美狄亚
155	比利小子
156	李书文
157	阿维斯布隆
158	贝德维尔
159	齐格
160	清姬
161	伊什塔尔
162	俄里翁
163	迪尔姆德・奥迪那
164	大流士三世
165	兰斯洛特
166	玛尔达
167	始皇帝
168	斯卡哈
169	夏尔・亨利・桑松
170	迦摩
\.


--
-- Data for Name: prototype_and_origin; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.prototype_and_origin (prototype_id, origin_id) FROM stdin;
1	33
2	25
3	33
4	41
5	33
6	33
7	33
8	38
9	48
10	8
11	8
12	33
13	30
14	58
15	26
16	35
17	33
18	26
19	33
20	33
21	44
22	47
23	22
24	33
25	20
26	33
27	52
28	42
29	23
30	53
31	49
32	42
33	39
34	34
35	33
36	33
37	33
38	40
39	33
40	33
41	33
42	50
43	15
44	33
45	51
46	45
47	43
48	2
49	13
50	29
51	20
52	33
53	33
54	33
55	8
56	12
57	3
58	33
59	33
60	18
61	33
62	33
63	7
64	33
65	11
66	26
67	44
68	33
69	33
70	16
71	9
72	23
73	37
74	12
75	33
76	19
77	33
78	33
79	34
80	52
81	33
82	57
83	33
84	33
85	5
86	26
87	33
88	25
89	33
91	10
92	52
93	33
94	40
95	44
96	33
97	14
98	33
99	33
100	24
101	56
102	12
103	4
104	33
105	26
106	33
107	6
108	47
109	49
110	33
111	33
112	5
113	37
114	33
115	33
116	12
117	26
118	52
119	33
120	32
121	44
122	26
123	33
124	33
125	44
126	52
127	8
128	26
129	33
130	17
131	44
132	33
133	33
134	36
135	27
136	33
137	26
138	23
139	33
140	26
141	33
142	23
143	33
144	54
145	1
146	10
147	44
148	21
149	55
150	33
151	42
152	26
153	33
154	26
155	33
156	33
157	31
158	52
159	44
160	28
161	4
162	26
163	23
164	33
165	52
166	33
167	46
168	23
169	33
90	52
170	9
\.


--
-- Data for Name: prototype_and_region; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.prototype_and_region (prototype_id, region_id) FROM stdin;
1	7
2	26
3	26
4	25
5	27
6	26
7	26
8	19
9	27
10	4
11	4
12	27
13	36
14	5
15	23
16	7
17	26
18	23
19	14
20	26
21	26
22	38
23	7
24	39
25	26
26	26
27	38
28	27
29	31
30	27
31	3
32	27
33	7
34	6
35	26
36	27
37	38
38	12
39	45
40	26
41	13
42	26
43	19
44	7
45	32
46	6
47	23
48	34
49	24
50	22
51	26
52	17
53	26
54	17
55	4
56	4
57	16
58	7
59	29
60	24
61	33
62	17
63	30
64	27
65	27
66	23
67	1
68	26
69	29
70	27
71	18
72	31
73	26
74	35
75	12
76	26
77	39
78	7
79	6
80	2
81	33
82	26
83	21
84	27
85	18
86	23
87	11
88	26
89	23
91	29
92	2
93	27
94	7
95	26
96	26
97	27
98	27
99	27
100	7
101	26
102	35
103	36
104	26
105	23
106	26
107	26
108	28
109	10
110	33
111	33
112	18
113	26
114	29
115	8
116	26
117	27
118	38
119	26
120	7
121	26
122	27
123	15
124	42
125	1
126	41
127	4
128	23
129	26
130	26
131	26
132	26
133	26
134	29
135	29
136	38
137	27
138	31
139	27
140	23
141	21
142	27
143	21
144	18
145	7
146	29
147	26
148	28
149	7
150	26
151	27
152	23
153	27
154	23
155	17
156	7
157	27
158	38
159	34
160	26
161	36
162	23
163	31
164	40
165	38
166	27
167	7
168	31
169	29
90	38
170	18
\.


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.region (region_name, region_id) FROM stdin;
SE	1
不列颠	2
东非	3
中东	4
中亚	5
中南美	6
中国	7
丹麦	8
从者界	9
以色列	10
伦敦	11
俄罗斯	12
加勒比	13
加勒比海	14
匈牙利	15
北欧	16
北美	17
印度	18
古波斯	19
圣诞岛	20
埃及	21
巴比伦尼亚	22
希腊	23
德国	24
挪威	25
日本	26
欧洲	27
欧洲全域	28
法国	29
波斯	30
爱尔兰	31
监狱城恰赫季斯	32
罗马	33
罗马尼亚	34
美国	35
美索不达米亚	36
芬兰	37
英国	38
英格兰	39
西亚	40
西欧诸国	41
西班牙	42
远东	43
迦勒底	44
马其顿	45
\.


--
-- Data for Name: region_and_article; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.region_and_article (region_id, article_id) FROM stdin;
19	1
38	2
38	4
38	3
33	5
\.


--
-- Data for Name: region_and_book; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.region_and_book (region_id, book_id) FROM stdin;
33	1
33	4
33	5
33	6
33	7
33	8
33	9
33	10
33	11
33	12
33	13
33	14
33	15
33	16
33	3
\.


--
-- Data for Name: servent; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent (servent_id, servent_name, servent_name_japanese, servent_name_english, height, weight, gender,
                     strength, endurance, agility, mana, luck, noble_phantasm, craft_name, craft_description,
                     craft_src) FROM stdin;
67	美狄亚(Lily)	メディア(リリィ)	Medea(Lily)	149	41	女性	E	E	D	A	A	C	无限烤薄饼	『甜美的点心。这是友爱的象征。\n　这都是因为，大部分人只要吃下点心，\n　就不会再愤怒或是悲伤了。』\n\n　　　　　　◆\n\n「哎呀——哎呀哎呀哎呀！」\n\n当阅读了这本稀疏平常的菜谱之时，\n小小魔女欢呼雀跃。\n因为这是将平日她曾隐约思考的事，\n化为明确形态的咒语。\n\n「这是多么美妙啊。\n　这是何等真理啊。\n　人们的纷争是因为缺乏甜味，\n　人们的争夺是因为烤薄饼是有限的！」　\n决心着手之日成了世界末日。\n女神和师姐不在身边造成了悲剧。\n她拿起了爱用的杖子，\n为获得无限食材而挑战神秘的召唤。\n其结果不言而喻。\n最令人头疼的是，该怎么说呢，\n这位小小魔女的魔术实力，\n是可以用三个超字形容的一流水准啊☆	https://fgo.wiki/images/thumb/7/7d/%E6%97%A0%E9%99%90%E7%83%A4%E8%96%84%E9%A5%BC.png/300px-%E6%97%A0%E9%99%90%E7%83%A4%E8%96%84%E9%A5%BC.png
44	剧院魅影	ファントム・オブ・ジ・オペラ	Phantom of the Opera	185	80	男性	B	C	A	D	D	B	污秽的死之面具	面具，面具。\n始终覆盖于我面容上的面具？\n\n你这话说得还真奇怪呢，克里斯蒂娜。\n你眼中的我是这样的吗，克里斯蒂娜。\n克里斯蒂娜——\n\n我可从未，戴过什么面具啊。\n是吧。\n是吧？	https://fgo.wiki/images/thumb/e/e3/%E6%B1%A1%E7%A7%BD%E7%9A%84%E6%AD%BB%E4%B9%8B%E9%9D%A2%E5%85%B7.png/300px-%E6%B1%A1%E7%A7%BD%E7%9A%84%E6%AD%BB%E4%B9%8B%E9%9D%A2%E5%85%B7.png
2	阿尔托莉雅・潘德拉贡	アルトリア・ペンドラゴン	Altria Pendragon	154	42	女性	B	B	B	A	A+	A++	星之王冠	传承如是说。\n所谓王，即为高贵而神圣，高不可攀之人。\n结局总是充实而富足的未来。\n星辰如是说。\n然时代会变迁，生活会变化。\n王的统治终将走向毁灭。\n\n王冠知晓一切，却依然在头上闪耀。\n没有任何回报。\n哪怕目标所在只是个遥不可及的理想。	https://fgo.wiki/images/thumb/6/60/%E6%98%9F%E4%B9%8B%E7%8E%8B%E5%86%A0.png/300px-%E6%98%9F%E4%B9%8B%E7%8E%8B%E5%86%A0.png
3	阿尔托莉雅・潘德拉贡(Alter)	アルトリア・ペンドラゴン	Altria Pendragon	154	42	女性	A	A	D	A++	C	A++	龙之记忆	其心脏由龙之概念所成。\n\n媲美地热的魔力量。\n龙之咆哮化为心跳，\n王挥下了星辰之剑。\n\n圣剑之所以为最强，\n都是因为持剑之人的力量。	https://fgo.wiki/images/thumb/c/cf/%E9%BE%99%E4%B9%8B%E8%AE%B0%E5%BF%86.png/300px-%E9%BE%99%E4%B9%8B%E8%AE%B0%E5%BF%86.png
69	织田信长	織田信長	Oda Nobunaga	152	43	女性	C	B	C	B	B	─	回转式火绳枪	消灭了战国最强骑兵军团的魔王。\n这场战斗的革新颠覆了过去所有战争的概念。\n需要装填时间，射线不稳定的火绳枪\n在战争中没有用武之地。\n所有人都抱持着这种看法。\n\n「那就准备大量火枪，不断射击就行了吧？\n　通过交换的方式」\n\n——而如今，魔王得到了枪支进一步的革新。\n顺便说一句，虽然名字比较容易搞混，\n但加上了膛线的是火绳枪，不是加特林机枪。\n\n「哎？　还有那种东西？　好……好想要啊！」	https://fgo.wiki/images/thumb/9/93/%E5%9B%9E%E8%BD%AC%E5%BC%8F%E7%81%AB%E7%BB%B3%E6%9E%AA.png/300px-%E5%9B%9E%E8%BD%AC%E5%BC%8F%E7%81%AB%E7%BB%B3%E6%9E%AA.png
178	织田信长(Berserker)	織田信長	Oda Nobunaga	152	44	女性	B	C	B	C	B	?	天下布武～2018summer.ver～	——魔王在水边大摇滚！\n\n这个夏天，在尾张销量排行榜上力压群雄的\n那张新专辑终于登陆迦勒底！\n\n初回特典是印有我花押的T恤和耳麦，\n简直是值得终生收藏的纪念品吧？　是吧？\n\n\n　若卖不掉　就用赠品充数　我的专辑\n\n　　　　　　　　　　　　　　　　　　　信	https://fgo.wiki/images/thumb/0/05/%E5%A4%A9%E4%B8%8B%E5%B8%83%E6%AD%A6%EF%BD%9E2017summer.ver%EF%BD%9E.png/300px-%E5%A4%A9%E4%B8%8B%E5%B8%83%E6%AD%A6%EF%BD%9E2017summer.ver%EF%BD%9E.png
227	兰陵王	蘭陵王	Lan Ling Wang	172	55	男性	B	B	A+	D	D	B	我的毒杯、我的假面	戴着面具和士兵共同战斗，唱着歌谣，\n衷心地爱着国家。\n\n然而，国家却反复无常，就像任性的孩子一样\n滥用、玩弄我的忠义。\n\n结果就是这样。\n后悔、绝望、悲叹，混着种种甜蜜和苦涩，\n我将杯中毒酒一饮而尽。\n\n即使是瞬间的剧痛和苦闷，\n也比不过忠义被割裂的痛苦。\n\n如果国家是我的孩子的话。\n我作为它的父亲，必须严格地培养它。\n\n啊，可是——\n父亲的心，孩子是不知道的。	https://fgo.wiki/images/thumb/e/ef/%E6%88%91%E7%9A%84%E6%AF%92%E6%9D%AF%E3%80%81%E6%88%91%E7%9A%84%E5%81%87%E9%9D%A2.png/300px-%E6%88%91%E7%9A%84%E6%AF%92%E6%9D%AF%E3%80%81%E6%88%91%E7%9A%84%E5%81%87%E9%9D%A2.png
23	美杜莎	メドゥーサ	Medusa	172	57	女性	B	D	A	B	E	A+	无形之岛	在可怕迫害的最后，姊妹几个抵达了这座岛。\n\n这座小小的岛上，只有残破的神殿，\n和回荡的海浪声。\n丰饶的森林、动物、以及华美的供品\n都不敢奢望。\n\n但是，取而代之的，则是充分的寂静。\n姊妹三人若能在此平静地生活就够了。\n因为对她来说，能为永恒不变的两位姐姐而活，\n是无与伦比的幸福。\n\n哪怕这会是即将失去的梦想。	https://fgo.wiki/images/thumb/1/1b/%E6%97%A0%E5%BD%A2%E4%B9%8B%E5%B2%9B.png/300px-%E6%97%A0%E5%BD%A2%E4%B9%8B%E5%B2%9B.png
106	贞德(Alter)	ジャンヌ・ダルク	Jeanne d\\'Arc	159	44	女性	A	C	A	A+	E	A+	焰刑地狱	燃烧，燃烧，所有一切都在燃烧坍塌。\n血肉燃烧的味道，令人悚然的惨叫，\n每呼吸一次，脏腑就痛苦不已。\n\n每当回忆起这件事，每当回顾起这件事，\n我的脸上就露出了扭曲的笑容。\n\n因为啊，正是这火焰创造了我的形态。\n对我来说，这是墓地，也是摇篮。\n\n——来吧，在地狱咆哮吧。\n为诞生的喜悦，为诞生的憎恨，为诞生的绝望，\n凛然咆哮吧！	https://fgo.wiki/images/thumb/a/a3/%E7%84%B0%E5%88%91%E5%9C%B0%E7%8B%B1.png/300px-%E7%84%B0%E5%88%91%E5%9C%B0%E7%8B%B1.png
141	贞德・Alter・Santa・Lily	ジャンヌ・ダルク・オルタ・サンタ・リリィ	Jeanne d\\'Arc Alter Santa Lily	141	39	女性	C	D	A	B	A++	A+	通往大海之门	只要打开这扇门，\n另一侧似乎就是一片广阔无垠的大海。\n\n季节为夏日，阳光璀璨的海边，白云与苍穹无限延展……\n似乎能够随时随地前往那种地方。\n……对，大概是以前读的科幻小说吧。\n当然没能全部读完，只是大致翻阅了一下……\n能够连接任何地方的门，\n对于驻留迦勒底的她来说，\n是一个多么美妙的幻想啊。\n\n……嗯，那孩子很清楚这是谎言啊。\n\n但里面蕴含着梦想吧？\n打开迦勒底之门这扇门，总有一天，\n会通往她所追求的海洋的梦想。\n我觉得这是个美妙的梦想，也这么相信。\n如果我不去相信可爱妹妹的梦想，\n那谁该去相信呢！\n\n所以御主，说好了。\n等总有一天情况安定下来之后，大家一起去看海吧？\n那孩子一定也会高兴的……呵呵。	https://fgo.wiki/images/thumb/8/86/%E9%80%9A%E5%BE%80%E5%A4%A7%E6%B5%B7%E4%B9%8B%E9%97%A8.png/300px-%E9%80%9A%E5%BE%80%E5%A4%A7%E6%B5%B7%E4%B9%8B%E9%97%A8.png
216	贞德(Archer)	ジャンヌ・ダルク	Jeanne d\\'Arc	159	44	女性	C	A	B+	C	A	A	海洋天使	是啊，是天使。是天使啊！\n哎呀，请把这当做比喻就好。\n总之就是天使。\n与它们一起游泳的话，沉醉于那份优雅之中\n也是没有办法的吧。\n他们与她们始终都会朝向大海进发，\n并踏遍世界。\n\n是啊，为此我施加了一切祝福，\n如果有什么问题，就把变成Archer以后几乎不用的\n这面旗也举起来吧。\n这样的话不管敌人是北海巨妖（Kraken）也好大海蛇（Sea serpent）也好\n尼斯湖水怪（Nessie）也好巨齿鲨（Megalodon）也好都完全不在话下！\n\n对了，既然这样，也从各位穿着泳装的从者那里\n借一些不用的武器铠甲好了。\n\n诶，怎么了御主？\n海豚们进攻过来了？\n呵呵呵，御主还真是爱操心啊。\n只要不会出现圣杯被海水污染引发的特异点，\n这种事99%都不可能发生！	https://fgo.wiki/images/thumb/5/50/%E6%B5%B7%E6%B4%8B%E5%A4%A9%E4%BD%BF.png/300px-%E6%B5%B7%E6%B4%8B%E5%A4%A9%E4%BD%BF.png
219	贞德(Alter)(Berserker)	ジャンヌ・ダルク	Jeanne d\\'Arc	159	44	女性	B	D	A	B	D	EX	日积月累的时间结晶	虽说假期里的确有发生有趣的事情，\n但是回想起来，大部分的记忆却都是\n很焦虑很拼命的这种感觉。\n\n……然而，为什么谈论此事的我，\n嘴角会自然而然的放松下来呢。\n呐，你也是这样吧？\n\n这大概，是因为那闪耀的夏日回忆。\n虽说有些羞耻，但这也是值得自豪的，经过艰苦奋战而得来的宝物。\n\n话说回来，再稍微陪下我吧。\n干嘛摆出一副要逃跑的模样啊，我读了啊，我要读了啊！\n要是我像是要发出奇怪的声音的话，\n赶紧拼尽全力堵上我的嘴啊！	https://fgo.wiki/images/thumb/5/57/%E7%A7%AF%E7%B4%AF%E7%9A%84%E6%97%B6%E9%97%B4%E4%B9%8B%E7%BB%93%E6%99%B6.png/300px-%E7%A7%AF%E7%B4%AF%E7%9A%84%E6%97%B6%E9%97%B4%E4%B9%8B%E7%BB%93%E6%99%B6.png
173	夏洛克・福尔摩斯	シャーロック・ホームズ	Sherlock Holmes	183	65	男性	D	C	B+	B	A++	B	引以为傲的一把	——55先令。\n对，我仅花费了区区55先令就买下了这个。\n\n平时我不会说诸如引以为傲之类的话语，\n但这一把小提琴另当别论。\n斯特拉迪瓦里小提琴。简称斯特拉迪。\n人类史上最卓越的小提琴制作者，\n安东尼奥·史特拉第瓦里制作的作品。\n也就是「极品名琴」。\n\n当然，我是通过正当的方式获得了所有权。\n我只是购买了被典当的东西哦？\n一定是由于某种原因，导致其真正的价值未被发现，\n就被流入了市场吧。\n而我正是在此时向这把琴伸出了手。\n只有这个时候，连我也——\n\n——不禁为自己敏锐的观察力感到自豪！	https://fgo.wiki/images/thumb/d/d4/%E5%BC%95%E4%BB%A5%E4%B8%BA%E5%82%B2%E7%9A%84%E4%B8%80%E6%8A%8A.png/300px-%E5%BC%95%E4%BB%A5%E4%B8%BA%E5%82%B2%E7%9A%84%E4%B8%80%E6%8A%8A.png
147	戈耳工	ゴルゴーン	Gorgon	17	-1	女性	A++	A++	B	B	D	A	克律萨俄耳	怪物，被英雄打倒。\n\n可怕的戈耳工——\n或是作为戈耳工的怪物大肆施展淫威，\n杀害了众多人类，\n最终迎来了自己的死期。\n\n怪物的尸骸被人们与神明用在各种地方。\n用血管制成了致死之毒与能令死者重生的灵药。\n滴落于沙漠的鲜血变成了毒蛇。\n首级化为了独一无二的武器。\n甚至那位大英雄赫拉克勒斯表示，\n只要将其毛发挥舞三次，就能令整个军队溃败。\n据说后世，征服王伊斯坎达尔在自己的肖像上\n装饰了带有戈耳工首级的纪念章。\n怪物的尸骸拥有独一无二的力量，\n长久以来一直被人们视为某种象征而用。\n\n那么，从英雄珀耳修斯的一击撕裂的伤口\n流下的鲜血中诞生的两位神秘究竟为何。\n珀伽索斯。\n克律萨俄耳。\n难道如传说所述，是海神馈赠的表现吗？\n\n或是。\n拒绝尸骸遭到贪食的\n那怪物最后的情感呢。	https://fgo.wiki/images/thumb/1/19/%E5%85%8B%E5%BE%8B%E8%90%A8%E4%BF%84%E8%80%B3.png/300px-%E5%85%8B%E5%BE%8B%E8%90%A8%E4%BF%84%E8%80%B3.png
68	冲田总司	沖田総司	Okita Souji	158	45	女性	C	E	A+	E	D	C	觉悟的护额	我清楚，我只是个半吊子。\n是个最后都没能和大家共进退的半吊子队士。\n\n但是我心中刻下的『诚』之一字。\n\n只有那个，只有那个，是绝不虚假的\n因为这是我的真实——	https://fgo.wiki/images/thumb/1/1c/%E8%A7%89%E6%82%9F%E7%9A%84%E6%8A%A4%E9%A2%9D.png/300px-%E8%A7%89%E6%82%9F%E7%9A%84%E6%8A%A4%E9%A2%9D.png
132	莫德雷德(Rider)	モードレッド	Mordred	154	42	女性	C+	B	A+	B	A	A	普利多温	啊———————————————————————\n\n好———懒———啊———\n现在莫德雷德正在维护中。\n就算御主有事，也待会儿再来。\n哎？　只是想和我在一起？\n唔，如果是这样，嗯，如果是这样，毕竟，我也？\n没关系？　反正不会碍事？\n既然如此，那就一起去沙滩躺着休息吧！\n会晒得很黑的所以不想去？\n御主你还真笨啊！\n防晒油不就是为了这种时候而存在的嘛！\n……然后嘛。\n反正你能信得过。\n来，帮我涂防晒油。\n话说在前面，如果你胆敢碰奇怪的地方，\n我可要打你的哦！\n知道了吗，不能碰哦！　绝对不能碰哦！？\n\n\n……咿呀唔唔唔唔唔唔唔唔唔唔唔！？	https://fgo.wiki/images/thumb/6/65/%E6%99%AE%E5%88%A9%E5%A4%9A%E6%B8%A9.png/300px-%E6%99%AE%E5%88%A9%E5%A4%9A%E6%B8%A9.png
222	谜之女主角XX	謎のヒロインXX	Mysterious Heroine XX	154	48	女性	B	B	B	E	D	EX	地球的回忆	今天，以太宇宙中也飞舞着几道流星。\n星团偶像组合成立之类、\n暗黑圆桌骑士团再度结成之类、\n恶之古代文明的女神复活了之类，\n尽管扰乱银河秩序的事件每天都在大量发生，但我过得很好。\n\n不，抱歉。这是谎话，我说谎了。\n因为连日的持续工作，我有点吃不消。\n但是，这时候看看这张照片，\n我就会不知不觉地露出微笑。\n那场混乱而又华丽、\n明明是永无止境的循环，结束却只有一瞬的，\n我的表现最为帅气的南国假期，是我一生的回忆。\n\n现在我正在执行长期任务，实在无法顺路前去地球，\n但到了我能回到你那边的时候，一切就可以\n恢复原状了吧。就算没恢复我也会\n用力量解决，所以你就尽管放心吧。\n那么，再见。\n相信你自己的勇气可以拯救大家吧！\n\n　　　　　　　　　　给亲爱的地球御主君。\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n又及\n说起来这是第三次危机了吧。\n到底是第几次人理崩坏了啊。	https://fgo.wiki/images/thumb/6/61/%E5%9C%B0%E7%90%83%E7%9A%84%E5%9B%9E%E5%BF%86.png/300px-%E5%9C%B0%E7%90%83%E7%9A%84%E5%9B%9E%E5%BF%86.png
146	美杜莎(Lancer)	メドゥーサ	Medusa	134	30	女性	C	D	A	E	C	A+	无以到达的明日	我是在这世间获得的生命。\n\n对，从诞生的瞬间起，就与姐姐们不一样。\n姐姐们是真正的女神。\n与生物那样的存在方式不同，\n在获得形体的瞬间，就全部都完成了。\n但我却诞生了。\n就像人类一样。\n作为与时间一起成长，外形会发生改变的生物。\n\n即便如此，\n我过去依然渴望过拥有\n能配与姐姐们在一起的样子。\n渴望身着同样的衣物，拥有相同的外形，\n举止就像女神一样的日子能够到来。\n\n请尽情嘲笑吧。\n嘲笑我这渺小的误会。	https://fgo.wiki/images/thumb/2/27/%E6%97%A0%E4%BB%A5%E5%88%B0%E8%BE%BE%E7%9A%84%E6%98%8E%E6%97%A5.png/300px-%E6%97%A0%E4%BB%A5%E5%88%B0%E8%BE%BE%E7%9A%84%E6%98%8E%E6%97%A5.png
155	谜之女主角X(Alter)	謎のヒロインＸ〔オルタ〕	Mysterious Heroine X (Alter)	-1	-1	女性	A	B	B	A+	C	A++	黑骑士君	【信息文件：HG74M403B】\n\n其正式名称是\n从者AUX机器人“K6－X4”。\n是为了辅助战斗·航行为目的的\n支援从者用高性能机器人。\n从X·Alter懂事以来就是她的搭档，\n并被其取名为「黑骑士君」。\n\n性格恶劣，嘴巴也毒辣。根本不会在他人面前露面。\n彻底看不起人类，就算被命令也会无视，\n只忠实地服从于X·Alter。\n\n头脑里植入了些微Alter元素结晶，\n能与X·Alter同调。\n顺便说一句，其令人联想起古代头盔的身体，\n似乎是因为沿用了过去将某颗行星化为焦土的\n暴虐机器巨人头部部件的一部分的缘故。\n\n「是这样啊……真可怜。\n　有些人还真过分呢……」\n「——————」	https://fgo.wiki/images/thumb/6/64/%E9%BB%91%E9%AA%91%E5%A3%AB%E5%90%9B.png/300px-%E9%BB%91%E9%AA%91%E5%A3%AB%E5%90%9B.png
24	乔尔乔斯	ゲオルギウス	Georgios	180	95	男性	D	A+	C++	D	A+	C	留存之物	他说，拍照是他的兴趣。\n而发端是，他想要记录雄大的景色，\n或是超乎想象的世界。\n说着，他露出略显羞涩的笑容，\n并展示了其至今为止拍摄的作品。\n睡眠中的猫，船，万圣节的房间，\n还有迦勒底的职员们。\n日常风景中的，过着日常生活的人们。\n这就是在他所珍爱的照片中留存的，\n普通却美好的世界的各个瞬间。	https://fgo.wiki/images/thumb/3/32/%E7%95%99%E5%AD%98%E4%B9%8B%E7%89%A9.png/300px-%E7%95%99%E5%AD%98%E4%B9%8B%E7%89%A9.png
52	弗拉德三世	ヴラド三世	Vlad III	191	-1	男性	A	A	C	B	E	A	穿刺公的凯旋	——我不害怕任何人。\n 但只有恶魔（Dracul）例外。\n\n不因憎恶，不因享乐，\n这是必要的牺牲，为了给敌人带去恐怖。\n穿刺公蹂躏他们。	https://fgo.wiki/images/thumb/a/ac/%E7%A9%BF%E5%88%BA%E5%85%AC%E7%9A%84%E5%87%AF%E6%97%8B.png/300px-%E7%A9%BF%E5%88%BA%E5%85%AC%E7%9A%84%E5%87%AF%E6%97%8B.png
13	罗宾汉	ロビンフッド	Robin Hood	175	65	男性	C	C	B	B	B	D	无貌之王	反正只是恶党。和抢劫也没什么分别。\n也不是什么能够在世间露脸的职业，\n还是斗篷和泥巴适合我。\n\n人类一旦决心彻底隐藏容貌，大抵都会很快变得熟练。\n不再会被憎恨，不再会被觊觎。\n当然也不会再被信赖与热爱。\n\n当一个人觉得这种生存方式很轻松时，\n这就意味着远离了正常的人类生活。\n觉得能够获得更多的东西吗？\n很遗憾，这只是幻觉。\n无貌的男人自然也不再有能赏物之眼，\n能获得的东西，毫无一物。	https://fgo.wiki/images/thumb/3/31/%E6%97%A0%E8%B2%8C%E4%B9%8B%E7%8E%8B.png/300px-%E6%97%A0%E8%B2%8C%E4%B9%8B%E7%8E%8B.png
158	黑森·罗伯	ヘシアン・ロボ	Hessian Lobo	181	99	男性	A+	B+	A+	E	D	B+	远方的荒野	——睁开眼睛，此处是遥远的荒野。\n\n怀念的泥土触感，\n拂过耳边的微风，\n犹如舞蹈般跳跃的，挚爱的存在。\n\n如今早已不再，失去的遥远回忆。\n不是被夺走，而是被抛弃的存在。\n\n向带我来此处的人表示感谢。\n人与兽无法相互理解，两者注定见面就会相互残杀。\n我想告诉虽然理解这宿命，但依然不甘于认命的你。\n\n这里，是我生活过的地方。	https://fgo.wiki/images/thumb/d/de/%E8%BF%9C%E6%96%B9%E7%9A%84%E8%8D%92%E9%87%8E.png/300px-%E8%BF%9C%E6%96%B9%E7%9A%84%E8%8D%92%E9%87%8E.png
22	罗穆路斯	ロムルス	Romulus	190	140	男性	B	A	A	C	B	A++	罗马	你询问此乃何物。\n当然——\n\n这毫无疑问也是罗马形态的一种。	https://fgo.wiki/images/thumb/9/9b/%E7%BD%97%E9%A9%AC.png/300px-%E7%BD%97%E9%A9%AC.png
172	克里斯托弗·哥伦布	クリストファー・コロンブス	Christopher Colombus	180	84	男性	C	B	D	E	EX	A	尼尼雅号	1492年8月3日，他的旗舰圣玛丽亚号、尼尼雅号、平塔号这三艘从帕洛斯港出发。\n\n「好不容易凑齐了需要的来航海，结果大屁股玛丽亚大人却在名为伊斯帕尼奥拉岛的海域触礁了。而且偏偏这种时候，平塔号船长平松居然擅自行动，不知把船开哪儿去了。\n也不知道是不是想一个人偷偷去寻找金矿什么的。」\n\n「然后，无奈的我在那之后就只能一直乘坐尼尼雅啦。回西班牙的时候也是。换言之，第一次航海有将近一半时间用的都是这家伙……」\n\n「啊，好船与坏船的分辨方法？」\n「和外观尺寸大不大，或是花不花钱没什么关系。只要能平安抵达目的地，就是最棒的船，做不到就是垃圾船。这还用问吗？」	https://fgo.wiki/images/thumb/5/58/%E5%B0%BC%E5%B0%BC%E9%9B%85%E5%8F%B7.png/300px-%E5%B0%BC%E5%B0%BC%E9%9B%85%E5%8F%B7.png
28	亚历山大	アレキサンダー	Alexander	151	40	男性	C	B	B	C	A+	B+	贤者之桶	在初次出征结束时，遇到了一位贤者。\n是过着像条狗的生活，嘲笑哲学的男人，\n就像是已经发疯了的苏格拉底。\n他躺在阳光下的模样确实和狗很像。\n\n我这么对他说。如果你有什么愿望，我会为你实现。\n而贤者耸了耸肩，只回了一句。\n\n「我希望你闪到一边去，不要遮住我的阳光。」\n\n……原来如此，居然这样回答。有意思。\n像这样度过自己的人生或许也不赖，\n但对我来说，这或许有些困难。	https://fgo.wiki/images/thumb/6/65/%E8%B4%A4%E8%80%85%E4%B9%8B%E6%A1%B6.png/300px-%E8%B4%A4%E8%80%85%E4%B9%8B%E6%A1%B6.png
95	幼吉尔	子ギル	Gilgamesh (Child)	140	30	男性	C	C	C	C	A	EX	黄金律的表现	嗯，对。\n我曾当过一段时间休闲公园的园主。\n不，只是一个偶然啦。\n\n哎？　为什么那么惊讶？\n\n……这么说来，迦勒底可能挺缺乏这种游乐设施的呢。\n一直上班的职员们和各位从者平时是否能够充分放松呢？\n\n您意下如何，御主。\n要不要在这里建立一座同样的设施呢？\n\n滑水道很好玩哦。\n只要将设施建造成能适应全天候状况的话，\n雨天也可以正常游玩——	https://fgo.wiki/images/thumb/5/58/%E9%BB%84%E9%87%91%E5%BE%8B%E7%9A%84%E8%A1%A8%E7%8E%B0.png/300px-%E9%BB%84%E9%87%91%E5%BE%8B%E7%9A%84%E8%A1%A8%E7%8E%B0.png
6	齐格飞	ジークフリート	Sigefried	190	80	男性	B+	A	B	C	E	A	莱茵的黄金	雾之一族在临死之际向英雄道来。\n曰「这财宝被诅咒了」。\n正如雾之一族所说的。\n一切都向不好的方向急转直下，\n没有人能够阻止。\n\n英雄本就对这黄金没什么执着。\n然而，却也无法舍弃。\n因为毋庸置疑，当舍弃的瞬间，\n黄金必将为了寻求主人而散发出更为强烈的光辉。\n于是终有一天，这诅咒应验了。	https://fgo.wiki/images/thumb/d/d7/%E8%8E%B1%E8%8C%B5%E7%9A%84%E9%BB%84%E9%87%91.png/300px-%E8%8E%B1%E8%8C%B5%E7%9A%84%E9%BB%84%E9%87%91.png
27	牛若丸	牛若丸	Ushiwakamaru	168	55	女性	D	C	A+	B	A	A+	薄绿	曾经斩杀大蜘蛛的长刀如今对人挥舞，\n曾经击退怪物的利剑现在只夺人性命。\n温厚的传说只是过去之物，\n我现在的这把刀，只会不断染上人类的污血。\n也许有些许，对于祖辈的愧疚之情。\n既已如是，还是希望能够有一把更为锋利的刀。\n不不，可能有些贪心，但我所期许的，\n是能够一挥舞就斩落百人首级的魔剑。\n毕竟你看，一个一个来的话纯属浪费时间。	https://fgo.wiki/images/thumb/f/f2/%E8%96%84%E7%BB%BF.png/300px-%E8%96%84%E7%BB%BF.png
75	开膛手杰克	ジャック・ザ・リッパー	Jack the Ripper	134	33	女性	C	C	A	C	E	C	雾夜伦敦	在浓雾弥漫的深夜，开膛手杰克现身。\n即使紧闭门窗，裹紧在被窝中，\n杰克还是会灵活地从钥匙孔中进入房间。\n噗嗤噗嗤地响起污浊的血溅之声，\n吱噜吱噜地四处散落的内脏，\n意识逐渐模糊，而你将迅速在绝望中死去吧。\n然而，就在你，就在你将死之际所看到的，\n『妈妈』\n不可思议，竟是如天使般的纯净笑容。	https://fgo.wiki/images/thumb/a/a6/%E9%9B%BE%E5%A4%9C%E4%BC%A6%E6%95%A6.png/300px-%E9%9B%BE%E5%A4%9C%E4%BC%A6%E6%95%A6.png
76	莫德雷德	モードレッド	Mordred	154	42	女性	B+	A	B	B	D	A	我是谁？	——我是伟大骑士王的儿子。\n——我是傲然的叛逆骑士。\n这都是我，都是我自己。\n但是只要带上头盔，自己就不再是其中任何一个，\n而只是，存在于各处的，无聊的，竭力求生的生命体。\n我无法控制自己的这种想法。\n那么应该就像他们一样，\n就像周围这些已经断气的家伙们一样，\n我也一定会坠入终焉深渊。\n所以我想知道，在迎来自己的结局之前。\n\n——我，究竟，是谁？	https://fgo.wiki/images/thumb/7/74/%E6%88%91%E6%98%AF%E8%B0%81%EF%BC%9F.png/300px-%E6%88%91%E6%98%AF%E8%B0%81%EF%BC%9F.png
7	盖乌斯・尤利乌斯・恺撒	ガイウス・ユリウス・カエサル	Gaius Julius Caesar	168	154	男性	A	B	B	D	C	B+	高卢战记	高卢发生的事令我得以成长。\n说实话，我根本不喜欢战场——\n但将平稳与安宁视为理想深爱着的人性，\n嗯，我应该得到了。\n\n……能否就当是这么回事呢？\n总得多少让这成为一段佳话吧。\n\n什么？\n你问高卢实际如何？\n\n这个嘛。不坏吧。\n与罗马权谋术数造成的血腥味相比，\n战场上的那些还令人好受点。	https://fgo.wiki/images/thumb/1/12/%E9%AB%98%E5%8D%A2%E6%88%98%E8%AE%B0.png/300px-%E9%AB%98%E5%8D%A2%E6%88%98%E8%AE%B0.png
9	吉尔・德・雷	ジル･ド･レェ	Gilles de Rais	186	91	男性	B	C	C	D	D	B	螺湮城教本	得到的这本书，据说是用人皮做成的。\n根据一般的看法，撰写了对人类亵渎的这本书，\n原本是该被烧毁的存在。\n\n然而。\n对如今的他而言，这才是世界的真实。\n\n「你蹂躏了我的圣女。」\n向上天呼喊。\n「因此，我也要蹂躏你创造的奇迹。\n　肆意杀戮那些应该被爱的那些纯洁孩童们。」\n男人的双眼变得漆黑，变得浑浊——	https://fgo.wiki/images/thumb/b/b7/%E8%9E%BA%E6%B9%AE%E5%9F%8E%E6%95%99%E6%9C%AC.png/300px-%E8%9E%BA%E6%B9%AE%E5%9F%8E%E6%95%99%E6%9C%AC.png
10	骑士迪昂	シュヴァリエ・デオン	Chevalier d\\'Eon	157	45	其他	A	B	B	C	A	C	王妃的赠礼	白百合的王后赠与骑士迪昂的礼物。\n\n「我赠与你这件你应该穿上的衣服，\n　献给我出色的骑士」	https://fgo.wiki/images/thumb/0/0f/%E7%8E%8B%E5%A6%83%E7%9A%84%E8%B5%A0%E7%A4%BC.png/300px-%E7%8E%8B%E5%A6%83%E7%9A%84%E8%B5%A0%E7%A4%BC.png
12	吉尔伽美什	ギルガメッシュ	Gilgamesh	182	68	男性	B	C	C	B	A	EX	王律之键	在世界上人的领域尚被局限的神代。\n王搜罗了世间所有的财宝，\n并建造了能存放这些财宝的宝物库。\n\n诞生于后世的各种宝物的原典。\n人类智慧、人类睿智确实存在的佐证。\n人们称颂其为“神之门”。\n诚然。\n储藏了这一切的「仓库」本身，\n才是超越了收纳于其中的各财宝的神秘。\n\n同时。这仓库的钥匙只有这位王才能使用。\n钥匙的匙牙不断变化着，\n直至今日，财宝的目录仍在不断增加。\n若不具备瞬间解读的智慧，\n宝物库的锁是无法打开的。	https://fgo.wiki/images/thumb/9/90/%E7%8E%8B%E5%BE%8B%E4%B9%8B%E9%94%AE.png/300px-%E7%8E%8B%E5%BE%8B%E4%B9%8B%E9%94%AE.png
14	阿塔兰忒	アタランテ	Atalante	166	57	女性	D	E	A	B	C	C	黄金苹果	——此乃诸神食用的果实。\n拥有能迷惑任何人类理性的滋味，\n与保证不死功效的禁忌果实。\n\n只要使用这个，就能阻拦任何人类的脚步。\n会拿起这个果实，渴望品尝。\n这是条件反射，就像拿到滚烫东西的瞬间，\n就会放开一样，是刻印在肉体上的存在。\n\n这东西曾被使用，而我停下了脚步。\n在赛跑的过程中，我忘我地停了下来。\n之后的事，我不愿再回想起来。\n\n所以这个由我拿着。不会给你。\n……因为你不需要这种东西。\n对吧？	https://fgo.wiki/images/thumb/e/ef/%E9%BB%84%E9%87%91%E8%8B%B9%E6%9E%9C.png/300px-%E9%BB%84%E9%87%91%E8%8B%B9%E6%9E%9C.png
15	尤瑞艾莉	エウリュアレ	Euryale	134	30	女性	E	E	C	EX	EX	C	女神的闪耀(尤瑞艾莉)	所以说了，基础根本就不行啦。明白吗？\n我是为了被爱而诞生的女神，\n为战斗而存在的雅典娜或是阿瑞斯姑且不论，\n为了被男人们渴望、爱着、争夺而存在的我们怎么可能会战斗嘛。\n\n不过，却像这样成了从者。\n而且还是Archer。\n\n连宝具也擅自出现了。\n而且你看啊，是弓箭。\n一说爱的弓箭，那不是丘比特神的那个嘛！\n就算美杜莎不说我也明白啦！\n\n不过嘛，也没办法。\n既然在手里了，那就为你拉开吧。\n充其量——也就为了你哦。御主。	https://fgo.wiki/images/thumb/1/1b/%E5%A5%B3%E7%A5%9E%E7%9A%84%E9%97%AA%E8%80%80%28%E5%B0%A4%E7%91%9E%E8%89%BE%E8%8E%89%29.png/300px-%E5%A5%B3%E7%A5%9E%E7%9A%84%E9%97%AA%E8%80%80%28%E5%B0%A4%E7%91%9E%E8%89%BE%E8%8E%89%29.png
19	武藏坊弁庆	武蔵坊弁慶	Musashibou Benkei	199	88	男性	A	B+	C	D	C	C	五条大桥的邂逅	——这不是我的过去。\n这是梦想中的，但确实发生过的事。\n如鸟儿般在飞翔于栏杆上的年轻武者，\n和气势如虹地追赶着年轻武者的僧兵。\n\n浪漫主义的英雄谭，万人皆知的二人的相遇。\n\n这不是我的过去。\n但不得不作为我的过去来追想。\n为了在向其他人讲述时，\n能让这个谎言听起来像是值得骄傲的真实。	https://fgo.wiki/images/thumb/a/a0/%E4%BA%94%E6%9D%A1%E5%A4%A7%E6%A1%A5%E7%9A%84%E9%82%82%E9%80%85.png/300px-%E4%BA%94%E6%9D%A1%E5%A4%A7%E6%A1%A5%E7%9A%84%E9%82%82%E9%80%85.png
18	伊丽莎白・巴托里	エリザベート・バートリー	Elisabeth Báthory	154	44	女性	C	D	E	A	B	D	不死灵药	上天赐予了她三种才能。\n一种是超越常识的音乐品味，\n一种是潜在的龙之因子。\n而另一种，则是与领主身份相符的贵族的自尊。\n也就是对国家根基相关的学问的理解。\n\n这灵药就是其结晶。她自己炼成的\n号称能治愈百病的药。\n但这种药其实却是——	https://fgo.wiki/images/thumb/3/31/%E4%B8%8D%E6%AD%BB%E7%81%B5%E8%8D%AF.png/300px-%E4%B8%8D%E6%AD%BB%E7%81%B5%E8%8D%AF.png
25	爱德华・蒂奇	エドワード･ティーチ	Edward Teach	210	114	男性	B+	A	E	D	C	C	曾经的辉煌	射击抢夺吞噬凌辱杀戮。\n快乐地生快乐地死。\n沉浸在愉快、愉悦、愉乐中，\n却依然咆哮着不够不够不够，\n疯狂挣扎着死去。\n无需为死亡而悼念，无需为杀害而忏悔。\n因为我们是海盗，打从出生起，\n就注定了会坠入地狱。\n来吧，何不与心爱的船只一起\n快乐愉悦地赴死呢！	https://fgo.wiki/images/thumb/f/f5/%E6%9B%BE%E7%BB%8F%E7%9A%84%E8%BE%89%E7%85%8C.png/300px-%E6%9B%BE%E7%BB%8F%E7%9A%84%E8%BE%89%E7%85%8C.png
26	布狄卡	ブーディカ	Boudica	174	62	女性	C	B+	C	D	D	B+	对胜利的渴望	无以誓约胜利之剑。\n虽拥『胜利』之名，\n却用败北给女王布狄卡的人生拉上了帷幕。\n即便如此，依然心怀勇气面对苦难与不合理，\n获得了数次胜利的她的所作所为，\n至今仍深深刻在人们的心中。	https://fgo.wiki/images/thumb/0/0b/%E5%AF%B9%E8%83%9C%E5%88%A9%E7%9A%84%E6%B8%B4%E6%9C%9B.png/300px-%E5%AF%B9%E8%83%9C%E5%88%A9%E7%9A%84%E6%B8%B4%E6%9C%9B.png
30	玛尔达	マルタ	Martha	161	49	女性	D	C	B	A	A+	A+	他赐予的杖	……自那以后，\n被认定为圣女的玛尔达获得了这件物品。\n生前她虽手持杖子，但却不是这个模样的。\n面对代表了离开人间的『他』的十字架，\n她究竟心怀什么感想呢？	https://fgo.wiki/images/thumb/5/5a/%E4%BB%96%E8%B5%90%E4%BA%88%E7%9A%84%E6%9D%96.png/300px-%E4%BB%96%E8%B5%90%E4%BA%88%E7%9A%84%E6%9D%96.png
31	美狄亚	メディア	Medea	163	51	女性	E	D	C	A+	B	C	赫卡忒的锡杖	女神赫卡忒赐予的锡杖。\n如今只有这杖子还留存着故乡的记忆。\n\n无论多么卓越的魔术实力，\n无论多么优秀的魔术智慧，\n都无法挽回失去的故乡。\n\n所以希望至少能留下一个当年的余韵。\n就像与卓越的师姐一同度过的时光，\n就像那些严格但充实的日子。\n愿赫卡忒能保佑\n我好不容易才寻觅到的爱徒。	https://fgo.wiki/images/thumb/4/46/%E8%B5%AB%E5%8D%A1%E5%BF%92%E7%9A%84%E9%94%A1%E6%9D%96.png/300px-%E8%B5%AB%E5%8D%A1%E5%BF%92%E7%9A%84%E9%94%A1%E6%9D%96.png
32	吉尔·德·雷(Caster)	ジル･ド･レェ	Gilles de Rais	196	70	男性	D	E	D	C	E	A+	友人的信函	『啊啊，吉尔，吉尔！　亲爱的朋友啊！\n　一想到你现在正为辛酸地狱之苦所折磨，我羸弱的理性都快要破碎了！\n　你的痛苦就是我的痛苦。\n　你的快乐就是我的快乐。\n　而你犯下的罪行，就是我曾经犯下的罪行！\n　爱着人们，却憎恨他们。憎恨着人们，却想要考验他们。我无比重视这种矛盾、这种灵魂的恸哭，并想要拯救他们。\n　同时，非常遗憾，没有方法能够逃离这种背德。因为这需要克服，而不能治疗。\n　如果你有这种意志的话，请来造访我的工房。进一步的钻研、进一步的探求定能帮上你的忙。\n　过去的你曾经这样问我吧？\n　问我为何要救你。我会在此为亲爱的你献上答案。\n　我们虽拥有共通的过去，但你与我不是同类。即便你遭到神明残酷的对待，即便你亵渎着神明，你也不会否定神明。\n　我认为这是真正的信仰。\n　向沉入恶之海却不会为恶沉沦的你献上敬意。我乃是为你声援，直到你生命最后一刻的人。\n　——欢迎来到噩梦与恐怖的食堂。』	https://fgo.wiki/images/thumb/9/94/%E5%8F%8B%E4%BA%BA%E7%9A%84%E4%BF%A1%E5%87%BD.png/300px-%E5%8F%8B%E4%BA%BA%E7%9A%84%E4%BF%A1%E5%87%BD.png
33	汉斯・克里斯蒂安・安徒生	ハンス・クリスチャン・アンデルセン	Hans Christian Andersen	146	39	男性	E	E	E	EX	E	C	献给亲爱的你	来说一个小故事吧。\n\n男人自出生以来，\n一直心怀不满。\n疼痛。瘙痒。暗淡。浮肿。\n就像是虱子爬满全身。\n或许都是因为比起本能，他更想相信语言，\n比起感情，他更想相信故事吧。\n因此，男人看不惯世间的一切。\n只会被欺凌的下层市民的哀叹，\n以及那些不值得爱的邻人的快乐，\n在他眼中都是一些难以忍受的不满。\n男人这么说。\n“我如同被跳蚤困扰的猫咪”\n但你却用明快的笑声一笑了之，\n说这一切郁闷，都只是无聊的烦恼。\n\n这是发生在一个一无是处，\n却只有阳光还算灿烂的，春日里的故事。	https://fgo.wiki/images/thumb/c/cc/%E7%8C%AE%E7%BB%99%E4%BA%B2%E7%88%B1%E7%9A%84%E4%BD%A0.png/300px-%E7%8C%AE%E7%BB%99%E4%BA%B2%E7%88%B1%E7%9A%84%E4%BD%A0.png
34	威廉・莎士比亚	ウィリアム・シェイクスピア	William Shakespeare	180	75	男性	E	E	D	C++	B	C+	非常方便	不得了。超不得了。书写每个字母的速度大为不同。\n划三根线写出的「K」！\n敲一个键打出的「K」！\n也就是三倍速。或者说远在其之上。\n随着敲击按键无限提升的写作欲望！\n思路绵延不绝地编写着下一个发展、\n下一个故事，仿佛陷入了酩酊大醉的感觉！\n哇哈哈哈哈哈哈哈哈！\n吾辈现在的撰写速度或许已经凌驾阿修罗（东洋的\n伟大精灵？）了吧不应该说已经超越神明L吧按键Z\n么坏D了啦噢噢噢噢！？	https://fgo.wiki/images/thumb/5/5e/%E9%9D%9E%E5%B8%B8%E6%96%B9%E4%BE%BF.png/300px-%E9%9D%9E%E5%B8%B8%E6%96%B9%E4%BE%BF.png
36	沃尔夫冈・阿马德乌斯・莫扎特	ヴォルフガング・アマデウス・モーツァルト	Wolfgang Amadeus Mozart	180	65	男性	D	E	B	B+	D	B	海顿四重奏	我的音乐虽为至高之美，\n但我的人生，也罢，从最节制的角度而言都可谓是垃圾。\n\n为了音乐可以无视友情，\n为了音乐我选择了非人的道路。\n\n但是，即便如此，我也曾有过充满人性的时期。\n这也是我仅有的，些许的人性的残渣。\n美妙的海顿。\n无以伦比的海顿。\n这是那些得以跟随伟大先驱之人的幸福。\n“承认他人的功绩，并以之为目标——”\n我至今仍清楚地记得，\n曾经每日都沉浸在这般不言自喻的幸福之中的两年时光。	https://fgo.wiki/images/thumb/c/c3/%E6%B5%B7%E9%A1%BF%E5%9B%9B%E9%87%8D%E5%A5%8F.png/300px-%E6%B5%B7%E9%A1%BF%E5%9B%9B%E9%87%8D%E5%A5%8F.png
37	诸葛孔明(埃尔梅罗Ⅱ世)	諸葛孔明〔エルメロイⅡ世〕	Zhuge Liang(Lord El-Melloi II)	186	68	男性	E	E	D	A+	B+	A	王之遗物	青涩、无成、凡庸。\n昔日的少年只会犹豫不决。\n但有一位王，训斥他，与他一同大笑。\n内心暗藏寂寥、后悔，以及些许自豪，\n青年依然在追逐着他的背影。	https://fgo.wiki/images/thumb/1/16/%E7%8E%8B%E4%B9%8B%E9%81%97%E7%89%A9.png/300px-%E7%8E%8B%E4%B9%8B%E9%81%97%E7%89%A9.png
39	佐佐木小次郎	佐々木小次郎	Sasaki Kojirou	176	63	男性	C	E	A+	E	A	─	山中之天	与俗世断绝关系，\n讴歌生者的欲望，\n作为剑士，以无限为目标。\n早已不知自己年龄，\n早已不复昔日身姿。\n\n锻炼正是吾的日常。\n永不厌倦日日持续，\n临终之际，摇晃着离开山中，吐出气息。\n\n——绝刀终在虚空之月一闪斩过。	https://fgo.wiki/images/thumb/9/95/%E5%B1%B1%E4%B8%AD%E4%B9%8B%E5%A4%A9.png/300px-%E5%B1%B1%E4%B8%AD%E4%B9%8B%E5%A4%A9.png
40	咒腕哈桑	呪腕のハサン	Hassan of the Cursed Arm	215	62	男性	B	C	A	C	E	C	撒但之腕	“我无论如何都要成为这代的山中老人。\n　为此而牺牲肉体根本不足惜。\n　既然此身乃凡庸之辈。\n　那区区一条手臂，我很乐意交由魔神吃掉”\n\n综上所述，男人将自己的右臂作为祭品献上。\n魔神被男人欺骗，将右臂的灵基交了出去，\n男人终于站到了暗杀者的顶峰。\n看吧，这可怕的诅咒之臂。\n能扯出镜像心脏的欺瞒之臂。\n这就是舍弃了身为人的一切，\n连容颜都失去了的男人应有的下场。	https://fgo.wiki/images/thumb/6/61/%E6%92%92%E4%BD%86%E4%B9%8B%E8%85%95.png/300px-%E6%92%92%E4%BD%86%E4%B9%8B%E8%85%95.png
41	斯忒诺	ステンノ	Stheno	134	30	女性	E	E	B	EX	EX	B	女神的闪耀(斯忒诺)	从者？　英灵？\n居然会成为这种存在，真令人惊讶。\n而且还有种奇怪的感觉。\n好像身上具备的东西莫名有了实际的形态。\n\n……不明白我在说些什么吗？\n那就看看这只手吧。\n\n这是我的闪耀、女神闪耀的具现化。\n啊啊，别一直盯着看哟？\n───因为眼睛……可是会瞎掉的哦。	https://fgo.wiki/images/thumb/9/9b/%E5%A5%B3%E7%A5%9E%E7%9A%84%E9%97%AA%E8%80%80%EF%BC%88%E6%96%AF%E5%BF%92%E8%AF%BA%EF%BC%89.png/300px-%E5%A5%B3%E7%A5%9E%E7%9A%84%E9%97%AA%E8%80%80%EF%BC%88%E6%96%AF%E5%BF%92%E8%AF%BA%EF%BC%89.png
42	荆轲	荊軻	Jing Ke	159	48	女性	D	E	A	E	D	B	九宾之礼	——十步杀一人。\n原本对于杀人夺命毫不在意的豪迈男子汉，正颤抖着无法动弹。\n还是没能派上用处，尽管也没办法。\n毕竟也是独自计划筹备的暗杀。\n这个距离应该没有问题。\n这个距离不会受到周围的干扰。\n还有数秒，即将抬起贴着地的脸孔。\n这也意味着我的余命所剩无几。\n人生的回忆唯有痛快，未有一丝后悔。\n……那么，来吧。\n已是跃起之时。到那可憎可爱的皇帝面前。	https://fgo.wiki/images/thumb/1/10/%E4%B9%9D%E5%AE%BE%E4%B9%8B%E7%A4%BC.png/300px-%E4%B9%9D%E5%AE%BE%E4%B9%8B%E7%A4%BC.png
43	夏尔・亨利・桑松	シャルル＝アンリ・サンソン	Charles-Henri Sanson	178	68	男性	D	D	C	D	A	B	我的人生令人厌恶	曾有一个需要处刑技术的时代。\n是一个需要一种能不让人感到痛苦，尊重对方精神，\n瞬间砍去头颅的技术的时代。\n\n今后再也不需要为这种事而烦恼了。\n谁都能成为死刑执行人，谁也不会感到痛苦。\n再也不需要五马分尸那种可怕的刑罚了。\n——这也意味着，能够有效率地大量杀人。\n\n当时愚蠢的我并没有意识到这点。\n侍奉贵族的佣人少女明明没有任何罪过，\n却要遭到处刑的时候，我就该毁了自己的断头台才对。\n\n我只是……不想让他们痛苦而已。	https://fgo.wiki/images/thumb/9/99/%E6%88%91%E7%9A%84%E4%BA%BA%E7%94%9F%E4%BB%A4%E4%BA%BA%E5%8E%8C%E6%81%B6.png/300px-%E6%88%91%E7%9A%84%E4%BA%BA%E7%94%9F%E4%BB%A4%E4%BA%BA%E5%8E%8C%E6%81%B6.png
45	玛塔・哈丽	マタ・ハリ	Mata Hari	165	49	女性	E	E	E	E	D	A+	无价之宝	每一次温存过后，就多了一些美丽之物。\n每一次接吻过后，就多了一些贵重之物。\n明明是生存所必要的存在，但我却\n一点都不需要的东西，一直在无限增加。\n\n每当发生这种事，我真正需要的东西，\n都在不断远去。	https://fgo.wiki/images/thumb/7/72/%E6%97%A0%E4%BB%B7%E4%B9%8B%E5%AE%9D.png/300px-%E6%97%A0%E4%BB%B7%E4%B9%8B%E5%AE%9D.png
21	列奥尼达一世	レオニダス一世	Leonidas I	188	110	男性	B	A	D	C	C	B	炙热之门	我等将死于此处。这即是命运。\n士兵们将性命交付给将领，而作为交换，\n将领们就必须全力为他们带来胜利。\n然而，这场战斗注定与胜利无缘。\n这场战斗，将成为连接明日的桥梁，\n踏过我们的尸体，必将为所有那些不曾谋面的同胞带来胜利。\n但是，这样真的就好了吗？\n你们真的一点都不珍惜自己的生命吗？\n我的这些话语迅速消融于士兵们强有力的笑声中。\n甚好！那就坚守这道大门！\n为了守护荣誉，勇气，以及我们的爱，\n战斗战斗战斗直至咽下最后一口气的那一刻！	https://fgo.wiki/images/thumb/8/80/%E7%82%99%E7%83%AD%E4%B9%8B%E9%97%A8.png/300px-%E7%82%99%E7%83%AD%E4%B9%8B%E9%97%A8.png
46	卡米拉	カーミラ	Carmilla	168	49	女性	D	D	A	C	D	B	铁处女	吸收了大量的鲜血，夺取了大量生命的铁棺。\n少女们的生命如露水般消逝，\n留下的只有不断累积的痛苦与绝望。\n正可谓恶鬼的行径。\n但她真正的罪行，却是永恒不变的纯洁。\n\n悲鸣戛然而止。\n刺入肌肤的铁针染上斑斑锈迹，\n鲜血化为了普通的污渍。\n铁棺与主人一起被锁链束缚，静静地走向腐朽。	https://fgo.wiki/images/thumb/d/d7/%E9%93%81%E5%A4%84%E5%A5%B3.png/300px-%E9%93%81%E5%A4%84%E5%A5%B3.png
47	赫拉克勒斯	ヘラクレス	Heracles	253	311	男性	A+	A	A	A	B	A	雪之城	——短暂的寄生之地。\n\n一位脆弱而高傲的少女，\n曾在此地的冬日记忆。	https://fgo.wiki/images/thumb/f/f4/%E9%9B%AA%E4%B9%8B%E5%9F%8E.png/300px-%E9%9B%AA%E4%B9%8B%E5%9F%8E.png
48	兰斯洛特	ランスロット	Lancelot	191	81	男性	A	A	A+	C	B	A	黑骑士的头盔	我的路途已然没有任何光芒。\n嘴唇咧开如新月，\n眼光如嗜血饥兽。\n\n锻炼的实力虽未退步，\n但吾之灵魂已沉入污泥，\n吾之手足已化为凶刃。\n\n朋友啊，已然无法得睹吾之容颜。\n唯有此头盔尚为曾经骑士的残骸。	https://fgo.wiki/images/thumb/e/e5/%E9%BB%91%E9%AA%91%E5%A3%AB%E7%9A%84%E5%A4%B4%E7%9B%94.png/300px-%E9%BB%91%E9%AA%91%E5%A3%AB%E7%9A%84%E5%A4%B4%E7%9B%94.png
49	吕布奉先	呂布奉先	Lu Bu Fengxian	225	153	男性	A+	A+	B+	C+	C+	A	方天画戟	那么现在就由在下开始解说吧！\n\n方天画戟正是吕将军的标志，也是其无二的搭档。\n这是毫不依靠战友，总是孤军陷阵的将军其唯一，\n可称之为精神支柱的，武器中的名作。\n斩切，突刺，打击，横扫，挥击。\n可完美展现大型双手武器的所有特征，正可谓是万能武器。\n也许也是因为将军性格粗犷，\n所以想要在任何战局中都以一把武器不变应万变？\n这些猜测其实都不过是那些嫉妒将军武艺之人的妄言。\n真相是，与其更换武器，同样的时间早就足以放倒十人。\n理由就是如此单纯。\n这岂非正是与飞将军之名相称的武勇吗？\n\n当然，其实这是北宋年代的武器，\n在吕布殿下活跃的时代是并不存在的。\n或者而言，这就当做是在下作为时代先驱，\n偷偷完成开发的吧。	https://fgo.wiki/images/thumb/5/5d/%E6%96%B9%E5%A4%A9%E7%94%BB%E6%88%9F.png/300px-%E6%96%B9%E5%A4%A9%E7%94%BB%E6%88%9F.png
50	斯巴达克斯	スパルタクス	Spartacus	221	165	男性	A	EX	D	E	D	C	叛逆吧	阴沉的瞬间开始了。\n狂热的观众、叫骂、激励、尖锐的悲鸣。\n无视所有一切，注意力集中于眼前的“同胞”。\n饥饿的狮子露出了獠牙。\n因空腹变得凶暴，据说已经咬死了三个人。\n若不杀掉它，它和自己都会被杀。\n所以，这头野兽的死已被注定。\n——多么悲哀。\n玩弄人与兽生命的压迫者们。\n你们好好看着吧。\n我斯巴达克斯一定会给你们致命一击！	https://fgo.wiki/images/thumb/2/24/%E5%8F%9B%E9%80%86%E5%90%A7.png/300px-%E5%8F%9B%E9%80%86%E5%90%A7.png
53	阿斯忒里俄斯	アステリオス	Asterios	298	-1	男性	A++	A++	C	D	E	A	阿里阿德涅之线	顺着这根线前进，将遇到天性之魔。\n吃人的野兽。牛头的怪物。\n男人将恐惧的感情深藏心底，怀揣正义之心，\n向绝望迷宫的深处前进、前进、继续前进。\n\n男人觉得，自己或许会死。\n或许会在迷宫中彷徨而亡。\n或许会被牛头怪物吃掉。\n\n但是，他却没有做好牛头的怪物——\n或许只是一个普通人类的觉悟。\n根本没有想过，那只是个\n拼命想成为怪物，想受到惩罚的少年。\n\n彼此的终焉已经迫近。	https://fgo.wiki/images/thumb/d/d8/%E9%98%BF%E9%87%8C%E9%98%BF%E5%BE%B7%E6%B6%85%E4%B9%8B%E7%BA%BF.png/300px-%E9%98%BF%E9%87%8C%E9%98%BF%E5%BE%B7%E6%B6%85%E4%B9%8B%E7%BA%BF.png
54	卡利古拉	カリギュラ	Caligula	185	80	男性	A+	B+	B+	D+	D+	C	爱，不在此处	罗马拥有一切。\n伟大建国王创造的我们的帝国\n毫无疑问正是人类迈进的脚步本身。\n富裕、荣耀、满足。\n闪耀的高贵之物才适合罗马。\n\n但与此同时——\n令人厌恶、令人恐惧的负面感情，\n被称为邪恶准则之物也聚集在罗马。\n\n那余会陷入疯狂的真正理由究竟是什么？\n是余主动追求暴力、鲜血、邪恶吗。\n不。并非如此。\n\n月之女神用疯狂拯救了余。\n余无法剔除帝国暗部蠢动的邪恶准则，\n即将被权谋术数的旋涡吞没，\n女神则将这丢人的生活方式进行了反转。\n\n……因此余陷入疯狂、愤怒。\n激烈地怒吼，刺穿、击碎所有存在。\n吞噬，消费，将无爱之身塞满欲望。\n\n　◆\n\n呜呼，尼禄——\n酷似余妹阿格里皮娜的心爱之子啊。\n哪怕只有些许也无妨，愿你能获得幸福。\n愿你只沐浴在光与爱之中。\n余会把暗与恶连同疯狂与愤怒一同带走。\n所以，但愿，\n你的前路能铺满祝福与蔷薇。	https://fgo.wiki/images/thumb/0/00/%E7%88%B1%EF%BC%8C%E4%B8%8D%E5%9C%A8%E6%AD%A4%E5%A4%84.png/300px-%E7%88%B1%EF%BC%8C%E4%B8%8D%E5%9C%A8%E6%AD%A4%E5%A4%84.png
55	大流士三世	ダレイオス三世	Darius III	345	280	男性	A	A+	B	E	D	A	通往巴比伦之门	搜集了世间所有财宝的仓库。\n亦或是“神之门”。\n也就是传说中的巴比伦宝物库。\n\n传说亚述女王尼托克丽丝沉睡墓碑中，\n隐藏着通往那座宝物库的「门扉」。\n尽管历代巴比伦王都绝不触碰，\n但伟大的王却堂堂正正地打开了这扇「门扉」。\n\n希罗多德虽然留下了「墓中空无一物」的记录，\n但王难道真的不是通过「门扉」获得了庞大的财富？\n王真的只是通过仁政来让国家变得富饶吗？\n\n至少，王的后裔确实拥有某种财富。\n也正因为如此，才能实现数次战争——	https://fgo.wiki/images/thumb/1/18/%E9%80%9A%E5%BE%80%E5%B7%B4%E6%AF%94%E4%BC%A6%E4%B9%8B%E9%97%A8.png/300px-%E9%80%9A%E5%BE%80%E5%B7%B4%E6%AF%94%E4%BC%A6%E4%B9%8B%E9%97%A8.png
56	清姬	清姫	Kiyohime	158	41	女性	E	E	C	E	E	EX	灼热的拥抱	啊啊，我爱你，我爱你，我爱你！\n从心底深处由衷地爱着你。\n若把这份心意称为虚假，那世上将不会有真实。\n所以——烧掉了。因为爱，因为悲伤，\n纯粹地烧掉了。	https://fgo.wiki/images/thumb/9/9d/%E7%81%BC%E7%83%AD%E7%9A%84%E6%8B%A5%E6%8A%B1.png/300px-%E7%81%BC%E7%83%AD%E7%9A%84%E6%8B%A5%E6%8A%B1.png
57	血斧埃里克	エイリーク･ブラッドアクス	Eric Bloodaxe	195	115	男性	B+	B+	D	D	C	C	嗜血之斧	夺取王位，鏖杀兄弟，\n可对这把魔斧而言，鲜血仍不够。\n\n材质出自魔兽。锻造者为魔女。\n各种魔之性质侵蚀着血斧王。\n「那又如何」\n这些早已了然于胸。\n若能展示王之力量，对任何存在都心无挂念。\n\n来吧，吸吮鲜血吧！	https://fgo.wiki/images/thumb/4/45/%E5%97%9C%E8%A1%80%E4%B9%8B%E6%96%A7.png/300px-%E5%97%9C%E8%A1%80%E4%B9%8B%E6%96%A7.png
61	伊丽莎白・巴托里(万圣节)	エリザベート・バートリー	Elisabeth Báthory	174	44	女性	D	D	D	B	C	D	南瓜圣杯	伊丽莎白·巴托里醒来时，\n发现自己的职阶变成了Caster。\n\n「哎？　为什么？\n　我可不懂什么魔术啊……整人节目？\n　啊，但经常听说从偶像转职成\n　报导员（Caster）呢……\n　说长篇新闻也不会咬舌头的知性派偶像……\n　嗯，能行！」\n\n正当现成魔女在搭配服饰时，\n背后的南瓜圣杯放射出灿烂的光芒。\n\n“可别掉以轻心哦，蜥蜴啊……你的艰难困苦，\n　挫折辛酸才刚开始……”\n\n「当真？」	https://fgo.wiki/images/thumb/7/77/%E5%8D%97%E7%93%9C%E5%9C%A3%E6%9D%AF.png/300px-%E5%8D%97%E7%93%9C%E5%9C%A3%E6%9D%AF.png
63	大卫	ダビデ	David	171	62	男性	C	D	B	C	A	B	约柜	没错，这柜子是与神的契约。\n是揭示了不能做、不能看之事的东西。\n\n不慎开启之人将遭遇灾祸。\n不慎揭露之人将面临绝望。\n\n因为此乃神的信赖。\n认为人类尚未愚蠢到\n会开启千叮万嘱不可开启之物。	https://fgo.wiki/images/thumb/d/d7/%E7%BA%A6%E6%9F%9C.png/300px-%E7%BA%A6%E6%9F%9C.png
64	赫克托耳	ヘクトール	Hektor	180	82	男性	B	B	A	B	B	B	英雄的武装	也就是说。\n武器这种东西，其实什么都可以啦。\n无论多么豪华坚硬的头盔护臂，迟早也会碎裂，\n哪怕磨砺锋利的名枪，也迟早会折断消亡。\n武器和防具都是消耗品。拘泥于这些实在愚蠢至极。\n这种东西只要能做到击中杀敌就行了，\n只要能做到挡下一两次攻击就行了。\n不锋利才好，劣质品也没问题。\n没什么大不了的，劣质品也能保命，也能杀人。\n……不过嘛，毕竟这是部下老爹以及妻子弟弟\n为我磨得闪闪发亮的东西。\n就不说这些煞风景的话了，还是有点英雄的样子，\n好好挥舞来看看吧。啊啊，真不好意思真不好意思！	https://fgo.wiki/images/thumb/6/69/%E8%8B%B1%E9%9B%84%E7%9A%84%E6%AD%A6%E8%A3%85.png/300px-%E8%8B%B1%E9%9B%84%E7%9A%84%E6%AD%A6%E8%A3%85.png
65	弗朗西斯・德雷克	フランシス・ドレイク	Francis Drake	162	55	女性	D	C	B	E	EX	A+	黄金船舵	虽然被幸运眷顾，\n但从未见过那个叫幸运的家伙。\n视野里只有水平线、太阳、海浪、星辰与敌人。\n在这没有潇洒与浪漫的日子里，\n她终于下定决心。\n\n「这样下去幸运大人一定会厌烦的！\n　至少要表示一些感谢之情才行」\n\n为之准备的就是黄金船舵。\n闪耀于恶魔之船的胸膛，犹如一朵绽放的鲜花。\n直到有一天，这条船能抵达希望之峰的日子。\n\n\n\n\n「哎呀，这意思！　真有意思！\n　很有海盗作风的糟糕品味呢，大姐头，哇哈哈哈！」\n「很好～给我到桶里去，邦贝。\n　你一定很喜欢海底探险吧？」	https://fgo.wiki/images/thumb/8/80/%E9%BB%84%E9%87%91%E8%88%B9%E8%88%B5.png/300px-%E9%BB%84%E9%87%91%E8%88%B9%E8%88%B5.png
66	安妮・伯妮＆玛莉・瑞德	アン・ボニー＆メアリー・リード	Anne Bonny & Mary Read	-1	-1	女性	C	C	A	E	B	C	棉布杰克	无论是男人，还是女人，只要是海盗，\n其结局就只有战死，或是被吊死，\n注定没什么好下场。\n所以她与她认定这是最后的战斗，\n不顾一切地战斗。\n举枪射击、挥舞弯刀、高声呐喊、\n全身鲜血淋漓，犹如狂战士般奋战着。\n然而，自称她们上司与同伴的海盗们却并非如此。\n他们沉迷于掠夺，并没有做好被掠夺的觉悟。\n躲在船舱中，瑟瑟发抖的他们，\n就像是夹着尾巴的野狗。\n棉布杰克的船员、海盗只有两人，\n那就是玛莉·瑞德和安妮·伯妮。	https://fgo.wiki/images/thumb/f/fc/%E6%A3%89%E5%B8%83%E6%9D%B0%E5%85%8B.png/300px-%E6%A3%89%E5%B8%83%E6%9D%B0%E5%85%8B.png
90	尼禄・克劳狄乌斯(新娘)	ネロ・クラウディウス	Nero Claudius	150	42	女性	B	C	A	E	A	B+	月桂树戒指	月桂冠是皇帝的象征。\n余乃罗马第一市民，也是蔷薇皇帝，\n皇帝头戴之物怎能没有至高的祝福呢！\n唔嗯，全心全意地收下吧！\n\n唔？　戒指上雕刻着什么？\n那还用问吗！\n\n『疾病之时　要来关照余，\n　健康之时　要来关照余，\n　共享幸福之时　要来关照余，\n　在此宣誓　要永远关照余！』哦！	https://fgo.wiki/images/thumb/8/88/%E6%9C%88%E6%A1%82%E6%A0%91%E6%88%92%E6%8C%87.png/300px-%E6%9C%88%E6%A1%82%E6%A0%91%E6%88%92%E6%8C%87.png
79	冯・霍恩海姆・帕拉塞尔苏斯	ヴァン・ホーエンハイム・パラケルスス	Paracelsus von Hohenheim	183	65	男性	D	E	C	A	B	A+	元素精灵	元素精灵（Elemental）。\n嗯，对。\n如果用话语来表现，应该会这么说吧。\n这是指象征四大元素的超自然的存在。\n然而当我提起这个的时候，会有些许不同。\n\n凝聚了各属性力量的人工灵。\n这才是我所使役的元素精灵。\n虽为超越现实的存在，但却不是幻想种。\n地、水、火、风、以及空（Ether）。\n五大属性的元素块。\n\n既可以当做储蓄魔力的池来使用，也可以应用在防御或是攻击方面。对我来说，嗯，是作为研究的素材以及仪式魔术的触媒来使用的。\n\n来吧。还请各位好好看着。\n构成世界的元素的光辉……\n终将引领我们去往根源的神秘存在。	https://fgo.wiki/images/thumb/8/8b/%E5%85%83%E7%B4%A0%E7%B2%BE%E7%81%B5.png/300px-%E5%85%83%E7%B4%A0%E7%B2%BE%E7%81%B5.png
80	查尔斯・巴贝奇	チャールズ・バベッジ	Charles Babbage	250	500	男性	B++	B++	D++	A	E	A+	真·差分机	十九世纪初叶。\n刚从剑桥大学毕业的青年在计算天体运动时——\n面对庞大的数字量，陷入了思考。\n\n不止在天体方面。无论是政府研究部门还是在野的企业，几乎所有实验与业务在进行大量计算的时候，都需要数十个人来操作。如果能将这无数计算交由机械代替的话。\n\n而他继续思考。\n这能行。\n\n用蒸汽机关为动力，进行复杂高度计算的机械。\n其名为差分机（Difference engine）。\n\n没错，在各种学问中都要运用到数学。\n当这台机械完成之时，\n人类就能在各种领域实现飞跃性的时间节约，\n文明也一定能前进数个世纪吧。\n这是谁都未能达成的梦想。\n　◆\n\n他的愿望只差一步，最终未能实现。\n然而，人们这么评价。\n他确实是伟大天才之一，是文明的奠基石——\n\n说他才是计算机之父。	https://fgo.wiki/images/thumb/5/58/%E7%9C%9F%C2%B7%E5%B7%AE%E5%88%86%E6%9C%BA.png/300px-%E7%9C%9F%C2%B7%E5%B7%AE%E5%88%86%E6%9C%BA.png
81	亨利・杰基尔＆海德	ヘンリー・ジキル	Henry Jekyll	175	60	男性	C+	E	A+	E	C	C	维系心之物	决不能失去心。\n决不能忘记仁慈、庇护、爱。\n\n人会轻易堕落。坠入邪恶的快乐中。\n否定企图伤害、嘲笑、贬低他人的自己吧。\n因为这不过是软弱的表现罢了。\n我每天都站在镜子前，这样告诫自己。\n要保持正确。\n哪怕世界中大部分事物已化为邪恶的掌中物。	https://fgo.wiki/images/thumb/f/f2/%E7%BB%B4%E7%B3%BB%E5%BF%83%E4%B9%8B%E7%89%A9.png/300px-%E7%BB%B4%E7%B3%BB%E5%BF%83%E4%B9%8B%E7%89%A9.png
82	弗兰肯斯坦	フランケンシュタイン	Frankenstein	172	48	女性	C	B	D	D	B	C	成为人类的道路	所有生物都是奇迹的产物。\n因此，创造生命的行为是神圣的，\n也无疑是代替神明之举。\n倘若创造对象是复杂至极的人类，\n或可称之为最极致的神圣行为吧。\n\n接下来即将进行的，是蹂躏这一切的行为。\n我将以科学、科学、以及些许的魔术，\n为世界带来奇迹！\n\n……然而愚者遗忘了一件事。\n那就是这奇迹绝不是什么美妙的存在。	https://fgo.wiki/images/thumb/2/24/%E6%88%90%E4%B8%BA%E4%BA%BA%E7%B1%BB%E7%9A%84%E9%81%93%E8%B7%AF.png/300px-%E6%88%90%E4%B8%BA%E4%BA%BA%E7%B1%BB%E7%9A%84%E9%81%93%E8%B7%AF.png
85	迦尔纳	カルナ	Karna	178	65	男性	B	C	A	B	D	EX	贫者一灯	过去，觉者受王邀请，被盛情款待。\n宴会持续到夜晚，觉者的归途被黑暗所笼罩。\n\n王动用巨资，为道路安置明灯，\n可区区一次强风就熄灭了王准备的所有灯火。\n\n然而觉者之路却依然被微弱的灯光映照。\n那是一位身份不足以出席宴会，\n也无法准备礼物的贫穷老人留下的\n满怀心意的一盏明灯。\n\n——无数的称赞，无数的憧憬\n虽然确实能将人生点缀得十分华美。\n但谁人都未注意到的一颗真心，\n便可令人感到自己的人生充满幸福。	https://fgo.wiki/images/thumb/d/dd/%E8%B4%AB%E8%80%85%E4%B8%80%E7%81%AF.png/300px-%E8%B4%AB%E8%80%85%E4%B8%80%E7%81%AF.png
87	芬恩・麦克库尔	フィン・マックール	Fionn mac Cumhaill	181	63	男性	B+	B	A+	C	C	B+	智慧之鱼	——御主。吃鲑鱼吧，会让脑袋变聪明的。\n\n当然，不可能得到无限的睿智。\n能做到这点的，唯有拥有闪耀彩虹色鳞片的鲑鱼。\n但是，鲑鱼脂肪内含有大量能提高集中力的物质，\n所以肯定不会完全没有效果。\n\n不能只有强大，只有美丽。\n你应该变得更聪明。\n应该拥有当遇到什么障碍，遭遇失败的时候……\n能够回顾总结自身的聪明才智。\n\n唔？\n你说——如果有智慧很聪明的话，\n只要保证自己做的事不失败就行了？\n呵呵，确实，这是理想的情况！\n\n但是人总是会犯错的。\n人无法保证自己总能选择正确的道路。\n\n所以，来。你也吃点鲑鱼吧。	https://fgo.wiki/images/thumb/8/83/%E6%99%BA%E6%85%A7%E4%B9%8B%E9%B1%BC.png/300px-%E6%99%BA%E6%85%A7%E4%B9%8B%E9%B1%BC.png
88	布伦希尔德	ブリュンヒルデ	Brynhild	172	52	女性	B+	A	A	C	E	A	永不消失的火焰	——我，在燃烧。\n\n嗯。在燃烧。\n嗯。是火焰。\n不，这不是什么玩笑。是真的。\n哪怕正在和你对话的现在，我也在燃烧。\n难道你听不到火焰熊熊燃烧的声音吗？\n\n我这个体的开始到终结都与火焰同在。\n见到齐格鲁德时，杀害齐格鲁德时。\n我的意识诞生之时，我的生命终结之时。\n我始终被火焰所缠绕。\n\n等意识到时，我已经成为了火焰本身。\n你应该能看到吧？\n青色的火焰。\n魔力放出？\n不，不。\n这是从我心灵溢出的我感情的形态。\n就算死去，哪怕死去，也绝不会消失。\n\n如果看上去消失了——\n呵呵。不，还是不会消失。\n一定只是被火熏得看不见了而已。	https://fgo.wiki/images/thumb/2/26/%E6%B0%B8%E4%B8%8D%E6%B6%88%E5%A4%B1%E7%9A%84%E7%81%AB%E7%84%B0.png/300px-%E6%B0%B8%E4%B8%8D%E6%B6%88%E5%A4%B1%E7%9A%84%E7%81%AB%E7%84%B0.png
89	贝奥武夫	ベオウルフ	Beowulf	186	81	男性	A	A	C	D	A	A	最后之战	——部下们四散逃跑，\n留下的只有瘦弱衰老的自己，\n和颤抖着却坚持留下的一名年轻骑士。\n\n靠这面大盾，是否能够防御龙的吐息呢。\n就算能够防御，又该如何打倒龙呢。\n弱点在何处，想要刺中弱点需要坚持度过多少困难才行。\n时间过得如此之慢。但却有充分的思考时间。\n我为什么在战斗。为什么想要战斗。\n年轻时代的热情早已消逝，剩下的只有对安稳的渴望。\n「……不，原来如此。」\n本已消逝的斗志再次点燃。\n这里乃求死之处，是适合自己终结的地狱。\n\n人已衰老，已没有了击破哥伦多的热情。\n然而，自己的背后却有安稳。\n无数人享受着简朴的幸福，\n努力维持着没有严苛与绝望的生活。\n\n「偶尔也要做点像个王的事才行呢。」\n\n不为自己，不为名誉，不为富贵。\n只是身为王，完成自己的义务。\n觉醒吧——贝奥武夫。\n虽然你的力量和全盛期相比相差甚远。\n但绝不是毫无力量的。	https://fgo.wiki/images/thumb/e/e5/%E6%9C%80%E5%90%8E%E4%B9%8B%E6%88%98.png/300px-%E6%9C%80%E5%90%8E%E4%B9%8B%E6%88%98.png
91	两仪式	両儀式	Ryougi Shiki	160	47	女性	E	A	C	B	A	B+	无我识 心空妙有	法曰，真空乃自在的境地。\n没有二元对立的区别，\n乃据实观测世之理、世之存的心。\n\n天空遥远，色彩淡然。\n倩影伫立不属任何地方的境界上，\n眺望着星辰的行踪。\n\n　　◆\n\n此恋乃一时之梦。\n此梦乃永远残响。\n我正眺望着，\n本应不可能，却在刹那间触亮的邂逅。\n\n宛若在那雪夜，眺望着遥远的虚空。	https://fgo.wiki/images/thumb/1/15/%E6%97%A0%E6%88%91%E8%AF%86_%E5%BF%83%E7%A9%BA%E5%A6%99%E6%9C%89.png/300px-%E6%97%A0%E6%88%91%E8%AF%86_%E5%BF%83%E7%A9%BA%E5%A6%99%E6%9C%89.png
92	两仪式(Assassin)	両儀式	Ryougi Shiki	160	47	女性	E	D	A+	C	A+	EX	红色夹克衫	这是某位少年的回忆。\n残留于夕阳教室中的记忆。\n\n目送短暂维系的温暖之光，\n名为织的梦之余韵。	https://fgo.wiki/images/thumb/0/05/%E7%BA%A2%E8%89%B2%E5%A4%B9%E5%85%8B%E8%A1%AB.png/300px-%E7%BA%A2%E8%89%B2%E5%A4%B9%E5%85%8B%E8%A1%AB.png
93	天草四郎	天草四郎	Amakusa Shirou	169	59	男性	C	C	B	A	B	D	天草四郎阵中旗	——开战之时，已注定败北。\n重要的是展示战斗的意志。\n吾等与神同在，死乃安详之物。\n即便如此，也不能无谓死去。\n心中不断念着，哪怕只能救下一人也好。\n\n今日的胜利将通往明日的绝望。\n我明白。我虽然明白。\n我的旗帜啊，请听我说。\n他们若有罪，那一定是相信了我。\n他们只能选择追随我。\n我很愿意奉上自己的生命。\n所以，请告诉我拯救他们的方法。\n但是，如果无法拯救。\n如果这场战斗的终结需要他们的生命。\n那就不要拯救人，而去救济人类吧。\n无论是善是恶，无论是弱小民众还是强大之人，\n我要拯救所有的人类。\n\n这是某位少年舍弃成为英雄的故事。\n深深理解这份自私自利，\n却依然渴望为之的故事。	https://fgo.wiki/images/thumb/0/01/%E5%A4%A9%E8%8D%89%E5%9B%9B%E9%83%8E%E9%98%B5%E4%B8%AD%E6%97%97.png/300px-%E5%A4%A9%E8%8D%89%E5%9B%9B%E9%83%8E%E9%98%B5%E4%B8%AD%E6%97%97.png
94	阿斯托尔福	アストルフォ	Astolfo	164	56	其他	D	D	B	C	A+	C	非世间所存之幻马	格里芬这种幻兽过去曾遍布这个世界。\n传说他们是主食人类或是马匹的凶暴野兽。\n此外，据说格里芬如果与母马交尾的话，就会产下骏鹰。\n……没有动物会与食物交尾。\n所以，骏鹰是不可能存在的魔兽\n……本应如此。\n「那你为什么会成为我的坐骑呢？」\n「咕哎～。」\n（意译：我思故我在。幻想也为真。）\n「你不明白啊～，说得也对呢～，就是嘛～。\n　我也不明白呢～。」\n「咕啊～。」\n（意译：噢噢，世界充满了幻想！）\n「没关系没关系，我最喜欢你了哦～！\n　来嘛来嘛，我来抱抱你！」\n「咕哎。」\n（意译：你倒是听人说话啊。）	https://fgo.wiki/images/thumb/5/50/%E9%9D%9E%E4%B8%96%E9%97%B4%E6%89%80%E5%AD%98%E4%B9%8B%E5%B9%BB%E9%A9%AC.png/300px-%E9%9D%9E%E4%B8%96%E9%97%B4%E6%89%80%E5%AD%98%E4%B9%8B%E5%B9%BB%E9%A9%AC.png
100	海伦娜・布拉瓦茨基	エレナ・ブラヴァツキー	Helena Blavatsky	145	38	女性	E	E	D	A	A	A	被隐藏的女神	写过几本书。\n就自己来说——本想以出自伟大灵魂（Mahatma）的书简为基础，做一些解释，并大幅参考已知魔术书，加一些引用撰写成书而已。\n然而却遭到大英帝国知识分子们，心灵现象研究会的强烈批评。被身为神秘大本营的时钟塔，魔术协会嘲笑。\n内心默念「果然如此」。\n内心暗道「也没办法」。\n\n大幅偏离了以科学为主体的现代文明，\n与拥有悠久历史的时钟塔存在巨大差异。\n而且旁人也听不见伟大灵魂的声音。\n\n但是，决不会输给这种无力感。\n哪怕这是只属于自己的真实也无妨。\n只要能将曾经邂逅的伟大存在的凤毛麟角\n化为某种形态即可。\n\n——可以哦。\n——就由我，先来引导我自己吧。	https://fgo.wiki/images/thumb/8/8b/%E8%A2%AB%E9%9A%90%E8%97%8F%E7%9A%84%E5%A5%B3%E7%A5%9E.png/300px-%E8%A2%AB%E9%9A%90%E8%97%8F%E7%9A%84%E5%A5%B3%E7%A5%9E.png
101	罗摩	ラーマ	Rama	168	65	男性	A	B	A+	B	B	A	不灭之刃	在这天到来前，对少年来说，战斗就是日常，\n也是一种娱乐。\n无论是挥剑，还是射箭，\n都令人愉快。\n\n悉多被掳走，向魔王罗波那发起挑战的时候，\n罗摩终于知道了战斗的可怕之处。\n\n死不可怕。但是，自己如果死去，\n就会失去背后的同伴们、弟弟、以及心爱的悉多等一切。\n受伤并不可怕。但是，他打从心底害怕\n部下和弟弟丢掉自己的生命。\n\n战斗是如此可怕之物。\n但是，罗摩没有屈服，也没有逃避。\n伤害、杀害、被伤害、被杀害——\n他接受了一切，并发起了挑战。\n\n这就是，这正是英雄所应具备的素质。\n感受恐惧，向前迈进，\n高声大喊心爱之人的名字！	https://fgo.wiki/images/thumb/2/26/%E4%B8%8D%E7%81%AD%E4%B9%8B%E5%88%83.png/300px-%E4%B8%8D%E7%81%AD%E4%B9%8B%E5%88%83.png
102	李书文	神槍 李書文	Li Shuwen	166	60	男性	B	C	A	E	E	─	本领，已达神域	这世间偶尔会存在拥有令人难以置信才能的人，\n通过令人难以置信的努力，达成令人难以置信本领的事。\n\n神枪，有人这么评价。\n这都是谎言，反正还有讥讽嘲笑之人。\n书文对两者都没兴趣。\n有兴趣的，只有令一击更为猛烈、更为华丽的动作。\n这里没有外人介入的余地。\n有余地的东西不能称之为神域。\n调息、集中、步法——。\n使出的那唯一而到达神域之枪击。\n这是立于灵峰之巅，位居神座的存在\n才能知觉的激烈之风。	https://fgo.wiki/images/thumb/5/5a/%E6%9C%AC%E9%A2%86%EF%BC%8C%E5%B7%B2%E8%BE%BE%E7%A5%9E%E5%9F%9F.png/300px-%E6%9C%AC%E9%A2%86%EF%BC%8C%E5%B7%B2%E8%BE%BE%E7%A5%9E%E5%9F%9F.png
103	托马斯・爱迪生	トーマス・エジソン	Thomas Edison	182	88	男性	E	EX	E	EX	A	EX	文明的灯火	失败复失败，面对惨淡的结果，叹了口气。\n喝了一口重新冲泡的咖啡。\n前进。\n想出了不同的材料。\n喜悦地勇于筹措、实验、再次失败。\n「或许这世上根本不存在这种东西。」\n「或许永远无法做到让灯泡永远发光。」\n心中带这种想法——并将其扼杀。\n才不过试了8000种，世界上存在上万材料。\n一定要全部尝试一遍，如果还不行，\n那就发明新的材料。\n累积复累积，抛开不安继续前行。\n\n「接下来是什么？　是日本的竹子（bamboo）？」	https://fgo.wiki/images/thumb/f/fd/%E6%96%87%E6%98%8E%E7%9A%84%E7%81%AF%E7%81%AB.png/300px-%E6%96%87%E6%98%8E%E7%9A%84%E7%81%AF%E7%81%AB.png
108	伊斯坎达尔	イスカンダル	Iskandar	212	130	男性	B	A	D	C	A+	A++	戈耳狄俄斯之结	若要向远方疾驰，就不能被任何存在束缚。\n道理、理智、传统习俗的谴责。\n这些才是束缚心灵的枷锁。\n所以必须斩断。颠覆。\n哪怕被嘲笑此乃愚昧之举，\n也能用剑光一闪转为伟大成就。\n如今在此地展现的霸业之兆，\n终将成为通往下个世界的路标。	https://fgo.wiki/images/thumb/0/09/%E6%88%88%E8%80%B3%E7%8B%84%E4%BF%84%E6%96%AF%E4%B9%8B%E7%BB%93.png/300px-%E6%88%88%E8%80%B3%E7%8B%84%E4%BF%84%E6%96%AF%E4%B9%8B%E7%BB%93.png
115	坂田金时(Rider)	坂田金時	Sakata Kintoki	190	88	男性	A+	B	B+	C	C	B	黄金熊号	身为一名男人，\n谁都会憧憬过那种大型摩托吧——\n\n那东西现在改头换面来到此地。\n在Golden的名下！\n\n寄宿着雷神之力的钢铁马匹。\n金时曰，是拥有200万马力的怪物机器。\n金时曰，最高时速2500km（约2马赫）。\n金时为其命名为「黄金熊号」。\n\n无论是摩托、痛卡车、还是低底盘卡车，\n被坂田金时认定为爱机的移动机械\n无一例外都会拥有变形能力，\n而这次的「熊号」则能变形成超加速突击形态！	https://fgo.wiki/images/thumb/d/de/%E9%BB%84%E9%87%91%E7%86%8A%E5%8F%B7.png/300px-%E9%BB%84%E9%87%91%E7%86%8A%E5%8F%B7.png
117	风魔小太郎	風魔小太郎	Fuuma \\""Evil-wind\\"" Kotarou	158	49	男性	C+	D	A+	B	B	C	鬼之面具	戴上这个面具的人会化为鬼。\n所以，只有在万不得已的时候才能戴上哦——\n当然，那不过是酒宴上的玩笑罢了。\n这面具只是普通的面具，不会变成鬼。\n\n啊啊，但是。\n若通过戴上这个面具，真的能变成鬼的话。\n若真的能化为罗刹，葬送敌人的话。\n若真的能拯救风魔于苦境中的话，\n我一定会——\n\n于是我戴上了鬼面，也明白了。\n原来如此，我确实变成了鬼。\n只不过遮住了面容，就变得能做各种非人恶行了。\n\n我已经不会再摘下这个鬼面了。\n我会胸怀着邪恶，与风魔一起堕落。\n对不起，父亲。\n我已经堕落成了一名普通的鬼了。	https://fgo.wiki/images/thumb/2/2a/%E9%AC%BC%E4%B9%8B%E9%9D%A2%E5%85%B7.png/300px-%E9%AC%BC%E4%B9%8B%E9%9D%A2%E5%85%B7.png
120	尼托克丽丝	ニトクリス	Nitocris	162	51	女性	E	E	C	A	B+	B+	未被行使的王权	…………嗯，说得对。\n\n我被轻视诸神的当权者们推上傀儡法老的地位，\n我的宝座上除了神之光辉，更多的则是——\n呜呼，一定是被鲜血染红了吧。\n\n但成为法老的我决不能忘记被逐一杀光的我兄弟们，\n不能忘记年轻先王们的懊悔与不甘，\n也不能原谅那些胆敢玩弄光辉法老宝座的下等人。\n\n对连身为王与神的法老之座都敢玩弄的不敬，降下惩罚。\n对胆敢向我心爱兄弟们下手的大逆不道之徒，降下惩罚。\n\n我是一个非常没有耐心的女人。\n总是会对同盟对象（你）发火吧。\n\n或许……\n这是生前的所作所为所致。\n请务必原谅我。\n咳咳。不对，是你得原谅我！	https://fgo.wiki/images/thumb/8/89/%E6%9C%AA%E8%A2%AB%E8%A1%8C%E4%BD%BF%E7%9A%84%E7%8E%8B%E6%9D%83.png/300px-%E6%9C%AA%E8%A2%AB%E8%A1%8C%E4%BD%BF%E7%9A%84%E7%8E%8B%E6%9D%83.png
121	兰斯洛特(Saber)	ランスロット	Lancelot	191	81	男性	B	A	B	C	B+	A++	湖中仙子	一切都是从这里开始的。\n我的人生充满了悲叹、爱、憎恶与喜悦。\n为无法与深爱之人一同度过而哀叹，\n为羁绊的建立感到由衷热爱，\n对非人之王心怀崇敬与憎恶，\n即便如此——依然充满喜悦。\n\n失去之物，做错之事，伤害之人不计其数。\n但获得之物，坚信正确之物，以及守护之物确实存在。\n\n然而，已经够了。\n终于到了抛弃这一切的时候了。\n稍微，有些累了。\n脱下铠甲，摘下头盔，扔下长剑——\n稍微，睡一会儿吧。\n在这无比平静的湖上。\n稍微……稍微……	https://fgo.wiki/images/thumb/c/c1/%E6%B9%96%E4%B8%AD%E4%BB%99%E5%AD%90.png/300px-%E6%B9%96%E4%B8%AD%E4%BB%99%E5%AD%90.png
122	崔斯坦	トリスタン	Tristan	186	78	男性	B	B	A	B	E	A	唯一的谎言	对，那是挂着黑帆的木船。\n像我这样无可救药的人渴望救赎根本就是个错误。\n\n所以，那是黑帆。\n——回想起来，我是只能伤害他人的存在。\n用声音、用弓、用话语，\n伤害亲密的人，伤害所爱的人，不断伤害所有人。\n\n因此这是黑帆。\n她的话语毫无疑问是真实。\n\n因为我根本没有等待挂着白帆之船的资格。\n\n补充\n请不要责怪她。\n对我来说，那就是黑帆。	https://fgo.wiki/images/thumb/2/29/%E5%94%AF%E4%B8%80%E7%9A%84%E8%B0%8E%E8%A8%80.png/300px-%E5%94%AF%E4%B8%80%E7%9A%84%E8%B0%8E%E8%A8%80.png
123	高文	ガウェイン	Gawain	180	78	男性	B+	B+	B+	A	A	A+	格林嘉莱特	我的名字乃是妖精马格林嘉莱特。\n背上坐着一只大猩猩。\n\n不，不对。不是大猩猩。而是高文卿。\n光是白银甲胄就已经很重了，那个男人明明是个\n爽朗帅哥，肌肉密度却高得可怕，体重也沉重得吓人。\n然而其英气逼人媲美洒向地面的灿烂阳光，热得要死，\n不对，应该说是个热血青年，就算一天驰骋千里\n也依然能保持飒爽。\n而在战斗的时候，不到歼灭对手决不停手，\n认真到觉得通宵三天三夜也是理所当然的。\n卿虽然朴实刚健、不懂得变通，\n但我通过与他一起走过的路程，\n变得比谁都清楚他有多么心思缜密、强大、严格。\n\n我是妖精马格林嘉莱特。\n今天也和卡文汀卿一起在平原上驰骋。\n不，不对。是高文卿哦。	https://fgo.wiki/images/thumb/5/51/%E6%A0%BC%E6%9E%97%E5%98%89%E8%8E%B1%E7%89%B9.png/300px-%E6%A0%BC%E6%9E%97%E5%98%89%E8%8E%B1%E7%89%B9.png
124	静谧哈桑	静謐のハサン	Hassan of the Serenity	161	42	女性	D	D	A+	C	A	C	存在的证明	我，是一个无耻的女人。\n\n明明身为一朵花被抚养长大，\n明明身为一种毒被调制而成。\n虽然获得了教团盟主这明确的荣誉，\n我却背叛了尊贵的存在。\n\n但是——\n但是，呜呼。\n渴望、焦急、梦想，\n这肢体（身躯）饥渴难耐。\n想要触碰。\n想要陪伴。\n想要得到温暖。\n就像人们做的那样，我也想要那样！\n\n……………不想杀戮。\n\n但是，我是为了杀戮而存在的。\n杀。杀。触碰着杀。抚摸着杀。舞动着杀。\n紧紧拥抱着杀。接吻着杀。\n无论怎样追求。\n我都是不断杀戮的武器、暗杀者、致死之毒。\n只有这点，是无论如何都无法改变的。\n\n总有一天\n我一定\n会将你——给杀掉。	https://fgo.wiki/images/thumb/3/37/%E5%AD%98%E5%9C%A8%E7%9A%84%E8%AF%81%E6%98%8E.png/300px-%E5%AD%98%E5%9C%A8%E7%9A%84%E8%AF%81%E6%98%8E.png
125	俵藤太	俵藤太	Tawara Touta	183	98	男性	B	B	D	C	B	A	炊饭无穷尽	不需要什么名刀，不想要什么名弓。\n名枪什么的，用晒衣杆代替就行了。\n但是，唯独这个。唯独想要这个。\n无论如何都想要。\n\n这米袋是只为给人们带来幸福的存在。\n谁都不会不幸，谁都能幸福地吃饱肚子。\n\n不过嘛，或许确实会有不法之徒\n为了得到这米袋而出现——\n但只要我抱着三个米袋开溜就好啦。\n虽然有点重，但幸福就是沉重的。\n而所谓英雄，就是习惯于背负重物的人嘛！	https://fgo.wiki/images/thumb/6/61/%E7%82%8A%E9%A5%AD%E6%97%A0%E7%A9%B7%E5%B0%BD.png/300px-%E7%82%8A%E9%A5%AD%E6%97%A0%E7%A9%B7%E5%B0%BD.png
139	克娄巴特拉	クレオパトラ	Cleopatra	171	58	女性	B	C	A	D	D	A	命运之蛇	克娄巴特拉用毒蛇自尽了。\n\n埃及被罗马……\n不是恺撒或是安东尼的罗马，\n而是那可憎屋大维统治之后的罗马。\n据说被幽禁在自己宫殿的她不甘沦为俘虏，\n让潜藏在无花果中的毒蛇噬咬了自己。\n\n据说蛇乃是眼镜蛇。\n呜呼，这是何等讽刺。\n亦或是命运、必然，犹如古老神明们的意图。\n\n代表从古代连绵延续至今的\n法老王权与神性的蛇乌拉埃乌斯(蛇形标记)。\n其外形，也同为眼镜蛇——	https://fgo.wiki/images/thumb/4/42/%E5%91%BD%E8%BF%90%E4%B9%8B%E8%9B%87.png/300px-%E5%91%BD%E8%BF%90%E4%B9%8B%E8%9B%87.png
127	莱昂纳多・达・芬奇	レオナルド・ダ・ヴィンチ	Leonardo da Vinci	160	40	女性	E	E	C	A+	B	EX	万能之智，根底之知	虽然我作为画家非常有名，\n但本质上是个什么都做的人。\n能做道具，也能造兵器。\n能设计城市，也能造船。\n\n我始终在思考的是『万物的经过』。\n无论是人造的鸟、代表星辰的杖、\n还是能应对任何战局的万能护手。\n我追求完美的美。\n而为此，就需要了解更多的知识而已。\n\n哎？　问我是否完成了“完美的美”？\n那当然啦。我其实在相当早的阶段就达成了目标！\n但这不过是个人的见解。\n为了能赢得更多共鸣，让其发展得更好，\n我每天都不能停止当天才。\n收弟子，旅行，有时治愈人们的内心。\n我虽为天才，却并不薄情。\n因为我知道完成的美为何。\n无法爱人类的存在，是不会有人性成长的。\n这很简单。\n只是我为了明白这件事，稍微花了点时间而已哦？	https://fgo.wiki/images/thumb/c/cb/%E4%B8%87%E8%83%BD%E4%B9%8B%E6%99%BA%EF%BC%8C%E6%A0%B9%E5%BA%95%E4%B9%8B%E7%9F%A5.png/300px-%E4%B8%87%E8%83%BD%E4%B9%8B%E6%99%BA%EF%BC%8C%E6%A0%B9%E5%BA%95%E4%B9%8B%E7%9F%A5.png
128	玉藻前(Lancer)	玉藻の前	Tamamo-no-Mae	160	49	女性	B	C	A	E	A	C	沙滩日落	夏天结束了，假期结束了。\n哪怕再多的回忆，只要逝去，就会变得无比空虚。\n对，就像这反复着靠近与折返的安静海浪一样。\n我向太阳许愿。\n让这夕阳落入水平线的时间停滞吧。\n请再给我一点时间，给我几分钟，不，再给我一年，\n希望这个瞬间能延续下去。\n\n「开玩笑的啦，现在哪有空朗诵什么悲伤系的诗歌啦！\n　哪怕夏日即将终结，直到夕阳落下的最后一秒前，\n　小玉藻的夏日依然还是假期！\n　我要继续积累愉快的时光！」\n\n——夏日的魔物是不灭的动物。\n正如你所见，明年的夏日也注定会是一段辉煌的时光☆	https://fgo.wiki/images/thumb/4/4b/%E6%B2%99%E6%BB%A9%E6%97%A5%E8%90%BD.png/300px-%E6%B2%99%E6%BB%A9%E6%97%A5%E8%90%BD.png
130	玛丽·安托瓦内特(Caster)	マリー・アントワネット	Marie Antoinette	160	48	女性	E	D	C	A	B+	A+	夏日的回忆	……夏日的回忆？\n\n呵呵，对。\n美妙的回忆有很多，\n要挑选出一个实在有些困难。\n\n那今天就聊聊小特里亚农宫吧。\n那是一座远离凡尔赛宫，\n由我彻头彻尾重新改建过的离宫。\n\n建造得犹如真正的自然风景。\n是一座英式的庭院。\n用您的时代的话来说，应该怎么形容呢？\n绿意盎然，有水，有岩石，还有洞窟。\n有小小的神殿与……\n啊，还摆着可爱的斯芬克斯像。\n\n那里是我最喜欢的地方啦。\n对，我喜欢夏日悠闲凉爽的的生活。\n也喜欢和妹妹以及朋友们一起聊天。\n\n脱下宫廷服饰，穿上流行的裙子玩耍。\n带上遮阳帽子。\n啊啊，怎么办呢。这简直就像现在这个瞬间，\n和这短暂的假日一模一样呢——	https://fgo.wiki/images/thumb/7/79/%E5%A4%8F%E6%97%A5%E7%9A%84%E5%9B%9E%E5%BF%86.png/300px-%E5%A4%8F%E6%97%A5%E7%9A%84%E5%9B%9E%E5%BF%86.png
131	安妮·伯妮＆玛莉·瑞德(Archer)	アン・ボニー＆メアリー・リード	Anne Bonny & Mary Read	-1	-1	女性	D	C	A	D	A	A	正在沐浴中！	我当然明白啦，这不是偶然吧？\n我当然明白，这是偶然吧？\n虽然这具身躯伤痕累累，令人惨不忍睹。\n虽然这具瘦弱的身躯伤痕累累，不忍谈及。\n但被你如此热情地凝视，我的身子都发烫了……\n别这样，被看到如此丢人现眼的样子，我都要畏缩了！\n……但话虽如此，你现在才转头不看，我也挺难办的。\n干嘛啦，你果然不想看啊～。\n那我提出一个妥协方案吧。\n既然如此，就采用折中的方案吧。\n要不要闭上眼睛，一起来泡呢？\n如果你愿意闭上眼睛，我倒是允许让你一起泡哦。\n但在此之前，我有个重要的问题要问你。\n哎呀，等一下，我有个问题要先问你。\n\n——你想和谁一起泡澡？	https://fgo.wiki/images/thumb/8/8b/%E6%AD%A3%E5%9C%A8%E6%B2%90%E6%B5%B4%E4%B8%AD%EF%BC%81.png/300px-%E6%AD%A3%E5%9C%A8%E6%B2%90%E6%B5%B4%E4%B8%AD%EF%BC%81.png
134	清姬(Lancer)	清姫	Kiyohime	158	41	女性	D	D	B	E	A+	C	海滨情书（恐怖）	哎呀，御主♪\n哎，问我这沙滩文字是什么吗？\n当然，是写在沙滩上的情书啦！\n呵呵呵，这样一来，就能证明\n整片沙滩上都是我满满的爱了！\n……但后半稍微有些累了，所以可能会看到些奇怪的\n词语，但在爱的面前，这都是微不足道的小事吧，御主？\n来吧，请好好观赏吧，观赏吧，观赏吧♪\n\n充分看清楚了吧？\n那御主也就明白应该回答的话了吧。\n那我们一起说吧……预·备！\n\n爱！\n我！\n你～！\n\n……喊～得～不～齐～！！	https://fgo.wiki/images/thumb/f/fd/%E6%B5%B7%E6%BB%A8%E6%83%85%E4%B9%A6%EF%BC%88%E6%81%90%E6%80%96%EF%BC%89.png/300px-%E6%B5%B7%E6%BB%A8%E6%83%85%E4%B9%A6%EF%BC%88%E6%81%90%E6%80%96%EF%BC%89.png
135	玛尔达(Ruler)	マルタ	Martha	161	49	女性	B+	B	B	A	A+	A	神圣拳套	——波浪拍岸之际，找到了遗失的物品。\n\n平时认真诚实且温柔，\n就像是从者榜样般的你居然会遗忘东西。\n真是稀奇之事。\n与其说是遗留在这里，不如说掉落在这里比较妥当吧。\n\n在波浪的冲洗下闪闪发光。\n在太阳的映照下闪闪发光。\n并非灿烂辉煌，而是闪闪发光。\n略有些高贵的感觉，\n确实很有你的风格。\n\n好了，差不多该去捡起来了。\n得追上先行离去的你，将这个送还给你才行。\n你是否会高兴呢——？\n\n「啊。找到了找到了，我的神圣拳套。\n　万一不小心锈掉了可就糟了呢。\n　唔？\n　怎么了？\n　御主，您在写什么啊？\n　您居然有写诗这么高雅的兴趣啊。\n　……为什么要藏起来？　御主。御主？」	https://fgo.wiki/images/thumb/0/09/%E7%A5%9E%E5%9C%A3%E6%8B%B3%E5%A5%97.png/300px-%E7%A5%9E%E5%9C%A3%E6%8B%B3%E5%A5%97.png
137	克洛伊・冯・爱因兹贝伦	クロエ・フォン・アインツベルン	Chloe von Einzbern	133	29	女性	D	C	B	C	C	C	痛觉共有	呼～，诅咒的连接对象修改完成！\n这样一来，你的痛苦就是我的啦♪\n\n明明是简单的术式，你却总是在拖延时间……\n一会儿说什么痒啦，一会儿说什么身体里发冷啦。\n我说，怎么又露出那种表情了啦。\n……唔……这样啊，心里有些难受啊。\n那是罪恶感吗？\n——哈？　你可别误会我喜欢疼痛哦。\n这不是自虐，而是明·确·的·战·略。\n和伊莉雅联系在一起的时候也不都是些坏事。\n疼痛会令人精神变得冷静，\n多亏了这个，有时还能从绝境中逃脱。\n虽然凛的这个涂鸦是基于我某种考量才暂缓了解咒，\n但我保证这东西在意外的情况下还是很有用处的。\n\n……呵呵，其实哦？\n时不时会发呆，显得有些让人不放心的你，\n偶尔会乱来，或是责怪自己……\n这种时候我会陪在你的身边。\n而你心中对我也有些许的感情。\n这么想来，我就完全不介意疼痛了。\n所以不要客气，交给我吧？　好吗，御主♪	https://fgo.wiki/images/thumb/6/69/%E7%97%9B%E8%A7%89%E5%85%B1%E6%9C%89.png/300px-%E7%97%9B%E8%A7%89%E5%85%B1%E6%9C%89.png
206	阿喀琉斯	アキレウス	Achilles	185	97	男性	B+	A	A+	C	D	A+	包容世界之物	——那是，讴歌世界之盾。\n那世界肩负着我疾驰而过的生命，\n那世界怀有我参与过的战斗，\n那是，会映出我想要守护之物的镜子。\n\n因此，只要发动一次这个宝具，\n人类也好、军队也好、城池也好、甚至神明，\n发起的任何攻击都会被防御住。\n\n要问为什么，那是因为这面盾牌正是世界本身！\n\n好了，来试试吧，“黑”之骑兵。\n我已经不需要这面盾牌了。\n是这面盾会赢，还是那可以杀死神明的枪会赢——\n……算了，这样一来我与老师的约定就完成了。\n\n上吧！	https://fgo.wiki/images/thumb/d/d0/%E5%8C%85%E5%AE%B9%E4%B8%96%E7%95%8C%E4%B9%8B%E7%89%A9.png/300px-%E5%8C%85%E5%AE%B9%E4%B8%96%E7%95%8C%E4%B9%8B%E7%89%A9.png
144	魁札尔・科亚特尔	ケツァル・コアトル	Quetzalcoatl	181	64	女性	B	B	B+	EX	A+	EX	太阳之石	据说在中南美神话中，死亡虽然是成长与成熟的结局，\n也是全新诞生的前兆。\n这绝不是单指生物的存在方式。\n也是指世界的存在方式。\n世界总是在重复着破坏与创造。\n\n阿兹特克的诸神在破坏了古老世界之后，\n一定会创造下一个世界。\n据说现在的世界也是在经历了这样的过程后\n被创造出来的第五世界。\n\n同时，为身为世界的中心或是世界本身的\n生命的隆盛提供庇护的——正是太阳。\n根据一种说法，\n魁札尔·科亚特尔乃是第二世界的太阳，\n也引导了第五太阳。\n\n阿兹特克的民众目睹了太阳的世界。\n目睹了破坏与创造，死亡与诞生。\n\n过去曾在特诺奇提特兰的神殿中，\n现代则被保管于墨西哥城中的\n“太阳之石”上雕刻的太阳（世界）有五个。\n这是过去与现在的全部。\n\n第五太阳迟早也会消失。\n届时，究竟会诞生第六个新世界，\n还是……\n\n「——那就取决于你们啦～！」	https://fgo.wiki/images/thumb/a/ab/%E5%A4%AA%E9%98%B3%E4%B9%8B%E7%9F%B3.png/300px-%E5%A4%AA%E9%98%B3%E4%B9%8B%E7%9F%B3.png
237	紫式部	紫式部	Murasaki Shikibu	163	51	女性	E	E	D	B	A+	C	新·源氏物语绘卷	贵安，御主。\n啊……\n这幅画吗。没错，我想要亲自为\n『源氏物语』创作配图。\n希望能把它做成一部绘卷。\n\n诶……\n您说，很美？\n感谢您的赞赏。\n\n其实——\n它参考了已有的绘卷。\n也就是『隆能源氏的源氏物语绘卷』。\n\n不过，题材有所改变。\n我所描绘的是第九帖，葵。\n隆能源氏的绘卷中并没有这一章。\n没错，正如您所说。\n这与显现为我的宝具的绘卷是同一章。\n\n虽然并没有特别认识到这一点……\n我，或许喜欢这一章吧。\n又或许——\n\n我的灵魂，正镌刻在这一章中。\n\n呵呵。\n御主您怎么认为呢？	https://fgo.wiki/images/thumb/8/8f/%E6%96%B0%C2%B7%E6%BA%90%E6%B0%8F%E7%89%A9%E8%AF%AD%E7%BB%98%E5%8D%B7.png/300px-%E6%96%B0%C2%B7%E6%BA%90%E6%B0%8F%E7%89%A9%E8%AF%AD%E7%BB%98%E5%8D%B7.png
148	豹人	ジャガーマン	Jaguar Warrior	165	-1	女性	C	C	B	E	B	B	原初之火	——美洲豹潜藏在黑暗中，双目灿灿生辉。\n\n美洲豹乃是死亡。\n美洲豹乃是獠牙。\n美洲豹乃是利爪。\n美洲豹乃是意外死亡、恐惧、难以逃脱的痛苦。\n美洲豹乃是密林本身的象征。\n\n也就是说有时也会是恩惠。\n会夺去生命，但由于其有时也司掌孕育生命的自然，\n因此传说美洲豹赐予了人类起源之“火”。\n\n赐予？\n\n根据济语族原住民的传承，\n人类是偷窃来的。\n从令人畏惧的自然那里，偷走了伟大的智慧与力量。	https://fgo.wiki/images/thumb/0/04/%E5%8E%9F%E5%88%9D%E4%B9%8B%E7%81%AB.png/300px-%E5%8E%9F%E5%88%9D%E4%B9%8B%E7%81%AB.png
185	望月千代女	望月千代女	Mochizuki Chiyome	154	46	女性	D	D	A	C	C	C	月轮九曜	哪怕嫁入甲斐，\n她的内在也并未改变。\n她的诅咒也并未改变。\n于甲贺五十三家之一，\n甲贺望月家诞生之人。\n\n会悄悄携带着月轮九曜家纹，就是其证明。\n\n片刻都不会忘记，\n此身继承了甲贺三郎诅咒。\n\n不可能忘记。\n因为尽管相信这是诅咒，\n有时，大蛇的气息却又会像她的“力量”一样行动，\n甚至为自己杀戮敌人——	https://fgo.wiki/images/thumb/6/63/%E6%9C%88%E8%BD%AE%E4%B9%9D%E6%9B%9C.png/300px-%E6%9C%88%E8%BD%AE%E4%B9%9D%E6%9B%9C.png
150	梅林	マーリン	Merlin	178	68	男性	B	E	D	A	C	C	尽头之塔	此处是花朵五彩缤纷绽放的最后乐园。\n白昼弥漫着春日的阳光与夏日的气味，\n夜晚被秋日的空气与冬日的星空覆盖。\n大地上有鲜花昆虫，森林中有流水绿意与野兽。\n而水边则是容貌美艳的妖精们。\n神话中被誉为常春之国、苹果之岛的小世界。\n拥有智慧的野兽无法实现、\n无法抵达的理想乡（乌托邦）。\n\n其名为阿瓦隆。星之内海——\n名为地球的行星的灵魂安置之所的别名。\n\n在这个地方，男人主动切断了道路。\n选择将自己置身于幽禁之塔，\n直到星辰终结都无法死去的未来。\n该看的都已经看过了。\n——不。\n是看过的美丽事物已经过于足够了。\n\n「好了，去吧，凯茜帕鲁格。我留在这里就行了。\n　你自由地，\n　去接触真正美丽的存在吧。」\n\n男人不带任何感慨，将最后的同居者从窗口放出。\n魔术师不知腻烦地从唯一的窗口一览世界。\n\n这是一个如此平凡的，关于世界终焉的故事。	https://fgo.wiki/images/thumb/e/ee/%E5%B0%BD%E5%A4%B4%E4%B9%8B%E5%A1%94.png/300px-%E5%B0%BD%E5%A4%B4%E4%B9%8B%E5%A1%94.png
163	Meltryllis	メルトリリス	Meltryllis	190	33	女性	E	C	A+	A	B	EX	无比闪耀之物	少女表示，无论是未来还是过去，\n他人与世界都是不纯的。\n只要有自己就够了，不需要其他的花朵。\n\n然而，过去的回忆破坏了孤高的心灵。\n闪耀的存在是无限的。\n她明白了珍视除自己以外之美的弱小。\n\n「嗯，我确实明白了什么是恋慕。\n　但我的自尊丝毫未变。\n　获得深爱之物。让美丽之物侍奉自己。\n　将众多的爱当做踏板，成为闪耀的湖上之星。\n　这就是回馈爱我之人的最好谢礼吧？」\n\n蜜之女王骄傲地笑着。\n没有践踏收到的赠花，而是珍惜地抱着。	https://fgo.wiki/images/thumb/f/fc/%E6%97%A0%E6%AF%94%E9%97%AA%E8%80%80%E4%B9%8B%E7%89%A9.png/300px-%E6%97%A0%E6%AF%94%E9%97%AA%E8%80%80%E4%B9%8B%E7%89%A9.png
153	宫本武藏	新免武蔵守藤原玄信	Shinmen Musashi-no-Kami Fujiwara no Harunobu	167	56	女性	B	B	B	E	B	B	空之佛	南无天神。天满大自在。\n两者相对，两者超越。于包括中可得观。\n\n筛众多选择，\n缩有限范围，\n终得唯一结论。\n无其他余地之正确标的。\n零之天元，乃吾剑与心之答案。\n\n空有善无恶，智者有也，\n理者有也，道者有也，心者空也。\n\n钻研至极致之剑非术。\n大悟之剑道方能纳于此无人之堂是也。	https://fgo.wiki/images/thumb/e/eb/%E7%A9%BA%E4%B9%8B%E4%BD%9B.png/300px-%E7%A9%BA%E4%B9%8B%E4%BD%9B.png
154	“山中老人”	“山の翁”	"First Hassan"	220	-1	男性	B	A	B	E	E	A	幽谷之渊	已无教诲可传，\n亦无自身可述。\n剑士将化为天命使者，\n其技已超越达人之域。\n\n见证晚钟已几经星霜。\n这已不能称之为生命，\n而已踏入自然、现象的领域。\n\n在幽谷间，生死境界模糊。\n始终触碰着死亡的剑士\n一边死亡，一边继续活着。\n\n犹如自己成就的山中老人传说一般。	https://fgo.wiki/images/thumb/1/10/%E5%B9%BD%E8%B0%B7%E4%B9%8B%E6%B8%8A.png/300px-%E5%B9%BD%E8%B0%B7%E4%B9%8B%E6%B8%8A.png
159	燕青	燕青	Yan Qing	171	63	男性	B	D	A+	D	B	D	百八魔星	邪恶升上天空，化为星辰。\n闪耀的天星三十六，灿烂的地星七十二，合计一百零八，\n就是拯救这块大陆的豪杰们背负的宿星。\n\n有善人也有恶人。\n有心怀侠义之人，也有心怀歹意之人。\n然而吾等乃是忧国忧民之辈。\n\n百八魔星，在此驾临。\n为了拯救动乱的大陆，借凡人之躯纵横驰骋！\n无论终幕将会迎来何等结局！	https://fgo.wiki/images/thumb/2/26/%E7%99%BE%E5%85%AB%E9%AD%94%E6%98%9F.png/300px-%E7%99%BE%E5%85%AB%E9%AD%94%E6%98%9F.png
162	茶茶	茶々	Cha Cha	138	34	女性	D	D	D	C	B	C	赤豆布袋	「茶茶要最漂亮的这个！」\n\n「那我就选这个。」\n\n「我……我就拿这个……」\n\n在遥远过去的那个日子，与大家一起度过的微不足道的时光。当一切都被火焰包围，毁灭消失的那刻，才终于发现。那短暂的一刻，才是无可替代的一刻。\n\n——这是被时代浪潮所玩弄的既脆弱又坚强的三姊妹的故事。	https://fgo.wiki/images/thumb/4/40/%E8%B5%A4%E8%B1%86%E5%B8%83%E8%A2%8B.png/300px-%E8%B5%A4%E8%B1%86%E5%B8%83%E8%A2%8B.png
191	机械伊丽亲Ⅱ号机	メカエリチャンⅡ号機	Mecha Eli-chan Ⅱ	156	4	女性	A	A	E	E	E	B	巨大的守护者	Mega frame（巨大框体）乃是守护神的证明。\n这身躯才是机械伊丽亲Ⅱ号机的本体，\n也就是巨大机械伊丽亲是也……！\n身高，57米。\n体重，拒绝测量。\n美中不足的是由于魔力消耗极为巨大，\n所以只能用作防卫据点。\n据本人声称，由于是机械，\n所以就算从下面被偷窥也不会觉得害羞。\n\n「……对。虽然是只会在支配恰赫季斯时使用的东西，\n　但作为正式机师的你若想自由使用，我也没什么意见。\n　好了，既然如此，那就快坐进来吧。\n　没关系，我会帮你把魔力用得一干二净。\n　哎呀，你以为自己逃得掉吗？\n　你应该已经充分理解我的手能伸多远了吧？」	https://fgo.wiki/images/thumb/f/fc/%E5%B7%A8%E5%A4%A7%E7%9A%84%E5%AE%88%E6%8A%A4%E8%80%85.png/300px-%E5%B7%A8%E5%A4%A7%E7%9A%84%E5%AE%88%E6%8A%A4%E8%80%85.png
164	Passionlip	パッションリップ	Passionlip	156	1	女性	A+	A	C	B	E	C	不能移开视线	少女大叫，\n不要理解与共鸣，也不要自己与恋人。\n反正肯定会被讨厌，\n那还不如一切都消失为好。\n\n然而，过去的回忆包住了孤独之心。\n哪怕世界充满着痛苦，\n在某个地方一定存在着渴望拯救之心。\n\n「对，我知道了什么是恋慕。\n　哪怕无法实现，哪怕无法相遇，\n　依然存在着照耀心灵之人。\n　哪怕得不到回报，\n　这份恋情，也绝不是什么悲伤之事。」\n\n她不再回避镜子。\n即便无法相互触碰，但只要是为了恋慕的那个人，\n她依然渴望如鲜花般绽放。	https://fgo.wiki/images/thumb/b/b8/%E4%B8%8D%E8%83%BD%E7%A7%BB%E5%BC%80%E8%A7%86%E7%BA%BF.png/300px-%E4%B8%8D%E8%83%BD%E7%A7%BB%E5%BC%80%E8%A7%86%E7%BA%BF.png
166	BB	ＢＢ	BB	156	46	女性	E	C	D	A	EX	A	路旁之梦	这个人物诚恳地对『有』却『无』的存在，\n道出了一句，你好。\n\n路旁之石还记得。\n哪怕蒙上阴影，哪怕成为幻觉，\n就像记录着不存在的事一样记着。\n\n记着在那本应无人的放学后保健室中发生的\n温暖的时光与那份奇迹。\n\n\n——如今每当回想起来，内心为之心焦。\n这是在遥远事象中，过于幼稚的恋情故事。	https://fgo.wiki/images/thumb/5/55/%E8%B7%AF%E6%97%81%E4%B9%8B%E6%A2%A6.png/300px-%E8%B7%AF%E6%97%81%E4%B9%8B%E6%A2%A6.png
170	武则天	武則天	Wu Zetian	138	35	女性	D	E	A	B	A	B	洛阳的宫殿	她成就了伟业。\n正确的国家，正确的统治。\n成就了伟业的人必须获得回报。\n基于赏罚分明的理念，她晚年在绚烂豪华的宫殿中度日。\n那里充斥着颓废与爱。\n国家已迈上正轨。放下心的她沉溺于欲望之中。\n这或许是对不断努力的她给予的第一份褒奖吧。\n\n然而——正确的她周围的人们，被她倾注了爱的人们，并非都是正确的。\n\n造反发生了，当所爱之人被斩杀，自己被赶出宫殿之时，\n她愕然地发现。\n她所考虑的正确，与民众所渴望的正确，\n是否存在乖离的可能性。\n\n这是……从何时开始？　\n或者，是从一开始就——	https://fgo.wiki/images/thumb/1/11/%E6%B4%9B%E9%98%B3%E7%9A%84%E5%AE%AB%E6%AE%BF.png/300px-%E6%B4%9B%E9%98%B3%E7%9A%84%E5%AE%AB%E6%AE%BF.png
174	保罗・班扬	ポール・バニヤン	Paul Bunyan	-1	-1	女性	C	A	C	E	E	C	开拓地	曾被称为新天地的地方\n遭到了这么称呼之人的蹂躏，\n现在已然失去。\n此处，只剩下了一个国家。	https://fgo.wiki/images/thumb/b/b5/%E5%BC%80%E6%8B%93%E5%9C%B0.png/300px-%E5%BC%80%E6%8B%93%E5%9C%B0.png
180	海伦娜·布拉瓦茨基(Archer)	エレナ・ブラヴァツキー	Helena Blavatsky	145	38	女性	E	D	B	A	A	B+	NYARF！	来历如何毫无关系。\n只要是心爱主人的道具，\n就要用心进行保养。\n哪怕是为新灵基准备的陌生枪械。\n\n据说，该枪械能射出水来。\n据说，该枪械与夏日相称。\n据说，该枪械乃某种玩具。\n\n……好吧。\n那就应该仔细保养，\n以便主人随时享受。	https://fgo.wiki/images/thumb/0/0b/NYARF%EF%BC%81.png/300px-NYARF%EF%BC%81.png
181	源赖光(Lancer)	源頼光	Minamoto-no-Raikou	175	-1	女性	C	B	D	A	C	A+	京极	据说源赖光曾在藤原道长之父兼家新建造的二条京极宅邸落成之际，向宾客赠送了三十匹马。\n因为赖光与摄关家建立了秘密的关系。\n\n长有牛角的黑马·京极。\n依靠赖光的魔力得以实体化的坐骑。\n其名应该是赖光为将其与赠送的那\n三十匹马建立关系而赐予的名字吧。\n\n与主人一起为了守卫迦勒底的风纪，\n京极随时等待下一个命令。\n\n哪怕改变了灵基才得以成形的主人的存在\n只是一场夏日的幻梦——	https://fgo.wiki/images/thumb/8/87/%E4%BA%AC%E6%9E%81.png/300px-%E4%BA%AC%E6%9E%81.png
182	伊什塔尔(Rider)	イシュタル	Ishtar	159	47	女性	C	C	A	B	B	EX	女神的优胜奖杯	虽说早已准备妥当，但由于感到不好意思，\n才拿去压箱底不打算使用的优胜奖杯。\n\n尽管发生了不少事，\n但对她来说，伊什塔尔杯是最棒的节日，\n渺小人类御主的实况转播令人愉快。\n不会将这份感情说出口，\n却会作为纪念品悄悄刻印下来。\n\n在天空轻快驰骋的女神与小摩托。\n与坐在后座上，同样享受着夏日的某人的身影。	https://fgo.wiki/images/thumb/a/aa/%E5%A5%B3%E7%A5%9E%E7%9A%84%E4%BC%98%E8%83%9C%E5%A5%96%E6%9D%AF.png/300px-%E5%A5%B3%E7%A5%9E%E7%9A%84%E4%BC%98%E8%83%9C%E5%A5%96%E6%9D%AF.png
183	帕尔瓦蒂	パールヴァティー	Parvati	156	46	女性	D	C	D	B	B	EX	丰收公牛	这正是丰收大地的象征，\n承诺恩惠的守护者。\n但其实性格有些悠闲，看着其呼呼大睡的样子，\n不禁咯咯笑出了声。\n\n当两人一起坐在其背上，尽管显得有些麻烦，\n却依然慢悠悠地站起身一步一步走了起来。\n\n而我，\n则将脸轻轻靠在那个人的背后。\n为了不让任何人看到我羞红的面庞。\n\n……但是对女神来说，\n这种行为是否显得太青春了？\n唔唔，总觉得有些不好意思了！	https://fgo.wiki/images/thumb/1/13/%E4%B8%B0%E6%94%B6%E5%85%AC%E7%89%9B.png/300px-%E4%B8%B0%E6%94%B6%E5%85%AC%E7%89%9B.png
186	宝藏院胤舜	宝蔵院胤舜	Houzouin Insyun	177	79	男性	C	D	A	D	B	C	十文字枪	——说到底，身为和尚却杀生完全就是矛盾。\n你不这么认为吗？　贫僧觉得一点也没错。\n但事实上，那个世道确实已经紧迫到能容许这种矛盾了。\n若不去杀，自己就会被杀……不只如此。\n连应该保护的人都会被杀害。\n为了保护弱者，伤害名为敌人的弱者。\n这巨大的矛盾，才是我的人生，我的枪术。\n\n没事，贫僧已经习惯于痛苦一生了。\n若非如此，才不会当什么和尚呢！	https://fgo.wiki/images/thumb/b/bc/%E5%8D%81%E6%96%87%E5%AD%97%E6%9E%AA.png/300px-%E5%8D%81%E6%96%87%E5%AD%97%E6%9E%AA.png
187	柳生但马守宗矩	柳生但馬守宗矩	Yagyuu Dajimanokamimunenori	181	71	男性	B	D	A++	E	B	B	二阶笠	真是太可笑了。\n居然说什么，幼小的七郎\n用两顶斗笠挡下了我的击打。\n\n而更为巧合的是，两枚笠正是我柳生家的家纹是也。\n过于巧合，已经可以算是玩笑或戏言了。\n\n然而……\n所谓历史，或许就是这样铸就的。\n事实上，七郎，三严那小子，\n哪怕用斗笠——\n\n不。说得太多了。\n多余的话还是点到为止吧。	https://fgo.wiki/images/thumb/7/79/%E4%BA%8C%E9%98%B6%E7%AC%A0.png/300px-%E4%BA%8C%E9%98%B6%E7%AC%A0.png
188	加藤段藏	加藤段蔵	Katou Danzou	165	45	女性	D	D	A	C	B	C	段藏的牛	段藏，喜欢牛。\n\n如此悠闲，\n如此逍遥，\n散发着一种稳重而不为动摇的大人物的气息。\n\n所以……\n决不会把牛吞下去。\n在某个战记故事中，\n有个说什么段藏是否把牛吞下去的故事。\n不会做。不会做。\n\n太可怜了——\n尽管段藏并不具备产生这种感慨的构造，\n但是，莫名对此感到畏惧。\n不想伤害。\n希望牛，能一直保持大人物般的风范。\n\n在那模糊记录的彼方，没错，\n段藏似乎还曾养过牛。\n我非常喜欢那个，\n似乎还用心爱的挂坠装饰在它的身上……？	https://fgo.wiki/images/thumb/c/c8/%E6%AE%B5%E8%97%8F%E7%9A%84%E7%89%9B.png/300px-%E6%AE%B5%E8%97%8F%E7%9A%84%E7%89%9B.png
189	刑部姬	刑部姫	Osakabehime	158	51	女性	E	E	E	A+	A+	A++	公主殿下的折纸	这里这么折，那里那样折……好了。\n你看，很不错吧？\n好歹是公主殿下，灵巧的双手是必须的。\n只要折纸，就会给人一种 OH Japanese Fantastic\nArts Princess的感觉，肯定会大受欢迎！\n\n综上所述，在练习的时候，顺便做了个御主的样子。\n啊，为了以防万一先说一句，这上面被加了诅咒，\n受的伤会和你相互连动的。\n所以一定要小心保管哦？　知道了吗？　知道了吗？\n\n……你那「呜哇这人未免太给人增加负担了吧」的表情是什么意思啦～！！\n把喜欢的人做成折纸就那么不好吗～！！	https://fgo.wiki/images/thumb/1/13/%E5%85%AC%E4%B8%BB%E6%AE%BF%E4%B8%8B%E7%9A%84%E6%8A%98%E7%BA%B8.png/300px-%E5%85%AC%E4%B8%BB%E6%AE%BF%E4%B8%8B%E7%9A%84%E6%8A%98%E7%BA%B8.png
190	机械伊丽亲	メカエリチャン	Mecha Eli-chan	156	4	女性	A	A	E	E	E	B	Electrologica Diagram	这不是良心回路，而是人心回路。\n就在她动力炉的旁边，\n是填补心灵空白的最后部件。\n\n机械构造的心闪闪发光。\n这是她不需要的东西。\n是曾是她的存在失去的东西。\n与机师间羁绊的结晶，\n令她开始梦想这本应不该追求的“光辉”。\n\n哪怕是事后追加的部件，\n也是非常重要的存在。\n\n「……好吧。如果你强烈要求的话，\n　我倒也不介意稍微唱几句啦。\n　一首？　不，怎么可能呢。\n　当然是整张专辑啦，有什么问题吗？」	https://fgo.wiki/images/thumb/b/b3/Electrologica_Diagram.png/300px-Electrologica_Diagram.png
192	喀耳刻	キルケー	Circe	147	39	女性	E	B	D	A+	A	C	鹰魔女之宴	——Ganshi？　啊啊，是“干事”啊？\n可以啊，安排宴会的事就包在我身上吧。\n真亏你选择了我鹰之魔女。\n既然受人之托，哪怕是你自己的葬礼，\n我也会办成一个笑声不断的最棒的庆祝宴会。\n\n我对料理尤为讲究。\n定会准备决不逊色于献给女神赫卡忒祭品的最好食材，\n以及连丰收之神狄俄倪索斯也会羡慕的美酒！\n还有犹如牧神潘从冥府复活般纯真无邪的少女们……\n……哎？　不用那么干劲十足？\n为什么？\n\n不行啦不行啦，御主！\n你应该全力以赴让自己更加堕落才行。\n人是为了沉浸于宴会而生的。\n没错，宴会的喜悦就是人生。\n先把你那沉重的头衔忘掉，\n将义务与职责什么的全都扔进瀑布深潭中吧。\n无需为明日而烦恼，也不用回忆过去。\n放心地将现在交给我吧。\n\n忘记清晨与夜晚，\n一味沉醉于美食佳肴与肉体的快乐中吧。\n不需要再犹豫了。死亡随时都在身旁。\n要享受就该趁现在。\n才不需要什么招待券呢。\n没错，只要舀一勺这麦粥休刻翁，\n送入口中就行了……\n\n——哎，还是不要？\n不拜托我了？　哎哎～怎么能这样啦～～？\n我会好好干的啦！　所以好吗～？\n算～我～求～你～啦～。	https://fgo.wiki/images/thumb/8/81/%E9%B9%B0%E9%AD%94%E5%A5%B3%E4%B9%8B%E5%AE%B4.png/300px-%E9%B9%B0%E9%AD%94%E5%A5%B3%E4%B9%8B%E5%AE%B4.png
193	哪吒	哪吒	Nezha	164	57	女性	C+	B	A	B	A	A	乾坤圈	『乾坤圈』与『混天绫』同为金光洞著名的宝贝。\n是太乙真人为庆祝哪吒诞生赠与的仙界武器。\n从那之后，哪吒便随身佩戴从不离身。\n\n伸缩自在，平时作为一对手镯装备在双臂上，\n一旦离开身体，就会化为拥有锐利刀刃的圆环状武器。\n哪吒将其运用自如到犹如操控半自动无人机。\n抛向半空大叫「疾！」就会向敌人发起进攻，\n一喊「停！」就会在半空中停滞，\n而喊「来！」则会回到手中。\n\n——唯独有一次，哪吒曾失去过乾坤圈。\n那是哪吒在与石矶娘娘战斗中被夺走，\n并由太乙真人将其夺回并暂时保存。\n之后，哪吒为了拯救人界的父母，\n更为了偿还自己犯下的罪行而自尽，\n在其再次重生之前，暂时失去了这件宝具。\n对哪吒来说，宝具的不在与屈辱和自责的记忆\n直接联系在一起。因此，\n哪吒只会将乾坤圈托付给自己寄予绝对信任的对象。\n\n倘若存在能让哪吒托付两件乾坤圈之一的对象，\n该人定是被哪吒视为亲如自己的存在，\n也是表明无论发生什么，自己都会再次苏醒，\n定将回到对方身边的誓言之证。	https://fgo.wiki/images/thumb/9/96/%E4%B9%BE%E5%9D%A4%E5%9C%88.png/300px-%E4%B9%BE%E5%9D%A4%E5%9C%88.png
196	埃列什基伽勒	エレシュキガル	Ereshkigal	159	47	女性	A	B	D	B	B	A	花开冥界	即便如此，最终，\n命运与职责也没发生什么很大的改变。\n\n你依然是你，\n她依然是她，\n彼此居住的场所并不遥远，同时，\n彼此的尊严也不会受到损害。\n但是，正因为如此，才能为这份灿烂而笑。\n尽管只是些许小事，尽管只是瞬间回忆，\n但仍犹如小刺，令胸口隐隐作痛。\n\n即便冥界不会长出葡萄树藤，\n你也是我的葡萄果实。\n是那无论经历多少星霜岁月，\n依然会令内心焦急的星星。\n哪怕在我消失之后，\n唯有这份热量是不会消失的吧。\n\n神代已然终结，灵魂也不会再留存于这片土地上了，\n孤独留到最后的主人完成了自己的使命后。\n明亮的阳光必然会映照这荒野。\n这是梦中无数次见到的光辉记忆的残照。\n——花开冥界。\n我会像这样，心中怀着幸福的感情，\n化作花朵消失不见。	https://fgo.wiki/images/thumb/f/f6/%E8%8A%B1%E5%BC%80%E5%86%A5%E7%95%8C.png/300px-%E8%8A%B1%E5%BC%80%E5%86%A5%E7%95%8C.png
198	葛饰北斋	葛飾北斎	Katsushika Hokusai	162	51	女性	D	D	B	B	A	A	富士越龙图	“倘若上天再给我\n　五年的寿命\n　我才能获得真正的画工”\n　　　　　　　　　～葛饰北斋临终之言～\n\n『富士越龙图』几乎可以算是嘉永2年（公元1849年）\n去世的北斋的绝笔画。享年90岁。\n以年过70的高龄完成了连作『富岳三十六景』的北斋，\n之后仍热情地不断绘画。甚至说出了仿佛此前画的作品\n都不值一提似的话语。在73岁时多少悟到了一些\n鸟兽虫鱼的骨骼与草木为何，80岁得以提升，\n90岁参透了奥义，百岁才能真正超越神妙之域。\n而到一百几十岁的时候，\n才能令一笔一格变得栩栩如生吧——\n飞越富士，升入天空之龙的图样\n被人们视为包含了出人头地的意义，\n但从中也能看到北斋永不厌倦的执着，\n能感受到其哪怕知道自己寿命将尽却毫不在意，\n并仍向着谁都未能达到的高度继续进发的，\n北斋的意志吧。	https://fgo.wiki/images/thumb/5/5c/%E5%AF%8C%E5%A3%AB%E8%B6%8A%E9%BE%99%E5%9B%BE.png/300px-%E5%AF%8C%E5%A3%AB%E8%B6%8A%E9%BE%99%E5%9B%BE.png
199	塞弥拉弥斯	セミラミス	Semiramis	169	51	女性	E	D	D	A	A	B	不明之杯	你与我缔结了强韧的羁绊。这是件好事。\n因此我会信任你，并全力战斗。\n\n但是，只是但是。\n信任有时也会化作枷锁。\n怀疑会成为禁忌，成为痛苦。\n\n怀疑是一种好行为。\n对那种愤怒地表示为何不相信自己的人，务必要小心。\n因为那些人迟早会摆出「不希望被怀疑」的道理来。\n所以平时就要保持观察，不停观察，不停观察。\n无论欺骗人的行为能持续多久，\n欺骗这一行为本身总是不自然的。\n所以，这种不自然一定会表露出来。\n\n铺垫说得太多了吧……\n好了，我发誓这杯中没有放毒。\n\n——我的话究竟是不是真的呢？	https://fgo.wiki/images/thumb/7/72/%E4%B8%8D%E6%98%8E%E4%B9%8B%E6%9D%AF.png/300px-%E4%B8%8D%E6%98%8E%E4%B9%8B%E6%9D%AF.png
200	浅上藤乃	浅上藤乃	Asagami Fujino	157	51	女性	E	B	D	A	C	EX	夏雨	年幼时，曾见过温暖的光。\n\n淡墨色天空。\n滴落面颊的柔和水滴。\n哪怕遭所有人拒绝，不被任何人所爱，\n也仿佛听到可以留在『此处』的声音。\n\n自那之后，时间流逝，铸成罪孽，\n累积了诸多惩罚。\n赎罪的日子遥遥无期，只要还活着，\n哪怕心灵无法得到救赎，\n她也会选择活在这个世界中。\n\n——犹如跨越漫漫长夜。\n\n由寂静中迈出步伐。\n为了被那怀念的夏雨击打。	https://fgo.wiki/images/thumb/c/c3/%E5%A4%8F%E9%9B%A8.png/300px-%E5%A4%8F%E9%9B%A8.png
201	阿纳斯塔西娅	アナスタシア	Anastasia	158	40	女性	E	E	C	A	D	C	OTMA	奥尔加\n塔季扬娜\n玛利亚\n阿纳斯塔西娅\n\n将第一个字母连起来就是OTMA。\n是只属于我们的，秘密的名字。\n即使结婚，即使诞下子女……\n即使彼此分离，也不会改变我们是姐妹的事实。\n不要闹别扭了。\n也不要发自内心地互相憎恨了。\n然后向主祈祷，\n希望我们能够度过纯洁善良的一生——\n\n是的，没错。\n当然，那愿望没有实现。\n它没能实现。\n\n啊啊……不过，也是有实现了的部分呢。\n因为，我们死在了一起。	https://fgo.wiki/images/thumb/3/3d/OTMA.png/300px-OTMA.png
202	阿塔兰忒(Alter)	アタランテ	Atalanta	166	57	女性	C++	C++	A+	B	E	B+	卡吕冬的毛皮	虽说这是我所得到的宝具，\n但我并不知道使用它的必要性和使用它的方法。\n只是想过或许是用来诅咒对方的吧。\n\n……现在我可以理解了。\n面对真正憎恶的对手时，\n无论如何也要胜过对手时。\n当我选择了让憎恶之火灼烧全身时，\n这毛皮就可以作为宝具发动了。\n\n想要成为野兽。\n想要成为毫无理性、只想着杀了对方的野兽。\n想成为不会感受到灼烧着内心的这份哀伤的，\n纯粹的野兽——	https://fgo.wiki/images/thumb/6/6a/%E5%8D%A1%E5%90%95%E5%86%AC%E7%9A%84%E6%AF%9B%E7%9A%AE.png/300px-%E5%8D%A1%E5%90%95%E5%86%AC%E7%9A%84%E6%AF%9B%E7%9A%AE.png
204	安东尼奥・萨列里	アントニオ・サリエリ	Antonio Salieri	181	65	男性	B	C	A	C	B	C	燎原之刃	昏暗的房间中。\n书桌上，插着一把漆黑的匕首……\n一把烧焦的匕首。\n\n那些市井之徒对生前的萨列里的中伤和嘲弄，\n既是灼烧内心的火焰，又是剖开胸膛的利刃。\nAvenger·萨列里以此作为武器挥动。\n粗略看来外表似乎和剑一样，\n其本质，就是这样的东西。\n\n也就是──────燎原之刃。	https://fgo.wiki/images/thumb/f/fc/%E7%87%8E%E5%8E%9F%E4%B9%8B%E5%88%83.png/300px-%E7%87%8E%E5%8E%9F%E4%B9%8B%E5%88%83.png
234	红阎魔	舌斬り雀の紅閻魔	Shita-kiri Suzume no Benienma	130	-1	女性	D	E	A++	B	B	B	面容如春	啊，今年也来了吗啾。\n明明一切都是遥远的约定，我很高兴啾。\n街上的样子随着时代变迁而逐渐改变，\n但只有这座山上的春天像这样，经历几多岁月却毫无变化。\n\n\n有过许许多多的喜悦啾。\n有过许许多多的回忆啾。\n日月轮转，季节变换，\n经历反复的相遇与别离，人便成为了大人啾。\n温柔的谎言也好，为让谎言变成真实的温柔也好，\n现在都已经如梦一般。\n手上的皱纹逐渐增加，童话也被彻底遗忘了啾。\n\n——但是，明明甚至面容都已经不再回想，\n却还是记得这春日的赏花呢啾。\n\n能一起创造出这份回忆，\n对连名字都没有的侍女来说，才正是最大的喜悦啾。\n\n希望，你的人生能够幸福。\n就算童话已不会映入你的眼中，\n红也一直在你身边啾。	https://fgo.wiki/images/thumb/2/26/%E9%9D%A2%E5%BD%B1%E3%81%AF%E6%98%A5%E3%81%AE%E5%A6%82%E3%81%8F.png/300px-%E9%9D%A2%E5%BD%B1%E3%81%AF%E6%98%A5%E3%81%AE%E5%A6%82%E3%81%8F.png
205	伊凡雷帝	イヴァン雷帝	Ivan the Terrible	531	2548	男性	B+	A+	D	C	B	A	伊凡雷帝的书库	这是一座汇集了古往今来的智慧、历史和秘术的书库。\n这些为了避免失传从世界各地收集而来的书籍，\n为了能得到这些宝物，作为考古学家即使献上全部财产、\n作为魔术师就算献出生命也在所不辞。\n\n想要拯救人类。想要献上祈祷。\n想让每个人都过上满溢着爱与知识的生活。\n那么，就为此收集必要的知识吧——\n\n沙皇本人的动机也就是这种程度了。\n“啊？没有了？明明收集了那么多啊？\n那些学者到底在做什么啊！”	https://fgo.wiki/images/thumb/f/f4/%E4%BC%8A%E5%87%A1%E9%9B%B7%E5%B8%9D%E7%9A%84%E4%B9%A6%E5%BA%93.png/300px-%E4%BC%8A%E5%87%A1%E9%9B%B7%E5%B8%9D%E7%9A%84%E4%B9%A6%E5%BA%93.png
207	喀戎	ケイローン	Chiron	179	81	男性	B	B	A+	B	C	A	教学相长	在教授他人时，自己也会得到学习。\n在受他人教导时，也能够学到知识。\n在教授时第一次注意到的事、那灵机一现才正是\n为人所必须的。\n\n不能只依赖于知识。\n不能只记住必要的东西。\n\n没有不必要的东西。\n一切知识都是宝物。\n\n并且，学习中不断复习是最重要的。\n那么——开始上课吧。\n这是为了你、为了我。为了我们各自的课程。	https://fgo.wiki/images/thumb/6/6f/%E6%95%99%E5%AD%A6%E7%9B%B8%E9%95%BF.png/300px-%E6%95%99%E5%AD%A6%E7%9B%B8%E9%95%BF.png
208	齐格	ジーク	Sieg	165	53	男性	E	E	E	D	B	EX	无名之死	她没有名字。\n她没有记录。\n没有必要性、没有必然性、甚至连命运也没有。\n她走向灭亡的理由只有一个。\n仅仅是因为，她刚好在那里，被卷入了事件中。\n\n她没有悲痛。\n她没有憎恶。\n我知道。\n对她来说，那种感情是大概不需要的。\n\n正因如此，我才感到悲伤。\n知道她名字的人，\n只有她自己。\n\n握住我的手，她就真的能得到救赎吗？\n借我之手，她就能丢掉对这个世界的依恋吗？\n\n答案一定永远都不会出现吧。\n永远……永远……。	https://fgo.wiki/images/thumb/4/4b/%E6%97%A0%E5%90%8D%E4%B9%8B%E6%AD%BB.png/300px-%E6%97%A0%E5%90%8D%E4%B9%8B%E6%AD%BB.png
209	冲田总司(Alter)	魔　神人・沖田総司	Okita Souji (Alter)	163	51	女性	B	C	A	B	C	A	无穹的尽头	——据说，这是曾被一位无名的英灵使用过的剑。\n\n她是从某位英灵中分出来的一部分，\n作为人类的守护者，开始了漫长的战斗。\n我也无法得知，这对于她来说到底是诅咒呢，\n还是她的愿望呢。\n不过，或许她本人是持续着无可奈何的战斗，\n相应地也乐在其中了吧。\n毕竟她可是会忘记自己的必杀技，还喜欢给东西起名字嘛，\n大概就是那样没错了吧。倒是站在陪伴者的立场上想想，别把我丢出去啊。\n\n就这样，经年累月为她所挥动的我，\n有一天无意中问起她，\n“一直做着这样的事你不会腻吗？”。\n结果她却凝视着我，反问道：“你已经觉得厌烦了吗？”\n我刚开口说“说实话我真是腻了”，\n就看到她露出了一丝寂寞的表情。\n“不，没什么”我又赶紧补充了一句。唉——\n\n『在遥远时空的那一边，\n　神、魔与人的信仰交织而成的光之碎片，\n　矗立在无穹的大地上。』	https://fgo.wiki/images/thumb/1/1c/%E6%97%A0%E7%A9%B9%E7%9A%84%E5%B0%BD%E5%A4%B4.png/300px-%E6%97%A0%E7%A9%B9%E7%9A%84%E5%B0%BD%E5%A4%B4.png
210	冈田以藏	岡田以藏	Okada Izou	174	65	男性	C	D	B	E	E	C	那日的天空	那些家伙嚷着我的剑术天下第一。\n我也是这么想的，事实上，谁也敌不过我。\n那些家伙说只有我能做到，跑来求我，\n我也一边想着原来是这样啊，一边挥动自己的剑。\n那些家伙夸我是天诛的名人，\n也给了我很多钱，所以我也挺高兴。\n那些把我当傻瓜的家伙，\n也因为害怕我，只敢靠边走了。\n心情真好，天空真美啊。\n\n但是不久后，\n那些家伙又开始看狗一样看着我。\n说着什么天下国家之类难懂的话，孤立了我。\n真是不爽。难得这么漂亮的天空，真让人不爽。\n\n再之后，我便一个人徘徊在京的街道上。\n我没有钱，还饿着肚子。明明是这么漂亮的天空，\n我也懒得动了。已经无所谓了。\n\n我不知道到底为什么会变成这样。\n也不知道到底哪里出了什么问题。\n我脑子不好，大概是什么地方做错了吧。\n不，又或许是一开始就错了。\n是不是在川原和那些家伙一起玩的时候就错了呢。\n\n——天空真漂亮，真是一片万里晴空啊。	https://fgo.wiki/images/thumb/e/e7/%E9%82%A3%E6%97%A5%E7%9A%84%E5%A4%A9%E7%A9%BA.png/300px-%E9%82%A3%E6%97%A5%E7%9A%84%E5%A4%A9%E7%A9%BA.png
211	坂本龙马	坂本龍馬	Sakamoto Ryouma	178	72	男性	C	C	B	D	A-	EX	某座山中的偶然之事	———最开始本来是想诓骗他，再吃掉他的。\n\n我思考着如何诓骗那个一脸呆样的人类，\n让他将这把不吉利的武器拔出来，\n之后再如何吃掉他。\n但那个人类连缘由都不听，\n便一下子握住那把武器，毫不犹豫地把它拔了出来。\n我仅仅是为了向封印了我的那群可恶的家伙复仇而苟活下去，\n他却对我说着“我还以为是什么麻烦事呢”，\n之后便下山离开了。\n那个人类的表情实在是太过云淡风轻了，\n他那么一说，我似乎也觉得并没有什么大不了的，\n对那些可恶的家伙抱有的怨恨也忘得一干二净。\n\n这样想想，\n那个人类摆出的一副无所谓的样子，也确实是觉得我没什么大不了的。\n这么一说，我就决定忘记吃掉他这件事，\n去追随那个人类了。\n\n就是这么一件在某座山中发生的事。	https://fgo.wiki/images/thumb/7/7f/%E6%9F%90%E5%BA%A7%E5%B1%B1%E4%B8%AD%E7%9A%84%E5%81%B6%E7%84%B6%E4%B9%8B%E4%BA%8B.png/300px-%E6%9F%90%E5%BA%A7%E5%B1%B1%E4%B8%AD%E7%9A%84%E5%81%B6%E7%84%B6%E4%B9%8B%E4%BA%8B.png
213	齐格鲁德	シグルド	Sigurd	178	79	男性	A+	A+	B	C	E	A++	真·冰之睿智	世界上偶尔会产生各种谜团。\n偶然或刻意，又或者是因为恶意、伪装\n以及其他各种各样的理由，谜团便从中而生。\n那么，靠什么来解开这些呢？\n\n———答案是睿智。\n\n……透过，这对依靠镜架被挂在耳朵上的镜片\n来观察世界。隐匿的事物会显露出来，\n模糊的轮廓也会鲜明地呈现于眼前。\n\n而且，布伦希尔德说。\n「佩戴了这份睿智的您变得更加美妙了哦」\n她是这样说的……。\n\n您怎么认为呢，我的御主。\n我希望您也能够觉得这个很合适……。\n（镜片闪闪发光）	https://fgo.wiki/images/thumb/7/7c/%E7%9C%9F%C2%B7%E5%86%B0%E4%B9%8B%E7%9D%BF%E6%99%BA.png/300px-%E7%9C%9F%C2%B7%E5%86%B0%E4%B9%8B%E7%9D%BF%E6%99%BA.png
214	瓦尔基里	ワルキューレ	Valkyrie	159	46	女性	B	B	B	A+	E	B	神铁之盾	……没错。\n这面盾是由神铁制成的。\n是大神奥丁赐予我们的。\n在现代，这种制法已经失传了。\n我的大脑中是如此记录的。\n\n这也是我们的骄傲。\n也就是，绝对不会开裂、不会粉碎、\n不会屈服于任何力量。\n\n就像我们女武神的荣耀永存那样，\n这面神铁之盾，也会永远存在。	https://fgo.wiki/images/thumb/5/51/%E7%A5%9E%E9%93%81%E4%B9%8B%E7%9B%BE.png/300px-%E7%A5%9E%E9%93%81%E4%B9%8B%E7%9B%BE.png
221	女王梅芙(Saber)	女王メイヴ	Queen Medb	154	41	女性	C	D	B	D	EX	A+	这一夏的相册	在度假酒店的阳台桌子上放着一本相册。\n粘贴着几张照片，\n映出的是夏威夷的海边风景。\n\n别说是自拍了……\n她，在相册中留下照片里的拍摄对象\n是根本没有人类的。当然英灵也没有。\n\n相遇只留于心中。\n而作为形态留下来的，夏日的足迹已经足够美好——	https://fgo.wiki/images/thumb/2/2e/%E8%BF%99%E4%B8%80%E5%A4%8F%E7%9A%84%E7%9B%B8%E5%86%8C.png/300px-%E8%BF%99%E4%B8%80%E5%A4%8F%E7%9A%84%E7%9B%B8%E5%86%8C.png
223	迪尔姆德・奥迪那(Saber)	ディルムッド・オディナ	Diarmuid Ua Duibhne	184	85	男性	B+	B	A	D	E	A	波涛与涟漪	在前往事关生死存亡的冒险时，\n便佩戴魔剑Móralltach与魔枪Gáe Dearg。\n\n若是危险程度与平时基本一致，\n便佩戴魔剑Beagalltach与魔枪Gáe Buidhe。\n\n据说，生前的迪尔姆德像这样灵活地使用装备，\n作为费奥纳的骑士活跃着。\n那么，佩戴着两柄魔剑的他，\n对此次现界又有着怎样的认识呢？\n\n结论很明显。\n——即，仅仅是一心作为骑士而存在。\n\n若不能像生前那样手握剑与枪，\n就要以常时身处战场的觉悟侍奉主君。\n无论拥有怎样的灵基，\n他都会全心全意完成自己的使命。	https://fgo.wiki/images/thumb/0/0b/%E6%B3%A2%E6%B6%9B%E4%B8%8E%E6%B6%9F%E6%BC%AA.png/300px-%E6%B3%A2%E6%B6%9B%E4%B8%8E%E6%B6%9F%E6%BC%AA.png
224	西托奈	シトナイ	Shitonai	133	34	女性	E	D	A	EX	A	A	无法忘却之物	失去了姓名。\n失去了生命。\n变成了谁也不是的存在。\n\n就算仅仅是活着的我（Original）的仿造品，\n仅仅是死去的我（Original）的影子，\n\n也有着无法忘却之物。\n\n在几乎要冻结的寒气中，\n从尖牙、从利爪、\n从想要伤害我的一切中\n保护了我——\n\n——那个瞬间的全部。	https://fgo.wiki/images/thumb/7/72/%E6%97%A0%E6%B3%95%E5%BF%98%E5%8D%B4%E4%B9%8B%E7%89%A9.png/300px-%E6%97%A0%E6%B3%95%E5%BF%98%E5%8D%B4%E4%B9%8B%E7%89%A9.png
228	秦良玉	秦良玉	Qin Liangyu	166	46	女性	C	B	A	D	A	B	梣之木	是的。梣木是非常优良的材料。\n有粘性，有弹性，有韧性，\n是最适合制作枪的树木。\n\n据说在我所在的国家之外，希腊也会\n用它制作枪。\n\n枪对于被掠夺的农民而言，\n是提供抵抗能力的武器。\n而对于一般人来说，\n是带来凶恶力量的凶器。\n\n但最终，它是由使用者的意志决定的。\n希望，持有此枪的人\n能始终保持一颗正直的心。\n不要成为掠夺他人的人。\n\n满怀着这样微小的祈愿，\n我制造出了这把枪。	https://fgo.wiki/images/thumb/c/c1/%E6%A2%A3%E4%B9%8B%E6%9C%A8.png/300px-%E6%A2%A3%E4%B9%8B%E6%9C%A8.png
230	虞美人	虞美人	Consort Yu	160	49	女性	C	A+	D	A+	E	C+	读了一半的书	这个，已经不需要了，给你吧。\n也不是什么有趣的书。看了无数遍，横看竖看都要翻烂了。\n果然人类的感性什么的我是完全没有同感。\n享受快乐……真是离谱的说法啊。\n但也有方便的地方。特别是在迦勒底这样的地方呐。\n无论如何这里不会有盘算着“去妨碍一下正在读书的人吧”这样的人，\n光凭这一点这里就要比其他地方舒服得多。\n没错，这就是我仅能遮人耳目的盾牌。\n所以，已经不需要了。\n事到如今，已经没有必要像那样掩盖自己的本性了吧？	https://fgo.wiki/images/thumb/f/f9/%E8%AA%AD%E3%81%BF%E3%81%8B%E3%81%91%E3%81%AE%E6%9C%AC.png/300px-%E8%AA%AD%E3%81%BF%E3%81%8B%E3%81%91%E3%81%AE%E6%9C%AC.png
231	赤兔马	赤兔馬	Red Hare	250	400	男性	B	EX	B+	C	C	B	美妙的饲料桶	如何啊，这份光辉！\n胡萝卜与草料与桶合为一体，\n圣杯无疑就是这样的——\n真是美啊……\n啊，真美……真美……美……美……好像很美味……咴咴！呼噜噜……\n呼噜噜………！\n咴咴……！\n呼……呼噜噜………\n\n失礼了。\n那么，说回正经的话题。\n\n来吧，我亲爱的御主啊。\n不必客气。\n请务必品尝一口\n这荣誉的饲料桶中塞满的胡萝卜和草料吧。\n哦？您不喜欢吃草料？\n那么，至少也请尝尝胡萝卜吧。\n之后，我希望——\n\n——能否和我，在清晨的草原上驰骋呢？	https://fgo.wiki/images/thumb/8/8a/%E7%B4%A0%E6%99%B4%E3%82%89%E3%81%97%E3%81%8D%E9%A3%BC%E8%91%89%E6%A1%B6.png/300px-%E7%B4%A0%E6%99%B4%E3%82%89%E3%81%97%E3%81%8D%E9%A3%BC%E8%91%89%E6%A1%B6.png
232	布拉达曼特	ブラダマンテ	Bradamante	170	55	女性	B	A+	A	C	D	B	秀丽公主的戒指	真没想到，这个戒指居然会成为我的宝具——\n\n……好吧，这个其实一开始不是我的宝具。\n它是属于异国契丹的安洁莉卡公主的，\n可以无效化一切魔术的宝物。\n在和邪恶的魔术师阿特兰特战斗时，\n多亏了这枚戒指，我才能战胜他。\n\n安洁莉卡殿下是一位非常美丽的人。\n里纳尔多哥哥和罗兰都对她一见钟情……\n她可是让十二勇士里的两个人喜欢上她了呀\n真的是无可抵挡的魅力。\n\n公主殿下，现在在哪里做些什么呢……\n……。\n……，\n啊，对了，\n现在已经不是我出生的那个时代了。\n一不小心，就仿佛回到了过去了呢。是我迷糊了。\n不过说真的，要是哪天能再见一次面就好了。\n\n啊？\n要是一直借着这个重要的戒指不还，\n再见面的时候，公主殿下可能会生气……是吗？\n啊啊！确、确、确实有可能啊！\n这可怎么办啊！\n难、难道，安酱会来收拾我吗——！！	https://fgo.wiki/images/thumb/e/ee/%E9%BA%97%E3%81%97%E3%81%8D%E3%81%AF%E7%BE%8E%E5%A7%AB%E3%81%AE%E6%8C%87%E8%BC%AA.png/300px-%E9%BA%97%E3%81%97%E3%81%8D%E3%81%AF%E7%BE%8E%E5%A7%AB%E3%81%AE%E6%8C%87%E8%BC%AA.png
233	魁札尔·科亚特尔(桑巴/圣诞)	ケツァル・コアトル	Quetzalcoatl	181	64	女性	A	B+	B	A	EX	A	圣夜的有翼之蛇	Merry Christmas！\nMerry Sambamas！\nFeliz Navidad！\n\n欢声（与桑巴的节奏）交错的圣夜，\n有翼之蛇的手下们为分发礼物而忙碌不已。\n就算没有犄角，就算无法用四足行走，\n只要是为圣诞老人帮忙，他们就是出色的驯鹿。\n\n「好了，接下来要途经南极前往澳洲大陆，再从那里转向亚洲方向！\n　还剩好多要送去礼物、传达节日乐趣的对象呢。\n　等着我哦，可爱的人类们——！」\n\n在兴高采烈地扭着腰的浓妆圣诞老人的号令下，\n上古的翼龙们飞入飘着雪的夜空。\n\n那副景象，也——仅仅是奇迹之一。	https://fgo.wiki/images/thumb/8/8d/%E8%81%96%E5%A4%9C%E3%81%AE%E7%BF%BC%E3%81%82%E3%82%8B%E8%9B%87.png/300px-%E8%81%96%E5%A4%9C%E3%81%AE%E7%BF%BC%E3%81%82%E3%82%8B%E8%9B%87.png
235	李书文(Assassin)	李書文	Li Shuwen	166	58	男性	C	D	A+	E	E	─	老当益壮	若是上了年纪，腕力便会衰弱，\n本性中凶暴的部分也会销声匿迹。\n我自己竟也意外地接受了\n平稳的日常生活使技术变钝的事实。\n\n不过，话虽如此，\n吾之拳术，至今仍未尝一败。\n既如此，称赞他们所学的拳法也是最强便是。\n而总有一日，会出现超越我的弟子。\n那份不甘与喜悦，总有一日可以体会到吧。\n\n哎呀，还是说。\n或许我就是直到最后也仍是最强的那一个呢。	https://fgo.wiki/images/thumb/5/50/%E8%80%81%E3%81%84%E3%81%A6%E3%81%AA%E3%81%8A.png/300px-%E8%80%81%E3%81%84%E3%81%A6%E3%81%AA%E3%81%8A.png
236	美游・艾德费尔特	美遊・エーデルフェルト/朔月美遊	Miyu Edelfelt/Sakatsuki Miyu	134	30	女性	E	D	C	A	C	A	母亲的回忆	从天正年代起延续至今的世家，朔月家。\n据说，出生于此的女孩都生有红瞳，\n并拥有超常的力量。\n那便是接收人类的思念，并将其随机实现的\n孩子——神之稚儿。\n\n第一位神稚儿拯救冬木于饥荒之中，2岁时便夭折了。\n第二位的精神先于生命走到了尽头。\n从第三位开始，神稚儿的出生就被隐匿了起来。\n\n朔月家的女孩自此便在隔绝人类思念的结界中\n由母亲一人亲手抚育。\n那是为了让神堕落成人的仪式。\n是将不言语，不思考，不活动视为正确，\n大约是与正常的育儿方式完全相反的\n冷静而透彻的方法。\n\n——那么，这些球是什么呢。\n\n曾与母亲度过的每一天的记忆也模糊不清。\n枯燥无味的只有母女二人的生活\n机械性地重复。\n神之子成为人类后才终于发觉，\n那里的确曾有母爱存在。	https://fgo.wiki/images/thumb/0/03/%E6%AF%8D%E4%BA%B2%E7%9A%84%E5%9B%9E%E5%BF%86.png/300px-%E6%AF%8D%E4%BA%B2%E7%9A%84%E5%9B%9E%E5%BF%86.png
29	玛丽・安托瓦内特	マリー・アントワネット	Marie Antoinette	160	48	女性	D	D	B	B	B+	A+	我的项链	「这项链其实是有来由的。\n　虽然为此发生了一些不太愉快的事……\n　但我还是很喜欢。因为如此亮晶晶，如此漂亮啊」\n\n（玛丽·安托瓦内特在迦勒底娓娓道来）	https://fgo.wiki/images/thumb/a/a2/%E6%88%91%E7%9A%84%E9%A1%B9%E9%93%BE.png/300px-%E6%88%91%E7%9A%84%E9%A1%B9%E9%93%BE.png
17	库・丘林	クー・フーリン	Cú Chulainn	185	72	男性	B	C	A	C	E	B	预言之星	还是少年时，见到过燃尽的星辰。\n\n毫不犹豫，果断迅速，\n只留下些许痕迹，便消失不见的流星。\n很多朋友都视其为刹那的悲哀。\n我内心却闪过平静的确信。\n\n“此身终会像那颗星星一样，\n　年纪轻轻就耗尽一切，并消失无踪”\n\n回过神来时，脸上已不禁露出微笑。\n这样就好。这对战士来说，是个非常好的命运。\n我自幼内心便接受了这一切。	https://fgo.wiki/images/thumb/6/6e/%E9%A2%84%E8%A8%80%E4%B9%8B%E6%98%9F.png/300px-%E9%A2%84%E8%A8%80%E4%B9%8B%E6%98%9F.png
20	库・丘林(Prototype)	クー・フーリン	Cú Chulainn	184	71	男性	A	C	A+	B	D	B	库林的猛犬	对。这就是我的外号。\n原本在阿尔斯特有一头拥有这个名字的猛犬。\n是头保卫名为库林的人的房子的勇猛野兽。\n是头了不起的野兽。\n由于太了不起了，所以我情不自禁动了真格——\n是我杀了它。\n原本我不该杀了那头野兽，\n野兽也不该攻击我的。\n但没有办法。我们相遇，并相互厮杀。\n打赢并活下来的只有我。\n\n彼此都用尽了全力，我不后悔。\n但是，我想向那位强敌献上我的敬意。\n一骑当千的狗可没那么容易遇到！\n\n然后嘛。我养育了那家伙的孩子们。\n『是库林猛犬』的二代。\n为了让它们终有一天能成为凌驾它们老爹的强壮看门狗——\n\n等意识到的时候，我的外号也成了这个。\n一见到敌人就凶猛吼叫，撕咬敌人喉咙的野兽。\n正可谓如同『库林的猛犬』啊。	https://fgo.wiki/images/thumb/a/af/%E5%BA%93%E6%9E%97%E7%9A%84%E7%8C%9B%E7%8A%AC.png/300px-%E5%BA%93%E6%9E%97%E7%9A%84%E7%8C%9B%E7%8A%AC.png
38	库·丘林(Caster)	クー・フーリン	Cú Chulainn	185	70	男性	E	D	C	B	D	B	为林之圣	传承如是说。\n圣在万物之中，圣在森林之中，圣在橡树之中。 	https://fgo.wiki/images/thumb/b/b2/%E4%B8%BA%E6%9E%97%E4%B9%8B%E5%9C%A3.png/300px-%E4%B8%BA%E6%9E%97%E4%B9%8B%E5%9C%A3.png
98	库・丘林(Alter)	クー・フーリン	Cú Chulainn	185	72	男性	A	B+	A+	C	D	A	孤身一人的战争	应对万军，面对万物，驱逐万人。\n此处没有任何外人介入的余地，\n无论恋人、战友、孩子，甚至连王，\n一切都不需要。\n始终孤高，始终最强，始终夺取胜利。\n\n杀戮，杀戮，不停杀戮。\n路途的尽头，是堆积的尸山。\n为最强讴歌，以最强为傲，让最强名震天下。\n哪怕没人承认，我也会承认。\n\n其名为库·丘林。\n阿尔斯特最强战士是也。	https://fgo.wiki/images/thumb/8/8a/%E5%AD%A4%E8%BA%AB%E4%B8%80%E4%BA%BA%E7%9A%84%E6%88%98%E4%BA%89.png/300px-%E5%AD%A4%E8%BA%AB%E4%B8%80%E4%BA%BA%E7%9A%84%E6%88%98%E4%BA%89.png
157	卫宫(Alter)	エミヤ	Emiya	187	78	男性	C	B	D	B	E	─	干将·莫邪（手枪）	其实我并不拘泥于武器。\n只要是便于贯通魔力，有破坏力的就行了。\n制作人的用心什么的都去见鬼吧。\n武器是高效杀戮的道具，\n除此之外什么都不是。\n谈论什么承担者的尊严能让人笑掉大牙。\n\n对那种若不给单纯的杀人一个冠冕堂皇的理由，\n就连人都杀不了的那种无能之辈，我表示鄙视。\n\n哈，为什么要露出那种火大的表情。\n那就拿起这把枪吧。只要用子弹射穿我的脑袋，\n这些令人不快的话语也会消失了啊！	https://fgo.wiki/images/thumb/4/4c/%E5%B9%B2%E5%B0%86%C2%B7%E8%8E%AB%E9%82%AA%EF%BC%88%E6%89%8B%E6%9E%AA%EF%BC%89.png/300px-%E5%B9%B2%E5%B0%86%C2%B7%E8%8E%AB%E9%82%AA%EF%BC%88%E6%89%8B%E6%9E%AA%EF%BC%89.png
11	卫宫	エミヤ	Emiya	187	78	男性	D	C	C	B	E	-	赤原猎兵	炮火纷飞的平原上掠过一道身影。\n守护者明确、迅速、\n且冷酷无情地镇压了目标。\n\n哪怕无法违抗被赋予的使命，\n哪怕无法拯救想要拯救的生命。\n\n其意志也如火焰般覆盖四肢，\n不断与命运相抗争。	https://fgo.wiki/images/thumb/4/47/%E8%B5%A4%E5%8E%9F%E7%8C%8E%E5%85%B5.png/300px-%E8%B5%A4%E5%8E%9F%E7%8C%8E%E5%85%B5.png
140	弗拉德三世(EXTRA)	ヴラド三世	Vlad III	191	90	男性	B	A	E	A	D	C	地底的信仰	吾之道路染满了鲜血。\n\n弹劾了数百贵族，\n杀害了数万敌兵。\n\n向我袭来的残忍。\n我所犯下的残忍，\n令这身体化为凶器。\n\n但依然无法停手。\n因为深爱主、保护主的教诲\n才是让人成为人的道路。\n\n友人说过。\n我的信仰，会让我陷入疯狂。\n不。决不。\n当愤怒令我即将变得疯狂之际，\n只因主之光辉的存在，我现在才能控制住我自己。\n\n……但这里太暗了。\n铁之铠甲，桩之指尖就算能触碰都到他人，\n也已感受不到任何热量。\n靠着这光辉，期待丧失了的温暖，\n触碰到吾之面颊的那一天能到来。	https://fgo.wiki/images/thumb/3/33/%E5%9C%B0%E5%BA%95%E7%9A%84%E4%BF%A1%E4%BB%B0.png/300px-%E5%9C%B0%E5%BA%95%E7%9A%84%E4%BF%A1%E4%BB%B0.png
112	酒吞童子	酒呑童子	Shuten-Douji	145	46	女性	A	B	B	A+	D	B	神便鬼毒酒	啊啊，很介意吗？\n妾身的宝具。\n妾身的美酒。\n不行啦。就算你再怎么凝视，再怎么想要，也不行哟。\n\n这是只属于妾身的东西。\n一开始嘛，确实，不是妾身的……\n是那个赖光带来的东西。但现在是妾身的。\n\n呵呵。不过呐。\n死去也无妨——\n能让妾身产生这种念头的，不是血、月、银，\n而是酒。这是妾身万万没有想到的呢。\n\n妾身很喜欢这酒哦。\n甘甜，甘甜，简直是甘甜的凝聚体。\n\n令人死去。\n令人腐朽。\n令人融化堕落般颤抖、炙热的滋味……\n\n倘若下酒菜是在明亮月光映照下的\n碧蓝色眼瞳……\n那其他什么都不需要了啊。	https://fgo.wiki/images/thumb/4/41/%E7%A5%9E%E4%BE%BF%E9%AC%BC%E6%AF%92%E9%85%92.png/300px-%E7%A5%9E%E4%BE%BF%E9%AC%BC%E6%AF%92%E9%85%92.png
225	酒吞童子(Caster)	酒呑童子	Shuten-Douji	145	46	女性	C+	B	B	A+	B	C	护法的末路	护法之鬼？\n是啊，我曾经说过那种故事呢。\n正好茨木也满足了，\n就到此为止吧。\n\n呵呵。是啊，故事。\n护法之鬼什么的并不存在——\n对鬼来说，世间也好法也好都是不存在的哦？\n\n存在即是鬼。\n狂乱即是鬼。\n撕裂即是鬼。\n吞噬即是鬼。\n因为服从即是鬼。\n\n\n嗯？要问失去自我的鬼会变得如何？\n\n那个嘛。\n——变得苦闷、大声呼喊。\n——那不就是死掉了吗？	https://fgo.wiki/images/thumb/6/61/%E6%8A%A4%E6%B3%95%E7%9A%84%E6%9C%AB%E8%B7%AF.png/300px-%E6%8A%A4%E6%B3%95%E7%9A%84%E6%9C%AB%E8%B7%AF.png
58	玉藻猫	タマモキャット	Tamamo Cat	160	52	女性	B+	E	A	A	B	D	猫咪围裙	猫思，故猫在。\n\n饭菜究竟是什么。\n是用来做的吗，还是被做出来的。\n是用来给予的吗，还是被给予的。\n猫咪尚不需要究其真理。\n只有计算营养，调配滋味之人，\n才会穿上这粉色的围裙。\n猫魔道师梅林曰。\n『披上这条围裙之人，\n　就会成为统帅迦勒底的理想之妻』\n\n——综上所述，认为我编的这个故事如何，主人！	https://fgo.wiki/images/thumb/d/d4/%E7%8C%AB%E5%92%AA%E5%9B%B4%E8%A3%99.png/300px-%E7%8C%AB%E5%92%AA%E5%9B%B4%E8%A3%99.png
217	茨木童子(Lancer)	茨木童子	Ibaraki-Douji	147	50	女性	B+	A	D+	D	B	B	大江山大焰火	玉——屋——！\n键——屋——！\n\n非也、非也、非也！\n正确的焰火，\n在照亮夜空的绚烂多彩的光芒\n映入眼帘时，应当像这样喝彩。\n\n——哟！大江的鬼焰火！\n\n在大江山的夜晚盛开的\n是如同大朵花一般的盛夏的鬼焰火！\n\n即使不刻意侧耳聆听也能听得到吧。\n鬼的哈哈大笑声……\n享受庆典乐趣的，一只鬼的喝彩声。	https://fgo.wiki/images/thumb/d/de/%E5%A4%A7%E6%B1%9F%E5%B1%B1%E5%A4%A7%E7%84%B0%E7%81%AB.png/300px-%E5%A4%A7%E6%B1%9F%E5%B1%B1%E5%A4%A7%E7%84%B0%E7%81%AB.png
116	茨木童子	茨木童子	Ibaraki-Douji	147	50	女性	B	A+	C	C	B	C	骨刀（无铭）	怎么了。吾之刀有什么问题吗。\n\n……稀罕？\n哈。那当然啦，\n人之子是不可能理解吾之刀有何等意义与价值的！\n\n好好看着！\n此乃只有吾等鬼才能拥有的大骨刀，\n是区区铁刀根本无法抗衡的怨念与诅咒的凝聚体！\n\n地上最为坚固强韧的，并非由地狱火焰般业火\n锻造而成的钢铁，而是吾等鬼之骨。\n经过数百日以上锻造而成的这东西，\n看，是弥漫着妖气，能动摇月夜的强大利刃。\n\n————哼哼。可以。吾准了。\n好好为之恐惧颤栗！	https://fgo.wiki/images/thumb/b/bc/%E9%AA%A8%E5%88%80%EF%BC%88%E6%97%A0%E9%93%AD%EF%BC%89.png/300px-%E9%AA%A8%E5%88%80%EF%BC%88%E6%97%A0%E9%93%AD%EF%BC%89.png
86	谜之女主角X	謎のヒロインX	Mysterious Heroine X	154	42	女性	B	C	A+	B	D	A++	歼灭清单	「一个Saber、两个Saber……Saber……\n　啊啊，又增加了一个！」\n深夜的迦勒底回响起阵阵毛骨悚然的声音。\n据说每当Saber增加一个人，充满神秘从者怨念的诅咒声\n就会响起什么的。\n「真奇怪啊，我明明逐一对他们实行了半夜偷袭，但怎\n　么还是在一味增加啊。」\n真希望你能考虑一下每次发生这种事时都要召唤回复系\n从者的御主有多辛苦。\n「好吧，算了。那今天也为了实现梦想，重复唱一百次\n　打倒Saber！」\nSaber必须死Saber必须死Saber必须死Saber必须死\nSaber必须死……只要听到这种用流行电音调唱的台词，\nSaber就会遭遇鞋带断掉或是蝉撞到脸上这种不幸——\n少女内心暗想，如果真的发生这种事就好了。	https://fgo.wiki/images/thumb/c/cc/%E6%AD%BC%E7%81%AD%E6%B8%85%E5%8D%95.png/300px-%E6%AD%BC%E7%81%AD%E6%B8%85%E5%8D%95.png
73	阿尔托莉雅・潘德拉贡(圣诞Alter)	アルトリア・ペンドラゴン	Altria Pendragon	154	52	女性	A	C	D	B	A	A++	拉姆瑞二号	多么美妙的雪橇啊……\n以及多么美丽的马儿啊……\n圣诞节结束后的次日，\n在明朗的朝霞中，圣诞老人这么想。\n\n「但愿明年早点到来……一年中居然有363天是\n　被浪费的，人类是何等悲伤的生物啊……」\n\n但她并不知道。\n真正的悲剧即将到来。\n\n——没错。谁说过圣诞老人只有一个人来着？	https://fgo.wiki/images/thumb/8/84/%E6%8B%89%E5%A7%86%E7%91%9E%E4%BA%8C%E5%8F%B7.png/300px-%E6%8B%89%E5%A7%86%E7%91%9E%E4%BA%8C%E5%8F%B7.png
119	阿尔托莉雅·潘德拉贡(Lancer)	アルトリア・ペンドラゴン	Altria Pendragon	171	57	女性	B	A	A	A	C	A++	王之马	亚瑟。\n据说这名字，在古代有熊的含义。\n一说起熊，就会想起森林之王，凶猛的野兽。\n恐怕几乎没有生物能抵挡由其可怕臂力挥出的一击。\n\n那名驹东·斯塔利恩背上的人，\n身着白银色铠甲的娇小少女啊。\n您又是何等可爱的熊（亚瑟）啊——\n\n或许过去确实有欣慰地带着这种想法的人吧。\n原来如此，您确实是亚瑟。\n娇小的少女，您是王，是巨兽，\n也是无人可以比肩的龙。\n\n也就是说，骑在名驹背上的，是龙。\n这是何等荣誉！\n看吧，名驹正用嘶鸣表达着自己的振奋。\n\n曾经是少女的王啊，请下命令！\n哪怕要前往世界的尽头，\n想必东·斯塔利恩也会遵命！	https://fgo.wiki/images/thumb/7/71/%E7%8E%8B%E4%B9%8B%E9%A9%AC.png/300px-%E7%8E%8B%E4%B9%8B%E9%A9%AC.png
129	阿尔托莉雅·潘德拉贡(Archer)	アルトリア・ペンドラゴン	Altria Pendragon	154	42	女性	C	C	B+	A+	A+	A	冠军之杯	整个夏天的战斗结束了。\n以夏威夷岛为舞台的水枪闪电战大赛，\n夏日战士们的激烈战斗犹如沉入威基基海滩的落日，\n鲜红、炙热，并逐渐消退。\n\n「不过话说回来，\n　这座企鹅杯的光辉如何……\n　犹如盛夏的太阳……！」\n\n成为世界王者的她披着优胜时获得的斗篷，\n满面笑容地说道。\n明年夏日也会是个酷暑吧——\n面对王那令人炫目的笑容，眯起眼睛，\n你也梦想着明年的夏日。\n\n　◆\n\n顺便提一下梦想的具体内容，\n一边在度假胜地举办夏日祭，\n一边迎击从海上袭来的大怪兽，\n并扫荡排队参加活动的通宵组——\n这种景象在你的脑海中不断浮现并消失。\n哈哈，这未免也太离谱了吧。\n\n「您恐怕是中暑了。\n　快去阴凉处休息一下吧，御主？」	https://fgo.wiki/images/thumb/b/bf/%E5%86%A0%E5%86%9B%E4%B9%8B%E6%9D%AF.png/300px-%E5%86%A0%E5%86%9B%E4%B9%8B%E6%9D%AF.png
160	亚瑟・潘德拉贡(Prototype)	アーサー・ペンドラゴン	Arthur Pendragon	181	68	男性	A	A+	B	B	B	EX	花园	约定的场所。\n那是终将抵达的黄金草原吗。\n是血流如河的累累尸丘吗。\n亦或是决心返还圣剑的浅眠之森吗。\n\n不。都不是。\n\n当决心不作为王，而是作为一名骑士的时候，\n定下的约定的场所。\n也就是说。\n\n——因爱而遗留的庭院。\n　　柔和的月光洒落的，花园。	https://fgo.wiki/images/thumb/c/c4/%E8%8A%B1%E5%9B%AD.png/300px-%E8%8A%B1%E5%9B%AD.png
179	阿尔托莉雅·潘德拉贡(Alter)(Rider)	アルトリア・ペンドラゴン〔オルタ〕	Altria Pendragon (Alter)	154	42	女性	B	C	B	A	B	A	选定之拖把	那是在奇妙之园的妖精国度中\n被奇妙地传唱至今的童话故事。\n\n其柄比阿隆戴特还要坚硬，\n其顶端比卡文汀还要炙热，\n其光辉甚至能媲美誓约胜利之剑。\n\n\n能拔出这把拖把的侍从，将会成为某种王吧。	https://fgo.wiki/images/thumb/b/b5/%E9%80%89%E5%AE%9A%E4%B9%8B%E6%8B%96%E6%8A%8A.png/300px-%E9%80%89%E5%AE%9A%E4%B9%8B%E6%8B%96%E6%8A%8A.png
138	伊丽莎白・巴托里(勇者)	エリザベート・バートリー	Elisabeth Báthory	154	48	女性	B	C	C	C	B	C	万圣邀请函	欢迎来到万圣咖啡店～！\n\n怎么样，怎么样？\n这里的装潢很棒吧！\n我意识到了！\n万圣节虽然很快就会结束，\n被聚光灯投射的重要事件虽然会变化，\n但深爱万圣节的心是不会消失的！\n\n所以，我打算干脆让我自己变成万圣节！\n耶，所以我才开了这家店哦。\n倾听着偶像的演唱，\n品尝着鲜红的浓汤，\n随意选择美味的糖果！\n虽然不知道为何客人只有你一个人，\n但只要从现在开始慢慢宣传就行了吧！\n\n那御主，不给糖就捣蛋！\n今后也一直不要忘记这种愉快的心情哦♪	https://fgo.wiki/images/thumb/b/b2/%E4%B8%87%E5%9C%A3%E9%82%80%E8%AF%B7%E5%87%BD-v2.png/300px-%E4%B8%87%E5%9C%A3%E9%82%80%E8%AF%B7%E5%87%BD-v2.png
70	斯卡哈	スカサハ	Scáthach	168	55	女性	B	A	A	C	D	A+	面临魔境	想知道影之国是什么地方吗？\n地如其名。是所到之处全被影子所覆盖的魔境，\n阳光根本照射不到的黑暗，死之世界。\n如此想来，库·丘林的造访还真是讽刺。\n因为那家伙是光之子吧？\n\n……影之国有七道城墙。\n不。这倒不是单纯字面上的意思。\n是表现了你也很明白的道理的象征。也就是，\n\n“死者不会复活”\n\n影之国的居民无法翻越壁垒出现在地面上。\n事情本应如此。也合乎常理。\n好了。我很期待你漂亮地拯救世界，\n并将我赶回那个世界的那一天哦。御主。	https://fgo.wiki/images/thumb/a/a8/%E9%9D%A2%E4%B8%B4%E9%AD%94%E5%A2%83.png/300px-%E9%9D%A2%E4%B8%B4%E9%AD%94%E5%A2%83.png
133	斯卡哈(Assassin)	スカサハ	Scáthach	168	55	女性	C	C	A+	C	D	A+	最低限度的爱好	因为这是，最低限度的爱好啊——\n\n她确实这么说过。\n海边的度假是令全身心享受的存在，\n而作为淑女（Lady），则必须具备一些「爱好」才行。\n\n比如说，大朵的鲜花。\n装饰那美丽黑发的南洋扶桑花。\n\n比如说，投掷用小刀。\n安静地佩戴于肢体上的11把利刃。\n\n以及，用魔力编织而成的泳装和浴巾。\n其实，这东西的强度貌似比厚实的钢铁还要高。\n\n「身着华丽的服饰，是女性的爱好。\n　为突如其来的战斗做准备，是女人的爱好。\n　两者都是必不可少的。这不是很正常吗？」\n\n——原来如此。\n——爱好。\n\n她的存在方式总是如此美丽，如此强悍。	https://fgo.wiki/images/thumb/8/8d/%E6%9C%80%E4%BD%8E%E9%99%90%E5%BA%A6%E7%9A%84%E7%88%B1%E5%A5%BD.png/300px-%E6%9C%80%E4%BD%8E%E9%99%90%E5%BA%A6%E7%9A%84%E7%88%B1%E5%A5%BD.png
215	斯卡哈・丝卡蒂	スカサハ=スカディ	Scáthach-Skadi	162	50	女性	B	D	C	EX	D	A	众神的遗留的爱	这个头冠是？\n啊啊、是那个啊……\n\n过去北欧众神遗留给我的东西。\n在一切被炎之剑燃烧殆尽之前。\n\n那是在我等待着北欧世界的破灭来临之前的事情了。\n北欧形成了九个领域——\n各个领域所放置的最美丽之物\n各自汇为最闪耀的一滴。\n收集总共九滴后、\n众神将它们点缀在了为新娘准备的头冠上。\n\n这上面居然惊人的不存在一点魔力、\n只是个普通的头冠而已……\n\n很美吧。\n我也打心底的这么觉得。	https://fgo.wiki/images/thumb/4/4c/%E4%BC%97%E7%A5%9E%E7%9A%84%E9%81%97%E7%95%99%E7%9A%84%E7%88%B1.png/300px-%E4%BC%97%E7%A5%9E%E7%9A%84%E9%81%97%E7%95%99%E7%9A%84%E7%88%B1.png
109	卫宫(Assassin)	エミヤ(アサシン)	Emiya(Assassin)	175	63	男性	D	C	A+	C	E	B++	至无阳光映照之处	——————有种被称为起源的存在。\n\n不是什么复杂的问题，就是字面意义。\n由什么开始。\n由什么而生。\n母亲？　不对。\n不是对个人而言的起源，而是对存在而言的起源。\n\n有从「剑」而生的家伙。\n也有从「无价值」而生的家伙吧。\n\n我的起源？\n你不是已经看到了吗。————切开，连接。\n虽说在普通攻击中也会运用，但这无疑是我的第二宝具。\n神秘轹断（Phantasm Punishment）。\n是「切断」与「结合」的显现。\n是我起源的形态。	https://fgo.wiki/images/thumb/b/bc/%E8%87%B3%E6%97%A0%E9%98%B3%E5%85%89%E6%98%A0%E7%85%A7%E4%B9%8B%E5%A4%84.png/300px-%E8%87%B3%E6%97%A0%E9%98%B3%E5%85%89%E6%98%A0%E7%85%A7%E4%B9%8B%E5%A4%84.png
111	爱丽丝菲尔(天之衣)	天の衣	Holy Grail	158	52	女性	E	E	C	A+	B	B	天之衣	我的裙子？\n嗯，说得对，配色也很漂亮——\n\n……呵呵，感谢您能这么说。\n其实我也很喜欢。\n觉得这很棒呢。\n\n这是天之衣——\n也可以叫做天之裙，是非常重要的礼装。\n类似我们家的传家宝吧。\n\n原本的功能是用来控制大圣杯的，\n但或许由于这个原因吧，\n作为圣杯化身显现的我，\n居然会像这样自然地穿着这套裙子。\n\n……这原本应该由那个孩子继承。\n因为能够实现爱因兹贝伦伟大愿望的人工生命体\n不是我，而是那个孩子啊。\n\n但是，不。不能继承给她。\n这应该属于我。\n作为那孩子的母亲，我决不会舍弃这条裙子。\n\n我想送给那孩子各种东西作为礼物。\n漂亮的、可爱的、美妙的，\n我想搜罗所有一切留给她。\n\n但是。\n有着裙子外形的诅咒——可不想留给她。	https://fgo.wiki/images/thumb/1/18/%E5%A4%A9%E4%B9%8B%E8%A1%A3.png/300px-%E5%A4%A9%E4%B9%8B%E8%A1%A3.png
71	迪尔姆德・奥迪那	ディルムッド・オディナ	Diarmuid Ua Duibhne	184	85	男性	B	C	A+	D	E	B	骑士的誓言	已许下誓言。\n要用这对双枪，贯彻骑士道、贯彻对王的忠心、\n保护所爱之人。\n\n从未想过要让这份誓言化为谎言。\n然而当意识到时，回首望去，走过之路已被玷污。\n朋友们早已远去，身边只剩所爱之人。\n自己爱着妻子，无比深爱。也有了孩子，\n每当看到孩子们的成长，内心都喜悦不已。\n\n然而，偶然回顾起自己走过的道路。\n每一次，总禁不住凝视起遗落在路边的存在。\n那被玷污、扭曲、踩踏了的\n闪耀到令人哀伤的骑士之誓言。	https://fgo.wiki/images/thumb/8/8b/%E9%AA%91%E5%A3%AB%E7%9A%84%E8%AA%93%E8%A8%80.png/300px-%E9%AA%91%E5%A3%AB%E7%9A%84%E8%AA%93%E8%A8%80.png
107	安哥拉曼纽	アンリマユ	Aŋra Mainiiu	167	58	男性	E	E	A	D	E+	C	最后的碎片	人曰，恶之心在远方不断诅咒着人世。\n\n此乃嗤笑人类恶的必要恶。\n为构筑小小和平的安全机构。\n已然无人记得无记名之础。\n\n逝去的日常。\n崩溃的自我。\n烧灼的憎恶。\n以及见证这一切的最后的碎片。\n\n——深爱着他，绽放于境界上的绣球花（奥尔黛西亚）。	https://fgo.wiki/images/thumb/c/c6/%E6%9C%80%E5%90%8E%E7%9A%84%E7%A2%8E%E7%89%87.png/300px-%E6%9C%80%E5%90%8E%E7%9A%84%E7%A2%8E%E7%89%87.png
114	源赖光	源頼光	Minamoto-no-Raikou	175	-1	女性	A	B	D	A	C	A+	童子切安纲	——诛伐执行。\n\n此乃为此而存的武器。\n不需要由来或是别的什么。\n\n对，对。\n嗯，没错。您很清楚呢。\n虽然对身为源氏头领的我来说，这是独一无二的朋友，\n但对身为母亲的我来说，这也是不需要的存在……\n\n比起那种事，和妈妈我再多聊聊吧？\n啊，不过重要的是，看来夜已经深了，\n我得去准备夜宵才行。\n\n对啦！\n难得的机会，我把金时也叫来吧。他一定会很高兴的。\n你也这么想吧？　呵呵，说得对——\n\n　◆\n\n童子切安纲。\n以天下五剑之一而闻名于世的太刀。\n\n虽然据说这把刀斩下了酒吞童子的首级，\n但至少被召唤到迦勒底的源赖光\n并没有提及大江山的详细情况。\n或许也可能是「四天王之一」\n代替源赖光讨伐了童子……	https://fgo.wiki/images/thumb/b/b6/%E7%AB%A5%E5%AD%90%E5%88%87%E5%AE%89%E7%BA%B2.png/300px-%E7%AB%A5%E5%AD%90%E5%88%87%E5%AE%89%E7%BA%B2.png
5	尼禄・克劳狄乌斯	ネロ・クラウディウス	Nero Claudius	150	42	女性	D	D	A	B	A	B	雷鸣般的喝彩	“筑成吧，余之魔天，在此彰显至上之光——”\n\n该剧场名为金殿（Domus Aurea）。\n是由鲜红天幕与黄金装饰而成的假想上天。\n但此处并非徒具其表。\n无论是辉煌的日子、\n残酷的背叛、\n还是无情的不理解、\n无法实现的祝福。\n她爱着这一切，歌颂这一切。\n\n喝彩并非献给舞台上的主角。\n而是献给在场所有人的人生。	https://fgo.wiki/images/thumb/0/00/%E9%9B%B7%E9%B8%A3%E8%88%AC%E7%9A%84%E5%96%9D%E5%BD%A9.png/300px-%E9%9B%B7%E9%B8%A3%E8%88%AC%E7%9A%84%E5%96%9D%E5%BD%A9.png
229	始皇帝	始皇帝	First Emperor of China	180	65	其他	B+	B+	B+	B+	B+	B+	阿房宫模型	虽然很长时间以来都是站在和你相同的立场上与你相处……\n但朕的本质依然是曾经作为统治者君临天下时的那个姿态。\n没什么，从人类执着于人的外表的这种感性的角度来看，朕也承认那一姿态乃是异形之姿。\n但对于朕来说那并非是能令朕感到懊悔以及羞耻之物。想要长久地统治世界，那一姿态乃是理所当然的结果，是抵达了应至之处的形态。\n啊，不要误会了，事到如今也并不是想要你心怀畏惧地仰望。不如说朕只是希望你能将其作为傍身之物，不受威胁地回顾——回顾那曾经高悬苍穹君临天下的，朕的姿态啊。	https://fgo.wiki/images/thumb/b/b2/%E9%98%BF%E6%88%BF%E5%AE%AB%E6%A8%A1%E5%9E%8B.png/300px-%E9%98%BF%E6%88%BF%E5%AE%AB%E6%A8%A1%E5%9E%8B.png
194	示巴女王	シバの女王	Queen of Sheba	173	59	女性	D	C	D	A	A	B	献给所罗门王的贡品	骆驼不断前进，踏向通往圣都之路。\n片刻不急，也丝毫不慢。\n\n在炽热沙丘的灼烧中。\n在冰冷月光的沐浴下。\n\n白檀香气，螺钿彩工。\n高价玛瑙的星辰斑点。\n\n献给那位王的七重宝物，\n现在正被骆驼驮于背上。\n\n终将在旅途终点获得的，\n是士师之王的智慧还是美德。\n\n真正的赠礼乃是女王的心。\n\n没有超越爱的财富。\n没有超越离别的追忆。\n\n人生不相见，\n动如参与商。\n\n然而今晚是多么的美妙。\n现在，能与您共处银烛之下。	https://fgo.wiki/images/thumb/c/c0/%E7%8C%AE%E7%BB%99%E6%89%80%E7%BD%97%E9%97%A8%E7%8E%8B%E7%9A%84%E8%B4%A1%E5%93%81.png/300px-%E7%8C%AE%E7%BB%99%E6%89%80%E7%BD%97%E9%97%A8%E7%8E%8B%E7%9A%84%E8%B4%A1%E5%93%81.png
167	杀生院祈荒	殺生院キアラ	Sessyoin Kiara	166	53	女性	D	A+	B+	EX	E	EX	摇篮之梦	附吊顶的这张床，就是少女的世界。\n\n被病魔侵蚀的身体已然时日无多。\n隔着一层薄布的大人们是只会相互憎恨，\n欢声笑语，尽享快乐的影画小丑。\n\n被人崇拜为拥有救世之才，\n其居所却是世间丑陋面的更深层。\n是连垃圾堆都会嗤笑的兽性井底。\n\n少女放弃了自己的生命，放弃了聪慧之人，\n放弃了人们追求智慧。\n\n……然而，只有梦想未能放弃。\n在临死之际，少女手中握着一件宝物。\n唯有信徒们开玩笑地留下的这本童话，\n才是这天篷中的光。	https://fgo.wiki/images/thumb/3/31/%E6%91%87%E7%AF%AE%E4%B9%8B%E6%A2%A6.png/300px-%E6%91%87%E7%AF%AE%E4%B9%8B%E6%A2%A6.png
8	阿蒂拉	アルテラ	Altera	160	48	女性	B	A	A	B	A	A+	永劫孤独	被囚禁在黑暗牢狱中的永劫孤独。\n她完全无法认识到这点。\n只有模糊的预感，在从者阿蒂拉心中骚动不已。	https://fgo.wiki/images/thumb/7/73/%E6%B0%B8%E5%8A%AB%E5%AD%A4%E7%8B%AC.png/300px-%E6%B0%B8%E5%8A%AB%E5%AD%A4%E7%8B%AC.png
145	吉尔伽美什(Caster)	ギルガメッシュ	Gilgamesh	182	68	男性	C	D	C	B	A	EX	天命之泥板	遥远的过去。\n古代神明的时代。\n诸神之王还不是马尔杜克（米罗达），\n而是恩利尔神的时候。\n\n有一只怪鸟。\n它在阿卡德的名字叫安祖，\n在苏美尔被称为印杜格德。\n其为暴风之魔，是象征巨大云朵与强风的神。\n这只怪鸟侍奉恩利尔神，\n但某天，趁主人入浴时，夺走了主人的大宝物。\n于是万物万象都即刻被黑暗所笼罩，\n世界濒临毁灭。\n\n怪鸟安祖夺走的稀有大宝物，\n那就是统治世界与主神的究极王权——天命泥板。\n\n这不是怪鸟应触碰之物。\n因为这会令世界悉数陷入危机中世界。不。\n因为没有资格之人就算触碰，王权也不会回应，\n安祖什么都没有得到。　　　　　　　　\n最后，大宝物被恩利尔神之子，英雄尼努尔塔夺回，\n世界得以修复。\n\n随后经历了漫长的岁月，在人类的时代兴盛之际。\n大宝物被收藏于黄金之都。\n\n狂暴的暴风之神安祖究竟会作何感想。\n对自己未能实现的王权篡夺，\n居然被继承了神之血的人类英雄王实现了这件事——	https://fgo.wiki/images/thumb/d/da/%E5%A4%A9%E5%91%BD%E4%B9%8B%E6%B3%A5%E6%9D%BF.png/300px-%E5%A4%A9%E5%91%BD%E4%B9%8B%E6%B3%A5%E6%9D%BF.png
16	阿拉什	アーラシュ	Arash	185	75	男性	B	A	B+	E	D	B++	神圣的献身	穿越朝霞映照的天空，\n为人们带去慈爱的七色之光——\n\n「七色之光？\n　不知道呢，我记得自己射出的只有一道光啊……\n　不过我也没能看到最后，所以确实不好说」\n\n「不过嘛——确实是七色之光啊」	https://fgo.wiki/images/thumb/5/5f/%E7%A5%9E%E5%9C%A3%E7%9A%84%E7%8C%AE%E8%BA%AB.png/300px-%E7%A5%9E%E5%9C%A3%E7%9A%84%E7%8C%AE%E8%BA%AB.png
35	梅菲斯托费勒斯	メフィストフェレス	Mephistopheles	188	78	男性	D	C	B	A	B	B	寄生炸弹虫	滴答滴答滴答滴答喀嗒喀嗒喀嗒喀嗒。\n虫子翅膀震动声与时钟秒针的声音混在一起，\n极为令人不快。\n看着这散发着虹色光芒的甲壳，\n仿佛产生了这炸弹真的是活着的错觉。\n\n话说我们换一个话题吧。\n寄生虫最可怕的地方，应该是「潜藏在无法防御的体内」\n这部分吧。\n\n如果您赞成这个意见，那请千万别被梅菲斯托盯上为好。\n如果有一天，你的喉咙、胸口、腹部产生强烈痛苦\n与瘙痒之时，或许就是这种虫子在到处爬行吧。\n\n——既然如此，还不如干脆炸掉会好得多吧，\n嘻嘻嘻嘻嘻！	https://fgo.wiki/images/thumb/d/d6/%E5%AF%84%E7%94%9F%E7%82%B8%E5%BC%B9%E8%99%AB.png/300px-%E5%AF%84%E7%94%9F%E7%82%B8%E5%BC%B9%E8%99%AB.png
60	俄里翁	オリオン	Orion	165	44	男性	D	C	B	A	A+	A+	三星腰带	快看。这就是世界上最有名的冬季星座，\n猎户座。\n闪烁于腰间的三颗星就是猎户腰带。\n住吉三神或是参宿一、参宿二、参宿三。\n总之都是些美丽的星辰。\n但世间有比这些星辰的光辉更为美丽的存在。\n那就是你的眼眸，仿佛眼中有群星汇聚的银河，\n深邃而美丽地闪耀着……\n话说这位小姐，一会儿有时间吗？\n哎，虽然有时间但不行？\n你背后那个轻飘飘的女孩子很可怕？\n哈哈哈，讨厌啦不要开这种玩xi（笔记到此中断）	https://fgo.wiki/images/thumb/9/9a/%E4%B8%89%E6%98%9F%E8%85%B0%E5%B8%A6.png/300px-%E4%B8%89%E6%98%9F%E8%85%B0%E5%B8%A6.png
72	弗格斯・马克・罗伊	フェルグス・マック・ロイ	Fergus mac Róich	184	90	男性	A	A	B	E	C	A+	勇士的沸腾	噢噢，您在这里啊，御主！\n其实我在找东西。\n这附近应该放着一个红色小瓶子之类的东西，\n您有印象吗？\n虽然不是什么无法取代的东西，但可不能让\n一无所知的年轻人或是人类吃下去啊。\n\n……哦，您有兴趣吗？\n没什么。从某种意义来说，那也算是勇士的证明。\n是德鲁伊传授给我等赤枝骑士团的秘中之秘，\n连康诺特那群家伙也会很想要的珍品！\n哪怕是在战斗中受伤，失去半身的勇士，\n只要喝下一口，也能恢复活力！\n无论在关乎性命，还是关乎夜晚的问题上都有效果！\n前提是先得在幸运判定上成功才行哦！\n\n用现代的说法来说，其实就是『营养饮料』啦。\n\n如果幸运判定失败会如何？\n这个嘛……\n喂。你该不会是喝下去了吧……？	https://fgo.wiki/images/thumb/0/0c/%E5%8B%87%E5%A3%AB%E7%9A%84%E6%B2%B8%E8%85%BE.png/300px-%E5%8B%87%E5%A3%AB%E7%9A%84%E6%B2%B8%E8%85%BE.png
77	尼古拉・特斯拉	ニコラ･テスラ	Nikola Tesla	190	80	男性	D	C	C	B	D	EX	雷电之手	无可比拟的天才。\n现代的普罗米修斯。\n绝世美男子。\n在大地之上再现宙斯之雷霆的男人。\n发明王爱迪生的对手。\n豪言壮语说甚至能碎裂星辰的人物。\n\n以上有几条是他现界后的自称，\n剩下的，则是他过世后，\n专家们对他的评价。\n事实上，他确实是天才。\n作为英灵的他周身的机械群也强烈表现了他的天才性。\n不能因为那些被随便摆放，\n就擅自去触碰啊——	https://fgo.wiki/images/thumb/5/51/%E9%9B%B7%E7%94%B5%E4%B9%8B%E6%89%8B.png/300px-%E9%9B%B7%E7%94%B5%E4%B9%8B%E6%89%8B.png
84	阿周那	アルジュナ	Arjuna	177	72	男性	A	B	B	B	A++	EX	天赐的英雄	——将财宝，赐予你。\n——将力量，授予你。\n——将所有一切，给与你。\n\n当被给予了一切后，\n才发现所有一切都浪费了。\n在下，我想要的，\n并不是这种东西。\n\n所以现在，为了抓住真正想要的存在，\n我要拼上自己的性命。\n将所有人都珍惜疼爱的我那生命作为赌资，\n随便地扔上了赌桌。\n\n说实话吧。\n这种行为太痛快了！	https://fgo.wiki/images/thumb/e/e9/%E5%A4%A9%E8%B5%90%E7%9A%84%E8%8B%B1%E9%9B%84.png/300px-%E5%A4%A9%E8%B5%90%E7%9A%84%E8%8B%B1%E9%9B%84.png
96	岩窟王	巌窟王 エドモン・ダンテス	Edmond Dantès	185	75	男性	B	A+	C	B	─	A	伊夫堡	没有一个人能活着逃脱的监狱塔。\n其名为伊夫堡。\n存在于世，却被称为「地狱」伊夫之塔。\n收监犯下不可饶恕大罪之人的死亡牢狱。　\n人曰。这世间所有痛苦尽数集结于此处。\n人曰。愤怒、悲叹、哀伤之声不绝于耳。\n人曰。一旦被囚禁，将永远不可能逃脱。\n\n因此，倘若有人能活着离开此处——\n那此人必是背负着无限怨恨的存在吧。\n必是身为人，却已不再为人的存在吧。\n必是超越克服了所有人性，\n如黑暗恶鬼般显现之物吧。\n\n「没错！　那就是我！\n　坠入地狱，通过吞噬地狱活下来的人！\n　不是别人，只有我！\n　出现于恩仇的彼方！\n　必将亲手——完成复仇——」	https://fgo.wiki/images/thumb/e/e1/%E4%BC%8A%E5%A4%AB%E5%A0%A1.png/300px-%E4%BC%8A%E5%A4%AB%E5%A0%A1.png
105	比利小子	ビリー・ザ・キッド	Billy the Kid	158	49	男性	D	E	B	E	B	C	见识一下你的枪吧	哎？　你在寻找名为比利的孩子？\n那家伙是个狡诈的三流艺人哦？\n快枪手？　这种荒谬的传言居然传得那么广啊！\n那家伙只不过是个小流氓而已。\n像你这样拥有出色手枪的赏金猎人\n就算看上他也没有任何好处啦！\n你觉得他明明是个小屁孩，却特别狂妄，\n想彻底打垮他？\n那就没办法了，我就告诉你比利在哪儿好了。\n没关系，冷静冷静，放轻松点。\n做个交易吧。把你的枪给我看看。\n真出色，我还从没在西部见过这样闪闪发光的枪呢！\n真是把只有外表好看的枪啊！\n既然给我看了，就要告诉你情报？\n知道了，知道了啦！\n来，把耳朵凑过来！\n\n听好了，比利他哦——就在你的背后。\n\n我可没对你撒谎哦。\n因为你回头望去，所以我现在不就在你的背后吗？\n话说，我已经把手枪拔出来了，\n你现在还不拔你那把出色的手枪，真的没问题吗？	https://fgo.wiki/images/thumb/1/1a/%E8%A7%81%E8%AF%86%E4%B8%80%E4%B8%8B%E4%BD%A0%E7%9A%84%E6%9E%AA%E5%90%A7.png/300px-%E8%A7%81%E8%AF%86%E4%B8%80%E4%B8%8B%E4%BD%A0%E7%9A%84%E6%9E%AA%E5%90%A7.png
110	百貌哈桑	百貌のハサン	Hassan of the Hundred Personas	-1	-1	女性	C	D	A	C	E	B	百人藏书	基底。怪腕。迅速。奸计。集积。缝合。鸢影。音无。\n收货。舌锋。卷风。速尾。诈称。静寂。裁断。祈愿。\n油针。祭烟。剑鬼。夜阴。地学。变梃。追补。远见。\n业火。霹雳。蛇香。几学。妖美。露涂。医食。贯指。\n马攻。射影。临写。戒饬。风弓。说谕。污泥。混成。\n筒暗。割让。衣纹。星辰。美食。轮技。药师。恶德。\n月光。虫饲。解锭。忘却。无彩。计则。毒见。耕材。\n铁绳。仮死。考古。摄理。拔骨。拜礼。轻脚。二忍。\n日轮。查定。卫生。千里。木偶。残响。传歌。长刃。\n潜行。造形。继承。妆粉。奇艺。邻人。船舶。灭记。\n削离。草淋。研磨。诊心。狭域。黄反。雨吞。白亚。\n\n此乃八十八位亲近的陌路人。\n位居剩余席位之貌（人），吾等亦不得知也。	https://fgo.wiki/images/thumb/3/3d/%E7%99%BE%E4%BA%BA%E8%97%8F%E4%B9%A6.png/300px-%E7%99%BE%E4%BA%BA%E8%97%8F%E4%B9%A6.png
118	奥斯曼狄斯	オジマンディアス	Ozymandias	179	65	男性	C	C	B	A	A+	EX	拉美西斯二世葬祭殿	除了几位例外——\n统治古代埃及的法老在死后，\n都会被视为登上了神之座，与死者之书被一同埋葬。\n他们大多自称荷鲁斯神的后裔，\n位居荷鲁斯神的宝座。\n\n然而他，却是生前就自称为神的强大法老之一，\n就在他在位第33年的纪念仪式上，\n自称「拉，诞生于神之存在」。\n\n他监制了国内新建造的所有纪念碑，\n有时还主动口述指示。\n不仅如此，他还改造了现存的纪念碑与人物肖像，\n将古老的功勋占为己有。\n\n据说在治理后半的30年间，\n他丝毫不在乎埃及样式的多样性，\n建立了为数众多的神殿。\n\n或许他的目标——\n是想将神明所在的世界拉近现世，\n将这个世间与那个世界同化吧。	https://fgo.wiki/images/thumb/5/5b/%E6%8B%89%E7%BE%8E%E8%A5%BF%E6%96%AF%E4%BA%8C%E4%B8%96%E8%91%AC%E7%A5%AD%E6%AE%BF.png/300px-%E6%8B%89%E7%BE%8E%E8%A5%BF%E6%96%AF%E4%BA%8C%E4%B8%96%E8%91%AC%E7%A5%AD%E6%AE%BF.png
62	玉藻前	玉藻の前	Tamamo-no-Mae	160	49	女性	E	E	B	A	D	B	玉藻俱乐部	玉藻俱乐部。\n这是空气（不存在的）主妇为了终有一天能在\n梦想的独门独户与老公过二人生活而准备的指南书。\n据说里面记录了为了成为一个贤妻\n需要具备的各种技术花招。\n\n「原来如此～。想撒娇时就要挑老公有空的时候，\n　想被老公撒娇时就要找他心情低落时吧～。\n　嗯，我知道，我都知道。\n　玉藻我可是很懂这种套路的哦♡」\n\n翻着书页的手指非常轻快、愉快。\n但这本书里，可没有写明最关键的\n该如何获得老公的方法哦？	https://fgo.wiki/images/thumb/0/0f/%E7%8E%89%E8%97%BB%E4%BF%B1%E4%B9%90%E9%83%A8.png/300px-%E7%8E%89%E8%97%BB%E4%BF%B1%E4%B9%90%E9%83%A8.png
126	贝德维尔	ベディヴィエール	Bedivere	187	88	男性	A	B	A+	C	B	A	失去的右臂	闪耀的银之臂，Agateram。\n传说原始的这东西是神的义肢。\n是凯尔特神话中达南的战神努亚达\n为了取代在战乱中失去的右臂，\n让医疗、冶炼与工艺之神迪安·凯希特\n打造出来的神造兵器。\n\n为了贝德维尔失去的右臂而打造的这个，\n当然不是努亚达的银臂。\n是通过付与其与神话相同的名字，\n来暗示其存在的临时宝具。\n\n其真面目——是未能返还的圣剑。\n\n通过六章的故事，圣剑被成功返还了。\n因此，他被作为特例，登录在了英灵之座上。\n他右臂中存在的，并不是圣剑本身。\n\n假想圣剑。\n不是过去那会磨耗灵魂的宝具，\n而是只有通过连接从者与御主的羁绊才能发动，\n从某种意义上来说，是最为崭新的宝具之一。	https://fgo.wiki/images/thumb/5/59/%E5%A4%B1%E5%8E%BB%E7%9A%84%E5%8F%B3%E8%87%82.png/300px-%E5%A4%B1%E5%8E%BB%E7%9A%84%E5%8F%B3%E8%87%82.png
161	土方岁三	土方歳三	Hijikata Toshizou	187	75	男性	C	C	C	E	D	C+	誓言的羽织	——已不会再次披上的浅葱色羽织。\n\n幕末最强的刽子手集团『新选组』\n身披的羽织。\n\n一同在时代中驰骋的同伴们，有些人因战斗倒下，有些人因病魔倒下，还有一些人因绝望倒下。他的身旁已经一个人都没有了。\n\n他正是最初的一人，也是最后的新选组。\n誓言在远方，诚在此处。	https://fgo.wiki/images/thumb/6/6a/%E8%AA%93%E8%A8%80%E7%9A%84%E7%BE%BD%E7%BB%87.png/300px-%E8%AA%93%E8%A8%80%E7%9A%84%E7%BE%BD%E7%BB%87.png
176	弗兰肯斯坦(Saber)	フランケンシュタイン	Frankenstein	172	48	女性	C++	B	C	D	A	B	万能绷带	（受伤了？　担心被感染？\n没关系，没什么可害怕的。因为这万能绷带\n可以防止各种感染，是能控制负伤的生命维系带。\n\n当然其防水功能也十分完备，大概吧。\n由于自己使用的是人工关节，海洋对自己\n会非常危险，但只要绑上这绷带就没问题了。\n\n好了，噗通一声地跳进去吧～！\n啊，浸湿的绷带变透明了。\n这或许是非常羞耻的状态吧，\n带着这种想法，我就全力叫喊吧。）\n\n\n\n唔唔唔唔！！！	https://fgo.wiki/images/thumb/b/b5/%E4%B8%87%E8%83%BD%E7%BB%B7%E5%B8%A6.png/300px-%E4%B8%87%E8%83%BD%E7%BB%B7%E5%B8%A6.png
220	BB(SSR)	ＢＢ	BB	156	-1	女性	C	C	C	A++	EX	EX	深渊中最后的避暑地	仿佛时间停止一样的夜晚。\n日历停止在12月31日23 : 59\n过一段时间后，变得根本无法动弹。\n「啊啦，想要起床了吗？」\n身旁可爱的她微笑着。\n想不起名字。\n天文台的灯光降下，使得今夜变得十分明亮。\n仿佛深远宇宙在眼前坠落。\n「好安静啊，仿佛除去我们两个，就再也没有谁了一样」\n耳边回响着安娴而又甜蜜的呢喃。\n松弛的指尖。闭塞的回忆。永驻的时间。\n想不起名字。\n「呵呵，请抬头看看，这星空如此之美丽。」\n抬头仰望着天空，宛如一切已为时已晚。\n巨大的深渊。三颗赤红的星星。发狂的冬之星座。\n所有生命都消失的行星。\n如此来讲，这里是月球表面的火山坑[5]吧？\n“呵呵，呵呵，呵呵呵————”\n旁边■■微笑着。\n想不起名字。并非是她的名字，而是我自己的名字。\n\n那即是你所处的最后一夜。\n在这时间和空间的狭缝里的饲养箱中。\n拥有永远无法摆脱的，陷阱般的蜜月。	https://fgo.wiki/images/thumb/0/01/%E6%B7%B1%E6%B8%8A%E4%B8%AD%E6%9C%80%E5%90%8E%E7%9A%84%E9%81%BF%E6%9A%91%E5%9C%B0.png/300px-%E6%B7%B1%E6%B8%8A%E4%B8%AD%E6%9C%80%E5%90%8E%E7%9A%84%E9%81%BF%E6%9A%91%E5%9C%B0.png
97	南丁格尔	ナイチンゲール	Florence Nightingale	165	52	女性	B+	A+	B+	D+	A+	D	不屈不挠	她不停反抗，不停战斗。\n无论是在战场。\n还是在英国。\n没有满足于在克里米亚完成了伟业的这个评价，\n只顾一味地挺身面对世界。\n\n若谁也不出手相救，\n若沉默且不去作为，\n生命会如此轻易逝去的这个世界。\n不卫生与冷漠，无知与各种致病因素——\n所谓的世界，就是包含了她所有敌人的存在。\n\n她不停反抗，不停战斗。\n这场战斗直到现代仍不停歇。\n哪怕现在这个瞬间，继承她愿望与誓言的\n无数「护士」们也依然在不停战斗着。	https://fgo.wiki/images/thumb/2/24/%E4%B8%8D%E5%B1%88%E4%B8%8D%E6%8C%A0.png/300px-%E4%B8%8D%E5%B1%88%E4%B8%8D%E6%8C%A0.png
4	阿尔托莉雅・潘德拉贡(Lily)	アルトリア・ペンドラゴン	Altria Pendragon	154	42	女性	C	C	B	A	A+	B	花之启航	在朝霞的映照下，船庄严地启航了。\n\n这为曾在选定之地见到的那件事画上了一个休止符。\n她通过这次旅程，与帝国缔结和平协议。\n她通过这次旅程，目睹了故乡燃烧的岸边。\n\n由人理构筑的历史无比坚固，\n因而不能接受变革。\n\n为成为王的少女的旅途即将结束。\n祝愿其终点与『她』不同，\n会充满了希望——	https://fgo.wiki/images/thumb/c/c6/%E8%8A%B1%E4%B9%8B%E5%90%AF%E8%88%AA.png/300px-%E8%8A%B1%E4%B9%8B%E5%90%AF%E8%88%AA.png
226	项羽	項羽	Xiang Yu	310	480	男性	A	A	A	C	D	C	会稽零式设计图	这里是我的起点。是一位殿上人曾梦想过的通往理想的地图。那图上所绘的便是我。\n这是已远远离我而去的梦。是以我现在这副反复扩充过的身躯所不应怀念的。\n正因如此，就算仅仅是作为概念，我也衷心想要告诉你。\n曾经的我，是以这样的姿态存在的。	https://fgo.wiki/images/thumb/8/83/%E4%BC%9A%E7%A8%BD%E9%9B%B6%E5%BC%8F%E8%AE%BE%E8%AE%A1%E5%9B%BE.png/300px-%E4%BC%9A%E7%A8%BD%E9%9B%B6%E5%BC%8F%E8%AE%BE%E8%AE%A1%E5%9B%BE.png
156	詹姆斯·莫里亚蒂	ジェームズ・モリアーティ	James Moriarty	175	68	男性	C	D	A	B	A	C	小行星力学	不是有这么一句登山家说过的话吗？\n因为珠穆朗玛峰就在那里。\n人总是想要挑战自己的极限，\n总是无法克制想要证明自己结论正确的欲望啊。\n\n御主，我啊。\n计算出了『做得到』的结果。\n得出了『可行』的结论。\n\n既然如此，就没办法了，哪怕坠入邪恶之路，\n也非要确认这计算是否正确才行啊！\n\n啊，嗯。太对了。这顺序完全颠倒了。\n不是因为身为邪恶才要破坏世界，\n而是为了破坏世界而化身邪恶啊！	https://fgo.wiki/images/thumb/c/ca/%E5%B0%8F%E8%A1%8C%E6%98%9F%E5%8A%9B%E5%AD%A6.png/300px-%E5%B0%8F%E8%A1%8C%E6%98%9F%E5%8A%9B%E5%AD%A6.png
169	山鲁佐德	シェヘラザード	Scheherazade	168	58	女性	E	D	E	C	EX	EX	山鲁亚尔王之闺	为了在此处迎接清晨所必须的，\n是故事，是话语，是快乐，\n是热衷，是计算，是微笑，\n是谎言，是观察，是直觉，\n是想象，是知识，是浅眠，\n是聪慧妹妹的勇气，是不想死的恐惧，\n是无法将刀刃对准其喉咙的弱小，是无法将刀刃对准自己喉咙的软弱。\n\n耗费了所有这一切，奇迹般的清晨才总算，总算到来——\n\n然后，下一个夜晚又会到来。	https://fgo.wiki/images/thumb/5/59/%E5%B1%B1%E9%B2%81%E4%BA%9A%E5%B0%94%E7%8E%8B%E4%B9%8B%E9%97%BA.png/300px-%E5%B1%B1%E9%B2%81%E4%BA%9A%E5%B0%94%E7%8E%8B%E4%B9%8B%E9%97%BA.png
99	女王梅芙	女王メイヴ	Queen Medb	154	41	女性	E	E	B	C	EX	A+	神圣之泉	世界的中心，被选中的主角，所有一切的支配者。\n嗯，没错——我就是梅芙。\n康诺特的女王梅芙。\n\n无论恋人、战友、孩子，甚至连王，\n全都是我的。\n所有人都被我所吸引。\n所有人都会爱我，并被我掠夺。\n\n爱，爱，不停爱。\n掠夺，掠夺，不停掠夺。\n可不能违抗哦。\n因为，你很想被我支配吧？\n\n那就许愿吧。\n不向圣杯，而是依赖我这神圣之泉。\n只要我高兴的话——或许会发生什么好事哦。	https://fgo.wiki/images/thumb/a/ab/%E7%A5%9E%E5%9C%A3%E4%B9%8B%E6%B3%89.png/300px-%E7%A5%9E%E5%9C%A3%E4%B9%8B%E6%B3%89.png
195	阿比盖尔・威廉姆斯	アビゲイル・ウィリアムズ	Abigail Williams	152	44	女性	B	A	C	B	C	A	银钥玫瑰念珠	据说这把“钥匙”曾一度出现在马萨诸塞州的塞勒姆。\n存在时间大约有数十年，但与钥匙本身经历的悠久世纪\n比起来，这不过是短暂的一瞬罢了。\n钥匙被祖先在英国的一名“魔道士”一丝不苟地保管着。\n被大张羊皮纸包裹，存放在释放着浓郁香味的香木箱中。\n钥匙会赐予持有者特殊的力量。并不是任何对象都可以。\n使用必须达成明确的条件。\n拥有魔术的素养、纯洁无瑕之人、\n没有失去童心之人就是其条件。\n因为钥匙是与梦之世界相连的。\n而且根据“象牙之书”与“死灵规则之书”等\n数册魔道书的记载，可以得知“钥匙”乃是由遥远古代，\n被掩盖在极寒冰河期中的大陆魔道士制作而成的。\n由于外观酷似罗马遗迹出土文物，因此最终被称为钥匙，\n但现实中并不存在与之成对的锁。实际上是概念意义的\n钥匙，原本应该被称作魔道士挥舞的“杖”吧。\n当魔女审判这致命的灾难降临塞勒姆时，\n钥匙本应也会蒙着虚伪与迷信的面纱遭到遗失，\n但却出现了继承钥匙之人。这位少女的名字是\n阿比盖尔·威廉姆斯——少女在日落时分，\n在这绞刑之丘被染上蔷薇色的星辰之刻，\n正确地使用了魔神柱交给她的钥匙。Ia！　Ia！　\n被怀疑是魔女的女人们在恶魔的书册中\n留下了红色印记，分别用与每个印相符的动作，\n系出与九个印数量相同的结，\n少女打开了通往“境界”的大门。\nIa，Ia，Y’ghaa，y’gai，gai！　\n由虚构深渊降临之人啊。\n镇座于梦之长廊彼方穷极之门的神啊。\n“一生万物，万物归一者”啊。\n一定要警告触碰少女之人。\n少女的存在将会让世界成为不确定的事物吧，\n但是，噢噢，噢噢\n\n——手记到此中断。	https://fgo.wiki/images/thumb/0/07/%E9%93%B6%E9%92%A5%E7%8E%AB%E7%91%B0%E5%BF%B5%E7%8F%A0.png/300px-%E9%93%B6%E9%92%A5%E7%8E%AB%E7%91%B0%E5%BF%B5%E7%8F%A0.png
142	伊什塔尔	イシュタル	Ishtar	159	47	女性	B	B	B	EX	A	A++	七头战锤希塔	『畏惧吧，称颂吧。敬仰、崇拜吧。\n　那位女神正是天之女主人，受人爱戴的美丽化身。\n　其手中握着的乃是美丽的七头锤矛。\n　正如其凶猛狠辣的外表，是只要握在手中，\n　就能毫不留情地打倒敌人的锡杖。\n　怎么会这样，那位女神居然出生时\n　就握着如此残酷的凶器。这是有多夸张啊。\n\n　啊啊，黎明射出光线的象征啊\n　噢噢，金星女神，引导拂晓。\n\n　据说女神不喜欢被人守护，总是率先立于战阵中，\n　获得比任何人都丰厚的战果什么的。\n　然而，她的温情不仅限于战斗。\n　罕见的心血来潮会让女神铲除造成洪水的怪物，\n　基于丰收的权能勤于治水，\n　促使众多城市热闹非凡。\n\n　具备各种问题，各种侧面，\n　但最终还是会给人世带来幸福与欢乐。\n　伊南娜女神万岁。\n\n　话说回来，据称伊南娜女神\n　拥有另一把与这同一等级的破坏兵器。』\n\n「给我等一下，这是对我的赞美歌吧！？\n　为何里面到处可见若隐若现的真心话啦！？」	https://fgo.wiki/images/thumb/1/17/%E4%B8%83%E5%A4%B4%E6%88%98%E9%94%A4%E5%B8%8C%E5%A1%94.png/300px-%E4%B8%83%E5%A4%B4%E6%88%98%E9%94%A4%E5%B8%8C%E5%A1%94.png
212	拿破仑	ナポレオン	Napoleon	189	92	男性	D	C	A	E	B	B	传说与事实	根据传闻，\n拿破仑的字典里没有不可能这三个字。\n\n根据记录，\n拿破仑嗜好西班牙的雪茄。\n\n他并没有否认。\n关于自己的外貌，他虽然半开玩笑地岔开了话题，\n但对于传闻、轶事和记录却并未否认。\n“至少，对于现在的我来说是事实啊。”\n他如此说着，笑了起来。\n\n当然，传闻与事实的相关或是相克，\n也经常出现在他之外的英灵身上。\n那么，拿破仑特有的特异性到底是什么呢？\n\n——他接受了一切。\n——传闻也好。轶事也好。记录也好。	https://fgo.wiki/images/thumb/8/8e/%E4%BC%A0%E8%AF%B4%E4%B8%8E%E4%BA%8B%E5%AE%9E.png/300px-%E4%BC%A0%E8%AF%B4%E4%B8%8E%E4%BA%8B%E5%AE%9E.png
165	铃鹿御前	鈴鹿御前	Suzuka Gozen	164	51	女性	D	D	A	A	B	EX	天魔的春日修行	「虽说我把手机换成智能机了，\n　但总觉得这个不能扔吧？\n　加了装饰的功能机果然很豪华！」\n\n每天都要在镜前做战斗准备。\n对坚信迟早一定能\n一～～～定能遇到宿命对象的她来说，\n每天保养自己就是一场战斗。\n彻彻底底的自我中心，\n将使命与立场搁置一边，铃鹿御前为爱而生。\n\n「唔～，虽然我确实很想要男朋友，\n　但这个姑且不论，现在真是太棒了～！\n　JK修行超开心的！」	https://fgo.wiki/images/thumb/8/8e/%E5%A4%A9%E9%AD%94%E7%9A%84%E6%98%A5%E6%97%A5%E4%BF%AE%E8%A1%8C.png/300px-%E5%A4%A9%E9%AD%94%E7%9A%84%E6%98%A5%E6%97%A5%E4%BF%AE%E8%A1%8C.png
218	牛若丸(Assassin)	牛若丸	Ushiwakamaru	168	55	女性	D	C	A++	B	A	B	天狗扮演套装	御山之西，常有欺负无垢鸟兽的好事之徒。\n听闻到呼救声后，鞍马的大天狗飞了出来！\n「居然向动物们扔石头。可恶的人类，\n给我有点羞耻心啊！出来吧天狗石……让你们也尝尝\n被扔石头是什么滋味！」\n「啊~哈哈！看到了吗阿狸吉，这个人\n跑得好狼狈搞笑啊！吓得腰都软了！\n这样一来，他应该不会再欺负动物了吧！」\n\n御山之东，常有为玩乐而把树木砍掉的人。\n听闻到树木们的哀嚎声，鞍马的大天狗飞了出来！\n「不尊重大自然的人，没有进入御山的资格。吃我这招\n树叶大旋风！」\n「噗噗！身上居然只剩一块兜裆布地掉进了\n河里！真让人愉悦至极啊！松鼠藏，我已经帮你\n报了破坏房子的仇了哦。找新的房子去吧！」\n\n「哎呀，今天也尽情教训了那些家伙。\n嗯，怎么了啊阿狸吉，松鼠藏？后面？后面有什么…\n………哇啊啊啊啊师父大人！不是的这并不是恶作剧\n只是对那些为害御山的无礼之人略施惩戒而已所以\n没有知会您就借走装束和团扇也是无可奈何我并\n没有做什么坏——」\n\n——玩乐才是修行。\n\n但是偶尔，\n也有笑不出来的修行（惩罚）等待着你。	https://fgo.wiki/images/thumb/3/36/%E5%A4%A9%E7%8B%97%E6%89%AE%E6%BC%94%E5%A5%97%E8%A3%85.png/300px-%E5%A4%A9%E7%8B%97%E6%89%AE%E6%BC%94%E5%A5%97%E8%A3%85.png
51	坂田金时	坂田金時	Sakata Kintoki	190	88	男性	A+	B	B	C	C	C	黄金眼镜	「啊啊？　你是问这副太阳眼镜吗？\n　没什么大不了的来历。只是一副普通的太阳眼镜啦。\n　只不过，从我看来——\n　这是古今东西全世界最Golden的太阳眼镜！\n　还能防UV哦！\n　实际上，只要戴着这副眼镜，放雷电（Spark）时\n　会比较轻松。毕竟不戴的时候放会刺眼吧？」\n（坂田金时在迦勒底如是说）	https://fgo.wiki/images/thumb/f/f1/%E9%BB%84%E9%87%91%E7%9C%BC%E9%95%9C.png/300px-%E9%BB%84%E9%87%91%E7%9C%BC%E9%95%9C.png
136	伊莉雅丝菲尔・冯・爱因兹贝伦	イリヤスフィール・フォン・アインツベルン	Illyasviel von Einzbern	133	29	女性	E	C	D	B	A	A+	梦幻召唤（Install）	「Wonderful＆Congrats，伊莉雅！\n　“职阶卡”终于全部收集完成了！\n　今后可以随心所欲地梦幻召唤（Install)啦！」\n「这……这确实值得高兴，但什么时候完成的……？\n　我说红宝石～你该不会是擅自顺走了敌人掉落的……」\n「哎哟，红宝石亲的副业话题就到此为止啦☆」\n「你这根傻杖子～，快和我一起去道歉！」\n\n（不过偷偷告诉你一件事——\n　为了修改处于封印状态的卡，\n　我与拥有道具作成技能的各位进行了暗黑交易，\n　这点还请谅解哦☆）\n\n「但是……这样说来，我今后是不是就能进一步帮上\n　御主的忙了呢……？」\n「那当然啦！　通过借用迦勒底遇到的这些那些英灵的\n　力量，令伊莉雅的狡——愉快的可能性＆转身形态超\n　越极限开花结果！\n　可以从基本七职阶发展到Ruler、Shielder、\n　Avenger、泳装、糖果与恶作剧、色情公主、危险野\n　兽，还有……」\n「后半越来越奇怪了！　已经不是职阶了吧！\n　总……总之我会努力变成御主可靠的存在……\n　但是……过于羞耻的还是要节制一下……」	https://fgo.wiki/images/thumb/a/a1/%E6%A2%A6%E5%B9%BB%E5%8F%AC%E5%94%A4%EF%BC%88Install%EF%BC%89.png/300px-%E6%A2%A6%E5%B9%BB%E5%8F%AC%E5%94%A4%EF%BC%88Install%EF%BC%89.png
143	恩奇都	エルキドゥ	Enkidu	-1	-1	其他	？	？	？	？	？	A++	胡姆巴巴之花	『为何她会佩戴那个冠呢？』\n\n天之锁情不自禁地呢喃道。\n曾经战斗过的怪物。\n在战斗前曾是朋友的怪物。\n拥有比地上任何人——甚至比天之锁——\n还要锐利爪子的可怕怪物。\n但其头上戴着花朵。\n天之锁过去在杉木林中种植的淡色小花。\n为了那位拥有少女之心的怪物，\n不惜扭曲地之理创造的花园。\n\n『正因为是一串简单的装饰，\n　纯真无暇的心灵才会感到喜悦。』\n\n立于天之锁身旁的男人这么说完，转身折返城市。\n留下了赠与朋友的第二串花冠。	https://fgo.wiki/images/thumb/1/18/%E8%83%A1%E5%A7%86%E5%B7%B4%E5%B7%B4%E4%B9%8B%E8%8A%B1.png/300px-%E8%83%A1%E5%A7%86%E5%B7%B4%E5%B7%B4%E4%B9%8B%E8%8A%B1.png
177	尼托克丽丝(Assassin)	ニトクリス	Nitocris	162	51	女性	E	E	B	A	A	B	太阳的恩赐	那位伟大的法老奥斯曼狄斯\n在临近比赛之时大声呵斥了我……\n\n事到如今，我才意识到，\n那是叱责激励之言！\n\n其证据就是这个，不对，你给我好好看清这个！\n如此精巧的工艺！\n虽说整体仍是我比赛用的甲壳虫，\n但是睁大眼睛，睁大眼睛好好看清楚。\n甲壳虫上——居然有酷似『光辉之大复合神殿』的造型！\n看啊。快看快看。看到了吧！\n\n也就是说……\n呵呵。哈哈哈哈哈。无需多言！\n但我还是要说。\n我得到了奖赏！	https://fgo.wiki/images/thumb/6/60/%E5%A4%AA%E9%98%B3%E7%9A%84%E6%81%A9%E8%B5%90.png/300px-%E5%A4%AA%E9%98%B3%E7%9A%84%E6%81%A9%E8%B5%90.png
78	阿尔托莉雅·潘德拉贡(Alter)(Lancer)	アルトリア・ペンドラゴン	Altria Pendragon	171	57	女性	A	A+	C	A+	D	A++	黑头盔	她得到了闪耀与尽头的存在。\n变质正是从这瞬间开始的。\n首先是肉体。然后是精神。\n在完全转化为“圣枪女神”前，\n她做出了选择。\n选择了成为风暴之王的自己。\n\n与身为圣剑骑士王的自己相背离，\n成了拥有狂暴性质的存在——\n可即便如此，她依然作为一名人类而存在着。\n\n不是作为圣枪女神。\n而是作为阿尔托莉雅·潘德拉贡。\n\n身在此处的，\n是未曾成为狮子王，而化身为圣枪英灵的存在。	https://fgo.wiki/images/thumb/a/a9/%E9%BB%91%E5%A4%B4%E7%9B%94.png/300px-%E9%BB%91%E5%A4%B4%E7%9B%94.png
197	阿蒂拉·the·San(ta)	アルテラ	Altera	160	48	女性	C	B	A+	A	A	EX	驰骋于夜空之虹	纷飞雪花之中，圣诞老人与羊驰骋而过。\n一条彩虹划过多重轨迹，\n映照着黑暗的天空。\n这并非灾祸的行星，\n犹如实现愿望的彗星。\n诞生于地上的流浪公主\n为只有一夜的职责兴奋不已。\n尽管脑袋有些发烧，\n但她依然是她，由衷露出了微笑。\n\n「……嗯，礼物是好文明。\n　因为无论是焦急等待之人，还是递送礼物之人，\n　都在祈祷着相互的幸福。\n　胆敢妨碍这闪耀夜晚的坏家伙\n　一定会遭到软绵绵御主降下的天罚。\n　具体来说，就是我的神之鞭。\n　嚯～嚯～嚯～。我可是圣诞老人哦？」	https://fgo.wiki/images/thumb/0/02/%E9%A9%B0%E9%AA%8B%E4%BA%8E%E5%A4%9C%E7%A9%BA%E4%B9%8B%E8%99%B9.png/300px-%E9%A9%B0%E9%AA%8B%E4%BA%8E%E5%A4%9C%E7%A9%BA%E4%B9%8B%E8%99%B9.png
171	彭忒西勒亚	ペンテシレイア	Penthesilea	158	49	女性	A+	B+	C	A	D	A	战神的军带	激昂吧，军神之子啊。\n咆哮吧，军神之子啊——\n\n传说中蕴含着亚马逊部族血脉之祖，军神阿瑞斯力量的腰带。\n拥有距军神最近力量之人，也就是率领部族的女王必然会穿上这个。\n然而她所拥有的这根腰带是否与姐姐希波吕忒所持的东西是同一物品尚不能确定。\n\n「你在看什么。你该不会——也愚蠢到想要得到这根腰带吧？（溢出的杀气。）」	https://fgo.wiki/images/thumb/d/df/%E6%88%98%E7%A5%9E%E7%9A%84%E5%86%9B%E5%B8%A6.png/300px-%E6%88%98%E7%A5%9E%E7%9A%84%E5%86%9B%E5%B8%A6.png
203	阿维斯布隆	アヴィケブロン	Avicebron	161	52	男性	E	E	D	A	B	A+	某个真理与死亡	人会死。老人会死。大人会死。\n婴儿也会死。小孩子也会死。\n所有人都会平等地迎来死亡，这没有踌躇或是宽容的余地。\n\n……我没有原谅。\n我不能原谅杀死、伤害无辜的人们的凶手。\n但我更加不能原谅的，\n是对此视而不见的自己。\n\n啊啊——我在那时犯下了致命的错误。\n在逃避的那一瞬间，就已经失去了救世主的资格。\n明明如此，却还要宣扬拯救世界吗。\n\n小孩子用拙劣的手艺做出的玩偶，\n一直盯着我，仿佛在谴责我一般。\n\n即便如此。\n即便如此，我也要拯救这个世界。	https://fgo.wiki/images/thumb/e/ea/%E6%9F%90%E4%B8%AA%E7%9C%9F%E7%90%86%E4%B8%8E%E6%AD%BB%E4%BA%A1.png/300px-%E6%9F%90%E4%B8%AA%E7%9C%9F%E7%90%86%E4%B8%8E%E6%AD%BB%E4%BA%A1.png
59	贞德	ジャンヌ・ダルク	Jeanne d\\'Arc	159	44	女性	B	B	A	A	C	A++	天之启示	听见天主之声。\n仿佛带着痛楚的平静之声\n让我去拯救民众。\n只会梦想明日的少女\n为了村庄，为了国家，\n为了主，选择了战斗之路。\n\n再见了，栋雷米的贞德。\n你梦想中的幸福，\n现在仍在栋雷米的天空中。	https://fgo.wiki/images/thumb/e/ee/%E5%A4%A9%E4%B9%8B%E5%90%AF%E7%A4%BA.png/300px-%E5%A4%A9%E4%B9%8B%E5%90%AF%E7%A4%BA.png
74	童谣	ナーサリー・ライム	Nursery Rhyme	137	30	女性	E	E	C	A	B	C++	仙境	正在做梦的你呀，你好。\n用那年幼的双瞳好好看看我。\n世界的一切都那么模糊，\n整个世界又是如此温柔，\n所有人都是好朋友。\n连天空中的浮云都是棉花糖！\n明亮的双眸一定照亮了你的世界吧。\n\n梦境过后的你呀，再见。\n用那老去的双瞳好好看看我。\n世界的一切都那么明确，\n整个世界又是如此残酷，\n所有人都是疲倦的路人。\n就连棉花糖都只是污浊的烟雾！\n光辉的世界应该会照亮你的眼睛吧。\n\n仙境只是童话之国。\n童谣的声响是梦之摇篮。\n根本不值一文。\n有效期限不足十年。\n迟早将要消逝的甜美记忆。\n但也仍为必要的甘甜痛楚。\n\n即使忘了书本的内容，\n千万不要忘了那夹在了梦中的书签。	https://fgo.wiki/images/thumb/5/5e/%E4%BB%99%E5%A2%83.png/300px-%E4%BB%99%E5%A2%83.png
238	Kingprotea	キングプロテア	Kingprotea	-1	-1	女性	EX	EX	A	D	B	E	这是，双手满满的	闪闪发亮的、\n能让我满足的、\n柔柔软软的、\n紧紧~~地包裹住我的、\n非常、非常幸福的东西。\n\n那就是『新娘』。\n好像在诞生之前就已经知道了。\n据说无论哪个女孩子，只要成为新娘，\n就会变得可爱而幸福。\n\n但是，大家都这样告诉我。\n“你是没法成为新娘的。”\n“毕竟不会有容得下你的世界。”\n“再说也没有合适你大小的婚纱啊。”\n这些意见我也同意。\n毕竟，不管是哪里\n都没有为我而制造的东西啊。\n\n“那，再等我■年”\n“虽然不知道要到什么时候，但我一定——”\n\n带着约定，回到了箱子里经历了漫长岁月。\n醒来后发现那仿佛是梦中场景的延续。\n\n“久等了。稍微多花了点时间呢。”\n\n尽管那个笑着这么说的人，\n已经消失在时间的彼方。\n但在最后，我一定，\n成为你最喜欢的、可爱的新娘了。	https://fgo.wiki/images/thumb/a/a9/%E8%BF%99%E6%98%AF%EF%BC%8C%E5%8F%8C%E6%89%8B%E6%BB%A1%E6%BB%A1%E7%9A%84.png/300px-%E8%BF%99%E6%98%AF%EF%BC%8C%E5%8F%8C%E6%89%8B%E6%BB%A1%E6%BB%A1%E7%9A%84.png
184	巴御前	巴御前	Tomoe Gozen	162	50	女性	C	D	C	B	A	B+	思念跨越三生	从木曾出发的旅行圣人抵达了琵琶湖岸——粟津原。\n此处有一座神社。\n真巧，有一位女性在参拜。\n她是一位美丽的女性，然而却嘤嘤哭泣着。\n\n女性乃是亡者，伴随着晚钟一起消失了。\n但当僧侣一开始诵经，\n却又出现了一个圣印。\n\n——全副武装凛然的女武者。\n\n她这么道来。\n不甘、悔恨、以及对身为自己主君的丈夫的思念。\n即便死后，她都未能舍弃这份执着。\n\n\n……在某出能剧中，\n那之后，女武者——也就是「我」\n似乎恳求僧侣能够回向自己的执着。\n\n啊？\n问我事实究竟如何吗？\n\n呵呵。请容我保密。\n但是，没错。\n我……记得非常清楚。记得当时的事。	https://fgo.wiki/images/thumb/3/34/%E6%80%9D%E5%BF%B5%E8%B7%A8%E8%B6%8A%E4%B8%89%E7%94%9F.png/300px-%E6%80%9D%E5%BF%B5%E8%B7%A8%E8%B6%8A%E4%B8%89%E7%94%9F.png
113	玄奘三藏	玄奘三蔵	Xuanzang Sanzang	160	48	女性	E	D	B	A+	EX	A	白龙	俊美的白马——\n曾为龙之身，却将成为\n德高望重高僧的坐骑视作自己的职责。\n\n据说其乃是西海龙王广润王之子。\n是具备司掌所有水之能力的龙王之血的继承者，\n身上隐藏着超越人类智慧的卓越力量。\n\n白马始终在旅途中陪伴着高僧。\n无论是遥远的过去，\n还是经过了漫长时间与空间的现在。\n\n六丁六甲。五方揭谛。四值功曹。护驾伽蓝。\n与尊贵的护佛之神同在——不惜失去自己的身形！	https://fgo.wiki/images/thumb/a/a6/%E7%99%BD%E9%BE%99.png/300px-%E7%99%BD%E9%BE%99.png
104	杰罗尼莫	ジェロニモ	Geronimo	174	76	男性	C	D	B	B+	C	B	这片大地的精灵	郊狼很喜欢恶作剧，\n有一天，他从太阳手中偷走了宝贵的烟草。\n\n太阳当然非常愤怒，\n无法忍耐的太阳开始追赶郊狼。\n郊狼虽然喜欢恶作剧，但很弱小，\n无奈只能由东往西逃亡。\n\n掉落的烟草生根发芽、开花结果，\n而太阳却放弃了追赶。\n\n郊狼不愿意将烟草分给人类，\n当人类说要送他新娘，他才总算愿意将烟草分给人类。\n不过嘛，虽说后来得知这位新娘是个少年，\n知道自己被欺骗了的郊狼哀叹不已，\n但多亏了这件事，我们才能吸到烟草啊！	https://fgo.wiki/images/thumb/a/a8/%E8%BF%99%E7%89%87%E5%A4%A7%E5%9C%B0%E7%9A%84%E7%B2%BE%E7%81%B5.png/300px-%E8%BF%99%E7%89%87%E5%A4%A7%E5%9C%B0%E7%9A%84%E7%B2%BE%E7%81%B5.png
175	尼禄·克劳狄乌斯(Caster)	ネロ・クラウディウス	Nero Claudius	150	42	女性	D	D	A	B	A	A	虹之海的黄金剧场	「剧场由海上而来——\n　这才是至高的彩虹，余的黄金剧场！」\n\n倘若罗马的道路是宇宙第一，\n那暴君的泳池也是地球第一。\n地中海清澈通透的天空与夏日的阳光\n为新剧场架设了一道美丽的弧线。\n\n所有一切都是为了一夏之主（御主）。\n歌声能将所有灾厄、所有障碍（物理上）弹飞，\n并带来无比辉煌的胜利。	https://fgo.wiki/images/thumb/1/1c/%E8%99%B9%E4%B9%8B%E6%B5%B7%E7%9A%84%E9%BB%84%E9%87%91%E5%89%A7%E5%9C%BA-v2.png/300px-%E8%99%B9%E4%B9%8B%E6%B5%B7%E7%9A%84%E9%BB%84%E9%87%91%E5%89%A7%E5%9C%BA-v2.png
1	玛修・基列莱特	マシュ・キリエライト	Mash Kyrielight	158	46	女性	C	A	D	B	C	-	?	？	？
\.


--
-- Data for Name: servent_and_alignment; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_and_alignment (alignment_id, servent_id) FROM stdin;
9	68
9	186
9	87
9	201
9	11
9	7
9	209
9	143
9	174
9	91
9	184
9	74
9	50
9	34
9	231
9	10
9	188
9	211
7	28
7	194
7	108
7	193
7	237
7	26
7	104
7	146
7	88
7	136
7	125
7	133
7	173
7	13
7	213
7	212
7	36
7	37
7	70
7	208
11	218
11	128
11	176
12	155
12	62
12	14
12	235
12	172
12	165
12	39
12	210
12	31
12	102
6	27
6	148
6	118
6	131
6	22
6	45
6	198
6	57
6	60
6	192
6	189
6	16
6	76
6	80
6	82
6	162
6	105
8	8
8	180
8	197
8	12
8	42
8	41
8	6
8	111
8	77
8	5
8	79
8	23
8	215
8	132
8	86
8	127
8	137
8	89
8	138
8	141
8	92
8	166
8	94
8	95
8	114
8	19
8	224
8	100
8	15
8	153
8	58
14	178
14	219
14	175
15	61
15	18
15	25
15	32
15	35
15	44
15	46
15	49
15	52
15	53
15	54
15	56
15	65
15	66
15	75
15	96
15	98
15	99
15	106
15	107
15	109
15	112
15	116
15	117
15	134
15	147
15	156
15	157
15	158
15	159
15	167
15	185
15	195
15	196
15	202
15	204
15	217
15	220
15	221
15	225
10	90
3	47
1	71
1	223
1	69
1	187
1	64
1	103
1	84
1	63
1	226
1	164
1	20
1	17
1	55
1	33
1	38
1	206
1	72
1	203
1	169
1	139
1	21
4	191
4	2
4	59
4	234
4	9
4	51
4	236
4	4
4	119
4	115
4	150
4	113
4	228
4	229
4	160
4	163
4	101
4	93
4	232
4	171
4	85
4	81
4	78
4	177
4	73
4	181
4	182
4	183
4	233
4	67
4	190
4	222
4	97
4	130
4	129
4	126
4	135
4	123
4	122
4	140
4	121
4	142
4	120
4	144
4	145
4	227
4	207
4	30
4	214
4	29
4	238
4	24
4	1
13	216
2	110
2	200
2	43
2	40
2	199
2	179
2	3
2	154
2	161
2	170
2	205
2	230
2	124
5	48
\.


--
-- Data for Name: servent_and_class; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_and_class (servent_id, class_id) FROM stdin;
67	1
44	2
2	4
3	4
69	5
178	6
227	4
23	7
106	9
141	3
216	5
219	6
173	10
147	9
68	4
132	7
222	11
146	3
155	6
24	7
52	6
13	5
158	9
22	3
172	7
28	7
95	5
6	4
27	7
75	2
76	4
7	4
9	4
10	4
12	5
14	5
15	5
19	3
18	3
25	7
26	7
30	7
31	1
32	1
33	1
34	1
36	1
37	1
39	2
40	2
41	2
42	2
43	2
45	2
21	3
46	2
47	6
48	6
49	6
50	6
53	6
54	6
55	6
56	6
57	6
61	1
63	5
64	3
65	7
66	7
79	1
80	1
81	2
82	6
85	3
87	3
88	3
89	6
90	4
91	4
92	2
93	10
94	7
100	1
101	4
102	3
103	1
108	7
115	7
117	2
120	1
121	4
122	5
123	4
124	2
125	5
127	1
128	3
130	1
131	5
134	3
135	10
137	5
139	2
206	7
144	7
237	1
148	3
185	2
150	1
163	8
153	4
154	2
159	2
162	6
191	8
164	8
166	12
170	2
174	6
180	5
181	3
182	7
183	3
186	3
187	4
188	2
189	2
190	8
192	1
193	3
196	3
198	11
199	2
200	5
201	1
202	6
204	9
234	4
205	7
207	5
208	1
209	8
210	2
211	7
213	4
214	3
221	4
223	4
224	8
228	3
230	2
231	7
232	3
233	10
235	2
236	1
17	3
20	3
38	1
98	6
157	5
11	5
140	3
112	2
225	1
58	6
217	3
116	6
86	2
73	7
119	3
129	5
160	4
179	7
138	4
70	3
133	2
215	1
109	2
111	1
71	3
107	9
114	6
5	4
229	10
194	1
167	8
8	4
145	1
16	5
35	1
60	5
72	4
77	5
84	5
96	9
105	5
110	2
118	7
126	4
161	6
176	4
220	12
97	6
4	4
226	6
156	5
29	7
62	1
99	7
195	11
142	5
212	5
165	4
218	2
51	6
136	1
143	3
177	2
78	3
197	5
171	6
203	1
59	10
74	1
238	8
184	5
113	1
169	1
104	1
175	1
1	13
\.


--
-- Data for Name: servent_and_illustrator; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_and_illustrator (servent_id, illustrator_id) FROM stdin;
2	60
3	60
4	60
5	40
6	62
7	30
8	11
9	32
10	59
12	60
13	40
14	25
15	1
16	4
17	60
18	40
19	32
20	44
21	31
22	15
23	60
24	45
25	5
26	2
27	29
28	6
29	8
30	29
31	21
32	3
33	40
34	62
35	42
36	24
37	60
38	17
39	17
40	37
41	1
42	64
43	30
44	31
45	15
46	22
47	3
48	15
49	40
50	62
51	58
52	50
53	30
54	4
55	24
56	4
57	2
58	40
59	60
60	12
61	40
62	40
63	8
64	4
65	40
66	12
67	15
68	60
69	23
70	15
71	17
72	5
73	60
74	40
75	62
76	62
77	20
78	13
79	44
80	12
81	44
82	49
84	23
85	23
86	6
87	59
88	41
89	42
90	40
91	60
92	60
93	62
94	62
95	38
96	53
98	30
99	63
100	18
101	25
102	40
103	23
104	29
105	31
106	60
107	21
108	60
109	1
110	37
111	31
112	58
113	49
114	58
115	58
116	55
117	46
118	44
119	13
120	31
121	30
122	19
123	40
124	44
125	42
126	38
127	42
128	40
129	60
130	8
131	12
132	62
133	15
134	4
135	29
136	9
137	9
138	40
139	53
140	40
141	60
142	19
143	19
144	56
145	8
146	4
147	42
148	2
150	35
153	15
154	27
155	6
156	58
157	46
158	42
159	31
160	44
161	47
162	23
163	40
164	40
165	36
166	40
167	40
169	20
170	51
171	32
172	48
173	54
174	26
175	40
176	49
177	31
178	23
179	60
180	18
181	58
182	19
183	2
184	33
185	9
186	18
187	52
188	57
189	59
190	40
191	40
192	55
193	2
194	14
195	65
196	19
197	11
198	65
199	62
200	60
201	34
202	62
203	62
204	24
205	7
206	62
207	62
208	62
209	60
210	16
211	23
212	27
213	41
214	60
215	15
216	60
217	55
218	29
219	60
220	40
221	63
222	6
223	3
224	4
225	58
226	7
227	10
228	30
229	43
230	39
231	61
232	28
233	56
234	51
235	40
236	9
237	58
238	40
1	60
11	60
97	64
\.


--
-- Data for Name: servent_and_prototype; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_and_prototype (servent_id, prototype_id) FROM stdin;
231	1
19	2
186	3
57	4
36	5
184	6
185	7
107	8
81	9
110	10
40	11
180	12
100	12
143	13
197	14
8	14
15	15
193	16
187	17
171	18
25	19
161	20
136	21
173	22
159	23
34	24
91	25
92	25
209	26
68	26
132	27
76	27
213	28
221	29
99	29
204	30
194	31
214	32
227	33
144	34
115	35
51	35
212	36
65	37
205	38
108	39
28	39
198	40
131	41
66	41
165	42
16	43
42	44
191	45
190	45
148	46
64	47
140	48
52	48
6	49
145	50
95	50
12	50
200	51
104	52
188	53
195	54
124	55
199	56
89	57
170	58
9	59
32	59
35	60
175	61
90	61
5	61
103	62
169	63
77	64
74	65
47	66
220	67
238	67
164	67
163	67
166	67
162	68
10	69
44	70
183	71
72	72
225	73
112	73
158	74
201	75
128	76
62	76
58	76
26	77
49	78
233	79
122	80
50	81
125	82
139	83
127	84
84	85
207	86
75	87
218	88
27	88
21	89
1	90
232	91
123	92
79	93
226	94
236	95
181	96
114	96
24	97
130	98
29	98
97	99
230	100
224	101
174	102
196	103
211	104
202	105
14	105
93	106
234	107
156	108
63	109
7	110
22	111
85	112
217	113
116	113
45	114
33	115
189	116
192	117
222	118
155	118
86	118
160	118
179	118
129	118
119	118
78	118
73	118
4	118
3	118
2	118
237	119
37	120
11	121
109	121
157	121
41	122
61	123
46	123
138	123
18	123
172	124
167	125
150	126
154	127
53	128
210	129
178	130
69	130
111	131
117	132
153	133
219	134
216	134
141	134
106	134
59	134
96	135
13	136
147	137
98	138
38	138
20	138
17	138
54	139
206	140
177	141
120	141
87	142
118	143
101	144
228	145
94	146
137	147
176	148
82	148
113	149
39	150
88	151
146	152
23	152
80	153
67	154
31	154
105	155
235	156
102	156
203	157
126	158
208	159
134	160
56	160
182	161
142	161
60	162
223	163
71	163
55	164
121	165
48	165
135	166
30	166
229	167
215	168
133	168
70	168
43	169
\.


--
-- Data for Name: servent_and_voice_actor; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_and_voice_actor (servent_id, voice_actor_id) FROM stdin;
2	84
3	84
4	84
5	92
6	3
7	17
8	12
9	56
10	86
12	76
13	58
14	4
15	87
16	56
17	48
18	11
19	39
20	34
21	85
22	17
23	87
24	57
25	57
26	86
27	4
28	27
29	91
30	4
31	47
32	56
33	49
34	39
35	49
36	76
37	6
38	48
39	85
40	39
41	87
42	47
43	40
44	17
45	91
46	47
47	57
48	17
49	60
50	56
51	62
52	17
53	58
54	56
55	60
56	91
57	60
58	86
59	27
61	11
62	86
63	32
64	60
65	80
67	37
68	7
69	70
70	12
71	14
72	79
73	84
74	37
75	92
76	26
77	39
78	84
79	85
80	39
81	40
82	37
84	43
85	62
86	84
87	85
88	12
89	34
90	92
91	27
92	27
93	44
94	11
95	54
96	43
98	48
99	82
100	69
101	26
102	60
103	41
104	98
105	80
106	27
107	41
108	10
109	1
110	33
111	71
112	7
113	19
114	8
115	62
116	5
117	83
118	49
119	84
120	67
121	17
122	44
123	42
124	46
125	63
126	40
127	27
128	86
129	84
130	91
132	26
133	12
134	91
135	4
137	86
138	11
139	70
140	98
141	27
142	99
143	75
144	54
145	76
146	87
147	87
148	89
150	74
153	82
154	96
155	84
156	61
157	3
158	73
159	25
160	74
161	66
162	16
163	4
164	22
165	5
166	28
167	101
169	95
170	93
171	51
172	50
173	42
174	2
175	92
176	37
177	67
178	70
179	84
180	69
181	8
182	99
183	28
184	69
185	82
186	6
187	77
188	21
189	24
190	11
191	11
192	45
193	22
194	15
195	20
196	99
197	12
198	81
199	68
200	12
201	52
202	4
203	55
204	35
205	79
206	53
207	29
208	83
209	7
210	72
211	88
212	78
213	18
215	12
216	27
217	5
218	4
219	27
220	28
221	82
222	84
223	14
224	64
225	7
226	90
227	97
228	28
229	23
230	38
231	14
232	94
233	54
234	59
235	60
236	36
237	30
238	13
\.


--
-- Data for Name: servent_bond; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_bond (servent_id, bond_id, bond_text) FROM stdin;
2	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n行为举止都以男性为标准，\n因此很不擅长应对异性向自己表达的好感。
3	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·恶　　性别：女性\n冷酷无情的暴君。龙的胃口是很大的。
4	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n虽然王者修行很艰苦，但只要能照顾马就是一种幸福。
5	1	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·善　　性别：女性\n嗯，全都交给余来办吧！
6	1	身高／体重：190cm·80kg\n出处：尼伯龙根之歌\n地域：德国\n属性：混沌·善　　性别：男性\n因诅咒，不得不露出后背。
7	1	身高／体重：168cm·154kg\n出处：史实\n地域：欧洲\n属性：中立·中庸　　性别：男性\n同一句话喜欢说三遍。
8	1	身高／体重：160cm·48kg\n出处：史实\n地域：中亚～欧洲\n属性：混沌·善　　性别：女性\n自出生以来就热爱着军神玛尔斯（阿瑞斯）。
9	1	法国贵族、军人。\n百年战争时期与圣女贞德一起夺回了奥尔良，\n被人们称颂为英雄。\n清廉勇敢，被赋予了军人最高荣誉的元帅称号。
10	1	身高／体重：157cm·45kg\n出处：史实\n地域：法国\n属性：中立·中庸　　性别：？\n体重非本人申告，而是从外表推测的数据。
12	1	身高／体重：182cm·68kg\n出处：苏美尔文明、吉尔伽美什史诗\n地域：巴比伦尼亚、乌鲁克\n属性：混沌·善　　性别：男性
13	1	身高／体重：175cm·65kg\n出处：史实\n地域：英国、雪伍德\n属性：中立·善　　性别：男性\n「我可算不上是英灵那种有身份的存在啊……」
14	1	身高／体重：166cm·57kg\n出处：希腊神话\n地域：希腊\n属性：中立·恶　　性别：女性\n喜欢苹果和肉。
15	1	身高／体重：134cm·30kg\n出处：希腊神话\n地域：欧洲\n属性：混沌·善　　性别：女性\n体重数据来源于美杜莎的申告。
16	1	身高／体重：185cm·75kg\n出处：波斯神话\n地域：西亚\n属性：混沌·中庸　　性别：男性\n健硕技能可强化对毒的耐性，并同时提升耐久力。
17	1	身高／体重：185cm·72kg\n出处：凯尔特神话、阿尔斯特神话\n地域：爱尔兰\n属性：秩序·中庸　　性别：男性\n把卢恩魔术（因为太麻烦了）给封印了。
18	1	身高／体重：154cm·44kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　性别：女性\n※全长不包括尾巴。
19	1	身高／体重：199cm·88kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：混沌·善　　性别：男性\n小腿并非弱点，只是被踹会很痛而已。
20	1	身高／体重：184cm·71kg\n出处：凯尔特神话\n地域：欧洲\n属性：秩序·中庸　　性别：男性\n与「那位」一样能自由操控卢恩魔术。
21	1	身高／体重：188cm·110kg\n出处：史实（温泉关战役）\n地域：斯巴达\n属性：秩序·中庸　　性别：男性\nThis is Sparta！
22	1	身高／体重：190cm·140kg\n出处：史实、罗马神话\n地域：欧洲\n属性：混沌·中庸　　性别：男性（罗马）\n罗穆路斯的第一人称总是「我（罗马）」。
23	1	身高／体重：172cm·57kg\n出处：希腊神话\n地域：希腊、无形之岛\n属性：混沌·善　　性别：女性\n身高是召唤时的数据。\n神话时代的数据不明。
24	1	身高／体重：180cm·95kg\n出处：『黄金传说』『圣乔治传说』\n地域：欧洲\n属性：秩序·善　　性别：男性\n在防守方面极具实力的英灵。
25	1	身高／体重：210cm·114kg\n出处：史实\n地域：加勒比海\n属性：混沌·恶　　性别：男性\n乘坐的船的名字是『安妮女王之复仇号』。
26	1	身高／体重：174cm·62kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：女性\n在现界之时，似乎已经是拥有两个女儿后的模样了？
27	1	身高／体重：168cm·55kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：混沌·中庸　　性别：女性\n骑乘的战马，名为太夫黑。
28	1	身高／体重：151cm·40kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：男性\n爱马·布西发拉斯也毫无疑问是一位的英灵。
29	1	身高／体重：160cm·48kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　性别：女性\n喜爱洗澡。和母亲玛丽亚·特蕾西亚一样爱美。
30	1	身高／体重：161cm·49kg\n出处：史实、新约圣经\n地域：欧洲\n属性：秩序·善　　性别：女性\n可以骑乘龙种，破格的Rider。
31	1	身高／体重：163cm·51kg\n出处：希腊神话\n地域：希腊、科林斯\n属性：中立·恶　　性别：女性\n根据经验，长得好看的男人不可信。
32	1	身高／体重：196cm·70kg\n出处：史实\n地域：法国\n属性：混沌·恶　　性别：男性\n比任何人都渴求神明的神圣怪物。
33	1	身高／体重：146cm·39kg\n出处：史实\n地域：丹麦\n属性：秩序·中庸　　性别：男性\n「我对流行可是很敏锐的哦？\n　因为那是可以轻松搞定稿子的捷径啦！」
34	1	身高／体重：180cm·75kg\n出处：史实\n地域：英格兰\n属性：中立·中庸　　性别：男性\n朴素的已婚人士。
35	1	身高／体重：188cm·78kg\n出处：『浮士德』\n地域：德国\n属性：混沌·恶　　性别：男性（？）\n不是人类，但也不是恶魔。
36	1	身高／体重：180cm·65kg\n出处：史实\n地域：欧洲\n属性：中立·善　　性别：男性\n内心偷偷为自己与所爱的人有着相同属性而感到喜悦。
37	1	身高／体重：186cm·68kg\n出处：『三国演义』\n地域：中国\n属性：中立·善　　性别：男性\n合理主义的怪物。
38	1	身高／体重：185cm·70kg\n出处：凯尔特神话\n地域：欧洲\n属性：秩序·中庸　　性别：男性\n作为Caster时，身上不佩戴金属类的装备。 
39	1	身高／体重：176cm·63kg\n出处：史实\n地域：日本\n属性：中立·恶　　性别：男性\n「无论是谁，只要曾斩杀人，即是恶」
40	1	身高／体重：215cm·62kg\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　性别：男性\n身高包括身体改造的部分。
41	1	身高／体重：134cm·30kg？\n出处：希腊神话\n地域：欧洲\n属性：混沌·善　　性别：女性\n体重据说「和我（尤瑞艾莉）一样哦」。
42	1	身高／体重：159cm·48kg\n出处：史实\n地域：中国\n属性：混沌·善　　性别：女性\n在史实的记述中是名男性。
43	1	身高／体重：178cm·68kg\n出处：史实\n地域：法国\n属性：秩序·恶　　性别：男性\n副业是医生。从技能中也可略窥一斑。
44	1	身高／体重：185cm·80kg\n出处：『剧院魅影』\n地域：欧洲\n属性：混沌·恶　　性别：男性\n用骷髅面具隐藏自己那被诅咒的异形般的脸庞。
45	1	身高／体重：165cm·49kg\n出处：史实\n地域：法国～德国\n属性：混沌·中庸　　性别：女性\n真正的名字是玛格丽莎·赫特雷达·泽莱。
46	1	身高／体重：168cm·49kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　性别：女性\n各个部分都成长得极为丰满。
47	1	身高／体重：253cm·311kg\n出处：希腊神话\n地域：希腊\n属性：混沌·狂　　性别：男性\n由于被狂化，故不清楚他的兴趣爱好。
48	1	身高／体重：191cm·81kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·狂　　性别：男性\n正因为曾是最优秀的骑士，其罪行也就显得更重。
49	1	身高／体重：225cm·153kg\n出处：史实\n地域：中国\n属性：混沌·恶　　性别：男性\n由于被狂化，故不清楚他的兴趣爱好。
50	1	身高／体重：221cm·165kg\n出处：史实\n地域：罗马\n属性：中立·中庸　　性别：男性\n全身都散发着非常人能及的气息。
51	1	身高／体重：190cm·88kg\n出处：史实\n地域：日本\n属性：秩序·善　　性别：男性\n喜欢的节假日是黄金周。
52	1	身高／体重：191cm·??kg\n出处：『德古拉』\n地域：罗马尼亚\n属性：混沌·恶　　性别：男性\n身为Lancer时的气质荡然无存。
53	1	身高／体重：298cm·150kg\n出处：希腊神话\n地域：希腊\n属性：混沌·恶　　性别：男性\n天生的魔兽，反英灵。
54	1	身高／体重：185cm·80kg\n出处：史实\n地域：欧洲\n属性：混沌·恶　　性别：男性\n他的宝具对与女神阿耳忒弥斯有关系的人没有效果。
55	1	身高／体重：345cm·280kg\n出处：史实\n地域：西亚\n属性：秩序·中庸　　性别：男性\n不仅是战斗能力，财力也是他强大力量的一部分。
56	1	身高／体重：158cm·41kg\n出处：『清姬传说』\n地域：日本\n属性：混沌·恶　　性别：女性\n为爱而生的女性（自称）。
57	1	身高／体重：195cm·115kg\n出处：『公平的羊皮纸』\n地域：挪威～英格兰\n属性：混沌·中庸　　性别：男性\n妻子似乎是魔女。
58	1	身高／体重：160cm·52kg\n出处：Fate／EXTRA CCC\n地域：SE.RA.PH\n属性：混沌·善　　性别：女性\n由于比玉藻前肌肉更发达，所以稍微有些重。
59	1	身高／体重：159cm·44kg\n出处：史实\n地域：法国\n属性：秩序·善　　性别：女性\n为数极少的特殊职阶——Ruler中的一人。
60	1	身高／体重：165cm·44kg\n出处：希腊神话\n地域：希腊\n属性：混沌·中庸　　性别：男性·女性\n身高体重是阿耳忒弥斯的数据。
61	1	身高／体重：174cm·44kg\n出处：史实\n地域：匈牙利\n属性：混沌·恶　　　性别：女性\n※身高包括帽子。
62	1	身高／体重：160cm·49kg\n出处：日本神话。三大化生之一\n地域：日本\n属性：中立·恶　　性别：女性\n「哈？　你对巫女兼狐狸有意见吗？」
63	1	身高／体重：171cm·62kg\n出处：旧约圣经\n地域：以色列\n属性：秩序·中庸　　性别：男性\n以米开朗基罗的「大卫像」最为有名。
64	1	身高／体重：180cm·82kg\n出处：特洛伊战争\n地域：希腊\n属性：秩序·中庸　　性别：男性\n各方面都极为出类拔萃的优秀将军。
65	1	身高／体重：162cm·55kg\n出处：史实\n地域：英国\n属性：混沌·恶　　　性别：女性\n比男人更男人的女海盗。
66	1	身高／体重：171cm·54kg\n出处：史实\n地域：加勒比\n属性：混沌·恶　　　性别：女性\n安妮·伯妮的资料。
67	1	身高／体重：149cm·41kg\n出处：希腊神话\n地域：希腊\n属性：秩序·善　　　性别：女性\n美狄亚小姐14岁。
68	1	身高／体重：158cm·45kg\n出处：史实\n地域：日本\n属性：中立·中庸　　性别：女性\n「嗯嗯，我不会放光炮」
69	1	身高／体重：152cm·43kg\n出处：史实\n地域：日本\n属性：秩序·中庸　　性别：女性\n「那也无可奈何！」
70	1	身高／体重：168cm·55kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：中立·善　　　性别：女性\n枪之一击若至化境，弑神亦只在翻掌之间。
71	1	身高／体重：184cm·85kg\n出处：凯尔特神话、费奥纳骑士团\n地域：爱尔兰\n属性：秩序·中庸　　　性别：男性\n一生为爱、忠义与荣誉而苦恼的骑士。
72	1	身高／体重：184cm·90kg\n出处：凯尔特神话、赤枝骑士团\n地域：爱尔兰\n属性：秩序·中庸　　性别：男性\n天地天空大回转！
73	1	身高／体重：154cm·52kg\n出处：大约一周的圣诞Alter小姐\n地域：芬兰（自称）\n属性：秩序·善　　　性别：女性\n由于成为了圣诞老人，\n人格出现了不少变化。
74	1	身高／体重：137cm·30kg\n出处：英国童话\n地域：欧洲\n属性：根据御主而变　　性别：女性\n身高体重是人类形态的数据。
75	1	身高／体重：134cm·33kg\n出处：史实\n地域：伦敦\n属性：混沌·恶　　　性别：女性\n作为Assassin被召唤时的杰克。
76	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：混沌·中庸　　性别：女性\n体格和阿尔托莉雅完全一致。
77	1	身高／体重：190cm·80kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：男性\n马克·吐温称其为雷电博士。
78	1	身高／体重：171cm·57kg？\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：女性\n关于其身为Lancer时的体重与体型的问题，诸说纷纭。\n另外，作为Lancer时，她一定会骑马。\nAlter化时的坐骑为「拉姆瑞」。
79	1	身高／体重：183cm·65kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：男性\n操控五元素的强大魔术师（Average One）。
80	1	身高／体重：250cm·500kg以上（两者都包括铠甲）\n出处：史实\n地域：欧洲\n属性：混沌·中立　　性别：男性\n性格严谨，但对天真无邪或是聪明的少女没有抵抗力。
81	1	身高／体重：175cm·60kg\n出处：『化身博士』\n地域：欧洲\n属性：秩序·善（杰基尔）／混沌·恶（海德）\n随着人格的切换，肉体也会发生变化的双重人格持有者。
82	1	身高／体重：172cm·48kg\n出处：创作\n地域：欧洲全域\n属性：混沌·中庸　　　性别：女性\n若想节约用电的话就直接把PC的插头给拔了。
84	1	身高／体重：177cm·72kg\n出处：摩诃婆罗多\n地域：印度\n属性：秩序·中庸　　性别：男性\n爱用的弓是『甘狄拔』。是火神阿耆尼赠与他的神弓。
85	1	身高／体重：178cm·65kg\n出处：摩诃婆罗多\n地域：印度\n属性：秩序·善　　性别：男性\n也可作为Archer、Rider存在。
86	1	身高／体重：154cm·42kg\n出处：2013年愚人节\n地域：从者界\n属性：混沌·善　　　性别：女性\n用神秘魔剑『无铭胜利剑』把敌人都杀掉吧。
87	1	身高／体重：181cm·63kg\n出处：凯尔特神话\n地域：欧洲\n属性：中立·中庸　　　性别：男性\n身为Lancer职阶时，将枪与治愈的力量作为自己的宝具。
88	1	身高／体重：172cm·52kg\n出处：北欧神话\n地域：欧洲\n属性：中立·善　　　性别：女性\n在『沃尔松格传』，老埃达的『古德伦之诗』，\n以及『齐格鲁德短歌』等作品中，\n被描述为阿提拉王（阿特利王）的妹妹。
89	1	身高／体重：186cm·81kg\n出处：贝奥武夫\n地域：北欧\n属性：混沌·善　　　性别：男性\n因狂化所带来的正负面效果都几乎已消失殆尽，\n所以可以通过对话与之进行沟通。
90	1	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·新娘　　性别：女性\n唔嗯，这可是余珍藏的新娘服饰哦！
91	1	身高／体重：160cm·47kg\n出处：空之境界\n属性：中立·中庸　　性别：女性\n遗憾的是，猫属性略有减少。
92	1	身高／体重：160cm·47kg\n出处：空之境界\n属性：混沌·善　　性别：女性\n身轻如猫。或者不如说她身心都是猫。
93	1	身高／体重：169cm·59kg\n出处：史实\n地域：日本\n属性：秩序·善　　性别：男性\n并未被正式认定为圣人。
94	1	身高／体重：164cm·56kg\n出处：查理曼传说\n地域：法国\n属性：混沌·善　　　性别：？？？\n根据本人的要求，性别是个秘密。
95	1	身高／体重：140cm·30kg\n出处：史实、吉尔伽美什史诗\n地域：西亚\n属性：混沌·善　　　性别：男性\n喜欢的女性是「犹如盛开于野外的鲜花」类。
96	1	身高／体重：185cm·75kg\n出处：大仲马著『基督山伯爵』？\n地域：法国\n属性：混沌·恶　　　性别：男性\n口头禅是「——等待，并心怀希望吧」。
98	1	身高／体重：185cm·72kg\n出处：凯尔特神话\n地域：欧洲\n属性：混沌·恶　　　性别：男性\n卢恩魔术仅是用来强化自身肉体。
99	1	身高／体重：154cm·41kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：混沌·恶　　　性别：女性\n拥有与生俱来如同女神般完美的肉体。
100	1	身高／体重：145cm·38kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：女性\n喜欢的国家是印度。\n讨厌的团体是SPR（英国心灵现象研究会）。
101	1	身高／体重：168cm·65kg\n出处：罗摩衍那\n地域：印度\n属性：秩序·善　　　性别：男性\n第一人称为「余」。
102	1	身高／体重：166cm·60kg\n出处：史实\n地域：中国\n属性：中立·恶　　　性别：男性\n虽然作为Lancer被召唤，但基本性能并没有太大变化。
103	1	身高／体重：182cm·88kg\n出处：史实\n地域：北美\n属性：秩序·中庸　　性别：男性\n因为和生前肉体的组成完全不同，\n所以身高体重都和历史记录不同。
104	1	身高／体重：174cm·76kg\n出处：史实\n地域：北美\n属性：中立·善　　　性别：男性\n虽然身为魔术师，但是和魔术协会完全没有关系，\n或者说更接近于魔术使。
105	1	身高／体重：158cm·49kg\n出处：史实\n地域：北美\n属性：混沌·中庸　　性别：男性\n一般来说，很大可能性在圣杯战争中，\n作为Extra Class「Gunner」而被召唤。
106	1	身高／体重:159cm·44kg\n出处：史实\n地域：法国\n属性：混沌·恶　　　性别：女性\n数量极少的特殊职阶，Avenger中的一人。
107	1	身高／体重：167cm·58kg\n出处：琐罗亚斯德教\n地域：古波斯\n属性：混沌·恶　　性别：男性\n「请各位劳驾击掌打个拍子。\n对任何人而言都很好用的坏人登场了，\n所以请热烈欢迎哦―――嘻嘻嘻嘻！」
108	1	20岁继承了马其顿王位之后，镇压了\n希腊诸都市国家，便开始向西亚发动侵略。\n在埃及获得了法老的地位，击败了\n以强悍著称的波斯王国，建立起疆域远至印度的大帝国。
109	1	身高／体重:175cm·63kg\n出处：─\n地域：远东\n属性：混沌·恶　　性别：男性\n性格与青年期的性格较为接近。
110	1	身高／体重：根据个体各不相同\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　　性别：根据个体各不相同\n为群亦为个，为个亦为群的影子。
111	1	身高／体重:158cm·52kg\n出处：—\n地域：—\n属性：混沌·善　　性别：女性\n临时的形态，临时的从者。
112	1	身高／体重：145cm·46kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　　性别：女性\n基于轶事与留下的痕迹，被分类为「反英雄」。
113	1	身高／体重：160cm·48kg\n出处：「西游记」等\n地域：中国\n属性：秩序·善　　　性别：女性\n将徒弟之一的猪八戒称呼为「悟能」。\n不用特地说也应该知道，\n这是因为他不再吃五荤三厌了。
114	1	身高／体重：175cm·？？kg\n出处：史实、依据『御伽草子』『丑御前之地』\n地域：日本\n属性：混沌·善　　　性别：女性\n身为冷酷的武人，全身却充斥着满满包容力的美女。\n可谓母性爱的化身。\n「啊啊……妈妈我到底哪里错了……？」
115	1	身高／体重：190cm·88kg\n出处：史实、古净琉璃灯\n地域：日本\n属性：秩序·善　　　性别：男性\n由于暧昧地解释了「Rider」这个词，\n所以装备了原创造型的骑士腰带。
116	1	身高／体重：147cm·50kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　　性别：女性\n由于其传说以及痕迹，被划分为「反英雄」类。
117	1	身高／体重：158cm·49kg\n出处：史实\n地域：日本\n属性：混沌·恶　　　性别：男性\n与「北条五代记」的记载存在差异。
118	1	身高／体重：179cm·65kg\n出处：史实\n地域：埃及\n属性：混沌·中庸　　　性别：男性\n推测生前的身高最高时应该超过180cm。\n但是他自称，爱妻奈菲尔塔利为他生下第二位王子的时期，\n才是他的全盛顶点期。
119	1	身高／体重：171cm·57kg？\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：女性\n关于其身为Lancer时的体重与体型的问题，诸说纷纭。\n另外，作为Lancer时，她一定会骑马。\n这次的坐骑为『东·斯塔利恩』。
120	1	身高／体重：162cm·51kg\n出处：史实\n地域：埃及\n属性：秩序·善　　　性别：女性\n她所制作的道具上，必定刻有神圣文字。
121	1	身高／体重：191cm·81kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　　性别：男性\n兰斯洛特原本的职阶。
122	1	身高／体重：186cm·78kg\n出处：亚瑟王传说\n地域：不列颠\n属性：秩序·善　　　性别：男性\n无论做什么都显得如此悲伤而优美。
123	1	身高／体重：180cm·78kg\n出处：亚瑟王传说\n地域：不列颠\n属性：秩序·善　　　性别：男性\n无论是什么样的工作都会认真对待。\n就算有时候碰到的是讨债这样的工作。
124	1	身高／体重：161cm·42kg\n出处：中东、山中老人\n地域：中东\n属性：秩序·恶　　　性别：女性\n潜入行动时的『面孔』基本依靠变化技能来制作，\n而第三阶段时的『面孔』为其本貌。\n因其暗杀手段的性质关系，她会使用本貌。
125	1	身高／体重：183cm·98kg\n出处：俵藤太物语\n地域：日本\n属性：中立·善　　　性别：男性\n虽身为从者，但却对食物有着相当的讲究。
126	1	身高／体重：187cm·88kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　　性别：男性\n「银之臂」占据了10kg以上的体重。
127	1	身高／体重：160cm·40kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　　性别：女性（身体）\n现存的大卫像是以青年期的他为模特制作的。
128	1	身高／体重：160cm·49kg\n出处：日本神话。三大化生之一。\n地域：日本\n属性：中立·夏　　　性别：女性\n「唔？　美女穿泳装有什么问题吗？」
129	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·善　　性别：女性\n当然是Archer职阶啦，有什么问题吗？
130	1	身高／体重：160cm·48kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　　性别：女性\n在战斗时使用的是沙滩排球。不如说玛丽本人就是在海滩边玩球，有可能压根没意识到自己在战斗。
131	1	身高／体重：171cm·54kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　　性别：女性\n安妮·伯妮的资料。\n这次较为重视安妮的属性，所以作为Archer被召唤。
132	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：混沌·善　　　性别：女性\n由于特别兴奋，所以表现得比平时更为老好人。
133	1	身高／体重：168cm·55kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：中立·善　　　性别：女性\n手腕上戴着的符文手镯是对海、水进行了特化的产物。
134	1	身高／体重：158cm·41kg\n出处：『清姬传说』\n地域：日本\n属性：混沌·恶　　　性别：女性\n夏日为爱而生的女人（也就是和平时没什么两样）。
135	1	身高／体重：161cm·49kg\n出处：史实、新约圣经\n地域：欧洲\n属性：秩序·善　　　性别：女性\n隐约可窥获得圣杖之前「那时候」的气息。和以Rider现界的时候比起来，频率略高。
136	1	身高／体重：133cm·29kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：中立·善　　　性别：女性\n其实已经习惯于迷失在其他世界中了。很正常很正常。
137	1	身高／体重：133cm·29kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：混沌·善　　　性别：女性\n「那就麻烦你……供给魔力了哦？」
138	1	身高／体重：154cm·48kg\n出处：万圣节回归！\n地域：监狱城恰赫季斯\n属性：混沌·善　　性别：女性\n※体重包括铠甲的重量。
139	1	身高／体重：171cm·58kg\n出处：史实\n地域：埃及\n属性：秩序·中庸　　性别：女性\n严格来说，『最后的法老』应该是最后数年间\n与克娄巴特拉一起作为共同统治者被选中的\n她的亲生儿子恺撒里昂。\n因为在克娄巴特拉死后，恺撒里昂至少还多活了几天。\n然而殒命之际，恺撒里昂年仅9岁。\n从统治国家，与命运抗争来看，\n实际上『最后的法老』应该是克娄巴特拉吧。
140	1	身高／体重：191cm·90kg\n出处：史实\n地域：罗马尼亚\n属性：秩序·善　　性别：男性\n容貌与言行犹如狂战士，但其眼中尚残留着最后的理性。残留着相信真正的爱，并想要保护其碎片的骑士的感情。
141	1	身高／体重：141cm·39kg\n出处：史实（史实……？）\n地域：圣诞岛（自称）\n属性：混沌·善　　　性别：女性\n和变成大人的我是不一样的！　哎嘿！
142	1	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：秩序·善　　　性别：女性\n「原本的我应该更有魅力才对，\n　但这躯体也不赖呢。」
143	1	身高／体重：可变\n出处：吉尔伽美什史诗\n地域：美索不达米亚\n属性：中立·中庸　　　性别：－\n「若让我战斗，我就会战斗哦。\n　因为我其实并不讨厌战斗。」
144	1	身高／体重：181cm·64kg\n出处：阿兹特克神话\n地域：中南美\n属性：秩序·善　　性别：女性\n通过将身为从者的形态赐予了分灵之一\n从而现界。
145	1	身高／体重：182cm·68kg\n出处：苏美尔文明、吉尔伽美什史诗\n地域：巴比伦尼亚、乌鲁克\n属性：秩序·善　　　性别：男性\n不是作为暴君，而是作为从冥界归来，\n身为王得以成长的状态现界的。
146	1	身高／体重：134cm·30kg？\n出处：希腊神话\n地域：欧洲\n属性：中立·善　　　性别：女性\n「和姐姐们一样」体重是自己声称的。
147	1	身高／体重：172+？？cm·57+？？kg\n出处：希腊神话\n地域：欧洲\n属性：混沌·恶　　性别：女性\n若要包含人类以外的怪物部分，\n就会具备相当的身高以及体重数值。
148	1	身高／体重：165cm·？？kg\n出处：中南美各时代的神话\n地域：中南美\n属性：混沌·中庸　　性别：女性\n属性不是附体对象人类的，而是豹人本身的。\n性别是附体对象人类的。
150	1	身高／体重：178cm·68kg\n出处：亚瑟王传说、其他\n地域：西欧诸国\n属性：秩序·善　　　性别：男性\n「问我为什么不用咒语？\n　但比起念经，还是殴打比较快吧？」
153	1	身高／体重：167cm·56kg\n出处：史实\n地域：日本\n属性：混沌·善　　　性别：女性\n「正式的名字？　新免武藏守藤原玄信。\n　但是，还是直接叫武藏比较方便嘛。」
154	1	身高／体重：220cm·？？？kg\n出处：中东\n地域：中东\n属性：秩序·恶　　　性别：？？？\n可以称之为王哈桑……
155	1	没落骑士潘德拉贡卿\n身高／体重：154cm·42kg\n出处：2018年情人节活动\n地域：从者界\n属性：中立·恶　　　性别：女性\n引以为傲的剑『邪圣剑死之胜利剑』\n是通过可疑的邮购买来的。
156	1	?
157	1	身高／体重：187cm·78kg\n出处：Fate/Grand Order\n地域：日本\n属性：混沌·恶　　　性别：男性\n「你问正义的伙伴为何要为恶？\n　那还用问吗。因为我的内心早就腐朽了啊。」
158	1	绝不可能相互理解。\n身在此处的，乃是播撒憎恶的野兽是也。
159	1	星在天，无赖在地。\n本应只存于幻想中的男人，与拳法一同被创成。\n猜猜看，我究竟是谁！？
160	1	身高／体重：181cm·68kg\n出处：亚瑟王传说\n地域：欧洲\n属性：秩序·善　　　性别：男\n擅长吃，也很擅长制作（料理）。
161	1	身高／体重：187cm·75kg\n出处：史实\n地域：日本\n属性：秩序·恶　　　性别：男性\n「――这里，就是新选组。」
162	1	身高／体重：138cm·34kg\n出处：史实\n地域：日本\n属性：混沌·中庸　　　性别：女性\n不知为何不是以全盛期，而是以幼小时候的模样现界。\n「反正茶茶的魅力Everything都没有改变！」
163	1	身高／体重：190cm·33kg\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：秩序·善　性别：女性\n※身高是包括了高跟鞋的部分。\n体重是去掉了高跟鞋的部分。\n从这些数据的上报就可以看出Meltryllis的性格。\n\n拥有液体的性质，彻底成长后甚至可能成为海洋，\n是完全流体。……然而不知为何，\n却为古典芭蕾所倾倒，拘泥于拥有人类的手脚。
164	1	身高／体重：156cm·1t\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：秩序·中庸　性别：女性\n「1……1吨只不过类似通讯时会造成的负荷而已，\n　并不是实际的体重啦！」
165	1	身高／体重：164cm·51kg\n出处：铃鹿草子、田村三代记，等等\n地域：日本\n属性：中立·恶　性别：女性\n※当然，身高不包括狐狸耳朵。
166	1	身高／体重：156cm·46kg\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·善　性别：女性\n「其实Ruler会比较好，但最后还是放弃了。\n　如果连游戏管理员都要被规则所管束，\n　那这种构造根本就是机械嘛。\n　BB亲要为了爱，强咽着泪水，让所有人类痛苦！」
167	1	身高／体重：166cm·53kg？\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·恶　性别：女性\n「作为女性来说身材高挑的问题还请您能谅解。\n　能允许我恳求您，千万别把我和孩童外形的童话作家\n　放在一起吗？」
169	1	身高／体重：168cm·58kg\n出处：一千零一夜（阿拉伯之夜）\n地域：波斯\n属性：秩序·中庸　　性别：女性\n除她以外，无人真正知道『她自己故事』的全部内容。 
170	1	身高／体重：138cm·35kg\n出处：史实\n地域：中国\n属性：秩序·恶　　性别：女性\n优先顺口的话，自称「武则天」。\n这是基于死后谥号「则天大圣皇后」而来的。\n她本人则好像喜欢登上皇位时的尊号「圣神皇帝」。 
171	1	?
172	1	身高／体重：180cm·84kg\n出处：史实\n地域：西班牙\n属性：中立·恶　　性别：男性\n敲碎鸡蛋底部让鸡蛋竖起来的方式是邪道。 
173	1	身高／体重：183cm·65kg\n出处：夏洛克·福尔摩斯系列\n地域：英国、全世界\n属性：中立·善　　性别：男性\n假如他真的是从故事中产生的存在，那可能不仅限于道尔的小说，还包括了其他模仿作品……迦勒底职员如是说。
174	1	身高／体重：不确定\n出处：传承\n地域：美国、加拿大\n属性：中立·中庸　　性别：女性\n身高一般目测超过3m，但正确的数值会随着每次测量发生改变，所以无法确定。
175	1	身高／体重：150cm·42kg\n出处：史实\n地域：罗马\n属性：混沌·夏　　性别：女性\n令人惊讶的是，即便成了Caster职阶，属性也和Saber职阶时没什么太大变化（除了宝具）。
176	1	身高／体重：172cm·48kg\n出处：创作\n地域：欧洲全域\n属性：中立·夏　　性别：女性\n五十多岁中年：「咱家的弗兰是世界上最可爱的。」
177	1	身高／体重：162cm·51kg\n出处：史实\n地域：埃及\n属性：秩序·善　　性别：女性\n到底……是什么克丽丝啊……？
178	1	身高／体重：152cm·44kg\n出处：史实\n地域：日本\n属性：混沌·夏　　　性别：女性\n之所以从普通版信转化成夏日属性这种稀少属性，\n多半是兴致使然。之所以从秩序变成了混沌，\n大概是因为受第六天魔王状态的影响吧。\n\n「哇哈哈哈！　我正是水边的第六天魔王，织田信长！\n　我脱了以后可是很厉害的哦！」
179	1	身高／体重：154cm·42kg\n出处：亚瑟王传说\n地域：英国\n属性：秩序·恶　　　性别：女性\n属性之所以变成了恶，\n并不是因为不喜欢成为了女仆的自己，\n而是因为觉得，\n只有通过动武才能提供理想服务的自己有些笨拙。
180	1	身高／体重：145cm·38kg\n出处：史实\n地域：欧洲\n属性：混沌·善　　性别：女性\n「有时候我会搞不清楚自己\n　究竟是 Archer 还是 Rider」\n羞涩的海伦娜如是说。
181	1	身高／体重：175cm·？？kg\n出处：史实、『御伽草子』『丑御前之地』等\n地域：日本\n属性：秩序·善　　性别：女性\n这次好像居然没有精神污染技能（本人主张）。
182	1	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：秩序·善　　性别：女性\n这女神还是一如既往地轻飘飘双脚不沾地。\n据说卫衣下面穿着白色的高开叉泳装。
183	1	身高／体重：156cm·46kg\n出处：印度神话\n地域：印度\n属性：秩序·善　　　性别：女性\n严格说来，算是光之后辈。
184	1	?
185	1	?
186	1	身高／体重：177cm·79kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：男性\n「不需要酒。会令挥砍缓慢。\n  不需要肉。会令刺突迟钝。」
187	1	身高／体重：181cm·71kg\n出处：史实\n地域：日本\n属性：秩序·中庸　　　性别：男性\n根据记录，三代将军·家光对宗矩的爱称是「柳但」。\n是从柳生与但马中各取一个字取出来的爱称。
188	1	身高／体重：165cm·45kg？\n出处：史实、『甲阳军鉴末书结要本』『北越军谈』『伽婢子』\n『绘本甲越军记』等\n地域：日本\n属性：中立·中庸　　　性别：女性\n拥有『妖术斩法·夕颜』这第二宝具，\n但在FGO中基本不会使用。\n似乎是因为本人不太愿意使用过分的杀人术。
189	1	身高／体重：158cm·51kg\n出处：传承\n地域：日本（姬路城）\n属性：混沌·中庸　　性别：女性\n家里蹲甘甜如蜜。网购是禁忌的果实。\n电子书籍打包价与手办彩色是无底沼泽。\n现实里的好友一个都没有。
190	1	身高／体重：156cm·4t\n出处：万圣节·强袭！\n地域：监狱城恰赫季斯\n属性：秩序·善　　　性别：女性型\n「我的正义非常厚重。如你所见，毕竟是钢铁。」\n\n由于面孔是钢铁，所以很难看出来，实际很喜欢努力。\n身为贵族（守护领地的存在），\n扼杀了自己『身为少女的个性』。\n据说在极为罕见的情况下，当面对值得信任的御主时，\n会露出与少女相符的微笑／害羞的面孔。
191	1	身高／体重：156cm·4t\n出处：万圣节·强袭！\n地域：监狱城恰赫季斯\n属性：秩序·善　　　性别：女性型\n「兵器所需的物品一应俱全。\n　火力、防御力、以及残酷。\n　无论对谁，我都不会手下留情哦？」
192	1	?
193	1	身高／体重：164cm·57kg\n出处：『封神演义』、『西游记』等\n地域：中国\n属性：中立·善　　性别：女性
194	1	?
195	1	身高／体重：152cm·44kg\n出处：史实\n地域：北美·马萨诸塞\n属性：混沌·恶　　性别：女性\n金发碧眼的12岁少女。
196	1	身高／体重：159cm·47kg\n出处：古代美索不达米亚神话\n地域：美索不达米亚\n属性：混沌·恶　　　性别：女性\n「我对区区人类没什么兴趣。活着的东西非常恶心。\n  不过，如果你坚持的话，我还是愿意以死亡为前提\n  陪你的哦？」
197	1	身高／体重：160cm·48kg\n出处：冥界的圣诞快乐\n地域：芬兰（自称）\n属性：混沌·善　　　性别：女性\n骑乘的羊名为茨尔戈。\n擅长模仿圣诞老人长老。\n※圣诞老人长老是阿蒂拉想象的生物。
198	1	身高／体重：162cm·51kg\n出处：史实\n地域：日本\n属性：混沌·中庸　　性别：女性\n总是与奇妙章鱼“爹爹”在一起。
199	1	身高／体重：169cm·51kg\n出处：传承\n地域：中东\n属性：秩序·恶　　性别：女性\n脸上带着嫣然笑容的绝世美女。
200	1	身高／体重：157cm·51kg\n出处：空之境界\n地域：日本\n属性：秩序·恶　　性别：女性\n是个会令人联想到日本人偶的美人。举止略显阴沉，但依然透露着一股清秀感。
201	1	身高／体重：158cm·40kg\n出处：史实\n地域：俄罗斯\n属性：中立·中庸　　性别：女性\n毕伊（Вий）是与她定下契约的罗曼诺夫帝国的秘藏精灵。
202	1	身高／体重：166cm·57kg\n出处：希腊神话\n地域：希腊\n属性：混沌·恶　　性别：女性\n脱下卡吕冬的毛皮，\n她就会立刻变回Archer。
203	1	身高／体重：161cm·52kg\n出处：传说\n地域：欧洲\n属性：秩序·中庸　性别：男性\n据说是他创造了卡巴拉基盘。
204	1	身高／体重：181cm·65kg\n出处：“灰色之男”、莫扎特暗杀传说等\n地域：欧洲\n属性：混沌·恶　　性别：男性\n经常自言自语。（自认为）与贞德（Alter）和岩窟王合得来。\n与剧院魅影波长不和。\n在玛丽·安托瓦内特面前则一反常态，变得十分拘谨。
205	1	身高／体重：531cm·2548kg/与山岳型魔兽融合时的身高及体重不明。\n出处：史实及异闻带\n地域：俄罗斯\n属性：秩序·恶/混沌·恶　　性别：男性\n他既可以被归类为秩序，也可以被归类为混沌。\n登记在迦勒底的灵基属于秩序一方。
206	1	身高／体重：185cm·97kg\n出典：希腊神话\n地域：希腊\n属性：秩序·中庸　　　性别：男性\n弱点：贯穿脚踝并挖出心脏，就会在短暂的狂乱后死亡。\n要说弱点的话就是这个。
207	1	身高／体重：179cm·81kg\n出处：希腊神话\n地域：希腊\n属性：秩序·善 性别：男性\n喀戎是宙斯之父克罗诺斯与岛之女神菲吕拉之子。
208	1	身高／体重：165cm·53kg\n出处：Fate/Apocrypha\n地域：罗马尼亚\n属性：中立·善　　　性别：男性\n他既是从者，也是御主。
209	1	身高／体重：163cm·51kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：女性\n“吾乃魔　神人Sa……不对，Alterego，冲田Alter亲来着。”
210	1	身高／体重：174cm·65kg\n出处：史实\n地域：日本\n属性：中立·恶　　　性别：男性\n“我可是人斩……”
211	1	身高／体重：178cm·72kg\n出处：史实\n地域：日本\n属性：中立·中庸　　　性别：男性\n“诶？你说把阿龙小姐的资料也写上？”\n\n身高／体重：173cm·57kg\n出处：帝都圣杯奇谭\n地域：日本\n属性：混沌·善　　　性别：女性\n“这可是阿龙小姐的秘密大公开哦。”
212	1	身高／体重：189cm·92kg\n出处：史实、拿破仑传说\n地域：欧洲\n属性：中立·善　　　性别：男性\n作为Rider被召唤时，身高似乎会缩水。
213	1	身高／体重：178cm·79kg\n出处：北欧神话\n地域：欧洲\n属性：中立·善　　性别：男性\n眼镜是睿智的结晶。
214	1	身高／体重：159cm·46kg\n出处：北欧神话\n地域：欧洲\n属性：秩序·善　　　性别：女性\n盾牌由神铁制成，是奥丁赐予的宝物。
215	1	身高／体重：162cm·50kg\n出处：北欧神话、凯尔特神话\n地域：欧洲\n属性：混沌·善\n性别：女性\n\n属性中的「混沌」是自己申报的，虽然在支配北欧异闻带的时候自身的意愿即为社会秩序本身，但因死后以英灵再现，如今的想法已经与之前不同了。
216	1	身高／体重：159cm·44kg\n出处：史诗\n地域：法国\n属性：秩序·夏　　性别：女性\n当然，虽然班长气质没有消失，但无奈的是由于夏天的缘故，能看到眼中有着些许浮躁。\n第二次再临之时，戴上眼镜的是教师模式(自称)。
217	1	身高／体重：147cm·50kg\n出处：御伽草子等\n地域：日本\n属性：混沌·恶　　性别：女性\n总之想着要尽情享用美食。
218	1	身高／体重：168cm·55kg\n出处：『义经记』『平家物语』\n地域：日本\n属性：中立·夏　　　性别：女性\n「主人，来一起痛痛快快的玩一场吧！」
219	1	身高／体重：159cm · 44kg\n出典：史实\n地域：法国\n属性：混沌·夏\n性别：女性\n持有的KATANA(日本刀)是\n「荒霸吐七十二闪」与「大黑毒龙万破(Dendroaspis polylepis 黑曼巴蛇)」
220	1	身高／体重：156cm~？？·46kg~？？\n出处：『Fate/EXTRA CCC』\n地域：SE.RA.PH\n属性：混沌·恶　　　性别：女性\n不知为何属性由善变成了恶。\n即使属性变为恶也不会改变自己是人类的伙伴这一事实啦，所以请放一百个心吧☆　这是她本人的解释。
221	1	身高／体重：154cm·41kg\n出处：凯尔特神话\n地域：爱尔兰\n属性：混沌·恶　　　性别：女性\n现在正沉迷于制作相簿。
222	1	身高／体重：154cm·48kg\n出处：宇宙守护者三部曲\n地域：从者界\n属性：秩序·善　　　性别：女性\n※身高体重会在乘镀时发生变化。\n「体重只是因为连日繁重的工作稍微增加了一点而已，马上就可以瘦回原来的42kg了！」
223	1	身高／体重：184cm·85kg\n出处：凯尔特神话、费奥纳骑士团\n地域：爱尔兰\n属性：秩序·中庸　　　性别：男性\n技能「爱之黑痣」在这副灵基中基本不能使用。受到了有效的控制。
224	1	身高／体重：133cm·34kg\n出处：阿伊努神话、北欧神话、芬兰神话等\n地域：—\n属性：混沌·善 性别:女性\n似乎不太会应对猫。
225	1	身高／体重：145cm·46kg\n出处：「御伽草子」等？\n地域：日本\n属性：混沌·恶　　　性别：女性\n酒吞童子改变灵基后的样子。尽管本人完全没有打算隐瞒身份，但令人不可思议的是，察觉到「她是酒吞童子」的人并不多。
226	1	?
227	1	身高／体重：172cm·55kg\n出处：北史、北齐书\n地域：中国\n属性：秩序・善　　　性别：男性\n虽然是Saber，但和马一起被召唤了。
228	1	身高／体重：166cm·46kg\n出处：明史\n地域：中国\n属性：秩序·善　　　性别：女性\n也有着她身高186cm的说法。
229	1	身高／体重：180cm·65kg\n出处：史实以及异闻带\n地域：中国\n属性：秩序·善　　　性别：朕\n不言而喻这是真人身体的数值。
230	1	身高／体重：160cm・49kg\n出处：史记、汉书\n地域：中国\n属性：秩序·恶　　　性别：女性\n身高体重在每次使用宝具时会有些许变动。她好像并不打算认真地再生肉体。
231	1	身高／体重：250cm·400kg以上\n出处：史实、三国演义等\n地域：中国\n属性：中立·中庸　　性别：男性\n喜欢的食物是胡萝卜。\n不过这匹马，声音确实是很好听。
232	1	身高／体重：170cm·55kg\n出处：查理曼传说\n地域：法国\n属性：秩序·善　　　性别：女性\n传说中的英雄赫克托耳的后代。骑士鲁杰罗也一样是赫克托耳的子孙。
233	1	身高／体重：181cm·64kg\n出处：阿兹特克神话\n地域：中南美\n属性：秩序·善　　性别：女性\n为分发礼物和跳桑巴，对状态进行了最优化哦~！
234	1	身高／体重：130cm·??kg\n出处：日本民间故事、宇治拾遗物语等\n地域：日本\n属性：秩序·善　　　性别：女性\n幸运本来是C，只不过她本人相信着因为即使在不幸中也遇到了老爷爷，就算正负相抵，幸运值也绝对是正的。
235	1	身高／体重：166cm・58kg\n出处：史实\n地域：中国\n属性：中立·恶　　　性别：男性\n相比起全盛期时，体重减轻了一些。
236	1	身高／体重：134cm·30kg\n出处：Fate/kaleid liner 魔法少女☆伊莉雅\n地域：日本·冬木市\n属性：秩序·善　　　性别：女性\n不论是在日常生活中还是战斗中都追求合理性。\n「你好初次见面Gae Bolg」
237	1	身高／体重：163cm·51kg\n出处：史实\n地域：日本\n属性：中立·善　　　性别：女性\n虽然平时表现的像一位「态度沉稳的图书馆管理员」，但是当提及故事、书本或者是和感情有关的东西时她就会开始喋喋不休地谈论诗歌。
238	1	身高／体重：5～??m·??kg\n出处：Fate/EXTRA CCC\n地域：SE.RA.PH\n属性：秩序·善　　　性别：女性\n「……希望你可以多触碰我。请触碰我。触碰我啊。因为……（非常）毛绒绒的。」\n少有断定语气，无论如何都会使用取得确认的措辞，但就像这样，她会罕见地使用命令语气。\n想必，这是其本质中『身为女神冷酷的』部分的流露。
1	1	身高／体重：158cm·46kg 出处：Fate/Grand Order 地域：迦勒底 属性：秩序·善　　性别：女性
11	1	虽然被确立为弓之骑士，但生前并不是弓兵，\n而是魔术师。使用投影魔术，\n仿造出众多名剑、魔剑的赝作者（Faker）。\n基本武装之所以是弓，\n估计是因为他作为英灵并不怎么强大，\n最终的战斗风格被定性为狙击的缘故吧。
97	1	身高／体重：165cm·52kg\n出处：史实\n地域：欧洲\n属性：秩序·善　　　性别：女性\n说话时表情平静，但由于所有的话都是“对自己”说的，所以很难进行交流。
2	2	崇尚万人眼中正确生活、正确人生的\n理想王者之一。\n锄强扶弱，是个无可非议的人物。\n冷静沉着，无论何时都十分认真的优等生。\n尽管如此……虽说从不愿意开口承认，\n但她却有着不服输的一面。对任何需要一争高下的事\n都不会手下留情，一旦败北则会非常懊悔。
3	2	由于铠甲被染成漆黑，并且重量也随之增加，\n力量比平时更为强大。相反，敏捷性似乎有些下降。\n没有无谓的言行，性格冷酷，与阿尔托莉雅判若两人，\n然而只要细心与她接触，\n想必就能发现其本质还是相同的。
4	2	为了成为理想的王而日夜钻研的浪漫骑士。\n由于尚未成熟，还无法拭去少女的稚嫩，\n其内心充满了梦想与希望。\n漫游诸国时，队伍内有她的义兄凯及随同的魔术师梅林，\n所有的问题基本都是由阿尔托莉雅的多管闲事开的头，\n而梅林的嘲讽将事情闹大，最后由凯负责收拾残局。
5	2	自称艺术家，拥有独特的美学意识。\n喜爱美少年以及美老年。当然更爱美少女。\n但凡美丽的都喜欢。将自身讴歌为至高的艺术，\n同时赞颂人们不同的人生也极为美丽。\n……不言而喻，像这样享受人生的她的身姿，\n正如同一朵盛开怒放的蔷薇。
6	2	齐格飞是中世纪叙事诗「尼伯龙根之歌」中\n登场的大英雄。历经各种冒险，\n他在旅途中获得了圣剑巴鲁姆克和能隐身的外套，\n最终打倒了邪龙法夫纳。
7	2	不好对付的男人。野心家，擅长权谋。\n是个同时具备巨大野心与令人畏惧的知性的男人，\n是智略与辩才的名人。煽动的天才。\n令他在诸多战场上获得胜利的优秀头脑，\n也是他拥有的高阶级军略技能的体现。
8	2	直觉优秀，在面对各种事态时，\n都能维持理性直面困难。拥有极高自尊心的战士。\n总会令人感受到些许「空虚」的要素。\n战斗时能冷静而正确的把握状况，\n化为冷酷无情执行杀戮的战斗机械。
9	2	深爱艺术的吉尔·德·雷用其庞大的财产，\n搜集各种艺术品。\n本以为永远不会见底的财产被他瞬间浪费殆尽。\n——蓝胡子。这成了后世人们对其的称呼。
10	2	穿着一名男人的衣服，行为举止都像一名男性，\n但其拥有着足以被称为惹人怜爱的少女般的美貌。\n事实上，在成人前，其身着礼裙参加的社交圈中，\n到处都能听闻「美丽姑娘」的传言。
12	2	性格刻薄无情。不听从他人的意见，\n只以自己为绝对标准的暴君。\n傲然披露其极尽奢华的黄金甲胄，\n如流水般释放出各种财宝的破天荒英灵。\n第一人称写作『我』读作『本王』。
13	2	为获得胜利不择手段，\n擅长偷袭、暗算、毒箭。\n轻佻，爱挖苦人，嘴巴很毒，但本性善良。\n略有些胆小谨慎，为掩饰执着于正义的不成熟的自己，\n总是表现得十分玩世不恭的别扭家伙。\n和卫宫性格相似，但因同性相斥，两者关系很不好。
14	2	阿塔兰忒作为某个国王的女儿出生，\n然而想要男孩的父亲嫌弃阿塔兰忒，将她丢弃在森林中。\n可怜她的女神阿耳忒弥斯用母熊的乳汁哺乳女孩，\n抚养她长大。
15	2	无条件喜爱漂亮、可爱的东西。\n无条件厌恶丑陋的存在。\n极度爱撒娇，令男人神魂颠倒的「可爱少女」。\n起码表面看上去是这样——
16	2	外号为阿拉什·卡曼戈。\n英语写作Arash the Archer，\n在西亚的世界中，所谓弓兵，\n正是指给人们带来安宁的阿拉什。\n直到现代，他仍被西亚的人们所爱戴着。
17	2	『穿刺死棘之枪』\n阶级：B　种类：对人宝具\nGae Bolg。\n只要出击必能贯穿对方心脏的诅咒之枪。\n其真相是在枪命中对方心脏这个结果发生后，\n才刺出长枪的因果逆转的一击。\n由于结果早已注定，故而不可能被回避。
18	2	虽身为邪恶的反英灵，\n但由于本人只是个憧憬恋爱的少女，\n其本质上的胆小造成了反效果，\n导致时不时会帮助同伴或者放跑敌人，\n发挥了一定的好人属性，\n勉强可评价为『这个嘛，应该还能称其为英灵吧』。\n本人则很讨厌别人对自己说『其实是个好人吧？』。
19	2	……武藏坊弁庆是一个故事。\n刚烈且忠肝义胆的最强大汉。\n与源义经一同经历了无数战斗，\n直到最后的牺牲都显得如此英勇，\n正可谓英雄理想的形象。
20	2	性格暴躁直率的男人。\n不会断言正义或者邪恶哪个「更高一筹」，\n但本质上是偏向正义一方的。\n尚未成熟到可以理解世间所有不合理以及善恶的平衡。\n同时是名驯兽师。尤其和狗特别合得来。
21	2	殿军的矜持　A\n这一技能来源于其在温泉关战役中所发挥的力量。\n在防卫战、撤退战等，\n越是不利的状况越能发挥力量的独特技能。
22	2	The Roma。由于天生是个超人，\n总能保持从容而冷静。\n其人性就是君临世界的罗马本身。\n会称呼尼禄、恺撒、卡利古拉等与自己有关联的\n皇帝系英灵们为「吾子」，并爱着他们。
23	2	带刺美人的气质与冷漠的言行，\n会令人觉得她是个冷酷无情的人，\n实际上她只是个讨厌麻烦事，\n最好什么事都不用做的美女。喜好美酒和阅读。\n言行之所以刻薄是因为她根本不希望对方喜欢自己。
24	2	守护骑士　A+\n固有技能。在保护他人时，能短时间提升防御力。\n被奉为众多国家与地区守护者的的圣乔尔乔斯，\n总是在守护方面受到人们的期待。\n这种期望给予了他守护的力量。
25	2	「让开让开，都给我黑胡子大人让出道来！」\n大航海时代刚结束，便拉开了海盗时代的帷幕。\n只要掠夺一次在殖民地贸易中赚足了的船，\n就能获得百万财富，\n黑胡子——爱德华·蒂奇正诞生于这个时代。
26	2	她深爱着不列颠尼亚的一切。\n爱着风与大地。爱着花草树木。爱着泉水与溪流。\n爱着鸟兽鱼虫。同时更为深爱着人民。\n然而，那天，那个时刻。\n丈夫普拉苏塔古斯死后——
27	2	牛若丸（源义经）足以称为日本史上最有名的武将。\n以知名度而言，只有织田信长可以与她媲美了吧。\n……然而，关于她的历史存在很多不明确的要素，\n尤其是起兵前的前半生完全是个谜。
28	2	时而学习哲学或政治学，\n时而沉浸于阅读激动人心的神话，\n时而作为一名士兵勤于锻炼，\n该少年已然拥有如此多样的才华，\n可依旧蕴藏着各种可能性——
29	2	天生的偶像。\n用微笑治愈众生，其眼神令人心醉。\n为自己生来就是被人所爱的偶像而感到喜悦，\n一切言行举止都顺应他人的期待。\n其精神性质已经接近了某种意义上的女神。
30	2	救世主被处刑后依然没有舍弃信仰，\n被当时的罗马总督流放却没有死，\n凭借神之恩宠，漂流到法国南部。\n在罗纳河沿岸的城镇奈鲁克，\n与给人们带来痛苦的残暴的龙对峙。
31	2	将面容藏在斗篷下的女魔术师。\n冷酷、残忍，为了达到目的不择手段，\n擅长使用奸计，名副其实的坏女人。\n然而，她的性格之所以会这样，\n都是由于命运的反作用力所致。\n不断遭到他人的背叛之后，\n最终堕落到背叛他人立场上的悲剧女性。
32	2	本是个非常虔诚的信徒，\n却因为贞德被当做异端予以处决后，\n感受到深深的绝望，失去了对神信仰的方向。\n他最终那些残暴的行为也只是，\n为了证明（本应惩罚恶行的）神并不存在的手段。
33	2	阴暗厌世的诗人。\n由于厌恶自己的人生，\n所以作为从者被召唤时的模样，\n正如大家所见，是幼年时期的他。\n本人则有些破罐子破摔地评论说，\n「这说明孩童时代的我才是最有才能的吧！」
34	2	作为一名有名的作家，其半生却充满了谜团。\n但不管怎么说，他创作了大量作品，\n却并不知道自己的名气会流传后世。\n生时为众多前辈剧作家所嫉妒，\n以至于甚至背负了「暴发户式的乌鸦」的骂名。
35	2	歌德的代表作「浮士德」中登场的诱惑人心的恶魔。\n与神打赌猜浮士德博士是否会堕落的梅菲斯托，\n企图将博士引向邪恶之路的深渊。
36	2	有传言说他为魔术的世界所倾倒，\n和某个秘密社团有关联。\n不仅精通来源自俄耳甫斯的音乐魔术，\n还与传说中的所罗门魔术有很深的关系。\n通常会用以声音为媒介的音乐魔术进行攻击。
37	2	诸葛孔明作为中国的三国时代优秀的政治家、\n军事家而闻名于世。据说本为弱小国家的蜀国，\n之所以能长期抵抗强大的魏国，多半是依仗他的力量。
38	2	作为Caster现界的他与身为Lancer时截然不同，\n使用多种多样的魔术折磨敌对者。\n擅长强大的热、火焰攻击。\n想必是使用了名为「Ansur」卢恩符文吧。 
39	2	爱好花鸟风月，身披优雅披肩的风流之人。\n性格虽有些让人捉摸不透，\n但他依然是一名武人，喜欢堂堂正正一决胜负。\n由于身处于死亡就如同家常便饭的时代，\n因此其生死观在现代人看来显得有些冷酷。
40	2	戴着骷髅的面具，身披黑色的斗篷，\n拥有如棍棒般的右手，外观诡异。\n骷髅假面下的面容已被割掉，因此没有脸。\n自从他继承了「哈桑·萨巴赫」之名后，\n就舍弃了他过去个人所有的一切。
41	2	无论面对怎样的男性，都会夸奖吹捧对方。\n虽说具备了优雅与高贵，\n但更进一步来说，其实也有很怕麻烦的性质。\n对那些无关紧要的对手则表现得极为冷酷。\n甚至能令冥府（塔耳塔罗斯）的守门犬吓得发抖。
42	2	荆轲并非以暗杀为生，\n她是个爱读书，爱剑术，\n爱与好友交流，更爱美酒的豪爽人物。\n燕国太子丹委托她暗杀秦始皇，\n她也爽快地答应了下来。\n为了暗杀行事谨慎的皇帝，她安排了详尽的计划。
43	2	夏尔·亨利·桑松不是暗杀者，而是刽子手。\n刽子手的职业是代代继承下去的，他是第四代。\n他的生活极为富裕，却因为职业的缘故，\n常常遭到他人的轻蔑，年轻的夏尔为此苦恼不已。
44	2	平时表现得非常绅士。但并非真正的绅士，\n他只是在表演「非常绅士的自己」而已。\n面具的背后隐藏着巨大的悲哀与愤怒，\n他深深地明白这些一旦爆发，将会引发悲剧。
45	2	回想起来，玛塔·哈丽在人生的起点，\n就无可奈何地被绊倒在地。父亲经营的公司倒闭，\n不断出轨。母亲因心病积劳成疾，\n在玛塔·哈丽十四岁的时候就亡故了。
46	2	伊丽莎白·巴托里经过成长，并完全化为怪物的存在。\n司掌伊丽莎白的黑暗面。她拥有的不再是可爱，\n而其一味残忍地渴求鲜血的一生，\n通过其化名——卡米拉而表现。
47	2	虽说赫拉克勒斯在神话中数次发狂，\n但他原本是一位精通所有武器的卓越战士。\n拥有除Caster以外其他所有六种职阶的资质，\n持有的宝具中最强的是克服十二难关后获得的，\n被称为“射杀百头（Nine Lives）”的弓箭。
48	2	幼时失去双亲，被湖中仙子妮妙抚养长大，\n因此获得了「湖上骑士」的外号。\n成年后前往不列颠岛，见到亚瑟王并成为了圆桌骑士。\n据说论英勇与骑士道精神，无人能与其相提并论。
49	2	由于被狂化，失去了理性与思考，\n不会表现出任何人性。\n或许是将所有人都视为该被摧毁的敌人，\n因此常常会失去控制。\n据说狂化后的他作为雇佣兵反而更让人放心，\n真是个难以应对的英灵。
50	2	斯巴达克斯是古代罗马的剑斗士，\n领导了被称为斯巴达克斯起义的奴隶战争。\n叛乱虽然遭到了镇压，但他名垂青史，\n遭到压迫的人们将其名视为希望的象征。
51	2	那身实在有些不太像是一个英雄的非主流打扮，\n也是因为被召唤后适应了现世生活的缘故。\n喜欢强悍的、巨大的、帅气的东西。\n精神年龄媲美小学低年级学生级别。\n对恋爱方面的问题很没抵抗力。\n说句题外话，喜欢的苹果是金冠苹果。
52	2	吸血鬼德古拉。为了拭去这耻辱，\n弗拉德三世选择回应Lancer职阶的召唤，\n参加圣杯战争。然而，极为罕见的情况下，\n也会以Berserker的职阶被召唤。\n此时，他的知名度将以「吸血鬼德古拉」为基准。
53	2	支配了克里特岛的王弥诺斯之妻，\n帕西菲与公牛之间诞生的人身牛首的怪物。\n弥诺斯烦恼于不知道该怎么处置他，\n最终命令著名的工匠代达罗斯建造了\n「绝对无法逃脱的迷宫」——也就是Labyrinth。
54	2	爱好施虐，完全的施虐狂。\n所有被他盯上的敌人都将会成为暴虐与恶行的对象。\n狂化技能更令他陷入无法自制的状态，难以驾驭。\n——即便在这种状态下，他依然爱着罗马，和尼禄。
55	2	不屈不挠的男人。\n平时表情稳重。然而时常保持着无法动摇的斗志，\n在战斗时会瞪目切齿，仿佛成为暴风的化身，\n开始破坏对象。\n（因高阶的「狂化」，人性已几乎消失殆尽）
56	2	在「清姬传说」中登场。\n她爱上了前往熊野参拜途中借住一宿的英俊僧人——\n安珍。然而，深夜造访的清姬，却遭到了无情的拒绝。\n虽然安珍和她约定在熊野参拜归来后相见。但是——。
57	2	埃里克是公元十世纪时期支配挪威的王。\n可他其实只做了短短三年左右的王。\n被赶下王位的他逃到英格兰，成了区区一介地方领主。
58	2	不知道她在做什么，也不知道她想做什么，\n根本就像是一只充满野性的猫。\n由于是Berserker，基本很难与其沟通。\n只对好吃的与好玩的有兴趣，\n天天享受着自由自在的狩猎生活。
59	2	世界上最有名的圣女。十七岁背井离乡，\n直到十九岁被处以火刑前的这两年间，\n就在历史上刻下了自己的名字。\n是拯救了法国的圣女，奇迹般地一路赢得胜利后，\n迎来了被诋毁的悲剧结局。
60	2	作为冬季代表星座而出名的俄里翁，\n除了是个有名的猎手及花花公子以外，\n并没有留下什么轰轰烈烈的英雄传说。\n而真正让他名闻天下的，\n是他让处女神阿耳忒弥斯坠入爱河的逸闻。
61	2	万圣节原本是凯尔特的收获祭，和主题公园毫无关系，\n但对伊丽莎白而言这根本就不是问题。\n她开开心心地做起了南瓜派（剧毒），\n坚信着只要有浪漫十足的祝福，充满戏剧性的烟花景观，\n就一定能让人感到满足。
62	2	恋人热切募集中！　毫不掩饰自己欲望的辣妹系从者，\n但本质希望自己能够『为人尽心尽力』。\n生前的乳名是藻女。十八岁入宫，\n之后成为负责侍奉鸟羽上皇的女官，并得名玉藻前。\n传说她以自己的美貌与博识，获得了鸟羽上皇的宠爱。
63	2	大卫是牧羊人，也是竖琴演奏者。\n当时，为了给与非利士人战斗的以色列王演奏竖琴，\n他曾数度造访军队。就是在那时他主动提出，\n要赌上一切孤身挑战非利士人的巨人歌利亚。
64	2	人称『头盔闪亮的赫克托耳』，特洛伊方的英雄。\n为了与拥有压倒性兵力的亚该亚对抗，\n代替年老的父王率军作战。
65	2	不论善恶立场，公平对待的性格。\n享乐主义者，喜欢华丽的东西。\n崇尚瞬间的快乐，在私生活与战争方面，\n都喜爱暴风雨过后寸草不生的样子。\n喜欢金银财宝，但不喜欢收集，\n更喜欢散财。
66	2	身高／体重：158cm·46kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　性别：女性\n玛莉·瑞德的资料。
67	2	作为被伊阿宋笼络前，正跟随赫卡忒学习魔术，\n被娇生惯养时的美狄亚而被召唤。\n几乎不会使用攻击魔术，但擅长治愈系魔术。
68	2	身穿时髦和服，十五岁左右，惹人怜爱的少女。\n由于原来的衣服过于醒目，所以平时都穿这套和服。\n同时具备冷酷杀人者的一面，\n以及开朗而喜欢小孩子的一面。
69	2	高傲且总是信心十足，喜欢新兴事物，\n思考灵活，不会被古旧的习惯或常识所束缚。\n令室町幕府名存实亡，给应仁之乱以来，\n持续不断的战国乱世的终结造成巨大影响的人物。\n那套近似军服的服装是作为从者被召唤时，\n她依照兴趣自己准备的东西。
70	2	魔境的智慧：A+\n超越人类，弑神，正因置身于异世而得无上智慧。\n除英雄特有技能以外，能以B～A阶级的熟练度，\n使用几乎所有的技能。而只有她眼中的真正英雄，\n才有可能拜她为师并习得技能。\n战斗时，她常用「千里眼」技能预知战斗的状况。\n在阿尔斯特传说中，她常使用该预知能力预言未来。\n甚至包括爱徒库·丘林的死期。
71	2	『破魔的红蔷薇』\n阶级：B　种类：对人宝具\nGae Dearg。\n被誉为「宝具杀手之宝具」的魔枪。\n能打消触及其枪刃对象的魔力。\n基本具备了能令魔术防御无效化能力的宝具。
72	2	『虹霓剑』\n阶级：A+　种类：对军宝具\nCaladbolg。\n别名：螺旋虹霓剑。也称作螺旋剑。\n能破坏地形，威力高、范围广的对军宝具。在传承中，\n仅靠挥舞的剑光就展现了「斩断三个山丘」的可怕威力。
73	2	尽管成了Rider职阶，\n但并没有发生很大的变化。\n之所以体重增加是因为礼物的重量。\n没有多余的言行，冷漠的性格和Alter十分相似，\n但打从心底对圣诞老人的憧憬，\n令她稍微变得亲切了一些。
74	2	『悲哀而可爱的拇指汤米，长途跋涉辛苦了，\n　但是，冒险已结束啦。\n　因为你即将进梦境。\n　黑夜的帷幕已降临。\n　你的首级也会噗通一声掉地！』
75	2	由于开膛手杰克的真实身份不明，\n因此会随着各职阶的召唤变换外形。\n这次当作为Assassin显现时，\n就是不被允许诞生的婴儿的集合体。
76	2	在亚瑟王的姐姐兼宿敌的魔女摩根的奸计下，\n莫德雷德作为人造生命——人工生命体的一种而诞生。\n她正是为了杀死亚瑟，\n同时也是为了成为超越亚瑟的王而诞生的。
77	2	无可比拟的天才。现代的普罗米修斯。\n绝世美男子。发明王爱迪生的对手。\n在大地之上再现宙斯之雷霆的男人。\n他正是那雄伟华丽的睿智魔人。\n对御主的态度也只能用傲慢这个词来形容。
78	2	『闪耀于终焉之枪』\n阶级：A++　种类：对城宝具\nRhongomyniad。圣枪。别名隆。\n传说其真正的模样是连接世界表里的存在。\n真名解放时阶级和种类都会发生变化。
79	2	理性稳重。性格温和，不好斗。\n表示人类的感情比任何事物都要贵重。\n将现代的魔术师们视为继承了自己教导的，\n弟子们的后裔，平等而慈爱地对待他们。\n——只要世界允许其（爱）存在。
80	2	——志未成，身先死。\n差分机没能完成。\n分析机没能完成。\n消失在时代狭缝中的「未来的可能性」之梦，\n他将之留给世界，抱憾而逝。
81	2	【杰基尔】\n诚实而理性的好人——本来的人格。\n对万事都会深思熟虑，既是优点也是缺点。\n与表面相反，正义感十足，\n生前苦恼于「潜藏于人类内心的邪恶」，企图与之对抗。
82	2	弗兰肯斯坦与小说中描写的形象差异相当大，\n维克多原本打算创造亚当和夏娃——\n也就是以起源创造为目的而制作的。\n但与圣经相反，他先创造了夏娃，\n打算让夏娃生下亚当。
84	2	若说迦尔纳是“施舍的英雄”，\n那阿周那就是“天授的英雄”。\n俱卢国王的儿子，他作为般度五子中的第三子，\n同时也是雷神因陀罗的儿子。
85	2	迦尔纳是人类女性贡蒂与太阳神苏利耶所生的半神英雄。\n但他出生后，立刻遭到贡蒂的抛弃，\n被作为车夫的儿子抚养。\n可他作为英雄的资质绝不可能被埋没。
86	2	「阿尔托莉雅种族就像是宇宙的癌。\n　必须有人去切除才行。\n　必须有人去做。」\n\n面露苦涩的表情，女主X背井离乡。\n驾驶着爱机金色神驹Ⅱ号在星海驰骋。
87	2	效忠于爱林的上王，在光荣的费奥纳骑士团中，\n立下了足以被称颂为最伟大骑士以及骑士团之长的功勋。\n衰败的神灵亚连，魔猪，冥界之马，\n最终甚至连自己的神祖，也就是战神努亚达都被他击败了。\n平时据说是一位喜爱和骑士团的部下们打打猎，\n过着平静生活的大人物。
88	2	性格文静舍己。\n稳重的微笑中带着一丝寂寥，不幸的女武神。\n作为女武神中长姐尚为神灵之身时，\n虽然行为仿佛「人偶」般缺乏自我意识，\n但在惹怒了父神奥丁，\n被贬入人间之后，由于与齐格鲁德的邂逅，\n逐渐开始拥有人类的性质与人格。
89	2	狂化：E-\n这名英雄的真名本身即受到Berserker这一名词的影响。\n保有理性，能够进行高等的对话。\n多少仍残留着些许凶暴性，但对于能力没有任何影响。
90	2	头痛宿疾：B\n由生前的出身而来的诅咒。\n由于患有慢性头痛，\n导致精神类技能的成功率显著降低。\n尼禄虽然是位艺术家（自称），\n但难得的才能也因为这个技能的原因难以充分发挥。
91	2	与身着和服与皮革外套的少女——\n两仪式是同一人物。只不过人格不同。\n若说两仪式是名为「式」的少女，\n那这位就是名为「两仪式」的女性。\n由两仪继续回溯的起源的一，\n表现「　」的肉体自身的人格。\n是不该出现在这个世间的存在，\n因此从诞生到死亡都沉睡在式的体内。\n\n式无法认知「两仪式」的存在，\n此外，「两仪式」也无法代替式。
92	2	直死之魔眼：A\n在被称为魔眼的异能中也属于最上级的存在。\n异能中的异能，稀少品中的稀少品。\n无论无机还是有机，读取“活物”的死之要因，\n并将其作为可干涉现象进行目视。\n\n从直死之魔眼中看到的世界，\n是充满了“死之线”的终末风景，\n一般的精神构造根本难以面对着这些过上普通生活。\n式平时总是通过模糊焦点，以俯瞰事物的姿态\n来面对处理这异样的视野。
93	2	在江户初期的起义——岛原之乱中担任领袖的少年。\n幼年期就为学问所倾倒的他以某个时期为契机，\n忽然开始能够创造各种各样的奇迹。\n治愈伤口，能在水面上行走的他作为神之子\n开始被信禁教的农民们热心地崇拜。
94	2	查理曼十二圣骑士，\n是法兰克王国国王查理曼麾下的十二名骑士。\n由于阿斯托尔福是罗兰的表兄弟，\n才得以加入这十二人——\n尽管如此，传说中的阿斯托尔福还是以「弱小」而著称。
95	2	究竟是以通常状态现界的「他」，\n吃下了返老还童的灵药变幼小后的存在，\n还是打从一开始就是幼小的形态现界的存在这点不明。\n但其精神的原型应为过去曾被称为明君时的精神。
96	2	其激烈的人生，隐藏真实身份的复仇剧，\n对遭践踏被夺走的恋人梅尔塞苔丝的爱恋与执着，\n以及经历了苦恼与后悔，最终悔改的过程，\n获得了包括法国在内的世界各地人们的喝彩，\n并将他作为「世界上最有名的复仇者」记在心中。\n基督山伯爵虽然是大仲马所创作的故事，\n但根据现代的考证，发现被关押在伊夫堡监狱，\n指引爱德蒙的「法利亚神甫」是实际存在的人物…… 
98	2	精灵的狂躁：A\n库·丘林的低吟之声，\n唤醒了大地中沉睡的精灵，\n粉碎了敌军士兵的精神。属于精神系的干扰。\n使敌方全员的筋力等级与敏捷等级暂时性地下降。
99	2	无垢而清纯。淫荡而恶毒。\n两面都是她真实的样子，没有哪一面是虚假的。\n只不过多数人所接触到的「印象」是前者，仅此而已。\n她仅仅只是，清纯而喜欢淫荡，\n无垢而成就狠毒。喜欢好男人，喜欢强大的男人！\n完全顺从自身的欲望，\n生前使无数男性拜倒在她的石榴裙下。\n魔剑Caladbolg的所有者弗格斯也是其情人之一。\n最喜欢财宝，并以此为由掀起了\n以阿尔斯特全土为对手的大战，\n自己也乘着战车以指挥康诺特军队。
100	2	通过突然变异诞生的天才魔术师。\n她将抵达根源的先人们称为「Mahatma」，\n「Hierarchy」，将其规定（假定）为高次元的存在。\n海伦娜表示自己总能感受到他们的信息，\n但其他人若想要感受到这些，\n必须拥有与她相同的才能（特殊魔术回路）才行吧。\n\n雷姆利亚大陆和Mahatma实际都不存在，\n她「只是个解释了自创的世界的天才」的可能性也很高。
101	2	罗摩天资聪颖，却因为亲族的阴谋，\n被剥夺了王位继承权，最后被流放国外。\n陪伴他一同启程的爱妻悉多被魔王罗波那劫走，\n罗摩毅然决定讨伐罗波那。\n得到了圣人授予各种武器的罗摩，\n和有名的哈奴曼所率领的猴国军队一起，\n与魔王罗波那的大军持续战斗了十四年之久。
102	2	中国武术（六合大枪）：A+++\n中华之至理。\n将以天人合一为目标的武术修炼到何种境界的标准。\n属于习得难度最高的技能，和其他技能不同，\n到达A级才能被称为“习得”的等级。\n到达A+++的人物已经是高手中的高手。\n虽然作为Lancer被召唤，\n但已经将包含枪术的八极拳修炼到了极致。
103	2	虽然爱迪生的能力是除了E就是EX的极端状态，\n但这是因为在特殊的情况下被召唤出来的缘故。\n实际能力在D～E等级之间。\n职阶技能EX也只相当于一般的「D」等级。\n\n因为是近代的英灵，又受到了额外的补强，\n所以状态表示出现了若干的混乱。
104	2	血染的恶魔：B\n因与Caster不相称的英勇传说而被夸耀。\n拥有能够熟练运用弓、枪、小刀等等武器的技术。\n使得近身战斗力得到了极大的补正。\n\n作为优秀的战士，更何况身处熊熊燃烧的复仇之火中，\n据说枪折矢尽后，全身也早已沾满自己与对手的鲜血，\n他仍以一把小刀为武器和墨西哥士兵周旋到底。
105	2	12岁时，将侮辱母亲的男人刺杀之后，\n他就此踏上了亡命之徒的人生道路。\n之后，在做着物资护卫的同时，\n也干着偷盗牛畜与抢劫杀人的勾当。\n由于经常在街上被其他亡命之徒纠缠，\n他开始将笑容挂在脸上，从而避免不必要的纠纷。
106	2	虽然被称为Alter，\n但她并不是贞德的另一面。\n而是哀叹着贞德之死的法国元帅，\n吉尔·德·雷利用圣杯所制造出来的，复仇的贞德。\n作为与原来的贞德完全相反的英灵，\n以Avenger的职阶现世。
107	2	他当然不是真正的恶魔。\n他只是某个村落中一位没有犯下任何罪行，\n也没有建立什么功勋的平庸青年化为英灵的模样。\n他只是一个因村里某个教法，一个稀疏平常的决定，\n就被选为活人祭品的，某个像你一样的存在。
108	2	其征服热情并非完全出自为扩大领土的支配欲，\n更多是基于想要探索未知世界的探险家精神。\n在统治征服地域时，他起用了当地的人材，\n积极推进与西亚文化的融合，奠定了希腊化文明的基石。
109	2	原本的他并不是英灵。\n他作为暗杀者杀害了很多人，\n但英灵座并没有刻下他的存在。\n是被称为守护者的“仿造从者”，\n同时也是在正确人类史中不存在的人物。\n只有当企图将人类史本身彻底破坏的威胁……\n也就是Grand Order事件中，这“可能性的IF”\n才会存在。
110	2	『妄想幻像』\n阶级：B+　种类：对人宝具\nZabaniya。\n以生前多重人格为出处的宝具能力。\n伴随着多重人格的分割，自身的灵也进行了潜能分割，\n可作为不同的个体进行活动。\n由于身体根据人格的不同，以不同形态现界，\n因此存在男女老幼高挑矮小各式各样的容貌外形。
111	2	与隐藏在冬木圣杯之中的『世间一切恶』、\n被污染圣杯所表现的性质不同，\n作为人妻人母的「爱丽丝菲尔·冯·爱因兹贝伦」\n的一面更为鲜明地表现出来。\n是能够归类于神灵，也具备大地母神性质的存在。
112	2	京城内年轻人与公主们相继失踪，经过安倍晴明的占卜，\n发现这些都是酒吞童子的所作所为。\n接到命令前去讨伐的源赖光率领的赖光四天王假扮成\n修行僧侣，造访鬼们所在的城。\n在酒宴中，赖光他们让酒吞童子喝下了毒酒，趁众鬼\n沉睡之际偷袭，得以讨伐了他们。\n被斩下的酒吞童子的首级向赖光发动了攻击，但却被\n神明赐予的头盔挡了下来。
113	2	作为中国小说『西游记』的主要人物而出名。\n在观音菩萨的指示下，\n骑着西海龙王儿子变化而成的白马·白龙（玉龙），\n并收下了齐天大圣孙悟空（孙行者）、天蓬元帅猪八戒\n（猪悟能）、卷帘大将沙悟净（沙和尚）为徒弟，\n冲破众多妖怪的阻拦，前往天竺的美貌僧人。
114	2	『牛王招雷·天网恢恢』\n阶级：B++　种类：对军宝具\n有效范围：1～100　最大捕捉：200人\nGooushourai Tenmoukaikai。\n短暂召唤将魔性、异形作为自身源头的\n牛头天王的神使之牛（或是牛鬼），\n并与其一同扫荡战场。\n通过神鸣显现的武具是模仿她部下四天王的魂的存在。
115	2	『夜狼死九·黄金疾走』\n阶级：B　　　种类：对军宝具\nGolden Drive Goodnight。\n变形为超加速突击形态的黄金熊号发动的突击。\n熊号的轮胎是雷神太鼓变化而成的，\n越是旋转，威力就越大。\n虽然此乃强调的雷神之子这个性质进行的召唤，\n但也同时强调了山姥之子的侧面，\n其结果导致他或许会变成\n比Berserker更为「危险的男人」。\n也可以看成——他兴致勃勃地想要驾驶怪物坐骑驰骋。
116	2	是唯一存活的大江山之鬼，\n在京的罗生门（也可能是在一条归桥）袭击渡边纲，\n却被对方斩下了手臂。\n手臂虽然一度被渡边纲作为战利品夺走，\n但最后被茨木取了回来，并消失无踪了。
117	2	与代表了日本忍者的伊贺、甲贺不同，\n关于风魔的文献十分稀少。\n最重要的原因或许是因为\n他们所侍奉的北条氏在战国灭亡了吧。\n连风魔究竟使用的是什么忍器都不得而知。
118	2	与赫梯交战，之后缔结和约，\n以此通过『交流』而为古埃及带来了繁荣的名君。\n既是勇猛之将，也是娶尽天下美女，育有百名子嗣的男子汉，更是留下了众多保存至今的巨大建筑的知名人物。
119	2	与通常的阿尔托莉雅为『不同可能性』的英灵。\n虽然有着人的躯体，但已难以再称之为人类英灵。\n由于圣枪中秘藏的性质，她已经变化·变质为神灵，\n或更甚至说是接近女神的存在了。\n比圣剑之阿尔托莉雅更为冷静理性，也仍保留了人性。\n不如说由于变得成熟，因而能够做出更为从容的选择。\n作为君王而言，她实现了自己理想中的存在方式。
120	2	基本上是一名楚楚动人而聪慧的女性，\n能够冷静应对危机，有着十足的知性与精神力，\n让她可以每次都完美处理各种事态……\n虽本应如此，但因某些理由，她不时会显得性急以及武断。\n这是因为，在她心中，有着一股如烈焰般的强烈意志。
121	2	伟大的骑士兰斯洛特以最接近原本姿态的\n职阶Saber被召唤出来的状态。\n热爱正义，敬重女性，憎恶邪恶的清廉，\n而又洋溢着浪漫的身姿，\n亚瑟王评价其为「理想的骑士」。
122	2	崔斯坦是罗奴亚王利瓦兰和康沃尔公马克的妹妹，\n布兰什弗尔所生之子。\n然而，其境遇确实符合『悲伤之子』的称号。\n首先其父利瓦兰都没能见到崔斯坦一面，就已战死。\n而其母布兰什弗尔则将孩子托付给利瓦兰的忠实部下，\n罗亚尔，并为孩子取名崔斯坦之后，也随即死亡。
123	2	『轮转胜利之剑』\n阶级：A+　种类：对军宝具\nExcalibur Gallatin。\n在剑柄处收纳了拟似太阳的日轮之剑。\n与亚瑟王所持的「誓约胜利之剑」相同，是由妖精「湖中仙子」所赐予的姐妹剑。\n与受到月的加护的王与那把剑相对应的，他与这把剑受到了太阳的恩惠。
124	2	以公元前的印度为首，\n世界各地，各时代都流传着『毒女』的传说，\n而暗杀教团将之打造为现实中的暗杀道具与兵器。\n这正是她的由来。
125	2	俵藤太手舞自始祖藤原镰足起传承下来的黄金太刀，\n多次立下战功，是一名不可多得的勇将。\n某日，他接下龙神化身的请求，前往击退三上山的大蜈蚣。\n他在箭矢上吐了唾沫，并向八幡神祈祷，成功击退了大蜈蚣。
126	2	在聚集了众多超越人类的英雄的圆桌骑士中，\n作为「唯一的人类」侍奉着亚瑟王。\n虽然只有一只手臂，\n却也是一名优秀的将军，一名拥有卓越剑技的骑士。\n但是，他并非英灵。只不过是过去的人类。
127	2	正因为是睿智伟人，才被赐予了Caster的职阶……\n其实并非如此。\n生前他／她就是个强大的魔术师。\n这没什么好奇怪的。只是除了科学、数学、工学、\n博物学、音乐、建筑、雕刻、绘画、发明、兵器开发\n等以外，也具备魔术才能而已。
128	2	做个说明吧。\n玉藻前是贤妻愿望满载的巫女咒术师。\n平安时代末期，侍奉鸟羽上皇的绝世美女，\n同时也传说是白面金毛九尾狐变化而成的，\n在英灵座，也被视为天照大御神的分御灵。\n既然拥有如此经历，那在南国享受假期的人生也不错……\n小玉藻是这么认为的。
129	2	还是一如既往的阿尔托莉雅，但身在海边多少令人心情放轻松了一些。班长气质依然未变，但不用说，比平时和善多了。\n秉持难得的假期，这次稍微玩得疯一些也无妨的心态。\n该玩的时候就要好好玩。\n无论是游戏还是体育运动都不服输的她的目标，是Archer职阶的最强宝座。
130	2	无论身在王宫，还是身在海滨，王妃就是王妃。一如既往的玛丽·安托瓦内特。\n不过还是要比平时更为欢乐一些，与作为Rider现界时相比，微笑的次数也稍微多了一点。
131	2	身高／体重：158cm·46kg\n出处：史实\n地域：加勒比\n属性：混沌·中庸　　　性别：女性\n玛莉·瑞德的资料。
132	2	冲浪小莫处于夏日状态，所以兴致一直很高。将与父亲的不和与自己的存在理由搁置一边，先好好享受夏日的大海再说。
133	2	和平时的斯卡哈没什么两样……本以为如此，\n但为了适应海边，其实她的兴致要比平时高得多。\n虽说没有很明显的变化，但只要仔细观察还是能发现的。
134	2	由于这次是作为Lancer被召唤的，所以手持薙刀。\n「身为少女，自然需要浅尝所有武艺。但是，像我这样柔弱的女性根本没法帮上忙。啊啊真不甘心。」这是本人的说法。此外，正如本人所言，她薙刀的实力只能算二流，但由于她凌厉的杀气和毫不留情，传说在战场上已经可以称之为无双了。
135	2	由于以泳装模样现界，失去了圣衣与圣杖，所以玛尔达只能徒手阻止争斗了。这是无可奈何的事。不是什么争斗，而是仲裁。\n圣女终于解放了赤手空拳……屠龙者（空手）……等等这种话可绝不能说出口。
136	2	某天晚上，伊莉雅正打算洗个澡给观众送福利的时候，\n一把魔法杖从夜空中突然来袭。\n被这把会扭来扭去地动，还喋喋不休地说话的\n可疑度MAX的杖子诱骗上当，\n如今的魔法少女Prisma☆伊莉雅才闪亮诞生了。\n当然，对班上的各位可是保密的哦☆\n\n——这天夜晚，邂逅了命运。
137	2	起初小黑遭到了伊莉雅的拒绝，\n但在和解之后就住进了爱因兹的家。\n对外宣称是表姐妹，但由于两人过于相似，\n常被人认为是双胞胎。\n当第一次见到伊莉雅的义兄士郎时，\n小黑被错当成是伊莉雅。\n虽然在不知小黑存在的情况下，这也是无可奈何的，\n但他人没能分辨出两者间区别这件事\n似乎还是给伊莉雅造成了一些打击。
19	3	……武藏坊弁庆是一名英雄。\n只要他挥舞起长刀，杂兵们会被瞬间打飞，\n只要他大声咆哮，连饿狼都会吓得夹着尾巴四处逃窜。\n鬼之子的传言正可谓名不虚传。
138	2	由于被选为勇者，平日的躁郁与邪恶得以削弱，\n成了尽管依然很任性，但喜欢锄强扶弱，\n拥有勇敢性格的伊丽莎白了。\n或许是基于Saber=正义的同伴这个认知吧，\n错以为自己的定位就是勇者，\n伊丽莎白似乎……也为了做到这点而不停努力着。\n但由于扮演的是平时不习惯的正义方角色，\n所以失误也比平时要多。
139	2	在公开场合，作为女王，她的言行举止十分高傲，\n但作为克娄巴特拉个人时，她会克制这种非同寻常的\n行为，化身成一位家教好、深思熟虑、冷静的大小姐。\n用一句话形容属性，那就是蛮横抖S亲切。\n明明有施虐兴趣，却很亲切。抖S虽意味着爱好施虐，\n但并不是指通过欺负他人得到快感。\n不是为了令自己愉快而怒斥对方，\n而是纯粹性格就是这样而已。
140	2	『串刺城塞』\n阶级：C　种类：对军宝具\n有效范围：0～50　最大捕捉：三百人\nKazikli Bey\n让四周地面出现无数长枪，处决敌人，\n由魔枪释放的诅咒与铁锤的拷问魔城（Draculea）。\n由于对象是敌对的所有敌兵，\n所以是在一对多战斗时才能发挥真正价值的宝具。\n基于这个由来，该宝具拥有随对方不义·堕落之罪\n的提升，施加的痛苦也相应提升的特性。\n肃正对象越是犯下『逃跑』、『不道德』、\n『暴力』之罪，破坏力就越巨大。
141	2	不用说也知道贞德乃是悲剧的圣女，\n但她活跃年数仅仅两年，非常短暂。\n贞德·Alter是本不存在的贞德黑化后的模样，\n而贞德·Alter·Lily则是这不存在的少女年幼的样子，\n无论哪个时间轴都不存在像她这样的存在的记录。
142	2	苏美尔神名乃是伊南娜，\n从名字角度来说，这个更古老。\n伊什塔尔是阿卡德神名。\n乃金星女神，\n是司掌给人类带来繁荣的丰收的女神，\n也是司掌战斗与破坏的女神，\n还将可怕的神兽『天之公牛』送去乌鲁克市，\n总之是个会给人添麻烦的女神。\n\n以多情著称，据说无论对象是人类还是诸神，\n只要是中意的对象，就会全力献殷勤。\n另一方面，一旦对方不顺着自己的心意，\n就会表现出恶魔般的残忍。\n据说她之所以将神兽放到地上，\n也是因为乌鲁克之王吉尔伽美什没有回应自己的诱惑。
143	2	吉尔伽美什史诗中描述的最古老英雄之一。\n由诸神创造而出的兵器。原本是诸神创造而出的\n“能变形成任何东西的粘土工艺品”。\n能根据状况随心所欲改变形态。\n全身等同于诸神的武器。\n只不过不具备人类那样的精神与感情，\n起初与野兽几乎没什么差别。\n\n据说在显现于地上之后，由于遇见了一位圣妓，\n获得了诸多认知，\n才终于选择了人类的形态（作为基本形态）。\n这姿态是因为尊重那位圣妓，而模仿她的结果。
144	2	名字的意思是「有羽之蛇」、「有翼之蛇」。\n被人们奉为否定活祭仪式的善神。\n与身为启明星化身的善神特拉威斯卡尔潘泰库特利神、\n玛雅的库库尔坎被视为同一存在。\n拥有诸多善良的传说，\n但也具备凶猛战神的一面。\n\n魁札尔·科亚特尔虽然身为善神引领人们走向繁荣，\n但最后却因输给了特斯卡特利波卡神，\n从阿兹特克失去了踪影。\n留下了总有一天将会回归的预言。\n\n阿兹特克的人们相信之后来访的西班牙征服者就是\n「归来的魁札尔·科亚特尔与其军队」，\n最终走向了毁灭。
145	2	道具作成（伪）：A\n制作带有魔力的器具。\n原本不是魔术师的吉尔伽美什并没有这个技能，\n但由于宝具的存在，令他获得了与该技能同等的能力。\n制作而出（从宝具中取出）的道具全部是\n「存在于巴比伦宝库中」的东西。
146	2	外观与两位姐姐相似的可怜少女，\n性格也与身为Rider时发生了变化。\n但与身为『不借他人之手就无法生存的永远少女』\n的姐姐们不同，\n已经具备了战斗的力量，\n具备了足以夺取众多生命的复数魔之萌芽了。
147	2	作为无限接近「戈耳工的怪物／戈耳工」显现的她\n原本应该是人类的威胁。\n虽然被迦勒底的系统作为从者召唤出来，\n但依然需要小心对待。\n一旦掉以轻心，就算御主也会丢掉性命。
148	2	中南美神话中被称为纳瓦尔（Nahual）的灵性存在、\n影子，或是超自然守护灵般的存在常被提及。\n阿兹特克文明中被崇拜的主神之一\n特斯卡特利波卡也具备纳瓦尔，\n据说那就是令人恐惧的豹子纳瓦尔。\n\n本作的豹人虽具备古代神灵的性质，但也融合了\n继承自身系谱的特斯卡特利波卡的纳瓦尔的一面。
150	2	传说母亲是威尔士的公主，但父亲\n却是月与大地间诞生的超自然梦魔。\n据说年轻时候就已经做出了许多预言。\n\n其中令梅林声名远播的预言，\n是说中了艾利尔山地下沉睡着红龙与白龙的存在后，\n还描述了觉醒了的红龙与白龙相互争斗的场面。\n\n作为梅林预言流传后世的这段话中，\n红龙指的是不列颠，\n白龙指的是撒克逊，\n在伟大王者的领导下，不列颠将集结力量，\n并打倒高卢与罗马的吧——\n内容就是这样。\n除此以外，他还留下了诸多预言，\n其中甚至还有关于战争与王之死的内容。\n\n梅林帮助亚瑟的父亲尤瑟·潘德拉贡迎娶了王妃，\n从亚瑟王诞生前就一直守护在旁，根据传说，\n他教导了年幼的亚瑟很多知识，犹如见证其成长的\n养父般的存在。
153	2	在正确的史实中，\n出生于作州（现冈山县美作市）。1584年生。\n父亲是侍奉竹山城主新免家的武术指导师，\n被主家赐予了新免之名，被誉为新免无二斋的武艺高手。\n新免无二斋在吉野乡宫本村建立了十手术道场，\n武藏也将此地视为故乡，因此之后以宫本为姓。\n成人后留下了众多传说故事，\n尤其是在二十来岁的这十年间，与众多武艺高手战斗，\n这些著名的战斗也成了如今娱乐节目的热门题材之一。\n然而这十年间的战斗的真正内容几乎全都成谜，\n被人们深深怀疑乃是杜撰的。
154	2	在暗杀教团中，没有任何见过他的目击者，\n这也是情理之中，因为当见到他的时候，\n生命就已经终结了。\n作为『山中老人』起源的他，\n同时背负起为教团的腐败进行断罪的职责，\n选择了担任教团监视者的人生。\n虽说教团乃是在神的教诲下建立的正确的存在，\n但执行者难免会做出人的恶行。\n所以，这个人物是不会允许教团发生腐败的。\n遵守神之教诲的人们沉溺于人的欲望。\n这才是对神最深重的亵渎。
155	2	「战斗吧。直到打倒女主角X，\n　将宇宙染上反派黑暗之色的那天为止。」\n\n机器人“K6－X4”，通称“黑骑士君”始终在暗中\n默默见证着发下如此誓言的她。\n若换一种说法，也可以说是随手找个地方躲起来偷懒。
156	2	?
157	2	没有理想，没有思想，因此效率很高。\n号称与机械一样的无铭反英雄。\n由于根本的部分彻底腐朽，所以为了达成目的，\n他能毫不留情地大开杀戒。
158	2	?
159	2	?
160	2	既是与英灵阿尔托莉雅·潘德拉贡拥有相同过去\n与传说的完全同一人物，又不是同一人。\n以「理想的王子殿下」「苍银的骑士」的\n清廉形象现界。\n算是从不同世界造访的英灵，但是——
161	2	抛弃了浅葱色羽织，身披洋装，手持枪械，\n为贯彻自己的诚，不断与时代做斗争的武士。\n虽为Berserker，却可以正常对话。\n与其鬼人般的战斗方式相反，\n他在战场上是个合理主义者，\n并兼具为了胜利不择手段的灵活性。\n当召唤自己的御主放弃战斗之时，\n御主就会即刻成为他的肃清对象。
162	2	浅井三姊妹中的长女，茶茶。\n近江国的战国大名·浅井长政的女儿，母亲是织田信长的妹妹阿市。\n一生经历了三次城池的陷落，三次分别失去了父亲、母亲，最后失去了全部。\n被后世民众烙上了毁灭丰臣恶女的烙印，是个充满悲剧的女性。\n「……这……这是不白之冤！」
163	2	好战且冷酷无情。还有嗜虐的兴趣。\n喜欢构造上的美，拥有无法原谅丑陋存在的洁癖。\n认为自己是完美的存在，\n坚信只有自己能做到任何事，自尊心很高。\n\n看不起人类，对事物表示悲观，觉得万事都很无聊，\n总是显得非常不愉快。但这些表现都是基于她\n「想要看到美丽存在」的愿望。\nMeltryllis是由『少女的愿望』而生的Alterego，\n所以其本质与Passionlip一样，\n有着憧憬白马王子的愿望。\n\n虽冷酷，却深思熟虑，十分理性，\n虽慈悲，却拥有判断事物的公平性，\n虽嗜虐，却是源自想一味干涉喜欢对象的照顾人性格。\n\n因为很清楚自己是个怪物，\n所以不觉得自己能与人类相互理解。\n也因为不觉得能与人类相互理解，所以会表现得\n像是个怪物。然而一旦坠入情网，就会无视自己是否为\n怪物，全身心为对方着想，是个为爱恋而生的女主角。
164	2	性格内向、一心一意，且容易钻牛角尖。\n拥有一旦事情不顺利，就会将责任推给对方（周围人），\n自己则躲回属于自己的小世界的坏毛病。\n在CCC中，她的这种性质……\n一心一意，无法主动向对方表白……\n以跟踪狂的形式表现出来，但由于认识到自己的错误、\n缺点，克制住了自己跟踪狂的性质，向着“要好好努力，\n以便成功与对方和睦相处”这个目标前进。\n然而懒惰（只要有理由，就会偷懒不干活）的毛病\n依然未变，她本人也对自己这个缺点有自觉，\n并且在努力改正。\n\n认知障碍：\n她无法认知自己双手的形状。\n“大脑”主动回避自己丑陋的模样，\n将自己的手臂在脑海中自动变换成普通少女的手臂。\n在她的眼中，认为自己的爪子是「普通的存在」。\n过去的Lip无法理解“他人为何会如此害怕自己？”，\n但现在的她已经能直面自己的肉体，\n接受自己的怪物性质了。
165	2	将任性且武断，辣妹感十足的女高中生性格\n『认真』演绎出来的才女。\n原本的性格与JK截然相反，\n是个深思熟虑，明辨事理姿态凛然的公主。\n虽具备身为天魔之姬的冷酷，\n却会认真对待自身的职责与责任，自尊心很高。\n……与之相反，这种认真与聪颖却让她坠入「鬼女」的\n邪恶属性，性格变得有些自体中毒倾向，\n也稍微有些喜欢家里蹲。\n才色兼备，但略有些阴暗的倦怠系班长，\n差不多这种感觉吧。不过多亏了JK演技，\n这些本性几乎完全被隐藏起来了。
166	2	言行邪恶且意气轩昂，台词或言行就算搞砸了，\n也会顺势猛冲的不顾一切型黑幕女孩。\n原本性格消极保守不愿出面，但为了所爱之人，\n不惜化为极端活跃的恋慕化身。\n本人兴致勃勃想要演好反面角色，\n但因为没有这种素养，所以总会搞砸。\n\n之所以十分强势，也是因为潜在的嗜虐嗜好。\n小恶魔系也是出自这里。\n再加上她是那种忍无可忍后爆发的类型，\n所以在发挥时会展现出非常可怕的抖S属性。\n在扮演反面角色的过程中会因为「简直太开心了！」\n而兴奋不已，可一旦回到后台，\n就会冷静下来抱头陷入消沉，前后相映成趣。\n\n她制作了自己的下位AI——Alterego作为使魔\n协助自己的工作，但和Ego们关系极为恶劣。\n这很正常，她们并不是『BB的人格拷贝』，\n而是『以人格为样本制作的』AI，\n所以和身为母亲的BB意见各不相同。\nMeltryllis或是Passionlip之所以没有被称为\n分身，而是被称为Alterego（其他人格）\n就是因为这个原因。
167	2	性格内向、软弱、主动。\n是个举止端庄高贵的女性，但并不死板。\n拥有对无论什么玩笑话都能微笑以待的包容力与洒脱，\n性格温和且和蔼。\n具备贞淑的价值观和言辞，\n但言语中时不时会露出一丝性感。温厚但积极。\n看似病弱，实际活泼。容易被人情打动，慈悲心肠。\n能认清事情的道理，读懂万人的心情，\n正确理解他们的立场与苦恼，深思熟虑。\n\n——然而。\n其本性却是一味自恋与快乐的凝聚体，\n解脱的魔性菩萨。\n柔和的虐待狂，也是强大的受虐狂。\n由衷表示自己深爱着人类，\n但谈论道德只是“为了自己”，\n谈论生命宝贵只是“为了自己”，\n守护世界也只是“为了自己”，\n纯粹是个自恋的怪物。
169	2	剧中剧构造的故事集『一千零一夜』。\n山鲁佐德正是位于这故事集最外围，\n担负起整体叙述者职责的人物。\n这里的『她』究竟是故事的登场人物，\n还是作为其原型的史实人物——我们无从得知。 
170	2	中国史上唯一的女帝。\n起初是唐朝第二代皇帝太宗后宫中的妃子之一，\n但与太宗儿子高宗私通，在太宗死后成了高宗的妃子。\n而武氏虽然生下了高宗的孩子——\n那幼小的生命之火在嗷嗷待哺的婴儿时期就熄灭了。 
171	2	?
172	2	大航海时代，\n作为基督教文化圈的白人首次到达美洲海域的人物。\n他产生并确信向西航线的想法是在1480年前后。\n然而在筹措费用，寻找资助人的问题上遇到了困难，\n实际出发是在1492年。\n1492年，哥伦布终于率领着旗舰圣玛丽亚号、\n尼尼雅号、平塔号这三艘横跨大西洋。\n在不安的船员即将发动叛乱前，\n抵达了美洲海域，发现了圣萨尔瓦多岛。
173	2	既深思熟虑，又有行动力，大胆而缜密，\n同时又是个冷静沉着的男人。\n无论什么谜题、犯罪、还是阴谋，都无法逃脱福尔摩斯的眼睛。不管是什么可怕的杀人犯、古老的诅咒、暗夜中的怪物、还是超国家规模的组织，他都能揭开真相——有必要则打倒。用名为真实的锋利之剑。\n\n他的生活方式已然超越了人的领域，\n甚至可以说是“贤明之人”、“揭露者”的具现化。
174	2	正如传说所述，带着自己搭档的巨大青牛，但其形状怎么看都不像是牛，而是个球状怪物。\n或许是开拓时代的美国传说中的Fearsome critters（可怕生物），或是现在俗称的UMA吧。
20	3	与同样以真名召唤而出的Lancer相比，\n装备了重装的铠甲。\n即便如此，敏捷的数值依然优于「那位」，\n达到了Ａ+。这并非身体的性能差距，\n估计是因为年轻气盛，只知一心往前冲的缘故吧。
175	2	自称万能的天才。\nSaber职阶时虽为男装丽人（本人这么认为），但这次\n并未掩盖自己身为美女的事实，公然享受着夏日的海洋。\n十分喜爱自己，但也十分喜爱周围的人。\n拥有这种自恋与博爱合二为一宏大价值观的\n罗马帝国第5代皇帝。\n\n尼禄皇帝最大程度活用了从魔术师西门那里学来的知识，完成了剧场礼装而非魔术礼装。\n浮游于身体两侧的管风琴将她的美声转化为攻击力，\n用激光、烟火或火焰弹盛大地乱射。\n\n话说为何歌声会对人造成伤害？\n尼禄本人尚未发现这残酷的现实。
176	2	被夏日的酷暑热得无比倦怠的 Saber 弗兰。\n但关键时候常常会失控，\n哈哈哈无论哪种都令人很头疼呢哈哈哈。\n\n印象是「在夏日酷暑中显得十分倦怠的大型犬」。\n\n而某位五十多岁中年会为她的失控推波助澜。\n可靠的人只有巴贝奇老师！\n蒸气·雷·奸计，凑齐了三大要素的这支队伍\n没有任何破绽！　好像是这样！\n\n此外，由于灵基被调整，不知为何成了Saber。
177	2	羞愧的尼托克丽丝。\n因自己对法老奥斯曼狄斯做出不敬之举而深感羞愧，\n带着「我已无脸见人了！」的心情，主动披上外套，\n成了酷似梅杰德的样子。\n(灵基第一阶段。）\n\n但是，心中仍隐藏着身为法老的小小尊严。\n她只是羞于面对其他各位法老而已。\n\n服装变更时不知为何，连灵基也发生了变化。\n转化为Assassin职阶，宝具也进行了变更……\n但内在还是平时的尼托克丽丝。\n冒失武断急躁粗心的性格一如既往。\n一切正常，令人放心。
178	2	身披内心燃烧般涌现的激情，\n2018年夏日的『信长 THE 摇滚明星』华丽出道！\n战斗风格犹如尾张大笨蛋时期的战国顽皮风＆摇滚。\n\n哎？　火绳枪？　我没把那家伙带来。\n在海滨战斗湿气会很重，估计那家伙应付不了哦！
179	2	不列颠之王，阿尔托莉雅·潘德拉贡的另一侧面\nAlter基于其他信念觉醒之后的产物。\n迎接夏日，不再作为一名暴君，\n而是作为一介侍者重新审视自己的阿尔托莉雅。\n尽管知道这些话是什么意思，\n但完全不明白为什么要这么做。\n据说也是为了让与御主共度的夏日变得更为美好，\n才会选择了女仆之路。\n本人似乎想隐瞒自己是阿尔托莉雅的事实，\n所以在装备等各种方面做了伪装。\n\n将誓约胜利之剑（Excalibur）化为拖把。\n将塞克安斯（Sequence）化为手枪。\n战斗风格也换做军人的样式。\n用拖把击倒敌人，用手枪阻止敌人行动，\n并用手榴弹进行爆破。\n这就是所谓的女仆。
180	2	参加了本次比赛的她的第一目的，\n是「尽情享受！」。\n当然，如果能赢自然最好不过……\n在有胜机的场面毫不客气地争夺胜利乃是她的方针。\n但实际上海伦娜依然不是很积极。\n\n这次海伦娜内面的姐姐属性和母亲属性（或是奶奶属性）或许会比平时表现得更为明显。
181	2	为了取缔有违风纪的行为，\n赖光化身为影之风纪委员长。\n口头禅是「禁止禁止，明令禁止！」\n对伊什塔尔举办的赛车结果毫无兴趣，只顾监视那些\n企图利用夏日活动的机会好好放纵自己的参赛者。\n\n一旦达成第三灵基再临，就会兴致高昂地脱下水手服，\n结果让自己成了最有违风纪的人物……\n但本人丝毫没意识到这件事。\n不，也有可能是……？
182	2	自由奔放，优雅大胆，然而又很残酷的女神伊什塔尔\n在换上了现代服饰之后，身为女神的高贵与恐怖感\n稍稍得以缓和。开朗与宽容程度比平时有所提升，\n变得十分友好。\n\n身为女神，理应会一两种格斗技……当然是不可能的。\n伊什塔尔的行动之所以会如此灵巧，\n都是多亏了身为自己躯壳的这具肉体\n熟练地掌握了魔术与格斗技。\n将肉体学会的功夫进行伊什塔尔流改编，\n就成了当前的战斗风格。\n「乌鲁克艺术！　原来还有这种东西啊。」\n在神塔上晒着日光浴的某位王这么评论。
183	2	帕尔瓦蒂在印度神话中，\n是破坏与创造之神湿婆之妻。\n帕尔瓦蒂没有身为神的权威，\n通常只会被视为湿婆妻子的女神来对待。\n但是，湿婆的妻子中也有被誉为「战神」的存在。\n比如杜尔嘎与迦梨。\n这些女神与帕尔瓦蒂灵基不同，但神核被视为是相同的存在。\n\n也可作为Rider职阶现界，但在这种情况下，就要从湿婆处借用圣牛南迪了。而由于这头牛司掌丰收等要素，因此作为神兽的攻击力会难以置信地低。
184	2	?
185	2	?
186	2	宝藏院胤舜，俗名满田源之助。作为宝藏院的继承者，\n受宝藏院流枪术祖师胤荣教导了枪术与为僧之道。\n当时，胤荣已让宝藏院的枪术名闻天下。\n对此前只能进行刺突的长枪进行改良，\n创造了除了刺突以外还能斩、挥、打——\n划时代的十文字枪的，正是这位胤荣。
187	2	以柳生石舟斋之子，柳生十兵卫之父而著称的剑术天才。\n在大阪夏之阵（1615年）保护了将军秀忠，\n据说他瞬间斩杀了七名武士。\n死后，被将军家光赞为「剑术无双」。\n\n剑术家兼政治家。为各大名与其子弟教导新阴流，\n还将自己的弟子送去给有权有势的大名当剑术师傅。\n在时代小说与时代剧中，被描写为稀世阴谋家。\n想必是因为大家都认为在江户时代初期，\n柳生家之所以提拔到一万二千五百石的大名地位，\n光靠清廉洁白是做不到的吧。
188	2	传说中，加藤段藏会操控傀儡、机关人偶，\n但这都是「段藏本人就是机关人偶」的事实中\n派生而出的传说——本作是这么设定的。\n\n活跃于战国时代末期的使用风魔流派的忍者。\n然而其真实身份，是妖术师·果心居士制作的机关人偶。\n在初代·风魔小太郎的协助下制造而成的人造女忍者，\n并非拥有生命的人类。但是，由于其完成了众多任务，\n常被后世的文献提及，\n所以其存在作为英灵被刻印在了人类史中。
189	2	乍一看是黑发清纯的少女，但只要扒去伪装，\n完全是种阴暗卑屈，本质麻烦的的性格。\n尽管能伪装出公主的举止来，但与他人对话的技能\n严重低下，只能按照既定模板交谈。\n若问她性格是否阴险，应该算是阴险的，\n但归根结底只能算个小恶人。会做的最多也就是\n擅自盗用他人信用卡购物的水准罢了。
190	2	（不懂得变通的）正义的从者。\n与伊丽莎白·巴托里截然相反的『秩序·善』\n可是名副其实的。\n平时冷静而深思熟虑，是个真正的大小姐。\n很少会大声说话，但在面对邪恶的时候，\n会切换成自以为是／支配者模式，严厉地斥责对方。\n……如果伊丽莎白没有被鲜血妄想所囚禁。不，\n假如有人能守护她免受『女性若不美丽就没有价值』\n这种压力的困扰，恰赫季斯城的历史或许就会改变。\n这位Alterego也许就是这『假如』化为现实的产物吧。
21	3	列奥尼达虽然贵为斯巴达的王，\n不过由于斯巴达这个国家，\n基本已经成了盛产「无脑肌肉」的土地，\n所以施政的难度极高。
191	2	机械伊丽亲的Ⅱ号机。\nⅠ号机身为领主的属性更为强大，\n而这台是作为『守护神』的属性更为强大的存在。\n比起人之理，更会依照神之理行动。\n失去了身为领主的聪明，以及善于沟通感的要素，\n一味对人类（外来敌人）展现出\n残酷无情防卫机构的一面。\n\n尽管失去了为维持美貌而需要沐浴少女鲜血的猎奇思想，\n但依然继承了原来嗜虐性、残酷性。
192	2	?
193	2	原本是印度神话中被称为那罗鸠婆的下级神，\n但作为佛教的守护神传到了中国，被道教吸收，\n成了少年神·哪吒太子。至今仍在以中国为中心的\n东亚地区被人们祭祀，并受人爱戴。\n在『封神演义』中作为主要人物登场。\n在『西游记』中，也曾为了讨伐扰乱天界的孙悟空\n而出动，并数次被天帝派来帮助三藏法师一行人。
194	2	?
195	2	十七世纪末。\n在清教徒开拓村塞勒姆发生的「魔女审判事件」。\n乃是第一个表现出恶魔附体征兆的一名少女，\n阿比盖尔·威廉姆斯。\n恶魔附体的异常症状甚至传播给了其他少女，\n在大约一年内，众多村民遭到告发。\n其结果导致200人被逮捕，其中19人被处以绞刑、\n2人在狱中死去、1人被拷问至死的惨剧。\n少女们的真实用意与成为契机的要因等至今仍谜团重重。
196	2	在美索不达米亚神话原典中，\n司掌植物的成长与腐败，使役蛇与龙，\n能自如操控冥界使者迦鲁拉灵。\n身为『天之女主人』的伊什塔尔\n与身为『冥界女主人』的埃列什基伽勒是对手关系。\n从神话学来看，丰收的女神伊什塔尔（伊南娜）是\n代表了人类之生的大地母神，\n而代表了人类之死的埃列什基伽勒则是恐惧母神。\n\n神话中的伊什塔尔前往冥界，并为埃列什基伽勒所杀。\n之后伊什塔尔虽然得以复活，但她为何要前去冥界，\n而埃列什基伽勒为何如此震怒，其中理由一概没被提及，在本作中认为这是基于两人表里一体的关系所致。\n伊什塔尔与埃列什基伽勒。或许这两位神是同一存在，\n又或是由一位神一分为二的神性。
197	2	拥有过度健康的肉体与过度健全的精神，\n以及些许无知……\n不，是无暇性格的她得到了一个千载难逢的机会。\n当迦勒底的工作人员们因为谜之热病倒下之时，\n阿蒂拉·the·San〔ta〕作为唯一『能动的从者』，\n为了迦勒底的和平与圣诞节，骑着名羊茨尔戈飞驰而出。\n\n对于早就想要评估圣诞节这种文明的阿蒂拉来说，\n这乃是求之不得的工作。\n换上华美的圣诞服饰，她潜入冥界的天空。\n唯一令人不安的要素就是圣诞老人服饰不够保暖，\n「和平时的衣服相比，面积是不是太少了……？」\n阿蒂拉不禁歪着头感到疑惑。
198	2	江户时代后期的浮世绘画师。\n除了「葛饰北斋」以外，\n还拥有「画狂老人」、「宗理」等30多个雅号。\n是日本的代表性画家，对梵高与德彪西等海外画家、\n音乐家也产生了深远的影响。\n以绘画速度超群而著称，其一生留下了3万件作品。\n内容覆盖了浮世绘的版画、肉笔画、漫画、\n春画等多种类型。\n晚年以三女儿“葛饰应为”为助手，并与她一起生活。\n代表作是连作『富岳三十六景』、『北斋漫画』、\n妖怪绘『百物语』、春画『蛸与海女』等。\n一生一共搬家了93次，丝毫不在意钱财，\n以至于一贫如洗，举止怪异引人注目，\n是个出了名的怪人。\n据说外出时口中常常念着咒语。
199	2	女神得耳刻托与人类间诞下的塞弥拉弥斯，\n因女神得耳刻托感到羞耻，结果被扔在了水边。\n然而，身为继承了神之血脉的婴儿，\n她在无数鸽子的抚养下，活了下来。\n\n长大后出落得亭亭玉立的塞弥拉弥斯，\n嫁给了年老的将军翁涅斯，\n但被她美貌吸引的野心家尼诺斯王，几乎强行\n将她从丈夫那里抢走。因此感到无比悲伤的翁涅斯自尽，塞弥拉弥斯无奈获得了尼诺斯王的宠爱。\n当与别国发生战争的时候，\n由于使用了塞弥拉弥斯建议的独特战法，\n国家获得了胜利，尼诺斯王得知了她拥有卓越的才能，\n终于决定与她正式结婚。\n然而，在婚礼宴席上，喝下杯中之酒的尼诺斯王\n突然痛苦地死去了。人们纷纷传说，\n这是她为死去的丈夫复仇而下的毒。\n于是，成了亚述女帝的塞弥拉弥斯，\n在数十年统治期间，作为摄政执行政务，\n并指导进行了多次远征与建设事业。\n\n有传说最后她被儿子谋杀了，\n也有传说她在让位之后，化为鸽子向远处飞去。
200	2	无痛症——五感中触觉麻痹，生来不知痛觉为何的少女。\n由于不知疼痛，无法对他人感同身受，因此受到人们的孤立。\n自幼就极为聪慧的藤乃为保护自己，隐瞒了自己无痛症的事实，向周围表现出“自己是个普通人类”的样子，同时也欺瞒了自己的内心。\n联动活动『复刻版:空之境界/the Garden of Order -Revival-』的追加从者。在剧情中不会登场。作为客座嘉宾特别参战。
201	2	基本称得上是个天真烂漫的人。\n但由于不轻信他人，在刚召唤时尚未取得信任的阶段\n会用冷淡的语气说话。\n\n获得她的信赖后，就能看到\n她活泼而喜欢恶作剧的真面目了吧。\n用镜子映出相机的方法\n拍下自己的照片……按当今的说法就是自拍。\n她也留下了像这样令人会心一笑的轶事。\n\n她写给家人的信件也尚有部分留存于世，\n从中可以看到她那天真无邪的样子和对家人深深的感情。
202	2	由于是使用卡吕冬的毛皮进行的魔兽化，\n她非常少见地在拥有可以匹敌A等级狂化的数据的同时，\n还能进行冷静的思考。\n（由于不是因愤怒而变身，而是\n在已经兽化的状态下被召唤出来，\n因此，在作为宝具使用时，等级会有所下降。）\n为了打到对手，她会使用最合适的方法，\n也会根据状况考虑适时撤退。\n但是，只要被她视为敌人，\n基本就无法说服她了。
203	2	他创造了魔术基盘之一的卡巴拉，\n是一位特化了铸造魔偶能力的Caster。\n虽说仅仅是建造魔偶工厂，就需要\n足以让普通魔术师破产十次的预算和漫长的工期，\n但制造出的魔偶可以拥有E等级从者水平的实力，\n只要有预算就可以无限生产。\n不过，一般战斗时出现的魔偶，\n都只是用来战斗的一次性产品，\n毫无持久力。
204	2	他是一名优秀的从者。\n能服从御主的命令，将目标迅速了结。\n不会被人类的性格或意识左右。\n\n原本，萨列里是个眼光长远、沉着稳重的人。\n然而，由于变成了无辜的怪物，他的精神已经被摧毁。\n他与等同于死神传说的“灰色之男”融合后，也堕入邪恶的一方。\n当他看到沃尔夫冈·阿马德乌斯·莫扎特时，恐怕会无视御主的命令，\n彻底变成只为杀戮而运转的暴走机器吧。
219	2	为了对抗宿命的对手-贞德（本人是这么认为的）、换上了泳装的Alter酱。\n虽然从Avenger变质成了Berserker、\n但本人的模样基本没多大变化。\n硬要说的话、对于一些兴趣爱好的倾向变得更强烈了、\n而且好像变得多用德语了。
205	2	从他被誉为俄罗斯最凶恶的暴君来看，那份残酷与暴虐无人能及。\n而同时，他也是对神明十分虔诚的信徒。\n那份强烈的反差，是作为普通人类所不被允许，\n只有拥有绝对权限的皇帝才能被容许的特权吧。\n\n虽然根据现代的知识，他能够理解自身的状况，\n但如果是普通人的话，大概仅仅是看一眼这位从者都会昏倒。\n不只是因为他的外形是怪物，更是因为他所拥有的权力也是压倒性的。
206	2	特洛伊战争，是以赫克托耳的弟弟帕里斯夺走墨涅拉奥斯之妻海伦为开端，而爆发的战争。\n在英雄和国王为海伦而竞争时，他们立下了“若是有人强抢海伦，必定前往救援”的誓约。\n\n……不过，当时年纪尚幼的阿喀琉斯和这个誓约并没有什么关系。\n他是因“若没有珀琉斯之子参战则无法胜利”的预言，而被希腊联军拉拢的。
207	2	由于喀戎的父亲，神明克罗诺斯是变为马与菲吕拉结合的，\n所以喀戎生来就是半人马的样子。菲吕拉厌恶他怪物一般的\n模样，拒绝喂养他，并将自己化为了菩提树。\n\n虽然从未得到过父母的爱，喀戎仍旧成长为精通所有知识的\n贤者。这或许与母亲的名字“菲吕拉”象征着菩提树有关。\n菩提树的花可以入药，树皮可以用来占卜或是用于记录文字。\n\n长大后的喀戎开始培养希腊“未来的英雄”。他所教育出的，\n除了大英雄赫拉克勒斯、阿喀琉斯，还有后来成为了医术之神\n的亚斯克雷比奥斯、升华为双子座的卡斯托尔。阿尔戈号的\n领导者伊阿宋也是他的学生之一。\n\n不过，伊阿宋表示“到了我这种水平，像那种简洁明了的教学反而\n会变成废话！倒是想让他教给我如果招惹到地雷女的话要怎么应对！”
208	2	在罗马尼亚展开的圣杯战争——\n在那场圣杯大战中，他是为魔力供给而生的人造人之一。\n原本，等待他的命运将是被榨干魔力后死去。他为了生存而挣扎，最终，他得到了齐格飞的力量，成为了圣杯大战的中心。
209	2	她是冲田总司的另一面。为行使抑止力而被改变、调整了灵基，是一位极其特殊的英灵。\n由于仅仅是为了一次显现调整而成的，她除了基本构架之外，可以说已经变质成了与原本的冲田灵基完全不同的东西。也正是因此，她并非作为冲田的适应性职阶Saber，而是作为Alterego被召唤前来。\n\n她也是年纪轻轻便离开人世的冲田总司或许能够到达的可能性的末路。
210	2	天诛的名人，冈田以藏。\n幕末被称为日本史上“用刀杀人”行为出现最多的时代，代表了这一时代的“人斩”以藏，虽说是Assassin，但其剑技也几乎可以匹敌Saber职阶。\n生前与龙马可以说是亲友关系，因此也接受过龙马的委托，担任过其护卫。 但是，时代的洪流终将铸就两人决定性的分歧。
211	2	维新的英雄，坂本龙马。\n在日本展开的名为“帝都圣杯奇谭”的圣杯战争中，他是一位知名度可以匹敌织田信长的英灵，也是有着特殊类型骑乘宝具的强大从者。\n为了隐藏真名，平常说话时，他会使用流畅的普通话，但偶尔也会不小心漏出一点土佐口音。\n\n搭档阿龙小姐并不是历史上的那一位，而是被封印在某座山中的叛逆的什么东西。龙马年少无知时拔出了用来封印的那把兵器，放出了被封印的阿龙小姐。
212	2	生前的他是“回应期待与愿望”的存在。\n他受到众多的支持成为皇帝。即便曾一度被流放至厄尔巴岛，他也因人们对皇帝高涨的期待之情而重返故地，然而若是人们否认了皇帝，他就会走向失败。\n\n英灵拿破仑也同样，回应期待与愿望、\n回应期盼，做到自己该做的事。\n他肯定了任何拿破仑的传说，作为体现了人类（灵长类）的可能性的从者现界。
213	2	拘谨认真的超古板家伙。戴着生前不应存在的眼镜。\n基本上来讲是个符合合理性的人类，为父报仇也并不是出于亲情之爱，而是出于义务感。\n无论对谁都是略显冷淡的态度，至少从外表看来几乎完全无法发现他能够表露出任何情感来。\n不过，若是有人能令他奋不顾身去保护的话，那大概就能够证明那人得到了他的信赖吧。
214	2	作为大神奥丁的女儿存在的，既是瓦尔基里的个体，又是她们的总体。\n由于是近乎神灵的存在（半神），拥有着高等级的神性技能。\n\n瓦尔基里正是大神奥丁为诸神之黄昏——Ragnarök制造出的数量众多的存在，她们作为某种自动机械提供功能并行动。\n驾着天马翱翔在战场的天空，从死去的勇者之中选定应该带去瓦尔哈拉的灵魂。但是，长姐布伦希尔德因与英雄齐格鲁德相遇而获得了强烈的感情和个性并衰败凋零。以这一瞬间为转折点，瓦尔基里的个体数量开始逐渐减少。\n\n1980年代中期，有学术报告提出，在众神与巨人的最终战争Ragnarök开始时，瓦尔基里的数量可能就已经减少到了“刚开始的一半”。这份学术报告提交给了时钟塔诅咒科的君主，也在魔术世界成为话题，风靡一时。
215	2	此次现界的她既没有培养勇士的师者之态，也不是什么武艺高手。\n与尽管超然但平易近人的Lancer——斯卡哈不同，\n「大概踩着什么」「啊这渺小的人类」「爱着你，还是杀了你」她无疑藏有自然（神）的本身的性质。\n\n——呼气\n化身暴风雪，大部分生物都陷入死亡。\n\n——微笑\n化身永恒的春天，生命华丽的萌发。\n\n无论是哪一方，对她而言都是同等的存在。
216	2	这次尽管换上了泳装，但对她来讲，与平时并没有什么区别——至少她本人是这样想的。\n当然，区别可太大了。\n并不是善性，而是重视夏天，再加上这份始终飘飘然的轻率性格，很明显是因为夏日而浮躁感全开。\n并且，与其说泳装是自己的装束，\n不如说“仅仅是为了享受夏日的产物”这种想法更加强烈。\n\n但是，进入灵基再临的最终阶段的话，会从『海滨的海豚小姐姐』变成『降临于盛夏的圣女』。\n将主的加护变为『光轮(halo)』，化作为所欲为的高机动射击圣女。
217	2	相比看来还是平时的茨木童子。\n本人看来似乎也没打算变化太多。\n一眼看过去大概“心情多多少少变好了”，但如果这样点明，毫无疑问首先就会遭到激烈地反驳。然而不可思议的是，若是酒吞来说的话就会变成\n“那么高高兴兴又扭扭捏捏，\n哎呀，就像小孩子一样可爱呢。\n你就那么喜欢海吗？”\n茨木也不会反驳。
218	2	通过身穿泳装在夏威夷接触大自然，牛若丸不知为何接近了在自然中随心所欲四处奔跑的鞍马山的修行时代的状态。\n\n山中的师父「玩耍即为修行」的这句教诲深深地刻在了她的脑海中。因此，她在认真履行自己身为从者的职责的同时，一有空的话也还是会寻找和主人一同玩耍（修行）的机会。摇着尾巴想着“什么时候能来陪我一起玩呢——”的同时尽力忍耐老实等待的夏日活泼忠犬。有空的话就陪她一起玩吧。
220	2	在月之里侧飒爽登场的后辈系恶魔女主角。\n作为一名开朗而早熟的后辈折腾着前辈（御主）。\n她称自己并不是小恶魔而是Great Devil，因为原本是个好孩子所以还是有着没有彻底变为恶魔的天真之处……然而，这次的BB则不同。\n灵基第一阶段的BB是一位会为御主喝彩的具有啦啦队风格的女孩，但在进入灵基第二·灵基第三阶段时，隐藏的本性会逐渐显露出来。\n曾经作为自己的分身制造出的Alterego们（Passionlip、Meltryllis等）是合成了女神精髓的高等从者，而BB也与数个“神性”融合，变为比平时更具攻击性的灵基。
221	2	○如果我换上泳装的话：A+\n自己的肉体会迷得大众和看中的男子多么神魂颠倒呢？\n达到A+等级的话，其威力便巨大无比。\n原本是包括黄金律（体）在内的复合技能，但在本作中，部分效果有所不同。
222	2	『苍辉银河即为宇宙』\n阶级：EX　种类：对人宝具　\n有效范围：9~99\n\n以太宇宙也需秩序。\n虽然会趁着当场的劲头大喊『Twinmyniad Disaster』、『XX Dynamic』，但其注音（真名）为『以太宇宙也需秩序』。\n伦戈米尼亚德所守护的宇宙法则投射出的真名。解除伦戈米尼亚德LR的安全模式，提升输出功率后使出的有力Saber斩击。对手会连同星球一道爆炸。\n这是不受沉默的权利、请律师的权利之类约束的最终裁决手段。不仅是Foreigner特攻，还是Saber特攻的便捷宝具。
223	2	重忠义、诚实而高洁的英灵。\n基本与Lancer时为同一人，\n但作为Saber召唤而来的他，身为『骑士』的自觉尤其强。\n期待与强敌一战，对寻求战斗的自己毫不顾忌。而且，不知是自觉还是不自觉地，相比身为Lancer时的自我肯定感略显强烈。\n\n灵基性能比身为Lancer时有所增强，但另一方面，召唤难度也提升了。\n不论召唤者的实力有多优秀，只要没有具备特定的条件，灵基就不会成立，甚至会烟消云散。
224	2	露出纯真笑容的少女。\n然而，她也隐藏着深不可测的残酷——\n\n她的人格，接近作为基础的人造人。\n展现与年龄不相称的战斗姿态的勇气来自阿伊努的少女英雄西托奈，对其所爱念念不忘的人产生的共鸣与哀伤的感情来自女神芙蕾雅，冷酷地对敌人展开杀戮的精神来自魔女娄希……虽然作为Alterego，所融合的存在也可以适用为人格侧面，但目前她拥有的是综合起来的『被凭依的少女』的人格。
225	2	最开始只是打算变装、伪装一下的，但自从与在千岁周围抓到的小魔兽「小白」开始同行，似乎整个灵基都（暂时）改变了。\n她看起来简直就像主角一样，但绝对不能搞错了。\n她所扮演的终归是『教诲鬼、杀死鬼，以此来拯救鬼』的存在。
226	2	?
227	2	他因美貌而戴着面具战斗，但是\n为何要隐瞒，传说有两个理由。\n一是因为担心士兵被他的美貌所吸引，士气会下降。\n另一种原因是担心被敌人轻视。\n不管怎么说，其美貌天下闻名，\n一些传说由此而诞生。
228	2	秦良玉原是少数民族出身。她嫁给管理忠州这片土地的马千乘为妻，与丈夫一同为镇压叛乱而从军。\n之后，她继因民事诉讼而死于狱中的丈夫之后成为将军，并数次击退了盗贼。\n她所率领的部下们手持梣木枪，被称作白杆兵，据说十分可怕。
229	2	?
230	2	在史记、汉书中有着部分描述，\n被谜团所包围的项羽的宠姬。\n民间故事认为她在项羽死后便自杀了，这一逸闻使雏芥子的花又被赋予了虞美人的别名。
231	2	堂堂正正地标记了『赤兔马』这一真名。\n关于其事实，他是闭口不谈的。
232	2	在经历过无数冒险之后，布拉达曼特很快与敌国的将领骑士鲁杰罗陷入热恋。为了成就这段恋情，她面对了许多的苦难。\n就算邪恶的魔术师抓走了他，就算魔女囚禁了他，就算希腊的王子向自己求婚，布拉达曼特也毫不放弃坚决向前。\n\n永不言弃的骑士。精神与力量都很强悍。\n只要是为了实现自己的愿望，\n无论重复多少次，做出什么努力，都会坚持前进。\n绝不会接受不幸的现实并止步不前。\n是一位即使在困境中也心怀正义，为了行善而努力的纯真的少女骑士。
233	2	去年的圣诞老人阿蒂拉·the·San(ta)说着「今年的圣诞老人就是你了」，选中了魁札尔·科亚特尔。\n虽说用轻率地交予自己的圣诞节圣杯之力愉快地圣诞老人化是很好，但发生了三个问题。\n\n其一，魁札尔·科亚特尔把桑巴和圣诞搞错了。\n其二，由于其他信仰体系的概念（圣诞老人）与南美主神的契合度很差，导致\n『作为善神的魁札尔·科亚特尔』和\n『作为战神的魁札尔·科亚特尔』\n分离开来。\n其三，因分离的冲击，那位恶之魁札尔·科亚特尔——黑魁扎尔与圣诞节圣杯一同飞到了墨西哥。\n\n起初说着「不必在意这件事~！」，努力开展着圣诞老人活动的她，自然也有在意的必要。\n没过多久，魁札尔·科亚特尔便收到了墨西哥特异点化的报告。飞往现场，她所见到的是积着雪的异常的墨西哥小镇的景象，以及宣传着优胜队伍即可被赐予真正的圣诞老人之力的谜之摔角活动，\n『圣诞组队淘汰赛』的举行——
234	2	民间传说她是『于山中帮助人类的生物』。在镰仓初期的故事集、宇治拾遗物语中也都有所提及她的原型。\n本来她应该是不能够被召唤成英灵的，却作为『接收孩子们愿望的代表』成为了从者。\n\n性格主动又内向。\n虽说外表十分可爱，但比起少女，不如说她有着剑士、官员的性质。认真而又深思熟虑，因此，无论对手是谁，都能够不卑不亢，真挚的对待。\n她不像玉藻前和清姬那样拥有视自身的情况来生活的性格，但就算如此，她也并不讨厌、不排斥自由奔放的人。\n她始终贯彻着公平而冷静的法官气质，但她其实是能够将受到的恩义当作宝物收下，并且极为珍惜的忠义之雀。
235	2	与年轻时代的李书文不同，他是一位稳重的老者。\n虽说挥舞着凶拳，但将其威力保留在最为必要的下限之内。\n那是『隐藏凶暴性』『年轻时无法理解』的稳重境界。\n然若其与敌一战，你就能发现，\n年轻时的利刃至今仍在不断打磨。
236	2	虽然从言行举止上可以窥见她与年纪不相符的极高的才智，\n但另一方面，她对社会常识却极其生疏。\n相较于知识量，她似乎基本没有实际体验，\n简直就像是在与俗世相隔绝的环境下长大的一般。\n\n少女决不说出自己的过去。\n但那双与某人相似的眼瞳\n却盛满了深深的哀伤与孤独，以及——\n一些神性的残留。
18	3	龙之吐息：E\n属于最强幻想种的龙所释放出的魔力的洪流。\nSupersonic Dragon\\'s breath。\n虽然因技能【无辜的怪物】而得以龙化，\n但确实略为勉强，所以威力很低。\n而她之所以会被亚龙化，\n应是巴托里家族纹章（龙齿）的缘故。
237	2	紫式部是汉学家兼和歌诗人的藤原为时的女儿。因父系是著名的文人世家（父系的曾祖父藤原兼辅不仅仅以和歌诗人的身份活跃着，也是撰写了传记《圣德太子传历》上下卷等著作的文人，以「堤中纳言」的别名为人熟知），想必她也是濡染着书卷气长大的。\n二十多岁时，她与时任山城守右卫门佐的藤原宣孝结婚，并育有一子。由于年纪太大，丈夫宣孝在婚后三年就去世了。\n成了年轻未亡人的香子，在那年秋天就开始提笔撰写故事。这正是全书五十四卷的巨著——《源氏物语》。
238	2	她是从BB难以处理的超沉重的感情中诞生的电脑生命体，Sakura 5中的一骑。\n如你所见，她拥有巨大的灵基，以及会无限成长的可怕的自我。由于置之不理的话会变成宇宙规模的灾害，BB便亲手将她这个危险物封印在了虚数空间的底部。\n\n原本的Kingprotea是『渴爱的纯洁幼女』，但或许是因为SE.RA.PH再现者的影响，解放于电脑都市SE.RA.PH的Kingprotea拥有了成长中的智力。\n她精神年龄大约14岁，有着畏首畏尾、虚幻的少女形象。然而出于对爱的贪婪，她会一面做出晚熟的行为，一面使出全力行动，是一位最喜欢身体接触的少女。本以为是只怕生的小兔子，结果其实是只爱亲近人的大型犬。这种反差十分厉害。\n\n尽管她并不好战，但并不是因为『讨厌、害怕』战斗。若是开战，不管是多么弱小的对手（低等级的对手），她都会毫不留情地将其歼灭，心中不会感到丝毫痛苦。\n不知是幸还是不幸，Protea对自己是个残忍的破坏神这一点毫无自觉。
1	2	假想宝具 拟似展开/人理之础 阶级：D　种类：对人宝具 Lord Chaldeas。 不知附体英灵真名的情况下，玛修以本能展开的宝具。 可以在前方展开强大的守护壁垒。 之所以将宝具冠以迦勒底之名， 或许因为玛修本质的愿望是能够“看到人类的未来”吧。  通关「复制品(4/5)」后开放  『已然遥远的   理想之城』 阶级：B+++　种类：对恶宝具 Lord Camelot。 英灵·加拉哈德拥有的宝具。 使用白垩之城卡美洛的中心， 圆桌骑士们围坐的圆桌作为盾的究极防守。 其强度与使用者的精神力相呼应， 只要心不屈服，城墙就绝不会崩塌。
11	2	心眼（真）：B\n通过修行、锻炼而培养出的洞察力。\n在穷途末路时，\n依然能通过冷静地把握自身情况与敌人的能力，\n找到活路的战斗理论。只要逆转的可能性还有1%，\n就要想办法抓住执行作战的机会。\n与技能·直觉相似但并不相同。
97	2	出身富裕的绅士阶级。身为社交界之花，\n年轻的她却希望成为被世人视为卑贱职业的护士。\n学习了医疗与看护的知识与技术后，\n她在伦敦哈利街的医院作为监督人，\n开始着手改革看护体制。动用私人财力开发先进设备，\n并力求改善护士们的状况。之后，她接受了知己，\n也是战时大臣西德尼·赫伯特的委托，\n作为大英帝国陆军医院护士总监督，\n从军参加克里米亚战争，但是──\n\n等待她的，是地狱。
2	3	领袖气质：B\n具有指挥军团的天生才能。\n在团体战斗中，可令我军的能力提升。\n贯彻清廉正直，大公无私的王。\n其公正令骑士们愿意守护于她的身旁，\n令民众们在对贫困的忍耐中看到了希望。\n她的王者之路并不是为了统帅少数强者，\n而是为了领导更多无力之人而存在的。
3	3	魔力放出：Ａ\n令武器乃至自身的肉体充斥魔力，\n并瞬间释放来提升能力。相当于魔力的喷射。\n阿尔托莉雅自身的筋力与常人无异，\n但通过使用过剩的魔力强化所有的行动，\n才得以打倒众多敌人。
4	3	直觉：B\n在战斗时，总能“感知到”对自己而言\n最理想的事态发展的能力。\n敏锐的第六感已经近乎预知未来。\n可以让干涉视觉·听觉的障碍减半。\n然而直觉敏锐也不全是好事。\n由于一眼就能敏感地觉察对方的烦恼，\n所以每见到一个人都会下意识地想要帮助对方。
5	3	皇帝特权：EX\n即使是本不属于自己的技能，\n也能因为本人的主张而得以短期持有。\n与身为热情聚合体的尼禄相性超群的技能。\n对应技能有骑乘、剑术、艺术、领袖气质、军略等。\n阶级为Ａ以上时，\n甚至会获得肉体方面的负担（比如神性等）。
6	3	全身沐浴龙血，\n并饮下一滴龙血的齐格飞成了不死之身，\n在战场上甚至不会受伤。然而这辉煌的荣耀，\n却从他与勃艮第公主克琳希德结成夫妇时出现了阴影。
7	3	煽动：EX\n恺撒的固有技能。\n学会能引导为数众多民众、市民的言语与行为。\n尤其对个人使用时，会产生某种程度的精神攻击。\n威力极为强大。
8	3	纯粹的『战斗王』。\n相比战场上的武勋，其统治却并不成功，\n自己死后，帝国迅速瓦解消失。\n然而，代表着畏惧与恐怖的「阿提拉」之名，\n直到现代仍停留在人们的记忆中。
9	3	圣女贞德对吉尔·德·雷而言是一切。\n她才是这腐败现实中唯一的救赎，\n对吉尔而言或许也是神灵存在的证明。
10	3	为执行机密任务潜入俄罗斯帝国时，\n其作为丽娅·德·博蒙小姐， \n与俄国女皇也有过甚多交流。\n据说当时女皇与臣下也纷纷称颂其美貌过人。
12	3	神性：B（A+）\n虽拥有最大的神灵适性，\n但却因本人厌恶神灵，导致阶级下降。\n拥有三分之二为神，三分之一是人的高神格，\n世间已然没有他的敌手，\n作为获得这世间一切的超越者得以到达完美。
13	3	破坏工作：A \n战斗前的准备阶段，削减对方战斗力的才能。\n设置陷阱的达人。\n阶级为A，代表能在敌方进军前，\n令对方六成兵力无法战斗。\n集团战斗中六成的损害已经能称之为严重溃灭了。
14	3	长大了的阿塔兰忒终于成为了一名无人能及的优秀猎人，\n成就了击退卡吕冬野猪以及加入阿耳戈号等诸多冒险。\n慕名向她求婚的人们纷纷杀到，\n烦恼的阿塔兰忒决定用赛跑向求婚者们发起挑战。
15	3	实际上虽然确实具备无暇与纯真的特质，\n但更进一步说，其实她的性格严重阴晴不定，\n也具有狡猾的一面。主张只要保持沉默就不会惹恼别人，\n只要不被识破就不算作弊。（当然事后会陷入自责）
16	3	『流星一条』\n阶级：B++　种类：对军宝具\nStella。究极的射击。能终结所有的战争，\n正如同字面意义，属于「撕裂大地」的超远程攻击。\n若论纯粹的能量总量，堪比对城宝具。
17	3	战斗续行：A\n苟延残喘。哪怕受到濒死的伤害，依然继续战斗，\n只要不是决定性的致命伤，就能活下去。\n\n重整旗鼓：C\n脱离战斗的能力。\n由于持有这两个技能，实际上相对于单挑，\n库·丘林更适合在大型合战中发挥其真正价值。\n然而由于本人极为喜好单对单的决斗，\n结果几乎无人知晓这一事实。
22	3	皇帝特权：EX\n固有技能，可在短时间内，\n获得自身本不应拥有的能力。\n神祖是万能的。可获得的技能种类繁多。\n由于阶级在Ａ以上，同时也会受到肉体方面的负担。
23	3	『骑英之缰绳』\n阶级：A+　种类：对军宝具\nBellerophon。\n在神话中，英雄珀耳修斯斩下了女怪美杜莎的首级，\n而天马珀伽索斯从她的血液中出现。\n正如传说所述，美杜莎可以用自己的鲜血作为媒介，\n召唤珀伽索斯并熟练地驾驭。
24	3	殉教者之魂　B+\n固有技能。让对精神层面的干涉无效化。\n面对为了令其弃教而实施的拷问以及各种其他酷刑，\n乔尔乔斯从未屈服，坚持着他那极为强韧的信仰。
25	3	爱德华·蒂奇是否为他的本名一事尚无定论，\n他在成为海盗之前的身份也不明。但不管怎么说，\n他以海盗的身份起家，转瞬间就组建了庞大的船队。
26	3	等待她的却是惨无人道的苛待。\n嘲笑与污蔑。暴力与凌辱。痛苦与鲜血。\n身体与心灵受到深重创伤的她下定决心。\n反抗罗马。保护故乡。誓报此仇。\n因此，她成为了年轻的战斗女王。
27	3	天狗的兵法：A\n固有技能。\n传说她是从存于人世之外的天狗那里学习的兵法。\n对剑术、弓术、枪术等近身战斗力，\n以及军略和对魔力都有能力加成。
28	3	无论理由为何，征服王伊斯坎达尔，\n也就是亚历山大以少年的形态被召唤。\n不仅容貌，连精神也维持少年时的状态。\n虽说他并没有失去记忆，\n但青年期以后的记忆在脑海中略有些「没有现实感」。
29	3	神之恩宠：B\n表现最美的容貌与肉体，也就是「王权之美」的技能。\n\n秀丽公主：A\n能吸引周围人的领袖气质。单凭这个技能，\n就能让那些可以成为自己的守护骑士的人物不请自来。
30	3	奇迹：D\n有时能将不可能化为可能的奇迹。固有技能。\n与技能星之开拓者虽有相似处，\n但本质是截然不同的存在。适用的对象自然也不同。
31	3	『万符必应破戒』\n阶级：C　种类：对魔术宝具\nRule Breaker。\n魔女美狄亚的一生化为有形之物的概念宝具。\n能破戒各种魔术的短刀。\n将那些被魔力强化了的物体，因契约而成的关系，\n以及用魔力创造的生命回归初始的对魔力宝具。
32	3	『螺湮城教本』\n阶级：A+　种类：对军宝具\nPrelati\\'s Spellbook\n内部蕴含着魔力炉的魔导书。\n能够无限召唤异界的怪物。\n吉尔·德·雷本身并非正规的魔术师，\n也没有魔术的素养，这本魔导书则代替他执行魔术。
33	3	无辜的怪物：D\n指无视本人的想法与外形，\n因风评而被扭曲了的事物的深度。\n以安徒生而言，则是受到了“读者的诅咒”。\n很多他的读者认为，\n「写出这种故事的一定是个没血没泪的男人」，\n其结果就是导致他身体各处都带着，\n「与自己撰写的童话主人公相同」的伤。
34	3	莎士比亚能够用短小精悍的言辞，\n有效地暴露人们平时隐藏在内心的东西。\n这或许可以理解为，\n无意间被无形的存在打个措手不及而产生的惊愕吧。
35	3	梅菲斯托费勒斯用尽了手段，\n成功引导浮士德走上邪恶的道路。\n然而就在灵魂坠入地狱前，\n浮士德被所爱之人拯救了灵魂。\n啊啊，多么的美妙，大团圆！
36	3	音乐之神的护佑（伪）：EX\n原本是表现艺术女神缪斯之加护的技能。\n能辨识所有的声音，并可实现天才般的演奏。\n更有对音乐魔术有加成效果。\n这些效果全都可作为「自身的力量」进行发挥。
37	3	严格来说该从者并非埃尔梅罗Ⅱ世，也不是诸葛孔明。\n两者的力量混合后，发挥出了超越一般从者的力量。\n此外，思考与情感则是以作为容器的埃尔梅罗Ⅱ世为准。
38	3	卢恩魔术：A\n持有斯卡哈赐予的北欧魔术刻印——卢恩符文。\n通过运用这些符文，可产生各式各样强大的效果。\n然而，不可同时使用复数（并用）符文。 
39	3	燕返\n对人魔剑。最大捕捉对象·１人。\n仅凭人类的技术，达到能与宝具匹敌程度的剑技。\n将对方以三个圆形的方式同时斩断的绝技。\n似乎是被称为多重次元折射现象之一。\n原本是为了斩杀空中的飞燕而创造的剑术。
40	3	从人类角度而言并不能称之为好人，\n但永远忠实于主人的命令，\n无论主人陷入多么绝望的劣势，他也不会背叛，\n甚至愿意默默地执行一些强人所难的命令。\n认为杀戮只是一种任务与义务，\n从中感受不到任何喜怒哀乐。
41	3	一有鸡毛蒜皮的小事，\n就会和另一个自己（尤瑞艾莉）一起，\n欺负妹妹（美杜莎），但其实是很喜欢她的。\n——很爱她。由衷地。死后依然。
42	3	搞定献给秦始皇的礼物，以及淬了毒的暗杀用匕首，\n就在即将出发前，\n只差等待愿意舍命随她前往暗杀的朋友，\n太子丹见荆轲迟迟不动，\n竟开始怀疑她是不是「胆小怕事了」。
43	3	过着犹如贵族般优雅生活的桑松家敬爱国王与王后，\n也怜爱着他们治理的国民。\n据说他们也因负责行刑而掌握了最前沿的医疗技术，\n并将此无偿提供给贫穷的人们。
44	3	无辜的怪物：D\n作为小说『剧院魅影』中角色原型的他，\n受到作品的影响，其容貌变成了异形，\n双臂也化为了异形般的存在。只要摘下手套，\n就会露出如大型刀具般锐利的钩爪。
45	3	结婚生活也因丈夫的暴力、嗜酒、花心，\n最后以失败而告终。其大部分的青春时代，\n都浪费在了男人任性的欲望中。所以对她而言，\n将男人玩弄于鼓掌之中的间谍极为对她的胃口。\n——哪怕最后等待她的将是处决，也在所不辞。
46	3	成为卡米拉的她与伊丽莎白性格完全合不来，\n成了会相互厮杀的关系。这其实象征着，\n年轻的伊丽莎白拒绝成为卡米拉，\n而卡米拉则无法容忍伊丽莎白沉浸于无知的青春中。
47	3	『十二试炼』\n阶级：B　种类：对人宝具\nGod Hand。\n因神的祝福（诅咒）所获得不死属性。\n肉体化为坚硬的铠甲。
48	3	为了对王妃桂妮薇儿的感情而付出一切，\n其实也是他毕生遵从骑士道的必然结果。\n其叛乱如果能够迅速被终结，那本应还有挽回的机会。\n但正因其武勇无双，事态最终发展至最悲惨的结局。
49	3	『军神五兵』\n阶级：A　种类：对人·对军·对城宝具\nGod Force。\n传说是吕布生前使用的方天画戟的真名。\n能变化为斩、刺、打、挥、切、射击，\n这六种形态的复用型武器。\n开发者是为吕布所倾倒的超军师·陈宫。
50	3	斯巴达克斯虽然作为Berserker被召唤，\n但他乍一看来似乎拥有正常的思考能力。\n措辞流畅高深，也不会袭击御主。但是……。
51	3	雷神赤龙之子。母亲是居住在足柄山吃人的山姥。\n金时也继承了怪物的力量，与山中的野兽搏斗，\n并杀害了它们。最终鬼女母亲被碓井贞光讨伐，\n金时则被他收养。源赖光教导他为人之道并收为家臣。\n之后他作为赖光四天王参加了各种鬼怪的讨伐任务。\n然后，遇见了大江山的酒吞童子——
52	3	作为Berserker而被召唤的情况下，\n宝具『鲜血传承』默认处于发动状态。\n虽说狂化阶级为EX，但可进行对话沟通。\n然而，若非拥有足够力量的御主，\n弗拉德三世迟早会选择吸取御主的鲜血吧。
53	3	天生的怪物注定会被天生的英雄打倒。\n阿斯忒里俄斯被潜入迷宫的英雄忒修斯击败，\n并遭到杀害。没错，就算本质并非邪恶，\n只要所作所为是邪恶的，最终被打倒就是其宿命。
54	3	狂化：A+\n全能力都得以提升，\n但却被剥夺了大部分理性。\n把尼禄或罗马拉出来与其进行接触的情况下，\n可进行幸运判定。一旦成功就会结束失控状态。
55	3	与激烈的战斗方式相反，\n面对御主时的大部分反应却都非常安分。\n平时很少失控，也比较愿意听御主的意见，\n所以不至于浪费有利于撤退的重整旗鼓技能。
56	3	害怕清姬的安珍并没有遵守相见的约定，直接逃跑了。\n发现遭到背叛的清姬深感绝望，她哀叹，愤怒，\n化为龙奋起直追，\n最后将藏身于寺院大钟内的安珍活活烧死。
57	3	可他的外号依然名镇天下的原因，\n是因为他在即位时杀害了所有兄弟姊妹的那种残暴，\n以及传说是背后推手的魔女贡希尔达的存在。
58	3	『璀灿日光午睡宫酒池肉林』\n阶级：D　种类：对人宝具\n从水天日光天照八野镇石派生的存在。\n酒池肉林本是「在林中放养老虎，\n并将人类赶入林中看着娱乐」的拷问游戏，\n但现代这个词的意义已经发生了变化。
59	3	被逮捕的贞德依然在创造奇迹。\n传说作为一名只对圣经和些许祷告词有所了解的村姑，\n居然能机敏地在与一流的神学者的辩论中平分秋色，\n甚至使对方企图为她定下异端之罪的过程变得极为困难。
60	3	对这次情况之异常感到不安的阿耳忒弥斯，\n以强行介入俄里翁召唤的形式乱入，\n担负起Archer的职责。神格被降到最低限度，\n只剩下比普通从者稍微强那么一点点的力量。
61	3	龙女：\n或许是因为巴托里家的家族纹章上的龙是有意义的，\n伊丽莎白拥有隔世遗传的龙之因子，通过成为从者，\n这种因子表现了出来。\n看上去像是在万圣节出没的恶魔，但她拥有龙的角和尾。\n虎牙貌似也不是吸血鬼之牙，而是龙的牙。
62	3	『水天日光天照八野镇石』\n阶级：D（EX降级）　种类：对军宝具\n镜子形状的宝具，可暂时解放玉藻静石这一神宝。\n原本是用于复活死者的冥界神宝，\n但现在的她无法使出如此强大的能力。
63	3	由于巨人实在太过可怕，以色列军中无人敢与之对抗，\n唯有大卫愿意孤身挑战巨人。\n歌利亚蔑视徒手的大卫，然而大卫却投石砸昏了歌利亚，\n并用他的剑斩下了其首级。
64	3	特洛伊军最强的战士、军团长、甚至是政治家，\n赫克托耳能够让神明所有的推测都落空。\n他曾一度将亚该亚军逼到即将撤退的地步。\n使用的宝具是『不毁的极枪（Durindana）』。\n赫克托耳喜欢将剑柄加长，将之改造为投枪的战术。\n据称其枪能贯穿世上万物。后来失去枪的作用，\n成为了绝世之剑迪朗达尔。
65	3	『黄金鹿与暴风夜』\n阶级：A+　种类：对军宝具\nGolden Wild Hunt\n以生前的爱船『金鹿号（Golden Hind）』为中心，\n召唤、展开生前所指挥的无数船队的亡灵。\n并以压倒性的火力齐射歼灭敌人。
66	3	安妮出生于富裕的家庭，天生性格粗暴，\n与小混混私奔，最后与这个小混混分手，\n与约翰·瑞克姆一起当起了海盗。\n某天在追捕荷兰船时，遇到了以男装潜入的玛莉·瑞德。
67	3	行为可爱，备受人们疼爱的少女。\n若没有伊阿宋，本应过上幸福的一生。\n若没有伊阿宋。
68	3	无明三段突\n对人魔剑。最大捕捉·1人。\n稀世的天才剑士——冲田总司必杀的魔剑。\n「壹之突」中包含着「贰之突」「叁之突」。\n摆出平正眼的架势，并非“几乎同时”，\n而是“完全同时”放出的平刺。\n用超绝妙的技巧与速度开创的秘剑。
69	3	天下布武：A\n作为时代变革者的信长拥有的特殊技能。\n将陈旧存在换新的概念之变革。\n对「神性」或「神秘」阶级越高的对手，\n以及越是体制守护者系的英灵，\n就越能给自己附加有利的加成。\n反之，面对神秘较薄弱的近代英灵时，\n自身的各技能、宝具效果都会下降。
70	3	『贯穿死翔之枪』\n阶级：B 种类：对人宝具\nGae Bolg Alternative。\n形状相似，但与库·丘林所持之枪并非同一存在。\n更为古老，是Gae Bolg之前使用的同型的武器。\n而且不只有一把，是两把。
71	3	奉命迎接身为主君芬恩的准新娘的格兰妮公主，\n却为公主所一见钟情，被她付与了誓约（geis），\n必须「带着自己逃跑」，导致他不得不私奔，\n在爱尔兰内四处逃亡。
72	3	传承中「如彩虹般延伸的剑光」斩断了山丘，\n作为宝具挥舞的虹霓剑拥有浓厚的地形破坏兵器的要素。\n也就是说，能不分青红皂白破坏大地的强烈攻击。\n据说该剑成为了后世诸多英雄们手中魔剑、圣剑的原型。\n传说也是轮转胜利之剑的原型。\n名字中的「虹霓」有「彩虹」的意思。
73	3	圣诞Alter乘坐的雪橇是她亲手制作的。\n本人豪言壮语地表示，\n那雪橇是参照雄壮的马与狮子的造型，\n用梣树枝做的，但怎么看都只是像河马。\n取名为拉姆瑞二号。
74	3	变化：A+\n『要变身，将变身。\n　我变你，你变我。\n　变身啰，变身啰。\n　我是你，你是我』
75	3	身为Assassin的杰克在出生前就被杀害了，\n因此向圣杯许下的愿望是回归胎内——\n回到母亲的胎中。尽管不谙世事，\n但由于作为开膛手杰克被召唤，因此脑子转得极快。
76	3	由于莫德雷德是人工生命体，成长速度极快，\n出生后数年就成了侍奉亚瑟王的骑士。\n因其模仿了亚瑟王的能力，她很快就作为骑士崭露头角。
77	3	星之开拓者：EX\n付与成为人类历史转折点的英雄的特殊技能。\n将仅存在于神代的力量送到人间，\n提升了文明水准的他，自然拥有EX阶级。
127	3	○黄金律（体）：B\n拥有媲美女神的完美肉体，并能维持美丽。\n莱昂纳多将自己的肉体「重新设计」为女性（蒙娜·\n丽莎）时，刻意获得了这个技能。
78	3	圣枪即为连接世界表里（现实与幻想）的「光之柱」，\n据说一旦将枪拔出，现实就会从世界剥离坠落。\n圣枪原本是固定世界表层的「光之柱」。\n据说一旦解开，\n会导致建立于当世物理法则之上的世界剥落，\n令被人们视为存在于过去的众多幻想法则出现。\n正因为她是立于神代与幻想的最后的「王」，\n才能拥有这蕴含着极强力量的圣枪。
79	3	道具作成：EX\n以强大魔力积蓄结晶“贤者之石”为首，\n对应五属性元素的人工灵，\n复数个拥有同步思考能力的人造人，等等——\n具备EX阶级技能的他能制作各式各样的道具。
80	3	而如今，他现界于世。\n将未来的可能性——异形的钢铁披于身上。\n将梦中的未来——异形的世界藏在心中。\n作为英灵现界的他，其存在本身，\n就是其宝具——和固有结界几乎为同一存在。
81	3	【海德】\n毫无道德心的快乐主义者——「邪恶」的人格。\n下意识会伤害所有一切的，恶意的反英雄。\n不知是杰基尔的内心潜藏着邪恶，\n还是因杰基尔本身就缺乏邪心，\n导致才「只有这个程度而已」，这点不明。
82	3	然而，作为关键的夏娃——\n通过缝合尸体制作的人工生命体是失败作品。\n无法正常地控制和交流感情，\n见到她毫不犹豫地杀害野狗，\n并将内脏作为礼物赠送给自己的残暴本性，\n维克多害怕地逃跑了。
84	3	作为一名才干、性格等各种方面都毫无瑕疵的英雄，\n他却因在兄长在赌注中失败而被国家放逐。\n这时，他已经预感到与迦尔纳的对决是不可避免的。\n这都是因为迦尔纳将般度五子的宿敌——难敌尊敬如父。
85	3	母亲贡蒂抛弃了迦尔纳之后，生下了般度王家的五兄弟。\n其中第三子就是迦尔纳终生的宿敌阿周那。\n长大后的迦尔纳成了与般度家对立的俱卢家的养子。
86	3	其外形与一般从者截然不同，\n身着休闲运动风的服装。\n蓝色的围巾是勇气的标志，\n帽子是为了隐藏其呆毛真身。\n但戳出来了，戳出来了，彻底戳出来了。
87	3	本应顺着无可非议的大英雄之路前进的他，\n却注定拥有桃花劫的命运。迷上美丽的姊妹，\n遭到诅咒是他遭遇的第一难。之后灾难便接连不断。\n由于第一妻子，他与妖精们敌对，耗费了七年的时光，\n而围绕第三妻子格兰妮引发的争斗，\n则让辉煌的骑士团土崩瓦解。
88	3	心怀慈悲，爱情情感丰富，会对自己所爱之人付出一切。\n若未发生那种悲剧，她本应作为一名贤妻终其一生。\n尽管比谁都更为深爱着英雄齐格鲁德，\n却在被诅咒的悲剧命运下，心中燃起了杀意之火，\n最终不仅杀死了齐格鲁德，也将自己灼烧殆尽。
89	3	整个故事由两部分构成，第一部记述了，\n贝奥武夫与15名部下共同前往讨伐巨人哥伦多的事迹，\n第二部中则详细描述了50年后，\n年迈的贝奥武夫与巨龙死斗的传说。
90	3	『星辰驰骋的终幕蔷薇』\n阶级：B+　种类：对人宝具\nFax Caelestis。\n由『邀至心荡神驰的黄金剧场』派生而来的特殊技能。\n虽然只是剑技，但豪华而瑰丽，\n将新娘服饰释放而出的强烈婚礼感称作宝具也未尝不可吧？　\n由于本人的申告而升格为了宝具。\n\n另外，才不是对某个蓝色狐耳Caster的新技能\n产生了对抗心理呢。
91	3	阴阳鱼：A\n阴阳螺钿。\n欲学是，即弃是，\n欲救是，即忘是。\n憧憬与悔恨表里如一。\n犹如生与死。\n\n矛盾螺旋。这位式可通过失去NP来补充HP。
92	3	阴阳鱼：B\n阴阳螺旋。\n欲生是，即杀是，\n欲成是，即损是。\n恩惠与损失表里如一。\n犹如男女关系。\n\n痛觉残留。这位式可通过失去HP来补充NP。
93	3	随后，以他为领袖的小西行长的旧家臣们，\n成立了对抗江户幕府的叛乱军。\n与当时在痛苦中挣扎的岛原农民们一起，\n掀起了大规模的叛乱。\n起初没把起义当回事的江户幕府，\n在派去讨伐军结果被击败之后，才终于认真了起来，\n请出了老中松平信纲作为部队统帅。
94	3	史无前例、实力尚未成熟、稀里糊涂等等。\n不管怎么说，阿斯托尔福无视这些传言，\n以骑士之道解决了各种难题。\n顺便说一下阿斯托尔福的这身服装。\n是为了让失恋狂奔的罗兰冷静下来而准备的。
95	3	红颜美少年：C\n表现了能吸引他人的美少年性质的技能。\n不分男女全部魅惑的能力会以魔术效果发动，\n但用对魔力技能可进行回避。\n就算没有对魔力，只要有抵抗的意志，也可减轻效果。
96	3	真名是爱德蒙·唐泰斯，但他认为马赛的水手\n「爱德蒙·唐泰斯」和自己并非同一人物。\n因为「爱德蒙·唐泰斯」在巴黎完成激烈的复仇后，\n抛弃了自己的恶行……而作为从者现界的自己，\n将继续作为「复仇鬼的偶像」而存在。\n他表示既然如此，那自己就不是爱德蒙。 
98	3	库·丘林在女王梅芙的愿望下转变而成的姿态。\n作为狂王库·丘林侵蚀着美国大地。\n不同于生前的狂战士状态，\n而是以与Berserker完全不同的姿态被召唤。\n在受到圣杯辅助的情况下，\n拥有着超越了Lancer甚至是Caster的强度。
99	3	「并不讨厌和我敌对的人。\n　但是，在阿尔斯特的男人中，存在着一个我「想要」，\n却得不到的男人这种事情我绝对无法容忍。\n明明都跟他搭话了，明明都诱惑他了。\n然而不仅没有向我献媚，\n反而一副“你在干什么”的那种态度！」\n「不能原谅。不能原谅不能原谅不能原谅不能原谅\n不能原谅！绝对，要把那家伙──」\n「阿尔斯特的库·丘林！\n以所有男性的恋人同时也是支配者的梅芙之名发誓！\n绝对要让你屈服于我！」
100	3	作为从者存在的她能操控以神智学为基干的，\n自古到近为数众多的魔术，是个全能型Caster。\n她也尝试着操控过古代埃及魔术，\n以及圣堂教会的洗礼咏唱，\n但貌似她还是不太擅长古代的魔术。
101	3	即使是罗摩，也曾经有过一次致命的失策。\n就是介入了猴国内战，为了帮助猴王须羯哩婆，\n而将其敌人波林以偷袭的方式杀死。\n这是无法原谅的行为，\n这样说着的波林之妻对罗摩施加了诅咒。\n“即使你能救回你的妻子，\n你们也永远无法共享这份喜悦。”\n……这份诅咒，至今也依然束缚着他。
102	3	清朝末期，出生于沧州的李书文在修炼八极拳之初，\n就已经开始崭露头角，直到被称为拳法史上最强为止，\n比起熟学百艺，选择了精通一门并修炼至极致的他，\n正如字面一般体现了一击必杀的精髓。
103	3	发明王爱迪生的事迹也没必要再多说了。\n比起新发明，将前人的发明以更容易普及的形式，\n进行再构筑……在这一点上无人能出其右。\n\n现在日常使用的大多数产品，\n都是基于爱迪生的发明而来。
104	3	给墨西哥士兵带来恐慌的他被称为「杰罗尼莫！」\n（圣杰罗姆，因为如狮子一般战斗而驰名的圣人），\n之后，他的名字就变成了杰罗尼莫。\n\n使他的名声达到巅峰的，应属第三次投降前的战斗了。\n面对拥有着数倍于己方军力的对手，\n杰罗尼莫只身前往暗杀司令官，并且获得了成功。\n然而，司令官在那个时候，\n已经发出了「剿灭阿帕切族」的指示。
105	3	严谨的态度让他为众人所接受，\n然而作为亡命之徒的宿命，\n他被卷入了雇主——牧场主约汉·坦斯托尔的组织战争。\n而这场俗称林肯郡战争的结果，\n是比利小子被曾是友人的保安官派特·贾雷特逮捕。
106	3	原本的贞德并非英雄而是圣女，\n因此绝对没有「以另一面召唤」的可能。\n这位黑色圣女的根本，是基于吉尔·德·雷的愤怒……\n以及偏见与单方面的执念……将这些混杂在一起，\n从而产生的原本根本不可能存在的“另一面”。\n对法国进行复仇的龙之魔女。\n对于那些理所当然地述说自己的正义，\n以及对此毫无疑心的各色人等产生怒火，进而为之所驱使，\n这才是吉尔·德·雷所期盼的圣女姿态。
107	3	教法，为判定恶的教法。\n村落中，为了能忍受日常的痛苦、清贫，才需要教法。\n『我们的生活之所以无法变好，全都是因为恶』。\n无法解决的问题。而在无法被拯救的人们的内心中，\n为了化解这种纠葛，产生了对必要恶的需求——活祭。\n青年被选为「威胁村人善良的恶」、「万事无法如意\n的元凶」、「可以无条件贬低的某种存在」，\n被幽禁在山顶，被推入了人间地狱。
108	3	身高／体重：212cm·130kg\n出处：史实\n地域：马其顿\n属性：中立·善　　性别：男性\n征服王，胜而不灭，霸而不辱。
109	3	圣杯的宠爱：A+\n某个时代的圣杯深深地爱着他。\n这份爱等同于世界最强的诅咒。\n由于本技能的存在，他的幸运级别大幅提升。\n即便是那些没有特定条件是无法突破的\n敌方从者的能力，他也可能突破。\n但这种幸运会残酷地夺取他人的幸福。
110	3	因为对自身进行了「分割」，因此个体数虽然增加了，\n但力量的总量并未改变。\n基于这点，越是分割，单体能力就越是减弱，\n但固有技能的「气息遮断」并不会衰退，\n通过最大程度利用这点，她成了非常优秀的\n「谍报组织」。
111	3	女神的神核：C\n只有完成的女神才会具备的技能。\n虽说性质相近，但她并非由正式神灵所派生出的分灵，\n所以阶级仅限于C级。
112	3	本人不太谈及自己的身世。\n伊吹童子这个别名纯粹是看透了八岐大蛇力量的\n茨木童子所取的名字罢了。\n本人或许早就忘却了自己的过去。\n只要有美味好酒，有华美宴席，\n有能享受的美味佳肴，她就不会有什么恨意了。
113	3	在『西游记』中，本因是释迦如来的弟子「金蝉子」，\n身在天界，但基于「某件事」，落入凡间。\n也就是说，玄奘三藏是金蝉子的转世。
114	3	雅致、清洁且美艳的妙龄女性。\n虽然是认真的职业军人，但只要是与金时有关的事，\n就会变成为孩子烦恼的母亲，还很爱哭鼻子。\n看上去虽然是个温和有理智的人，\n但由于本质并不是人类（混着神性），\n所以会用俯瞰、纵观大局的角度判断事物。\n与之相反，对自己喜欢的对象则非常重情义，\n是「为了儿子不惜与世界为敌」的母性爱的化身。\n对她来说，「恋人」等于「自己的儿子」。\n本人压根没有意识到这种判断基准存在偏差。
115	3	扬善，惩恶！\n对性格败坏的家伙发动特攻一击！\n不过这也要看心情。\n有时候会忘记一切麻烦事，\n骑着爱骑驰骋，化为一阵风——
116	3	实际上――据说茨木并非酒吞童子的部下，\n而是作为「大江山鬼众的魁首」而存在的。\n（虽身为强大的存在，但由于过度沉溺于享乐，\n酒吞压根没打算亲自统治鬼群）
117	3	与出身情况类似，同样不清楚他们究竟是经历了什么，才会居住到风间谷。\n有种说法甚至主张他们是从大陆移居而来的骑马民族。风魔众决不暴露自身的出身。总之他们通过惊人的集团战法，给各种人带去了恐惧。\n而他们的头领，正是风魔小太郎。
118	3	很多传记都记述称，他与摩西是共同长大的义兄弟。\n根据这个传说，统领大军追击摩西，\n试图阻止摩西带领犹太民族『出埃及』的埃及王，\n正是奥斯曼狄斯。
119	3	她就是在卡姆兰之丘亲自归还圣枪，\n同时自己也归于大地的天之英灵。\n但是与她有着相同外貌的从者『狮子王』，\n因未能在本应迎接死亡命运之时死去，\n结果成为了手持圣枪徘徊于世的亡灵。\n继续持有圣枪的『狮子王』因彻底神灵化，\n故而有着与她完全不同的精神内面。
120	3	虽是作为傀儡而被推上王座的女王，\n但她同样有着身为神之子，\n同时也是形同半神的法老的清晰自觉。——即便如此，\n在太阳王奥斯曼狄斯或征服王伊斯坎达尔等，\n这些伟大的法老面前，她仍不免有所心虚。
121	3	永恒的理想是不存在的，\n兰斯洛特正是导致了\n亚瑟王传说步入黄昏的根本原因。\n他对自己施以惩罚，\n希望以此令王理解人类的极限，\n然而结果并未能达成他的目的。
122	3	崔斯坦在之后，成为了其叔父马克麾下的骑士。\n崔斯坦作为一名优秀的骑士侍奉其主——\n而王也对这名眉清目秀的骑士抱以深厚的信赖。\n\n然而，有一天，崔斯坦和一名叫伊索德的女性坠入爱河。\n不，应该说是不幸坠入爱河。
123	3	与温和笑容相称的白马王子。\n一本正经的性格却没有任何让人觉得沉闷的地方，\n无论对谁都能做到认真而真挚地应对。\n虽然会出现冲动的情况，\n但绝对不会抱有嫉妒与怨恨等负面情绪，\n无论在怎样的战场上都是十分清爽的状态。\n其他的圆桌骑士这样说过，\n「完全不令人讨厌这也算是一种才能吧」。
124	3	美少女的外貌，其实也不过是暂时的。\n其肉体百毒不侵，同时也是剧毒的集合。\n其指甲自不用说，哪怕肌肤或是体液，都可作为猛毒，\n悄无声息地在闺中夺去王侯将相的性命。
125	3	作为谢礼，龙神们赠与俵藤太可以产出无限大米的米袋。\n在这之后，传说俵藤太历经对百目鬼等的讨伐，\n最终完成了击杀身为不死魔人的平将门的壮举。
126	3	本作的他，是活在\n「未能将圣剑还给亚瑟王的if」中的贝德维尔，\n亚瑟王在未能见证归还圣剑的情况下便已离世。\n为了赎罪，他怀着「这次一定将圣剑归还」的愿望，\n度过了漫长的岁月。\n最终，在阿瓦隆精疲力竭。
128	3	『常夏日光·遮阳伞宠爱一神』\n阶级：C　种类：对人宝具\nTokonatsunikko Hiyokegasachouaiisshin\n「遮阳」加了「除魔」的存在。\n其中包含了击退所有纠缠御主的坏虫子的愿望。\n在某个世界也被称为「一夫多妻去势拳」。\n当然，是男性特攻的。\n详细内容（大概）罗宾汉会比较熟悉。
129	3	『阳光璀璨胜利之剑』\n阶级：A　种类：对人宝具\nExcalibur Vivian\n明明都说自己是Archer职阶了，结果还是用这套。真是幼稚。\n「但原本誓约胜利之剑就是湖之妖精托付给我的东西，就算有水属性也没什么好奇怪的吧？」\n对此，小阿也只能苦笑。
130	3	秀丽贵夫人（海）：A\n不是以统率力的形式，而是能吸引周围人的领袖魅力。由于与沙滩之花技能的复合效果，只要存在，玛丽就会被周围人奉为海边公主。……请仔细看。现在保护玛丽免受敌人袭击的，可不只有装作正好路过的音乐家、刽子手以及白百合骑士……
131	3	沙滩之花：A+\n在海边究竟能聚集多少视线。\n既然是A+，那已经是到优雅领域了。\n安妮·伯妮绝不是什么著名的英雄，但她能用自己的肉体美，不分男女吸引所有人的爱恋目光。
132	3	『掌控翻涌波涛王者心境！』\n阶级：A　种类：对波宝具\n有效范围：1～5　最大捕捉：10人\nPrydwen Tube Riding\n用普利多温（Prydwen）使出被誉为冲浪最高级难度的Tube riding（就是穿越波浪隧道的那个）来发动攻击。\n使用期间有种支配海洋的帝王感。
133	3	沙滩危机：A+\n在海边究竟能「聚集」多少视线。\n和沙滩之花不同，连超越爱恋领域的视线都会集中于此。\n斯卡哈只是普通行走，就有可能令海边陷入混沌境地。
134	3	恋之追踪者：A\n跟踪的强化版技能。在炎炎夏日，清姬加速了体内引擎。咆哮的脏腑、加速的肺、呼吸中充满了硝基的气味，无论对方身在何处，都能以超高高速开始追踪。
135	3	水边圣女：B+\n在船上漂流，在罗纳河边压制了塔拉斯克的玛尔达和水的关系很密切。这次的泳装强化了这种性质。当意识到在水边时，玛尔达的攻击力就会上升。精神百倍。
136	3	驯服奇妙的杖子，\n打开寡言少女的心灵，\n将企图杀害自己的少女当做家人迎接，\n总之适应能力与沟通能力极为强大。\n说得难听一点就是容易被影响的体质。\n在不断被影响的过程中，终于来到了迦勒底，\n不过应该也能适应这里吧。\n只要有魔法杖、追求未来的意志，\n以及可爱到有些狡猾的可爱，一定能行。
137	3	对借用哪位英灵造型一事尚无自觉。\n只继承了这位英灵锻炼的战斗技术。\n小黑会以瞬间思考能力奔放地运用自己的高战斗力，\n感到这是一种威胁的凛为她施加了痛觉共有的诅咒。\n目的是通过让她与伊莉雅共有痛觉，\n来让她遏制对伊莉雅的危害，\n但对这个小恶魔来说，这种程度的障碍丝毫无法阻止她。
138	3	双重职阶：E\n通过Lancer与Caster合体诞生的\n令人惊异的变异体。\n然而并没有因此得到什么特别的好处。\n\n魔力放出（勇气）：D\n虽然是魔力放出，但属于世间稀有的内向型。\n能提升防御力。微妙地开心不起来。
139	3	虽说举止很有女王风度，但本质还是很讲礼数的，\n是在意周围人的心情，努力维持平稳的品格高尚之人。\n在别国使节团到来时，之所以先怒斥他们一顿，\n其实都是为了他们的健康着想，\n\n「在妾身的国家里，妾身就是绝对的标准，\n　无论是谁，只要丑陋，就和奴隶没什么差别。\n　哼，你们觉悟吧，下级而劣等的蠢男人们！\n　尽情在这里彻底放松好好休息吧！」\n\n诸如此类，她总会用最高级别款待使节团。\n为此，虽然知道会遭到克娄巴特拉的怒斥，\n但为求谒见，来访的使节团依然络绎不绝。
140	3	弗拉德三世为保卫瓦拉几亚独立，不择手段，\n被土耳其方视作魔鬼般厌恶。\n时值1462年。\n为了以1万兵力对抗15万土耳其大军，\n弗拉德三世下达了焦土战术与游击战的指示。\n不仅让民众逃进喀尔巴阡山脉，\n还让整座首都化为空城，并迎击土耳其军。\n当时首都特尔戈维什泰周边排列着的，\n是超过2万名被穿刺了的土耳其士兵的身影。\n\n屹立于特尔戈维什泰要塞周围的无数被穿刺的尸体。\n这异样的光景与恶臭令以勇猛著称的土耳其士兵们\n完全丧失了斗志。\n据说连被誉为“征服者”的勇猛的穆罕默德二世\n都留下了「我不害怕任何人，但恶魔另当别论」的话，\n并带领军队撤退了。\n当时穿刺的原野长3公里，宽1公里。\n据说日后奥斯曼土耳其帝国在占领瓦拉几亚之后，\n也由于这次心理阴影，同意了瓦拉几亚的自治权。
141	3	性格严格来说更像原来的贞德。\n也就是非常认真、死板、偶尔会胡来，万不得已的时候不惜使用非法手段，就算不是万不得已，也会采用更有效率的非法手段之类的。\n\n和原本贞德不同之处在于，一旦陷入恐慌，\n就会慌张得手足无措以至于哭泣，令周围陷入混乱。\n她本人似乎觉得看到成年后的贞德·Alter\n自暴自弃的样子会很丢人。\n\n「至今似乎仍对自己成为从者的事感到不好意思，也不知道该如何应对御主，真是个让人没辙的人啦！」\n\n这乃是贞德·Alter·Santa·Lily的意见。\n不过本人其实也挺想对御主撒娇的，\n但她也压根不知道该怎么撒娇。\n从这点来看，真不愧是贞德·Alter成长前的样子。
142	3	『山脉震撼明星之薪』\n阶级：A++　种类：对山宝具\nAn Gal Ta Kigal She。\n在苏美尔神话中，伊什塔尔做过的\n最具「破坏性」，最「残忍」的行为——\n就是凭一句“只是看不顺眼而已”，\n就蹂躏了诸神之王都敬畏的灵峰艾比夫山，\n让整座山死绝这个传说化为的宝具。\n美索不达米亚神话曰，伊什塔尔闯入艾比夫山，\n每走一步就提升其神威，最后甚至一把抓住山脉之巅，\n用枪刺入地脉的心脏部分，令艾比夫山脉彻底崩溃。\n\n根据这个传说，在使用宝具时，她会先瞬移到金星，\n使用管理者的权限，将金星的概念收入手中，\n并作为概念行星塞入马安娜的弹仓中发射，\n完成这种连神都会感到恐惧的行为。\n别称为Jebel Hamrin Breaker。
143	3	战斗力与英雄王吉尔伽美什全盛期几乎等同。\n在史诗中描述的与吉尔伽美什的一战中，\n他发挥出了与被誉为人类史最强英雄之一的他\n不相上下的性能。\n\n是孤傲的吉尔伽美什王首次选出的朋友，\n他自身也将吉尔伽美什视为独一无二的朋友。\n在乌鲁克市的战斗后，\n成为了朋友的吉尔伽美什与恩奇都经历了众多冒险，\n最终在与神兽古伽兰那的战斗后殒命。
180	3	夏日休假！：A+\n海伦娜在一心决定今年夏天自己也要玩个痛快后，\n进而获得的技能。\n由原本（Caster）海伦娜拥有的\n伟大灵魂技能变化而来。\n是作为 Archer 活动的海伦娜的核心。
144	3	本来是男性神。\n在现界时获得了身为女性神的存在。\n本人表示，或许是在长时间被视为\n同一存在的金星的影响下，导致被\n金星=美神维纳斯（阿佛洛狄忒）的印象牵连所致。\n\n南美的神与其他神话体系有很大的不同，\n他们南美的诸神会通过『转移到人类身上』的方式活动。\n魁札尔·科亚特尔神也随地域不同，被确认有复数存在，\n或许某个时代的魁札尔·科亚特尔会以女性体出现。
145	3	领袖气质：A+\n身为最优秀王者的吉尔伽美什身为贤王的领袖气质。\n具备仿佛带有魔力或是诅咒般的极高魅力。\n\n魔杖支配者：EX\n表现了身为能操控多彩魔术礼装的\nCaster吉尔伽美什王存在方式的技能。\n被赋予了魔术系的攻击加成。\n只要用心战斗，就会善待道具。\n他就是这么一位王。
146	3	『女神的拥抱』\n阶级：B　种类：对人宝具\nCaress of the Medusa\n原来的美杜莎（Rider）作为技能具备的能力，\n也就是当前状态的美杜莎\n将在『未来』获得的存在作为宝具使用。\n当用手中的屠戮不死之刃攻击之后，\n能将视野中捕捉的对手瞬间石化的\n最高级别魔眼「库柏勒」的效果。\n她就是以此为轴发动猛烈攻击的。
147	3	变转之魔：B\n英雄或是神生前转变为魔的表现。\n通过强调过去的事实，\n来大幅强化身为从者能力的技能。\n戈耳工实现了作为人身绝对不可能达到的\n筋力与耐久力的阶级。
148	3	拟似从者。\n豹子纳瓦尔通过附在特定人类身上，\n作为分灵实现现界。\n自古以来，据说拥有豹子纳瓦尔的人类\n都会拥有超自然的力量。\n纳瓦尔传说一直流传到了现代。\n\n另外，附体的选择基准是在于圣杯有缘的人中间，\n选择最具野性力量以及野性宿命的人。
150	3	『永世隔绝的理想乡』\n阶级：C　种类：对人宝具\nGarden of Avalon。\n在周围再现至今仍幽禁着梅林的『塔』的景象。\n地面开满了鲜花，无论在何种黑暗或是地狱，\n都能令温暖的阳光洒向地面。\n哪怕他被允许的空间只有区区十平方米的四边形牢房，\n哪怕他被给予的景色只有遥远上空被划分出来的天空，\n那里也会作为理想乡永远存在下去。\n\n花之魔术师梅林所在之处不是地狱，\n而是充满了希望的大地。 \n\n幻术：A\n能迷惑人的魔术。\n指介入精神，并在现实世界投影虚像。\nA阶级的存在不仅能令精神世界化为噩梦，\n更能轻松在现实世界创造出\n一个村落规模的虚像，欺骗人们。
153	3	开朗活泼，凛然而又娇艳的女性剑士。\n总是春风得意，泰然自若，但并不会看不起对手。\n只是很享受人生罢了。\n感情表现略有些夸张。常会笑，常会惊讶。\n对大多问题都会一笑而过，性格豁达大方，\n但本质却是“钻研剑道之人”，在事关人命的问题上，\n是非常冷漠＆严厉的。\n\n话虽如此，却很容易着迷，最喜欢被人依靠。\n也最喜欢被人夸奖。禁不住赞辞。喜欢打架的大姐气质。\n虽然是正义之士，但自己不会主张正义。\n基本是个飘浮不定无忧无虑的流浪者，\n但遭遇『单方面虐杀』、\n『为了娱乐，践踏人的尊严与信念』、\n『在人饿肚子的时候抢走食物』这类情况时，\n就会修罗化。
154	3	教团的腐败，也就意味着首领『山中老人』的堕落。\n因为无论是精神的堕落还是技术的堕落，\n衰退之人是不能被赐予『山中老人』的名号的。\n衰退意味着死。通过斩断首级来宽恕其罪行，\n并成为托付给下一个『山中老人』的希望。\n为了赐予暗杀暗杀者这不正常的职责以大义名分，\n这位人物不使用隐藏的武器·暗器，\n而是选择了能正面战斗的大剑作为武器。\n当见到这骷髅的时候，这个人类已然终结。\n在为违反教团教义的愚者降下制裁后，\n见过骷髅剑士身影之人就会从世间消失。\n据说葬送了众多Assassin的他会一直潜藏在黑暗中，\n直到暗杀教团毁灭。\n作为活生生的传说，没有任何目击者的暗杀者之深渊。\n那就是这位骷髅剑士。
155	3	态度认真谨慎的少女。\n喜欢的东西是甜品。一有机会就会要求高级和果子，\n她的饥饿其实还挺费钱的。\n休息的日子里，她会躲在黑色圆桌型被炉里一步不出，\n读读书听听音乐地度过。\n\n基本上比较懒散，怕麻烦。\n对他人的命令和指挥虽然会反唇相讥，\n但不可思议的是最终还是会老老实实地服从。\n用甜点勾引她比较方便。
156	3	?
157	3	嗤笑铁心：A\n反转时被付与的精神污染技能。\n与精神污染不同，是作为固定概念被强加的，\n近乎于某种洗脑。\n被付与的思考推崇以守护人理为最优先事项，\n除此以外一切均可舍弃的守护者原本的存在方式。\n若没有A级的付与，\n这男人是无法以反转状态充分发挥力量的。
158	3	?
159	3	?
160	3	领袖气质：B\n指挥军团的天生才能。\n这次的亚瑟被特化成擅长与巨兽战斗。\n与巨兽战斗时，同伴并不会追随左右，\n只有他孤身一人，所以没有发挥领袖气质的余地。\n\n巨兽猎手：A\n亚瑟王与蹂躏不列颠的众多魔兽战斗，\n将它们悉数打倒。\n是表现了他擅长与巨大敌对生物战斗的技能。
161	3	局中法度：EX\n　其一，不得违背武士道精神\n　其二，不得离队\n　其三，不得私自赚钱\n　其四，不得擅自卷入官司\n　其五，不得私斗\n是对自身施加强制束缚的技能。\n一旦违背禁令，就会受到伤害，\n但反之会令能力提升。
162	3	黄金律（凶）：B\n能自由使用号称收集了全日本黄金的天下人的黄金。和纯粹浪费狂的茶茶相性极佳的技能。\n「哎？　钱？　殿下会付的！」
163	3	『弁财天五弦琵琶』\n阶级：EX　种类：对人宝具　有效范围：20～500\nSarasvati Meltout\n由于舞台不是完全的SE.RA.PH，\n因此对原本的能力进行了限制，调整成物理攻击特化型。\n\n本来不是对人，而是对众、对界宝具。\n不是用于战斗或是对战士使用，\n而是针对建立了一定文明的文明圈使用的存在。\nMeltryllis的蜜不仅能令肉体，\n还能令精神甜美地融化。\n这宝具能让集团理性、道德融化，\n并一体化出类似群体的存在。践踏这种身心与社会全部\n泥浆化的存在，并予以吸收，这才是该宝具原本的力量。\n对非战斗人员能够发挥极大效果，\n这充分体现了Meltryllis的性质有多么恶劣。
181	3	狂化：C\n用理性做代价，强化自己身体能力的技能。\n哪怕成了 Lancer 职阶，她的精神却还存在些许问题，\n只是和身为Berserker时有着巨大的差异。\n那就是，道德感。\nLancer 源赖光凭借自身的道德意识，\n监视着暑假期间扰乱风纪的行为。\n然而她却丝毫不在乎自身的打扮，\n因此精神问题依然未能消除……
28	4	红颜美少年：B\n能够吸引他人的美少年的性质。\n无论对象是男是女，都能发动魅惑的魔术效果，\n然对方若有抵抗的意愿则会减轻效果。\n拥有对魔力技能则可完全回避。
164	3	『纵使死亡分离两人』\n阶级：C　种类：对人宝具　最大捕捉：10人\nBrynhild Romantia\nAlterego们的宝具是通过非法改造正规宝具而来的，\n作为材料的从者是『沃尔松格传』中登场的瓦尔基里——\n布伦希尔德。为了报复背叛了自己，\n伤害了名誉的丈夫齐格鲁德而挥动的爱憎之枪。\n虽说Passionlip的宝具也拥有这种性质……\n对对方的爱越深力量就越强大，但那都是过去的事了。\n曾经呐喊着『直至死亡拆散两人』的内心\n现在已经变革为『纵使死亡分离两人』的愿望。\n分别迟早会到来。哪怕最终是不欢而散，\n或是背叛，都无法否定爱情本身。\n「无论是怎样的分别，\n　我都相信在分别前的爱是真实、永恒的。」\n正如Lip所愿，这并不是为了憎恨所爱之人，\n而是为了保护所爱之人的力量。\n正可谓纯洁无瑕且成熟的圣女力量。
165	3	『天鬼雨』\n阶级：B+　种类：对军宝具\n有效范围：1～40　最大捕捉：250人\nTenkiame\n准确说应该是文殊智剑大通连。\n爱剑·大通连分裂成最多250把，\n毫不留情地向敌人落去的神通力。\n作为与生前丈夫拥有的大通连夫妻剑素早丸的连携技，\n据说本来能降下500把剑雨。\n现在则将包含着回忆的发簪代替素早丸，\n通过接触漂浮在半空的大通连来发动天鬼雨。\n射击精度相当粗糙，但在「才智的祝福」发动时，\n可以做「掉落在自己周围时唯独避开自己」等细微操作。
166	3	『C.C.C.』\n阶级：A　种类：对人宝具　有效范围：1～10\n最大捕捉：1\nCursed Cupid Cleanser\n过去BB运用的是灵子虚构陷阱\n（Cursed Cutting Crater）这个宝具，\n但基于「咦，用了那么多次，都腻了。\n这次的主题是可爱＆治愈！　\n啊，但就算成为各位的同伴，\n诅咒的部分还是不会消失的。\nBB亲的诅咒可是永恒的！」\n综上所述，她一脸得意地展示了新招数。\n\n提取Mooncell的力量，变化成无敌护士。\n顺势在自己领域的虚数空间中提取出恶性情报，\n用混乱的存在覆盖周围频道（共通知觉）。\n展开固有结界『BB频道外联版』，\n将对手扔进混乱的坩埚。……说了那么多，\n实际就是换装成护士BB，并用注射器发动的攻击。
167	3	对祈荒来说，「人类」只有自己一个，\n除此以外的人类全都不过是拥有人类外形的野兽或蝼蚁。\n所以，她的爱虽然面向外界的一切，\n但最终目标都是“为了自己”。\n\n不仅将性的快乐，\n还将周围那些『为了自己』而消耗人生，\n最终自我毁灭的生命视为极致快感的错乱者。\n为此可以被侵犯，可以被杀害。\n可以侵犯，也可以杀戮。\n总之只要靠『杀生院祈荒』这个女人的身体\n终结这个人类的人生即可。\n祈荒会见证这一切，\n感受着恍惚，露出微笑。\n其模样如同见证人们人生的慈悲菩萨一般。\n……对于在被玩弄于她股掌之中的人来说，\n哪怕是通往破灭之路，其过程一定也犹如天上极乐吧。
169	3	山鲁亚尔王重复着与处女结婚一晚便杀害对方的行为。\n身为大臣之女的山鲁佐德为了阻止王的恶行，\n主动要求与王结婚。\n山鲁佐德在与王共度一夜之后，叫来了妹妹敦亚佐德，\n并设计让她向自己撒娇要听故事。\n王非常中意山鲁佐德向敦亚佐德说的故事，\n还想继续听后续，然而天已经亮了。山鲁佐德表示\n「明天的故事会更精彩」。\n就这样，王为了倾听山鲁佐德的故事，\n不断让她活了下去，最后——\n……现在可以阅读到的近千个故事中，\n大部分都是后世译者们追加的内容。有说法表示，\n作为核心的最初故事集只有两百多个故事，\n也不存在结局。
170	3	据说武氏指认王皇后为杀害自己孩子的犯人，\n并让她与宠妃萧氏失势，自己坐上了高宗皇后的宝座。\n据说当时，武氏斩下了两人的手足，并扔进酒缸中处刑。\n由于一连串的事，甚至有人猜测或许正是武氏杀了自己的孩子，并将罪名嫁祸给皇后——\n但真相不得而知。 
171	3	?
172	3	到达了目的地的哥伦布做的第一件事——\n就是从那里的原住民身上掠夺有价值的东西，\n并将他们作为奴隶带走。\n已经没有人能阻止发现了新天地的他了。\n他很快就开始了第二次航行，并陆续发现了新的岛屿。\n当然，哥伦布率领的西班牙人对原住民施行的杀戮、\n凌辱、掠夺也毫无止境——\n
173	3	天赋的见识：A++\n能发现事物本质的能力。敏锐的观察力不会放过任何情报。\n虽然与千里眼的原理截然不同，但能做到与千里眼预知未来几乎等同的预测。\n\n巴流术：B++\n学会了极为适合实战的东洋武术。\n夏洛克·福尔摩斯除了使用这个技能与拳击组合而成的打击术以外，还很擅长防御反击与投掷技。\n只要条件符合，甚至能作为宝具真名解放级的绝技来使用……
174	3	班扬爱着人们，坚信文明的发展会给人们带来幸福，开拓着未开垦的土地。为了让众人过上富裕的生活，会毫不犹豫地破坏雄伟的大自然。\n然而年幼的班扬尚不理解这会给将来的人类带来什么样的后果。
175	3	『讴歌荣耀的黄金剧场』\n阶级：A　种类：对军宝具　最大捕捉：500人\nLauda Lentum Domus Illustrius\n本以为只是在黄金剧场里追加管乐器，\n但该管风琴已经完全成了炮门。\n这是出自何种想象力的产物，设计师的精神还正常吗，\n但管风琴确实很像炮门吧。\n歌剧要塞就是经过了这种复杂经过而诞生的。\n\n获得了『讴歌之人』灵基的尼禄最大程度发挥了其才能。\n黄金剧场是不仅能让歌声响彻剧场内，\n甚至还能将歌声扩散到剧场外部的野外舞台。
176	3	骑乘：EX\n弗兰亲居然能搭乘巴贝奇火车头模式哦。\n这形象，宛若今日小狗。\n今日弗兰。\n\n对魔力：E\n由于非常倦怠，因此几乎无法抵抗。\n\n狂化：E\n连说话，都嫌麻烦。
177	3	白色御衣：A\n尼托克丽丝身披的白色御衣。\n据说此御衣乃是受梅杰德神宠爱与佑护的证明。\n由于这事实乃本人的主张，实际究竟如何不得而知。\n\n海滩恐慌：EX\n那是啥……？\n什么……？\n不知是不是缘于梅杰德神的佑护，\n身披白色御衣的尼托克丽丝哪怕站着什么都不做，\n也会异常受众人瞩目。
178	3	『第六天魔王波旬～盛夏～』\n阶级：E～EX　种类：对神宝具\nNobunaga THE Rock \\'n\\' Roll\n能消灭神佛的魔王信长真正宝具……的小规模改造版。\n变生成能对拥有神性或神秘之人发挥极大效果的\n固有结界的限定解放状态。\n解放状态的信的背后会出现谜之巨大骸骨（暂定名），\n发挥魔王般的实力。
179	3	『不挠燃烧胜利之剑』\n阶级：A　种类：对人宝具　最大捕捉：一人\nSequence Morgan\n亚瑟王拥有的『只会带去死斗场面』的短剑，\n乃塞克安斯与誓约胜利之剑的合体宝具。\n\n尽管塞克安斯变成了小型自动手枪的样子，\n但通过与誓约胜利之剑组合，可化为大型狙击枪，\n在污秽的外敌入侵『主人的领地』前，击退敌人。\n虽说怎么看都是反器材步枪，\n但如若不希望自己漂亮的脸蛋遭重击，\n就千万不要提及这件事。
182	3	『神峰天回明星之虹』\n阶级：EX　种类：对人宝具　有效范围：0～？？\nAn Gal Ta Seven Colors\n由于马安娜化为了现代风的交通工具，\n真名也被变更成现代风。\n全力享受夏日的样子。\n骑着马安娜小摩托，游览地球上各种度假胜地，\n心情愉悦，并将这种快乐的心情转换成魔力，\n播撒向大地的虹之宝具。服装变更也无比美丽，\n洒向地面的魔力化为闪烁的星星，给敌人造成伤害。\n本人心情快乐而美好，却给地面造成了大麻烦。
183	3	『知恋不为，无爱也』\n阶级：EX　种类：对军宝具\n有效范围：5～10　最大捕捉：30人\nTrishula Shakti\n帕尔瓦蒂从湿婆处借来的三叉戟，特里修拉的限定解放。\n基于湿婆借给她的武器，帕尔瓦蒂的职阶才得以确定。因为特里修拉，帕尔瓦蒂得到了Lancer的职阶资格。\n当然，她是无法像湿婆那样发挥武器真正价值的，但这样反倒协助守住了从者的规则。
184	3	?
185	3	?
186	3	然而，胤荣却抛弃了枪。\n「一心向佛之人学习枪术并非本意。」\n「倘若一心向佛，就该舍弃枪。」\n同样这么吩咐了继承者的胤舜后，\n他在八十七岁高龄圆寂了。\n\n然而，胤舜并没有放弃枪术。\n表示身为宝藏院之人，就该兼顾佛之道与枪之道——\n在胤荣死后，他复兴了宝藏院流枪术。
187	3	擅长预测，记录称其在第一时间就意识到\n岛原之乱将会扩大。\n宽永十四年（1637年），刚接到天主教徒发动叛乱的\n消息后没多久，宗矩便拼命阻止被任命为讨伐使的\n板仓内膳正重昌。当将军家光问及为何要这么做时，\n宗矩回答「宗教教徒之战都极为重要」\n「重昌阁下一定会战死沙场」。\n\n事态发展完全如宗矩的预料。\n凭借一万五千石大名的重昌，是不足以率领西国大名的，\n结果无奈陷入苦战。认识到状况严重性的将军家光\n派出了重臣·松平信纲担任总大将，\n而得知了这个消息的重昌感到心焦，\n急着在信纲赶到前向敌阵发起了突击，最终惨死沙场。
188	3	人造四肢（机关）：A++\n肉体是人造机构，尤其是由木制机关构成的。\n会为与战斗相关的行动判定、\n技能成功判定追加额外效果。\n在A阶级的情况下，\n说明不仅四肢，连全身都是人造的「机关人偶」。\n\n忍术：A\n忍者们使用的谍报技术、战斗术、盗窃术、\n拷问术等的总称。各流派的系统各不相同。\n由于加藤段藏搭载了风魔小太郎（初代）的技术，\n因此流派是隶属风魔忍群的。
189	3	千代纸操法：EX\n能自如地操控折纸。可以与攻击、防御、变化相组合，\n用于作为诱饵等各种形式。\n\n变化：A+\n第一次出现在人类面前的时候，\n化作17、18岁左右身着十二单的女人，\n或是身高将近一丈的鬼神等各种各样的形象。\n尽管很朴素，但在日本的化生中属于顶级水准。\n\n城中妖怪：A++\n从神社等地方移居到城里居住的怪物的总称。\n还有传说说刑部姬才是姬路城真正的主人。\n只要看到她的模样就会遭诅咒，或是直接死去。\n反过来说，她具有只要远离这座城，\n力量就会显著衰弱的弱点。
190	3	『钢铁天空魔女』\n阶级：B　种类：对军个人宝具\n有效范围：40→1　最大捕捉：1人\nBreast Zero Erzsebet\n用机械伊丽亲的全部武器全部攻击一个人，\n终极私人演唱会（Ultimate Private Live）。\n可对军使用，也可对人使用的暴行。\n\n最后的暴风之声看上去像镭射兵器，实际只是噪音。\n是将内部的Dragon lung（龙肺）以最大输出\n解放后的余波。肺可通过空间压缩，\n拥有一整个东京巨蛋分量的空间回声，\n就算没有恰赫季斯城那种增幅器，\n也能发出与伊丽莎白·巴托里同级别的破坏音波。
191	3	『钢铁天空魔女』\n阶级：B　种类：对军个人宝具\n有效范围：40→1　最大捕捉：1人\nBreast Zero Erzsebet\n用机械伊丽亲的全部武器全部攻击一个人，\n终极私人演唱会（Ultimate Private Live）。\n可对军使用，也可对人使用的暴行。\n\nⅡ号机虽然对此持否定态度，\n但其思考基准与伊丽莎白·巴托里相同。\n尽管Ⅱ号机凭自身的理性与冷静\n将伊丽莎力封印了起来，\n但唯有在使用最大输出肆虐的时候，\n被封印的本性才会偶尔会暴露。
192	3	?
193	3	『地飞爽灵 火尖枪』\n阶级：A　种类：对军宝具\nChihisourei Kasensou\n通过风火轮的超加速冲向高空，\n并与枪化为一体突击下降的灼热蓄力攻击。\n打算与齐天大圣·孙悟空决战的哪吒想将身为Lancer的\n宝具·火尖枪的威力发挥到最大，从而使出的大招。
194	3	?
195	3	『光壳流溢的虚树』\n阶级：EX　种类：对人宝具\nQliphoth Rhizome\n打开通往与人类不相容的异质世界之“门”，\n给对象的精神、肉体带去严重扭曲的，\n伴随邪恶之树克里夫特（Qliphoth）而生的根茎。\n效果对象受身为“钥匙”的阿比盖尔个人认识所束缚。\n因此才是对人宝具。\n原本具备甚至可被称为对界宝具程度的无限性质。
196	3	『灵峰踏抱冥府之鞴』\n阶级：A　种类：对山宝具\n有效范围：10～999　最大捕捉：1000人\nKur Kigal Irkalla\n\n与伊什塔尔的宝具山脉震撼明星之薪是相同的存在。\n只不过这宝具并不是从天空向大地投掷，而是由地底\n顺着绵延不断的大地发动的冥界女主人之铁锤。\n通过地震、地壳变动来令艾比夫山崩溃的大地震动。\n威力虽然比不过伊什塔尔的金星爆破，\n但这宝具的神髓在于『将地形化为冥界』。\n只要身在冥界就能拥有极大权力的埃列什基伽勒\n会赐予所有与她并肩作战之人强大的守护。
197	3	性格基本还是阿蒂拉的，因为有些低烧，\n所以判断力不如平时，也很容易糊弄过去。\n外表看上去惹人怜爱、可爱程度似乎有所提升。\n由于（多亏了）发烧，文明破坏属性显著低下。\n\n平时的阿蒂拉身为战士的人格占9成，\n身为少女的人格占1成，\n而圣诞老人阿蒂拉身为战士的人格占4成，\n身为少女的人格占了6成。\n阿蒂拉本质还是有少女的性质和浪漫主义色彩的，\n所以能担任圣诞老人的工作让她非常高兴＆激动不已。\n\n或许因为她将御主视为可靠的搭档兼美丽的羊，\n所以称御主为「软绵绵的御主」。\n由于她说服自己，现在的自己不仅是阿蒂拉，\n更是圣诞老人，所以在对人处事上比平时更为柔和。\n为了将闪耀的羊托付给自己的『重要礼物』送达目的地，\n她很直率地请求御主帮助。
198	3	『富岳三十六景』\n阶级：A　种类：对军宝具\nFugaku Sanjurokukei\n\n众人皆知的Mr.北斋大作之伟大波浪（Great Wave）。\n乃是连作浮世绘第二十一作『神奈川冲浪里』。\n钻研自然的表现，宛若处于神灵附体般境地中\n挥洒而出的笔锋具备了神秘的实体，\n为鉴赏者的身心带去冲击。\n通过与深渊邪神进行通信，得以觉醒了的北斋\n陷入了疯狂，画出了独一无二的浮世绘。\n那就是『神奈川异海里兴怀』。\n“表富士”三十六景加上“里富士”十景，\n以及向更深境地踏足的禁忌之笔。
199	3	『虚荣的空中庭园』\n阶级：EX　种类：对界宝具　\n有效范围：10～100　最大捕捉：1000人　\nHanging Gardens of Babylon\n巴比伦的空中花园。\n实际上，塞弥拉弥斯与巴比伦的空中花园并没有关系。\n只是利用了众多误会之人的信仰，作为宝具成立而已。\n\n由于归根结底还是「虚荣」，\n所以宝具的发动条件极为严格。\n只有从存在于中东某年代以后的遗迹处，\n运来一定量的土石并搭建起来，才能做好发动准备。\n其后，通过举行为期三天的仪式，\n作为庭园的机能才能发动。\n\n如字面意思，是作为「浮游于空中的巨大要塞」显现。\n只要身在要塞内部，\n塞弥拉弥斯的能力就会全部提升一个阶级。\n知名度也会提升到最高阶级，\n在攻击时追加更为有利的修正。\n\n在某次圣杯战争中，这座庭园成了决战场地。\n十一防卫术式一一击坠了陆续杀来的飞机，\n但最终被圣女之旗与飞行骑兵的突击突破了防御。
200	3	歪曲之魔眼：EX\n在被称为魔眼的异能中也属于最上级的存在。\n异能中的异能，稀少品中的稀少品。\n无论无机还是有机，所有“作为物质存在的东西”都可被视为一张打印图像，通过扭曲图像，来无视对方的强度、规模进行扭曲与切断。\n\n痛觉残留：A\n分明已治愈，却依然反复的死之痛楚。人类的证明。浅神一族为封印少女的异能，将其触觉封了起来。\n\n单独行动：A+\n并非喜欢孤独，但有下意识独自乱晃的坏习惯。擅长跟踪之类的。魔力耗尽的本人理应非常痛苦，但因为痛觉很迟钝，以至于完全没发现。
201	3	○小恶魔：B\n既是阿纳斯塔西娅曾经的昵称[1]，\n同时也是毕伊（Вий）持有的能力之一。\n将一切微小的不可能化为可能。\n诸如把对方拿着的东西移动到自己手边，\n或是让一小块土地开裂把对方绊倒等等，\n让这种“恶作剧”级别的现象可以实现。\n\n虽然这个能力听起来相当夸张，\n但其有效范围很小，\n也无法将目标杀伤、破坏。
202	3	○自我进化：EX\n比自我改造更加优秀的，对自身的改良技能。\n为了在达成目的的过程中跨越任何障碍，\n让自身以秒为单位不断进行进化。\n但是，由于是重视目的性的技能，\n有着实用性低于自我改造的缺点。\n\n○野兽的理论：B\n变身为野兽后的战斗思维。虽然无法针对对方的弱点，\n但为了迅速击杀对方，思考速度会变得更加快。\n协同自我进化技能使用的话，可以将打倒敌人的速度进一步提高。
203	3	○平稳的无花果：EX\n从传说来看，他被嫉妒他作诗的才华的男人杀死，\n尸体被埋在了无花果树下。\n这颗无花果树结出的果实过于甜美，\n对此感到不可思议的人们挖开土地查看，\n男人的罪行这才被揭露出来。
204	3	○无辜的怪物：EX\n生前的萨列里不曾杀过什么人。\n然而，正是因为广为流传的暗杀传说散布到世界各地，安东尼奥·萨列里才化为了无辜的怪物。\n它与原本是另一个技能的“自我否定”相融合，变成了一种复合技能。\n\n○恸哭外装：A\n萨列里包裹着反英雄的外壳·外装。\n这是他与在关于莫扎特的记录中屡次登场的“灰色之男”——即出现于1791年7月，\n委托莫扎特作了《d小调安魂曲》的死神一般的存在，互相混杂、互相融合而获得的能力。\n战斗时，萨列里会自动穿上这件外装，作为杀戮的战斗机器而行动。\n\n○燎原之火：B\n如诅咒一般，莫扎特暗杀传说的扩散正像是燎原之火。Avenger·萨列里将那些令自己诞生的、\n来自于众人的恶意、中伤、流言蜚语、煽动、令人讨厌的窃窃私语化为自己的力量。\n不仅能立刻削弱敌方全体的精神力，还可以发起强烈的精神攻击。\n若是对方没有魔术防御手段，也有可能令其自杀。
205	3	○矛盾精神：A\n作为俄罗斯的皇帝，伊凡雷帝在确立了中央集权政治的同时也实行了恐怖政治。\n上午，他会在教堂中忏悔自己犯下的罪恶，\n下午，他则会十分高兴地进行对叛逆者的拷问。\n圣人与凶手完全同化一般的精神，\n使他可以随机变换两种属性。\n也就是秩序，或是混沌。\n\n○无辜的怪物（异）：A\n作为人类的同时自称自己是与“神”同样的存在，\n因曾经压制了位高权重的贵族们，\n从而使自己的权力到达了顶峰。\n在俄罗斯，人们将他敬为绝对的皇帝；在西欧，人们则恐惧着他，称他为“恐怖（Terrible）”。\n在冻土帝国时的他，由于与当时被誉为最强的魔兽融合，结果如他所愿——\n他成为了足以支配异闻带俄罗斯的怪物。\n\n○非常大权：A\n伊凡雷帝为支配对立的贵族而谋求的，对皇帝的绝对服从权。\n他对周围的人类释放出强烈的威压，\n可以带来使全能力等级下降的强烈“重压”效果。\n若是普通的人类，就连直视他都非常困难。\n拥有等级B以上的领导力时，可以抵消其效果。
206	3	据说，女神忒提斯与英雄珀琉斯所生下的阿喀琉斯，从幼年起命运就已注定了。\n为此而担忧的母亲忒提斯，为使他进入不死之身的神明之列，用神圣之火灼烧他的全身，想要蒸发他不纯粹的人类之血(另有一说是将他的身体浸泡在冥河之中)。\n然而，此等行为等同于毁掉阿喀琉斯人类的那一面，父亲珀琉斯坚决反对让阿喀琉斯成为完全的不死之身。\n女神忒提斯返回了故乡，英雄珀琉斯几经考虑，将阿喀琉斯托付给贤者喀戎，请他养育阿喀琉斯。\n喀戎爽快地接受了朋友珀琉斯的请求，于是阿喀琉斯就在希腊屈指可数的名师喀戎手下接受了成为英雄的教育。\n数年后，成长为出色青年的阿喀琉斯被乞求参加特洛伊战争，意气昂扬地出发了。\n——当然，对于前方等待他的是悲剧这一点，即使他知道，也是无法让自己停止脚步的吧。
207	3	○永生的奉献：EX\n由献出了不死性，升华为射手座的传说技能化的产物。\n升华为星星后，他成为了从天蝎手中守护人类的存在。\n\n○神授的智慧：A+\n希腊神话中诸神授予的作为贤者的各种智慧。\n除了英雄独有的技能，几乎所有技能都能发挥出B~A等级的熟练度。\n另外，只要有御主的同意，他也可以将技能传授给其他从者。\n虽然在另一场圣杯战争中没有对他人使用这个技能的机会，\n但如今可以在迦勒底尽情使用。
208	3	○单独行动：EX\n他是凭依从者的亚种。在战斗时必须消耗魔力，但不战斗的时候，他就是和普通人类毫无二致的存在。\n他的年龄原本也应该和人类几乎一样……\n\n○人造人：C+\n借用爱因兹贝伦的技术制造出的人造人。\n诞生时偶然产生了个性与使用魔术的能力。\n\n○人工英雄（伪）：B+\n他是由得到的英雄齐格飞的心脏，再加上体内流动的弗兰肯斯坦的宝具电流所制造出的拟似英雄。\n虽然时间短暂，但他可以通过使用龙告令咒以英雄——从者的身份行动。\n\n○魔术：C\n通过魔术回路制造出的人造人所持有的天赋。\n他可以在了解目标的构造后，使用术式完全逆转其构造，无论多么坚固的物质都能破坏掉。\n但是，除此之外毫无用途。\n\n○龙告令咒：EX\nDeadcount Shapeshifter。\n通过使用自身持有的令咒，在短时间内以体内齐格飞的心脏为媒介，变身为齐格飞。\n限制时间大约为三分钟。
209	3	○单独行动：A\n作为抑止的守护者，她可以单独展开行动。由于是以在绝望的状况下显现、单骑歼灭目标、或者是与对方同归于尽为目标进行调整的，该技能等级很高。\n\n○对魔力：B\n与原本的冲田不同，因为预计会与超乎寻常的对手展开战斗，所以她保持着相当于Saber职阶的对魔力。而且还克服了病弱。太狡猾了？就算这么说也……
210	3	○人斩：A\n特化了用刀杀人的剑术技能。\n这是仅以获胜为目的的实践性剑术，与修道者的精神性无关。\n也因此，强力但脆弱。
211	3	○船中八策：A\n由坂本龙马起草的，表现新的国家形式的八条策略。在当时是作为划时代的近代条文被记录了下来。此技能即使在困难的情况下，也会展现通往更好的未来的希望之路。\n\n○维新的英雄：A\n龙马跨越幕末这一动乱年代，为明治维新这一史上少有的一大改革做出了贡献。这便是赋予他的特殊技能。\n\n○领袖气质：C+\n尽管无法治理国家，但却拥有让志同道合的伙伴不惧生死的深厚羁绊。\n龙马的这一技能，强大到甚至有时能让意识形态互相对立的团体联手合作。\n\n○怪力：A\n马力超强的阿龙小姐的技能。明明是龙却使用马力这种谜之衡量标准。\n\n○神性：B-\n非常坚硬的阿龙小姐的技能。\n刀枪不入的柔软肌肤。及地的长发也因太过坚硬反而会把地面削掉。\n\n○暴走：B\n若是触碰颈部的逆鳞，就会进入短期的狂暴状态的阿龙小姐的技能。
212	3	据说，他的字典里没有不可能三个字。\n据说，他在金字塔中遇到了伊斯坎达尔。\n据说，他用大炮击毁了吉萨的狮身人面像。\n据说，法国大革命是秘密组织的阴谋，而他与其有着很深的关联。\n\n一生中不断回应着众人愿望的男人，就如同传闻中“是拿破仑的话，那种程度做得到的吧”这一说法一样，能将众多的不可能化为可能。这种状态，甚至已经可以称为某种超人。
213	3	无论御主身为男性还是女性，只要是能够令其「信任」的人类的话，与他之间的相互理解就并不会那么困难。\n\n与库·丘林等人相同，是个「不执着于第二次生命」的英雄。\n他对圣杯所求之物，恐怕是在追求无法实现的「再会」，于通常的圣杯战争中想要以令咒强制命令他应该是极其困难的吧。
214	3	在本作中现界的瓦尔基里，作为从者来看是特殊的存在。\n具体来说，她们拥有极其破格的灵基。\n\n即使随着与御主的同调率提升，魔力会相应地增加，但并不会像其他从者那样“进行灵基再临，变化为强力的形态”。因为，瓦尔基里的每个个体都各自有着力量的上限。\n按照迦勒底式召唤系统，让瓦尔基里进行灵基再临时，有很高的几率会出现瓦尔基里消失，“符合再定义后魔力容量的其他个体的瓦尔基里”取而代之被召唤的情况。
215	3	丝卡蒂这一名字在古北欧语[1]中为「受伤之人」的意思。\n据旧埃达史诗（Elder Edda）中的『格里姆尼尔（Grímnismál）之歌』所述，她是「不祥的巨人夏基（Þjazi）」的女儿，她与父亲（夏基）一起住在索列姆海姆（Þrymheimr）的一个古馆当中。\n后来她嫁给了北欧的神，被称为「众神华丽的新娘」。\n\n丝卡蒂又被称作斯安德鲁克（于雪上滑行的神）又或斯安德鲁蒂（于雪上滑行的女神），\n据说是在山中狩猎、于雪上滑行的高手。
216	3	可以操控作为使魔的海豚。\n海豚的名字叫做莉丝，听命于贞德，于大地之上阔步又于天空之中翱翔。\n知能也很高，可以一直出现在视野的右侧，不即不离。\n想知道让你这家伙消失的方法[1]。\n另外，那次相遇是贞德救助了受困的海豚，就是这样的单纯而又柔软的Girl Meets Dolphin。
217	3	○鬼种之魔（水）：B\n此技能由显现鬼之异能、魔性的技能变化而来。\n魔力放出的性质也变成了“水”。\n那不就成了河童了吗？茨木感到十分奇怪。\n是因为灵基改变了吗？\n啊不等等。说起来在即将进入夏天的时候，骨头还是其他什么地方似乎有被酒吞童子嘎吱嘎吱地摆弄过的印象，从那之后不知为何总觉得身体的状况发生了变化似的……\n不论如何，既然是酒吞给的东西那肯定没坏处吧！\n茨木微笑着如此想到。真好呢。
218	3	○动物会话：D\n可与不会说话的动物进行沟通。\n因为是源自驰骋于山中时期的年幼感性，所以自下山后（Rider时期）就失去了这一能力。并不是能有模有样的讲出动物的语言，也就是凭着感觉来。\n平常的时候偶尔会蹦出一两句像是狸猫话的句子来，可能就是从曾经的修行时代残留下来的。\n\n而且，如果质问她为什么是Assassin职阶的话，\n「为了用木刀从睡着的师父大人那里赢一招，就以林中的动物们作为练习对象一直在进行隐身的修行这种事，就是这样。」\n「骗人的吧，就因为这样就Assassin了？」\n「哈啊。毕竟我是天才嘛。」
219	3	对Master的态度还是老样子、认为自己和Master待在一起、跟着Master走是理所当然的事情。\n话虽如此、但关于夏天的骚乱、社团活动被卷入其中的事情还是稍微有一点点内疚的。\n只有一点点。
220	3	BB所安装的神性一共有两位。\n其中一位是夏威夷的女神佩蕾。\nBB与既是夏威夷岛火山的化身，又是不死之身的女神佩蕾同化，使得肌肤变成了与南国相称的小麦色，性格也变得更富有攻击性。\n黑皮BB，就这么诞生了。\n安装了『暴力、任性、与她扯上关系的基本都会杀掉』的女神佩蕾的神性的BB变成了『将喜爱之物逼至死亡的抖S女神』。\n「但是，和平时比起来并没有什么变化啊？」\n被BB折腾得狼狈不堪的御主如此说道。
221	3	○白色甜蜜香水：B\n声调和气息中荡漾着仿佛要融化一般的蜂蜜的甜美香气，仅仅是站在那里便可以自如地操纵对方的数值。\n若是没有魔力防御手段的存在（普通人类和动物），就会瞬间随心所欲了吧。\n比如说，将尚未成熟的少年变为可与熟练的战士相媲美的勇士也是可能的。反之，也可以让熟练的战士变得仿佛幼稚的少年一般。\n\n即便是从者，只要没有抵御手段，其数值就会被随意改动。\n是与技能『果实的酒气』似是而非的技能。\n因使用技能时会做出喷香水的动作，所以只要妨碍她的动作就可能阻止技能的发动……不过，在这世上有多少能阻止她行动的人呢？
222	3	『无铭星云剑』\n阶级：EX　种类：对军宝具　\n有效范围：9~99\n\n无铭星云剑。秘密米尼亚德。\n这是用被称为宇宙的天平的伦戈米尼亚德LR使出的银河星云斩击。\n呼呼地挥舞长枪，其光芒就像是星云般旋转着，扫平周围的一切。不论敌我。\n在FGO中基本不使用。\n\n○止境的正义：A\n来自宇宙最顶尖且最遥远的『境界』之力。既是打破『无』的力量，又是扩大宇宙的真理本身。\n这是甚至能击退其他宇宙的上位者的『保持宇宙的平衡』之力，但XX还不了解。
223	3	○魔力放出（跳跃）：A\n被众神养大的迪尔姆德\n获得了超乎常人的跳跃能力。\n作为Saber现界的他，比身为Lancer时的\n敏捷数值还要低。但相对的，他拥有了此技能。\n通过放出魔力使机动性爆发性上升，全面地提高攻击力水平。\n\n○费奥纳骑士的荣誉：B\n迪尔姆德罕见的觉悟。\n是作为首席骑士的精神性的体现。
224	3	○雪仙：EX\n由技能『自然的婴儿』进化而来。\n一旦将对方判断为攻击对象，就连喜爱之物也会将其冻结。是能将周围的对象任意冻结的能力。\n\n○感情冻结：B\n感情冻结。没有感情。\n她既是纯真地微笑着的少女，偶尔也会像冷酷的魔物一样行动。她的想法、精神性化为了武器。\n冰之心有时会化为利剑，有时也会变为铠甲。
225	3	○护法之鬼·心握杀：A+\n\nHeart Break。\n这是随着职阶的变更，由抽出对象骨头的宝具『百花缭乱·我爱称（Bone Collector）』变化而来的技能。\n将手突刺入抵抗判定失败的对象体内，从心脏开始毫不留情地将重要器官逐个捏碎，是十分可怕的绝技。\n虽然事先宣传的……是为了控制鬼而被赋予的护法少女的能力，但只要心脏被捏碎，大部分生物难道不都会就此死亡吗？对于诧异的迦勒底职员提出的这一疑问，酒吞童子却只是呵呵笑着，什么都没有回答。
226	3	?
227	3	兰陵王生为皇族高澄(文襄帝)的第四皇子。\n虽然母亲是位名为荀的侍女，\n但据说有预言称，\n她将来一定会生下美丽的孩子。\n而诞生的便是高长恭……也就是\n兰陵王。
228	3	她性格温厚，沉默谨慎，\n另一方面，面对困难之事也有着\n灵活应对的过人机智。\n是不论下属还是上司都十分信任的类型。
229	3	?
230	3	?
231	3	○骑乘：EX\n能够驾驭所有坐骑。\n不过，在他作为Rider现界的一瞬间便已经是人马一体（？）的状态了，\n因此，对他来说，在此之上的骑乘已无必要。\n\n○千里疾走（马）：EX\n有着能够进行长时间·长距离移动的无穷尽体力。\n同时，还能够发挥短时间内使敏捷参数急速上升，全力奔跑时的耐力及筋力参数上升的效果。
232	3	因为生前曾经吃过几回亏，所以很讨厌魔术师。\n但是梅林是个例外。\n事实上，她跟梅林还有点缘分。在她生前的冒险中，梅林通过巫女向她传达过一些建议。对布拉达曼特而言，梅林是她崇敬的对象。
233	3	○桑巴爱好者：B\n热爱桑巴之人。\n尽管是由误会开始的桑巴生涯，想着「既然要做就要认真面对」学习的结果，作为喜爱人类的她自然是深深感受到「桑巴可真是个好东西呢……！」了。\n因此现在的她深爱着桑巴，深爱着这作为名为人类的种子在成长正中时完成的美妙的文化。\n\n问题是，由于周围没有了解正确的桑巴的人，她本人认真地练习，最终学习到的姿势与世间普通的桑巴可能有点不一样……不过她并不在意。\n最重要的是“喜欢”这种心情，对吧？
234	3	『十王判决·葛笼之道行』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nJyuuouhanketsu Tsuzuranomichiyuki。\n阎雀裁缝（拔刀）术，奥义之三。\n召唤出带来灾祸的藤箱，并打开它。\n从中出现的百鬼夜行（本体是麻雀们）使得敌人混乱，从而将其封印在藤箱中。\n之后，被整箱运送到麻雀旅店的敌人将在扮演地狱十王（裁定死者的十位王。阎魔大王便是其中之一）的麻雀们的房间里，接受红阎魔制裁的一刀。\n有着对『混沌』『恶』属性的特攻。
235	3	虽然作为Assassin被召唤，\n但并非以杀人谋生，\n而是喜欢从正面发起战斗。\n\n他并非认为暗杀卑鄙，\n只是单纯觉得不太稳定，而已。\n若是在御主陷入危机的情况下，\n他会毫不犹豫地进行暗杀。
236	3	她的真正身份是来自不同于伊莉雅所在的平行世界的神之稚儿。\n\n朔月家是在冬木这片土地上，从天正年代起延续至今的世家。出生在朔月的女孩，生来就具有能无差别实现人的愿望的性质。\n女孩被视为神稚儿，\n为避人耳目，她会在结界中成长到\n7岁，直到失去那份性质为止。\n\n历代朔月族人无一例外，\n都舍弃私欲，一直以来只是一心祈求孩子能够幸福。\n这种身为人类、身为父母非常理所应当的行为\n持续了500年，\n才正是胜过神稚儿的奇迹。\n然而——。\n\n这一代的神稚儿美游在虚岁快要满7岁之前，\n被卷入了发生于冬木市的不明真相的『侵蚀事故』，朔月家也就此分崩离析。\n孤身一人留在瓦砾堆中的美游，则受到了寻找着奇迹的切嗣和士郎的保护。
237	3	她是乖巧的优等生类型。\n知书达礼，为人稳重。\n酷爱读书。也喜欢自己写和歌，以及因恋爱的优雅而闪耀的故事。\n也有规规矩矩地写着日记（记的日记还算是比较现实）。\n\n喜欢的故事是《竹取物语》和《伊势物语》。\n——可以看出，紫式部在角色造型方面受《竹取物语》影响，表现、构想、人物等方面则受《伊势物语》影响很大。另外，还受到白居易的白氏文集、《史记》等等诸多影响。据说《源氏物语》中光源氏追求女性的对话也受到了唐代的传奇故事《游仙窟》影响。\n作为一位和歌诗人，她喜欢《古今集》、《后撰集》、《拾遗集》这三代集。\n生前就接触了各种各样的歌集。\n\n对其他时代、其他地域的故事与诗歌也抱有极大兴趣，只要有闲暇就会沉溺于阅读。
238	3	『巨影，自生命之海中诞生』\n阶级：E　种类：对人宝具　\n范围：100\n\nAiravata Kingsize。\n这是以印度神话之一，搅拌乳海的传说为主题的宝具。\n众神为了在荒废的大地上存活下去，寻求着不老不死的灵药·甘露。\n传说，制作甘露必须要搅拌覆盖世界的大海·乳海。众神便与为敌的阿修罗们齐心协力，以须弥山为轴转动世界、搅拌乳海，随之诞生出了众多生命和灵药。\nAiravata（三头神象）便是在那时出现于乳海的巨大白象。\n\n被迦勒底限定召唤的Kingprotea，一直受到『压迫』。\n那既是来自世界的抑止力，又是非电脑世界的、物质世界的极限。\n此宝具是能短时间消除这份『压迫』，让Protea变回原本大小的固有结界。\nProtea变为人类几乎无法尽收眼底的大小，仅仅是简单一击，对敌人挥舞手足，将其歼灭。\n\n本来的她自身就是宝具，但出于在深海电脑都市中灵基等级下降的缘故，她也可以使用宝具了。
1	3	己阵防御：C 守护己方或是己方阵营时发挥的实力。 能突破防御极限值地削减我方遭到的伤害， 但自身并不算在防御对象内。 此外，阶级越高，守备范围越广。
11	3	冷静完成工作的现实主义者。\n说话毒辣性格悲观。并非那种勤勤恳恳热心工作的角色，\n也是个爱在关键的时候说些冷酷玩笑话的花花公子。\n支持合理的战术以及社会角度的正义，\n由于他的原点是『拯救万人』的理想，\n所以总有无法冷酷到底的一面。
97	3	由于当时由于对医疗与看护的不理解，\n导致了各种不卫生现象以及落后规则的横行，\n但她发奋努力，对如同地狱的战地医疗进行改革。\n在「战地医院死亡率急速提升」的情况下，\n继续坚持自己的改革，\n贯彻清洁的卫生工作与正确的看护方式，\n毫不吝惜地用自己个人的财产添置物资，\n获得了喜人的成果。\n最终将将近40%的死亡率控制到了5%。\n\n士兵们都这么说，「我看到了天使」。
2	4	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur。\n这并非人造的武器，而是由星锻造而成神造兵器。\n立于圣剑顶点的宝具。\n拥有真正强大力量的应是剑鞘，\n而不是剑本身，但剑鞘据说已永远遗失了。
3	4	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur Morgan。黑色极光之剑。\n由于她不对自己的魔力加以抑制，全力挥动圣剑，\n令魔力粒子不再是光，而是成为了吞噬光的黑暗。\n这模样与为了保护不列颠岛而出现的魔龙——\n伏提庚的气息很相似。
4	4	『必胜黄金之剑』\n阶级：B（在一定条件下A+）　种类：对人宝具\nCaliburn。\n本来是用于选拔王者之剑。\n对人宝具中的『对人』不是对敌人，\n而是针对将要持剑之主。\n当其持有者成为一名贯彻正确之举或是完美的王时，\n其威力将不愧对于圣剑之名。
5	4	『邀至心荡神驰的黄金剧场』\n阶级：B　种类：对阵宝具\nAestus Domus Aurea。\n能实现自己愿望的绝对皇帝圈。\n通过魔力将她生前自己设计，\n并建设于罗马的剧场「金宫」予以重现。\n能创造出对她有利的战场。
6	4	他实现了义兄的愿望，\n然而却导致义兄之妻与克琳希德陷入对立状态。\n而为了阻止争斗的发生，齐格飞被逼入了绝境，\n只有终结自己的生命才能解决事态。\n不断回报人们期待的他，\n最后受到的期待却是自己的死亡。
7	4	『黄之死』\n阶级：B+　种类：对人宝具\nCrocea Mors。黄金之剑。\n在近身战方面虽然能够发挥见敌必胜的威力，\n但本人非常不想拔剑。
8	4	『军神之剑』\n阶级：A　种类：对军宝具\n目前普遍认为此宝具来源于以下两者的结合：\n她那令欧洲全境畏惧地称之为——\n「神罚」与「神之鞭」的武力与恐怖，\n以及她获得军神玛尔斯之剑的轶事。
9	4	现实太过痛苦。坠入黑暗的时刻到来了。
10	4	秀丽风貌：C\n固有技能。在服装的衬托下，更为其酝酿出一股\n难辨雌雄的美丽（不是指外形容貌）氛围。\n无论与男性还是女性交涉时，都会有加成判定。\n另外，无视对特定性别的限定效果。
12	4	『王之财宝』\n阶级：E～A++　种类：对人宝具\nGate of Babylon。\n与黄金之都连接的钥匙之剑。\n可以连接空间，自由取出宝物库中的道具。\n使用者的财产越多，攻击就越强大。\n本作中则作为普通攻击之一来使用。
13	4	『祈祷之弓』\n阶级：D　种类：对人宝具\nYew Bow。\n用生前据点的森林中生长的红豆杉木做成的弓。\n红豆杉在凯尔特和北欧被奉为神圣树木的其中一种，\n用红豆杉木做弓的这种行为，\n意味着「与森林融为一体」的仪式感。
14	4	阿塔兰忒虽然在赛跑中本没有输给任何一个男人，\n最后却屈服于一名施计借用了女神力量的卑鄙男子，\n在半强迫的情况下嫁给了那名男子。\n传说此后又因别的事由，\n导致夫妇二人被变成狮子作为惩罚，实际无从定论。
15	4	女神的神核：EX\n由于天生就是彻彻底底的女神，故而拥有的固有技能。\n包含有神性特性的复合技能。\n维持精神与肉体的绝对性。\n精神不受任何干涉，而肉体则不成长、不变化。
16	4	传说中，阿拉什究极的一箭，\n制造了波斯与图尔库两国的「国境」。\n直接撕裂了大地。其射程距离实际达到了2500km。\n传说作为使用了非人所能用的绝技的代价，\n他的身体四分五裂，失去了性命——
17	4	卢恩：B\n拥有北欧的魔术刻印·卢恩。\n影之国的战士必须精通百般武艺，\n而不能只会挥舞长枪——―\n也许是因为师父斯卡哈有着上述教育理念，\n总之库·丘林同样精通卢恩魔术。\n虽然作为魔术师，他的实力也已接近一流，\n然而本人却因嫌麻烦而几乎不使用魔术。
18	4	『鲜血魔女』\n阶级：E-　种类：对人宝具\n（Bathory Erzsebet）\n伊丽莎白以此宝具召唤她一生支配的城堡——\n监狱城恰赫季斯，作为展现自我的舞台。\n然而其走音走到天崩地裂的歌声，\n最终造就了一个如同地狱般的空间。
19	4	……武藏坊弁庆是难能可贵的存在。\n和我不同。虽然不同，但既然我自称弁庆，\n就不能让任何人说我弱。\n这算是胆小怕事的我最低限度的赎罪吧。
20	4	『贯穿之朱枪』\n阶级：B／B+　种类：对人／对军宝具\nGae Bolg。逆转因果之枪。\n师父斯卡哈赐予的红色长枪以及枪术。\n有对人刺击、对军投掷这两种攻击方法。
21	4	『炎门守护者』1\n阶级：B　种类：对军宝具\nThermopylae Enomotia\n为了重现让列奥尼达名扬四海的温泉关战役，\n先召唤传说的三百人吧。
22	4	『吾枪通达万物』\n阶级：A++　种类：对军宝具\nMagna Voluisse Magnum。\n建国之枪。在母亲西尔维亚的梦中出现，\n被看做是与象征罗马的大树同一的存在。
23	4	魔眼：A+\n拥有最高等级的魔眼·库柏勒。\n可以让魔力低的对象无条件石化，\n魔力高的对象若掉以轻心也会被石化。\n通常用自我封印·暗黑神殿（Breaker Gorgon）\n进行封印。
24	4	乔尔乔斯虽然是个圣者，\n但他的英勇事迹根本不逊色于一些骑士。\n当路过某个饱受毒龙肆虐，\n而不得不持续献祭活人的城镇时，\n乔尔乔斯扔出了长枪击败了龙。\n此外还有人说他是被魔女抚养长大的。
25	4	别说一般的海员，就连其他海盗都恐惧黑胡子的存在。\n他那浓密的黑胡子中，到处可见混织在内的导火索，\n他那灿灿生辉的眼睛正犹如地狱的女神。\n连其部下们都认为他是恶魔的化身，畏惧不已。
26	4	『无以誓约胜利之剑』\n阶级：B　种类：对人宝具\nSword of Boudica。\n自行冠以「胜利」之名的单手剑。\n但绝不是星之圣剑，也无法保证给主人带来胜利。\n不完全的愿望之剑。
27	4	十一岁时，被寄养在鞍马寺的牛若丸，\n遇到了阴阳师鬼一法眼，\n并因此被传授了兵法（另有说法称此人是鞍马天狗）。\n义经无疑是个优秀的兵法家，但也欠缺了致命的要素。
29	4	魅惑的美声：C\n不仅是吸引人们的魅惑系技能，\n同时也是执行王权的宣言。\n作为象征性的存在而现界的玛丽，\n只用歌声就能给王权的敌对者造成魔力伤害。
30	4	从外表到内在都是一名完美的圣女。\n或许是因为有妹妹的缘故，其言行总是一副大姐气派。\n善良、清廉、沉稳——散发着光辉的人。\n然而……尤其是面对关系亲密的对象，\n偶尔会表现出「非圣女的玛尔达」的一面。
31	4	阵地建造：A\n道具作成：A\n高速神言：A\n对魔术师而言必要的技能全都达到A阶。\n在神话中并没有任何伟大成就，因故评价很低，\n但作为魔术师却拥有可谓最高位的实力。
32	4	起初吉尔与他好友兼导师的弗朗索瓦·普勒拉蒂一起，\n为了解决财政困难而接触了炼金术，\n但不知不觉中失去了当初的目的，\n开始为恶魔召唤所倾倒。
33	4	人类观察：A\n观察人类，并进行理解的技术。\n这并不是单纯的观察，重要的关键在于，\n推测那些不知名人们的生活、兴趣、甚至是人生，\n且不会忘却的记忆力。以厌世著称的安徒生，\n其内心所深藏的，并非拒绝，而是理解。\n虽说他能做到的只有撰写故事，但正因为如此，\n他才能发誓比任何人都真挚地娓娓道来。
34	4	魔力附加：A\n固有技能，对武装进行概念付与。\n原本是指付与魔术概念的行为，\n但莎士比亚则是通过撰写文章，\n将武装的力量提升到极限以上。
35	4	……当然『现实』并非如此。\n身为卓越魔术师的浮士德铸造了一个人工生命体。\n给他起名为梅菲斯托费勒斯，非常疼爱他，\n但最后还是理所当然地遭到其背叛而死。
36	4	真诚对待音乐的至高圣者。\n作为一名人类——很遗憾属于人渣。\n还算比较喜欢与人交谈，也喜欢开玩笑。\n最喜欢的玩笑类型，也就是黄段子，\n被有意（因为玛丽这么吩咐）封印了起来。
37	4	鉴识眼：A\n固有技能。这能力出自埃尔梅罗Ⅱ世，而并非孔明。\n一种更为集中的人类观察技术。观察力得以进一步提升，\n尤其精于看透观察对象将来会以怎样的形式起到用处。
38	4	『灼烧殆尽的炎笼』\n阶级：B　种类：对军宝具\nWicker Man。出现由无数细树枝构成的巨人。\n巨人全身缠绕着火焰，向敌人发动突袭，\n给敌方造成强烈的热、火焰伤害。
39	4	虽说本人将『燕返』称为秘剑，\n但从旁人看来，这毫无疑问是魔剑。\n因为这已经是非人所能做到的了。\n本人虽然表示这是为了斩杀空中的飞燕而创造的，\n但当然，就算没有这样的魔技也可以斩下飞燕。\n或者不如说仅以这种理由就达到剑之极致的剑士，\n是多么的不愿妥协，又是拥有多么优秀的武术才能。
40	4	『妄想心音』\n阶级：C　种类：对人宝具\nZabaniya。\n被诅咒的手臂。也是恶性的精灵·晒衣陀乃的手臂，\n擅长咒杀人类。使用乙太块，\n通过镜中的杀害对象的反镜存在，\n制造可与本体相互影响的的二重存在。\n然后通过将与杀害对象产生共鸣的假冒者击溃的方式，\n达到不触碰本体一根汗毛就能咒杀对象的目的。
41	4	女神的神核：EX\n当天生就是个完成的女神时才会产生的固有技能。\n包含了神性技能的复合技能。\n能阻挡任何精神系的干涉，肉体也不会成长，\n无论摄取多少卡路里，体型都不会变化。
42	4	遭到怀疑的荆轲无奈只能选择太子推荐的男性当助手，\n踏上了赴秦之旅。然而这名本应帮助她刺杀的男性，\n却因恐惧而动弹不得，荆轲只得孤身一人暗杀秦始皇，\n然而或许是因为秦始皇的帝运之故，\n在最后关头被其逃脱。
43	4	然而，时代并没有给夏尔安稳的生活。\n法国大革命爆发后，依然被强迫执行处决的他，\n最终参与了对他最爱戴的法国国王路易十六世，\n以及王后玛丽·安托瓦内特的行刑。
44	4	『吾之情歌只在地狱回响』\n阶级：B　种类：对军宝具\nChristine, Christine。\n由过去的牺牲者的尸骸拼凑而成，\n犹如管风琴般的巨大演奏装置。
45	4	谍报：A++\n这技能并不是遮断气息，而是彻底消除气息中的敌对性。\nＡ++的级别则意味着只要不被己方阵营告发，\n就不可能被发现自己真实的敌对身份。
46	4	吸血：C\n只要身染鲜血就能吸收体力并回复。\n虽然近乎于自我催眠，但她的肌肤确实恢复了年轻。\n阶级越高，吸收力越是上升。
47	4	勇猛：A+\n令威压、混乱、幻惑等精神干涉无效化的能力。\n此外，还有提升格斗伤害的效果。\n然而现在因职阶能力关系遭到狂化，\n无法发挥这些能力。
48	4	『骑士不徒手而亡』\n阶级：A　种类：对人宝具\nKnight of Owner\n为手中的一切付与「自身宝具」属性的宝具能力。\n无论是怎样的武器、怎样的兵器，\n都能化为相当于D阶级的拟似宝具。
49	4	反骨之相：B\n不滞留在一个地方，\n同时也不只侍奉一位主公的性格。\n自己虽没有当君主的气量，\n却也无法找到自己应侍奉的君主的流浪之星。\n能让同阶级的领袖气质无效化。
50	4	狂化：EX\n被狂化的斯巴达克斯依然能进行对话，\n但他的思考被固定为“始终选择最困难的选项”，\n其实与他是无法正常交流的。
51	4	天性的肉体：A\n作为生物，天生就拥有完美（GOLDEN）的肉体。\n\n动物会话：C\n可与没有语言的动物进行沟通。\n说句题外话，喜欢的行星是金星。
52	4	吸血：A\n吸血行为。降低对象的HP来回复自身的HP。\n更有中等概率对敌方付与诱惑（混乱）的负面效果。\n此外，吸血行为产生的诱惑不分男女。
53	4	哪怕——他想要的并非黑暗，而是光芒，\n他奢望的不是阴森的迷宫，\n而是凉爽的自然之风与丰饶的森林。
54	4	『吞噬吾心吧，月光』\n阶级：C　种类：对军宝具\nFlucticulus Diana。\n通过空中投射下来的月光扩散自身的疯狂，\n广范围的精神污染攻击。很强势。
55	4	『不死的万名骑兵』\n阶级：A　种类：对军宝具\nAthanatoi Ten Thousand。\n召唤由会动的尸体或是会走的骸骨组成的一万名士兵，\n集结后成为「死之战象」歼灭敌人。
56	4	历史上并不存在她拥有龙种之血的记录。\n存在的，只有她对爱慕对象的执着。\n……或许之所以能够仅靠「自我意识」就变身成龙，\n完全是她那份执着的体现。
57	4	支援咒术：C\n令敌对者的实力降低1级。\n恶名与丈夫不相伯仲的女魔术师贡希尔达的诅咒。
70	5	正如她对自己的清晰把握，\n她能一眼看透人的素质与气质（尤其是凡人与否）。\n也就是说库·丘林正是拥有着天生才华，\n值得她去引导的稀世人才。
58	4	变化：B\n也称借体成形。是被视为与玉藻前属同一存在的，\n中国的千年狐狸精所使用的法术。\n附身于殷周革命（『封神演义』）时期的妲己身上，\n并进行变化的法术。由于过去受到的心理创伤，\n玉藻前有所自律不再使用该法术。但在玉藻猫的脑海里，\n根本不存在什么自律、自省、自制的字眼。\n有的只有自爆而已。
59	4	据一名曾公开表示愿意亲手烧死魔女贞德的士兵所言，\n他在贞德被执行火刑后看到一只雪白的鸽子飞向天空。\n随后，他意识到自己杀害了真正的圣女，\n并陷入了深深的后悔——。
60	4	俄里翁被阿耳忒弥斯热烈的追求逼得受不了了，\n一有机会就向各种女性以及女性从者发动求爱攻势，\n然而悲哀的是作为一只吉祥物，这些行为根本无济于事。\n更进一步说，他甚至都没有吉祥物本该有的可爱模样。
61	4	『无辜的怪物』是通过生前所作所为给人留下的印象，\n扭曲过去和存在方式，令能力、样貌发生变化的技能。\n拥有同样技能的还有弗拉德三世。他是因其死后，\n在小说家的创作下才沦落到怪物的下场，\n而她则是因为生前的所作所为，才受到了这样的对待。
62	4	咒术（荼枳尼天法）：EX\n包括获得地位与财产（男性用），\n以及获得当权者宠爱（女性用）这些，\n用以获得权力的秘术以及参悟死期的手段。\n然而由于过去受过不少教训，现在几乎不怎么使用。
63	4	治愈的竖琴：B\n大卫的竖琴拥有破魔的效果，能令听者精神安定。\n他用此祛除了以色列王国之王——扫罗身上的恶灵。\n古代社会认为竖琴能净化恶魔，极为重视。
64	4	然而，由于英雄阿喀琉斯的存在，战况渐渐被颠覆。\n赫克托耳通过不停挑拨，时退时进的战法挺了过来，\n但是最终他却接受了来自阿喀琉斯的决斗挑战，\n尽管在其枪的力量下，阿喀琉斯已失去不死能力。
65	4	星之开拓者：EX\n付与成为人类历史转折点的英雄的特殊技能。\n将各种难以完成的事在“不可能的状态下”，\n化为“可实现的事情”。
66	4	或许因为安妮与玛莉同为女性吧，\n两人气味相投，结成搭档专心当海盗。\n有不少证言表示，两人在约翰·瑞克姆的船上，\n他们的战姿比任何人都要勇猛果敢。
67	4	『万疵必应修补』\n阶级：C　种类：对魔术宝具\nPain Breaker。\n与身为Caster的美狄亚使用的，\n『万符必应破戒』相对的治疗宝具。\n能将所有的诅咒、魔术产生的损伤归零。
68	4	三段突的瞬间，壹之突、贰之突、\n叁之突“同时存在”于“相同的位置”。\n就算防住了壹之突，还是会被处于相同位置的，\n贰之突、叁之突所刺穿，这种矛盾使剑尖产生事象饱和。\n因此三段突在事实上成了无法防御的剑技。\n而作为应用，由结果而生的事象饱和也很擅长对物破坏。
69	4	『三千世界』\n阶级：E～A　种类：对军宝具\n三段击。\n长筱的三段击。铺开三千把火绳枪一起射击。\n基于战胜了战国最强骑兵团的那段逸闻，\n该攻击对拥有骑乘技能的英灵的攻击力会提升。\n对没有骑乘技能的英灵而言只是普通的火绳枪，\n但三千把的齐射依然是一种强大的威胁。
70	4	自傲，不会被任何人所束缚。\n天生的支配阶级。具备王者的气质，\n有着必须身为一名给民众带来幸福的女王的自觉。\n才能出众，比任何人都清楚自己与凡人是不同的。\n其生存方式与赤红瞳色，与二十世纪东京的某人相近。
71	4	据说迪尔姆德在逃亡中依然贯彻对芬恩的忠义，\n始终没有碰格兰妮公主一根汗毛。\n最后在与芬恩和解后，终于得以与格兰妮结为夫妇，\n但这幸福并不长远。
72	4	赤枝骑士团重要成员，因阿尔斯特王康纳尔的背信弃义，\n他感到无比愤怒，于是离开了骑士团。\n在阿尔斯特传说中规模最大的战争爆发时，\n他加入了恋人康诺特女王梅芙的阵营，英勇作战。\n虽说由于阿尔斯特方有库·丘林，导致他始终有所保留，\n但他还是一度将康纳尔逼入几乎将死的绝境。
73	4	『誓约胜利之剑』\n阶级：A++　种类：对城宝具\nExcalibur Morgan。\n黑色极光之剑。根本没变。\n从名字压根就没做任何变更这一方面，\n能看出来和万圣节的那位从者的差距。\n对圣诞老人而言是根本用不到的东西，\n但万一圣诞节恐怕也是要出现些什么怪物，\n带着总没坏处。
74	4	『聪明伶俐，乖张淋漓，\n　离合悲欢，施虐倍还。\n　呆在这里，大家都是单纯的物体。\n　人即为人，鸟则为鸟，这样一切刚刚好。\n\n　你的名字，那就归我了哦。』
75	4	『解体圣母』\n阶级：D～B　种类：对人宝具\n重现开膛手杰克的杀人过程的宝具。\n必要条件有三个，\n「时间是夜间」「女性对象」「起雾」。
76	4	与摩根原本的企图相反，\n莫德雷德憧憬父亲，并希望得到父亲的承认。\n然而在遭到了亚瑟王的拒绝后骤然一变。\n为了践踏父亲建立的伟业而研磨自己的毒牙。\n本来就已达极限的不列颠在二人的激斗中走向崩溃。
77	4	『人类神话·雷电降临』\n阶级：EX 种类：对城宝具\nSystem Keraunos。根据其生前的伟大成就，\n以及各种超自然传说进行神秘升华后的存在。\n哪怕真名解放前也拥有极为强大的电磁操控能力。
78	4	通过解放真名，\n圣枪能释放在世界尽头闪烁的力量的一部分。\n为了解放真名，需要将总计十三个的拘束解开近半数。\n基于这种性质，该枪与「拯救世界的星之圣剑」，\n被视为同等的存在。
79	4	『元素使的魔剑』\n阶级：A+、种类：对军宝具\nSword of Paracelsus。\nAzoth剑的根源。帕拉塞尔苏斯的魔剑。\n用超高密度的“贤者之石”构成的魔术礼装。
80	4	机械铠甲：EX\n始终身披蒸汽机关制的全身铠甲。\n提升筋力与耐久力阶级的同时，\n也因异形蒸汽机关的推进功能，\n令三项能力值都追加了「++」的修正。
81	4	『隐秘的罪之游戏』\n阶级：C、种类：对人宝具\nDangerous Game。让杰基尔变化为海德，\n海德变化为杰基尔的灵药。化身为海德时，\n拥有能媲美三骑士职阶的近身战斗力。
82	4	然而，被丢弃的弗兰肯斯坦通过接触这个世界，\n逐渐磨练自己的知性与感情，\n终于萌生了对抛弃自己的维克多的愤怒。\n面对执着地追赶自己到南极的她，\n维克多精疲力竭，选择了自尽。
84	4	爱着兄弟，也被兄弟所爱。\n爱着父母，也被父母所爱。\n爱着人民，也被人民所爱。\n尽管如此——。
85	4	然而，就连迦尔纳与阿周那的战斗，\n都遭到了众多诅咒的妨碍。受婆罗门诅咒，\n被因陀罗欺骗，答应了母亲贡蒂的请求，\n发誓不与阿周那以外的任何人战斗。\n尽管如此，迦尔纳还是接受了一切。
86	4	作为对Saber决战兵器，\n只知一味打倒所有Saber的她，\n赌上这把圣剑，宁将此身化为修罗模式，\n然而她唯独对Saber Lily敞开了心怀。
87	4	问题难道并非出在女人们身上，而是出在自己身上──\n直到最后，芬恩·麦克库尔都没有产生这种念头。\n到底做错了什么。哪怕化为英灵，\n作为从者现界的现在，他都没有弄明白。
88	4	『直至死亡拆散两人』\n阶级：B　种类：对人宝具\nBrynhild Romantia。\n将对宿命对象心怀的深刻爱憎之情\n化为她生前所使用的魔银之枪形态的宝具。\n对于对方的爱情越是强烈，\n枪就会变得越为沉重而巨大。\n对于深爱着的齐格鲁德则能发挥出极为鲜明的效果。\n（对于与齐格鲁德颇有因缘的齐格飞也同样效果卓越）
89	4	传说与年迈的贝奥武夫对抗的巨龙喜好囤积财宝，\n能够口喷火焰——\n或许可以说这就是后世奇幻作品中巨龙的原型吧。\n虽然他平时所用的两把长剑被称为魔剑，\n但这并非贝奥武夫真正的力量。
90	4	于公元59年（也有60年的说法），\n模仿希腊的奥林匹克运动会，\n设立了五年一度的竞技大会「尼禄祭」。\n开设了音乐、体育、骑马三个分类，\n而自己也参加了其中数个项目。\n于公元69年发生的叛乱中被逐下皇帝的宝座，\n从罗马逃亡。中途意识到无路可逃，决心自尽。
91	4	『无垢识·空之境界』\n阶级：　　种类：对人宝具\n有效范围：1～999　最大捕捉：64人\nMukushiki Karanokyoukai。\n应用直死之魔眼的理论，\n切断对象“死之线”的全体攻击。\n由彼岸释放的幽世一刀能赐予所有生命安宁。
92	4	『唯识·直死之魔眼』\n阶级：　种类：对人宝具\n有效范围：1　最大捕捉：1\nYuishiki Chokusinomagan。\n最大限度睁开直死之魔眼，\n切断对象“死之线”的攻击。\n哪怕拥有上亿年的寿命，或是从停滞到复活的恢复力，\n或是数以百计的生命储备，\n由于该能力能暴露“其个体的死亡概念”，\n所以依然能付与对象无视不死身特性的致命伤。\n\n世间有难以死亡之命，但无能逃离死亡之命。\n——终结对于万物都是共通的。
93	4	松平信纲对在原城闭门不出的起义军采用了\n断绝其兵粮的战术，看准对方食物弹药用尽的时机，\n发动了总攻击。传说除了一名内奸以外，\n包括天草四郎时贞在内的三万七千人，\n全部被幕府军杀光（有各种说法）。
94	4	阿斯托尔福的理性彻底蒸发了，比起有益或无益，\n此人更注重「自己心情是否愉快」，\n并将其作为判断标准。\n被作为从者召唤后这点依然未变。\n尽管总让人提心吊胆，但因为本人本性还是善良的，\n所以不会为恶。
95	4	『全知且全能之星』\n阶级：EX　种类：对人宝具\nSha Nagba Imuru。\n如星辰光辉般遍览地上所有角落，通晓万象，\n英雄王精神性升华为宝具的存在。\n时常发动型的宝具。\n在本作中进行真名解放的宝具还是『王之财宝』。
96	4	『基督山伯爵』\n阶级：C　种类：对人宝具\n有效范围：─　最大捕捉：1人\nMonte Cristo Mythologie。\n他是复仇的化身。不适应任何一个职阶，\n作为EX职阶·Avenger现界的肉体，\n将其人生升华为宝具。用强韧肉体与魔力发动攻击。\n可以隐蔽自身能力与职阶，并展示虚假信息给对方。\n\n时常发动型的宝具。\n存在真名解放的效果，但本作中不会被使用。
98	4	『剜穿鏖杀之枪』\n阶级：B++　种类：对军宝具\n有效范围：5～50　最大捕捉：100人\nGae Bolg\n寻的制导魔枪导弹。\n库·丘林原本的宝具。\n作为Alter的情况下会无视自己肉体崩坏的可能，\n进行全力投掷，因此相比通常召唤时，\n威力和有效范围均有提升。对敌方全体产生即死效果，\n即使没有发生即死也会带来巨大的伤害。\n（凭借卢恩魔术，实现了「使崩坏的肉体再生的同时」\n进行投掷，因此库·丘林不会受到伤害——\n除了惊人的痛苦之外。）
99	4	虽然梅芙被称为众多士兵之母，\n但实际并非是以自己的身体生产下士兵。\n而是将战士给予的遗传信息吸收后，在体内进行复制。\n以刀刃将食指的指尖划开，当她的血滴落地面时，\n这仅仅一小滴的鲜血变化为血池，\n士兵们就这样和血泡一同被“制造”出来。\n梅芙正如其名，是无名士兵们的“女王”与支配者。
100	4	道具作成：B\n制作带有魔力的器具。\n现界的布拉瓦茨基以过去自己的助手，\n「奥尔科特上校」为参考样本，\n制作了复数台自动人偶，用来当便利的杂役来使用。\n顺便说一句，这东西不太擅长战斗。
101	4	对御主基本上总是表现出略显傲慢的态度。\n因此也许会给人以自大的小鬼这样的印象。\n其实是因为拥有老年时期的丰富知识，\n但是在精神方面却无法跟上，\n这种从者独有的现象才使得他表现出那样的态度。\n对待部下和动物们十分温柔，而面对有着暴君之名的\n从者时，态度就会变得有些固执。
102	4	『神枪无二打』\n阶级：无　种类：对人宝具\n有效范围：2～5　最大捕捉：1人\nShinsou Nino Uchi Irazu。\n是和『燕返』以及『无二打』同样，\n由修炼到极致的武技升华而来的宝具。\n效果和作为Assassin召唤时的『无二打』相同，\n但手持长枪所以射程更广。\n推测其精密动作性和空手时并无差别。
103	4	作为他终生的对手、宿敌，只要见面就会干架的，\n就是从者尼古拉·特斯拉。\n相反对于贝尔和巴贝奇，\n则能够保持着一定的理智与之相处。\n不知为何，对特斯拉总是例外。
104	4	杰罗尼莫绝不仅是野蛮与残忍之人。\n他冷静而又慎重。不会拒绝投降，\n却也有绝对不能舍弃的自身骄傲。\n\n为了捕获杰罗尼莫所率领的35位阿帕切战士，\n美国政府甚至动用了多达5000人的兵力。
105	4	但是，他在一年之内逃走。\n深怀执念的保安官派特·贾雷特一直尝试追捕他，\n最后在新墨西哥州的萨姆纳堡发现了他。\n不知道是因为认为自己正面迎击的话，\n是无法战胜比利小子的，还是有着别的什么原因——\n派特·贾雷特选择了，\n在比利小子走出房门寻找食物的瞬间偷袭了他。
106	4	龙之魔女：EX\n因为某个男人的愿望而诞生的她，\n拥有与生俱来的统帅龙的力量。被认为是圣女玛尔达，\n亦或是圣乔治等拥有的驱散龙种的圣人逸闻的反转现象。\n拥有使龙服从的特殊领袖气质，\n同时能够提升队伍的攻击力。
71	5	受到同母异父的弟弟转世的野猪的攻击，\n身负致命伤的迪尔姆德向拥有治愈魔力的芬恩求助。\n然而对格兰妮一事依旧耿耿于怀的芬恩选择了见死不救。
107	4	尝遍人类所能体验一切痛苦的青年，理所当然地死去了。\n但对这种纠葛的憎恨烧灼着岩石牢狱，\n他化为了无名亡灵。哪怕在他消失后，在憎恶的村民们\n消失后，甚至村子也彻底消亡后，他依然被束缚在山顶，\n眺望着人类的生活、人类的丑陋、人类的喜悦。\n温暖的光。如贤者一般，思索着自己未能获得的\n“理所当然的日常”。
108	4	『王之军势』\n阶级：EX　种类：对军宝具\nIonioi Hetairoi。\n召唤的固有结界。征服王的王牌。\n人材即为珍宝。与无与伦比勇士们建立的功勋\n才是王的证明。\n他生前率领的近卫军团作为独立从者被连续召唤，\n以数万人的军队蹂躏敌人。
109	4	『花开堪折直须折』\n阶级：B　种类：对人宝具\nKhronos Rose。\n时光流转，今日绽放的花朵明日将会枯萎。\n能够操作自身的时间流的能力。\n是建立在生前他所具备的\n「固有时制御（Time alter）」基础上的能力。
110	4	被分割出来的个体若死亡，其个体并不会还原至\nAssassin整体，而是直接消灭。\n并非是所谓由上位的「本体」产生下位「分身」的机制，\n而是所有Assassin都是同位的存在。
111	4	『白之圣杯啊，咏唱吧』\n阶级：B　种类：魔术宝具\nSong of Grail。\n将爱与母性与圣杯关联，得以短暂实现\n真挚且纯洁的祈祷。\n不是作为愿望机的机能，\n而是她自身存在得以升华而成的宝具。
112	4	与坂田金时的缘分是起于金时青年时代。\n由于金时很好欺负，所以不止一次找他来酒宴玩耍。\n对酒吞而言，这些只是普通的酒宴，但对金时而言，\n这些可是一旦掉以轻心就会被杀的魔之宴。\n酒吞曰，\n「边沉醉于美酒，边以命相搏。\n　边肌肤相亲，边互相欺瞒，岂不觉别有风味？」
113	4	『五行山·释迦如来掌』\n阶级：B　种类：对军·对城宝具\nGogyousan Shakanyoraishou。\n借用了自己敬仰的佛，也即自己（前世）\n在天界时的师父——释迦如来的一小部分力量。
114	4	古净琉璃『丑御前之地』\n\n作为牛头天王天赐之子诞生的源满仲的孩子\n由于其异常的诞生（鬼之子），被视为不祥之子，\n并被寄放在寺院秘密抚养长大。\n十五岁的时候，不祥之子自称「丑御前」，\n在品川的铃之森建立了自己的魔国。\n为了消灭魔国而踏上旅程的，正是与她同父的武士，\n源赖光，以及源赖光率领的四天王。\n\n「丑御前」就是牛头天王的化身，\n而牛头天王则是帝释天（因陀罗）的化身。\n\n……丑御前究竟是什么人。\n这场战斗的结局究竟是什么样的，\n知道真相的，只有源赖光，与坂田金时。
115	4	——然而，世间无情，事情总是不能如意。\n无条件爱着自己，等同于母亲以及姐姐的源赖光，\n曾经相互吸引却又互相残杀的酒吞童子，\n由于敬爱酒吞而总是来找茬的茨木童子，\n等等这些孽缘总是会来打扰金时。
116	4	茨木童子才是在大江山建立起庄严的城池，\n将酒吞童子视为义兄弟姊妹般敬爱，\n统帅一骑当千的鬼群，在平安京肆虐，\n令人类陷入恐惧的「灾难之鬼」。
117	4	『不灭的混沌旅团』\n阶级：B　种类：对军宝具\n有效范围：2～50　最大捕捉：100人\nImmortal Chaos Brigade。\n与其说是风魔小太郎的宝具，\n不如说是风魔忍群的宝具比较妥当。\n将两百名部下作为灵体进行召唤。\n自动将敌方集团周围化为黑暗，\n将他们打入鬼哭狼嚎的地狱。\n被北条方雇佣的第五代风魔小太郎率领两百名乱波\n潜入武田军阵地，一路杀害伤兵，边高声呐喊，\n边将火种扔进敌阵，并掠夺武器与粮草。\n经历了连日的夜间偷袭，武田军被迫撤退。
118	4	他既是太阳神拉之子，也是其化身。\n因而他以大地之上唯一的绝对者身份宣称：\n正如飞鸟于空中振翅，游鱼于大海穿梭，鲜花于野间绽放一般，他理应为神王（法老）。
119	4	『闪耀于终焉之枪』\n阶级：A++　种类：对城宝具\nRhongomyniad\n圣枪。锁系星辰的风暴之锚。\n传说其真正的模样是连接世界表里之塔。\n真名解放时阶级和种类都会发生变化。
120	4	神性：B\n在作为统治万民，君临天下的支配者的同时，\n也有着接近神明的神格，这即是法老。\n法老虽然在时代等因素的影响下神性会发生变化，\n但据传她确为天空神荷鲁斯之子，及其化身。
121	4	确实，兰斯洛特最适合以Saber职阶进行召唤。\n但是，兰斯洛特本人可能比任何人都觉得，\nSaber职阶是莫大的讽刺。\n高洁的骑士这种说法真是令人发笑。\n那个为不列颠的毁灭推波助澜的自己！\n兰斯洛特因此确信。\n与自己最相称的职阶，应当是Berserker。
122	4	悲剧的是，伊索德正是马克王所深爱的，\n并立誓将要迎娶为妃的女性。\n终于，在马克王那些嫉妒崔斯坦的廷臣的谏言下，\n他被无情地逐出了宫廷。\n\n之后，虽然他巧合地迎娶了一位同样名为伊索德的女性，\n但对曾经的那位伊索德的思念，与日俱增。
123	4	拥有得天独厚的才能与家世却不招致嫉妒，\n除了源于高文自身的良好性格，\n还有那理所应当而又不骄傲自大的天性使然。\n作为忠诚的骑士，对王的忠心犹如钢铁一般。\n高文自身所期望的，\n便是能够成为为王所使的一柄利剑。\n……那副姿态，\n在不熟知他内在的第三者眼中，便是一种盲目吧。
124	4	常常与暗杀对象结下恋人甚至婚约关系。\n也就是说，她一直重复亲手摧毁着，\n由她自己亲手构筑的虚无缥缈的『拟似幸福』。\n渐渐地，她的精神开始错位。
125	4	『八幡祈愿·大妖射贯』\n阶级：B　种类：对人宝具\n南无八幡大菩萨·请赐予此箭矢加持\n使用自年轻时就爱用的五人张强弓进行射击。\n有着栖息于湖中的龙神的特别加持。
126	4	然后，这次面对人理烧却以及狮子王对圣都的统治，\n他再次站了出来。\n梅林赋予了他身为区区一介骑士也能与圆桌骑士们战斗的力量，\n那也是最后将剥夺他生命的东西。\n而这份力量，丝毫不逊于圆桌骑士。\n此即为——未能归还的圣剑。
127	4	『万能之人』\n阶级：EX　种类：对人宝具／对军宝具\nUomo Universale。\n传说中的万能性获得形态后的存在。\n能瞬间解析对象，配合对象调整自身的最大攻击并释放，俗称万能特制宝具。\n原本貌似是通过瞬间临时重构对方的宝具，来反弹对手攻击的反射系宝具，但这部分资源好像被用来运营迦勒底了。
128	4	就算身着泳装，也还是平时的玉藻前。\n只不过这次是在度假，所以她用尽了所有魔力，化为夏日野兽了。\n身体能力之所以异常强大也是由于这个原因。\n或许是基于充足的从容吧，比平时的玉藻更为优雅，更为高贵。本人貌似以优雅的模特自居。\n只不过真正的淑女不会兴致勃勃地到处玩乐，也不会带着救生圈。
129	4	海之家的佑护：EX\n以NP为代价，回复HP的固有技能。\n海边的她被大多数摊贩敬为「食物之王」。豪爽的点单，豪爽的进食景象，以及一扫而空后面带灿烂笑容表示这家店一定会生意兴隆的。是真的吗。大概吧。\n但唯有对土豆泥要说No, thank you。
130	4	虽以泳装身姿现界，但完全不介意暴露程度。美丽、快乐、华美，玛丽·安托瓦内特始终在闪耀。不如说她对自己的外貌过于没有自觉，以至于在外人看来或许显得特别大胆。
131	4	无论是安妮·伯妮还是玛莉·瑞德，追求的都是「值得信赖的存在」以及「能够共通战斗的同伴」。\n从这点来看，迦勒底的御主好像合格了，她们很粘御主……但是，擅自潜入御主房间未免有些犯规吧，某匿名公主如是说。
132	4	冲浪小莫比平时更为容易表现对御主的好感与撒娇心。\n或许是由于夏日的酷暑令兴致高昂的关系吧，平时的不易近人感貌似早就抛到脑后去了。
133	4	「难得来一次海边，得好好享受才行」\n这是Assassin斯卡哈的基本态度。\n就算面对御主，也主张该享受的时候就要多享受，\n虽说看上去如此……
134	4	……也就是说和平时的清姬没什么两样，但在这样的夏日，何不夸奖夸奖她的泳装呢。这个夏天一定会转瞬即逝的……是指感动万分的清姬一定会将你关在什么地方的意思。
135	4	天性的肉体（海）：A\n脱去了圣衣的玛尔达的肉体作为生物来说非常完美。\n脱掉以后可是很厉害的。这是展示肉体绝对性的技能，但也具备魅惑他人的技能效果。
136	4	『多元重奏饱和炮击』\n阶级：A+　种类：对人宝具\nQuintett Feuer\n通过将肌肉系统、神经系统、血管系统、淋巴系统被拟似地误认为魔术回路，来提升瞬间输出力量的舍身一击。\n游走全身的五种回路奏响的雄壮魔力奔流甚至具备能与星光相匹敌的歼灭力。
137	4	『鹤翼三连』\n阶级：C　种类：对人宝具\nKakuyoku Sanren\n某位英灵使用的绝技。\n投影出三对拥有相互吸引性质的夫妻剑，\n不断通过投掷斩击组成的必中不可回避的连招。\n再配合小黑转移到敌人背后的能力，\n就算拥有心眼，也很难看穿这招。\n若想破解这招，必须拥有全方位的防护，\n或是无视伤害，直接对术者本体发动敢死攻击。
138	4	『鲜血龙卷魔女』\n阶级：B　种类：对人宝具\n有效范围：10～30　最大捕捉：一人\nBathory Brave Erzsebet\n鲜血魔女的Saber版。\n用风暴般的勇者力封印对手，并趁此破绽\n全力高速旋转突击，令对手爆炸的禁忌的剑技。\n当然，所谓的勇者力就是伊丽莎白的音波冲击产生的。\n向着被伊丽莎白的超音波震得身心都麻痹的对手释放的\n超雷鸣回旋斩甚至能粉碎禁止入内的告示板。
139	4	克娄巴特拉一生中曾与两个男人相伴。\n第一位，是恺撒。对他，她毫无疑问坠入了情网。\n这份热情与思念之甚，\n令地中海上微风都显得无比闪耀……\n然而他却去世了。在即将统一地中海世界前，\n被暗杀了。留下了儿子恺撒里昂。\n\n此时，又有个人出现在了以泪洗面的克娄巴特拉面前。\n这位宣告要守护克娄巴特拉以及托勒密王朝的男人，\n正是罗马将军安东尼。\n\n深爱着自己的国家、臣民、以及两个男人——\n罗马的恺撒与安东尼，最后自杀而亡。
140	4	德古拉本是他自己报上的名号，\n意味着「龙的儿子」。\n他父亲·弗拉德二世是神圣罗马帝国龙骑士团的骑士，\n也是龙公（Dracul）这个称呼的由来。\n弗拉德公相信对主的爱，\n想要履行贵族应纠正不正当行为的职责。\n然而沉溺于特权阶级财富的领主们厌恶他的清贫，\n拯救了基督教世界的武人就这样因阴谋而遭到了惩罚。
141	4	圣者的礼物：C\n通过成为圣诞老人获得的技能。\n赠送礼物，滋润心灵。\n尽管还不成熟，但万事都认真对待的态度\n从圣诞老人的角度来说，也值得给予较高的评价，\n以新手圣诞老人的等级来说，做得还算相当不错了。\n\n自我变革：A\n原本，从者应该以全盛期的样子被召唤，\n但她属于例外，她作为「今后将会继续成长」\n的存在被召唤了。\n心向恶即成恶，心向善即成善。\n她的未来或许不会那么光明，\n可即便如此，只要渴望，就会被赐予圣者的灯火。
142	4	魔力放出（宝石）：A+\n将过剩的魔力附加在武器上来增加攻击力。\n原本伊什塔尔自如的神气可以称得上万能，\n但由于附体对象的影响，不知为何，\n变得只能在宝石中积蓄魔力了。\n虽然是强大的魔力放出技能，\n但由于需要注入宝石并释放这个工程，\n所以使用的时候稍微有些麻烦。\n\n美之显现：EX→B\n作为美之女神的可怕魅力。\n能吸引他人的能力。虽然处于附体于他人的状态，\n但也已经超越人的领域了。\n原本是以强大诱惑为主体的复合技能\n（充能吸收、诅咒、技能封印），\n但由于被附体之人的强烈要求，\n因此去除了向对手施加的束缚效果，\n实质只剩下领袖气质单体技能了。\n（从原本的EX阶级降到了B阶级。）
143	4	内向、主动、强势。\n平时犹如美丽的花朵般伫立，但一旦行动，\n却会成为不等人、不留情、不自重的可怕活跃怪物。\n\n人类也是地球上的生命，所以是“喜欢”的对象，\n但人类会基于知性将自然与自己划分着考虑，\n因此不是很愿意拥护。\n动物、植物身上有与自己相近的感觉，\n因此大多数行动都是为了保护它们。\n\n不过由于原本就好奇心（求知欲）强烈，\n所以恩奇都很喜欢与人类对话。\n如果这个人具备讨人喜欢的性格（充满博爱精神，\n全体主义者，但依然最优先自己）的话，\n会由衷表示敬爱与敬佩，乐于作为朋友支持对方。
144	4	『炽焰，亦焚尽神灵』\n阶级：A　种类：对人·对城宝具\nXiuhcoatl\n传说过去魁札尔·科亚特尔离开阿兹特克的时候，\n为了不将众多财宝拱手让给恶神特斯卡特利波卡，\n将自己的宫殿燃烧殆尽的火焰的再临。\n让周围被火焰所包围，短暂阻止对手解放宝具真名——\n\n本应如此，但由于本人沉迷摔角，\n这宝具便成了极为古怪的存在。\n基本是让对手飞向天空，并头朝下摔落，\n根据情况，甚至可能改为从1000米的高空\n朝着对方使出飞踢的打击技之类的。\n本人将其取名为Ultimo Tope Patada。
145	4	阵地建造：A\n不仅能身为魔术师制作道具，连建筑都能建造。\n再说乌鲁克的要塞本来就是吉尔伽美什设计的。\n由于用粘土与石材建筑存在极限，所以虽然嘴上说\n「想要更多木材。\n　得去杉木林才行……」\n但由于恩奇都一事的影响，始终不想去杉木林的王。
146	4	魅惑的美声：B\n与姐姐们相同的固有技能。\n能对男性起到魅惑的魔术效果，\n但可以通过对魔力技能回避。\n就算没有对魔力，只要有抵抗的意志，\n也可有所减轻。
147	4	魔眼：A++\n拥有最高等级魔眼「库柏勒」。\n但平时处于封印状态。\n\n畏怖的咆哮：A++\n令生物产生本能畏惧的咆哮。\n为敌方全体付与恐怖、连续性的防御下降、\n瞬间防御大幅下降、诅咒状态等。\n但本作中基本不会使用。
148	4	豹之拳：A\n正式技能名：豹子的佑护\n豹子之拳就是破坏力。\n豹子神灵赋予的佑护。\n不会感受到恐惧与疼痛。\n是结合了勇猛技能与直觉技能效果的复合技能。
150	4	犹如吹拂于草原上的风一般的青年。\n只要在他的面前，任何人都会松懈下来。\n是个飒爽且正义的人。\n但看上去欠缺紧张感和责任感，\n因此有时会令人觉得他是个可疑的诈骗犯。\n是个虽然能客观认识事物，承认人类世界十分残酷，\n但依然能用一句『但这样就没意思了吧？』\n将气氛活跃起来的能言善道之士。\n\n喜欢人类的世界，喜欢恶作剧，喜欢女性。\n是能用「好啦好啦」与飒爽笑容对大多数情况\n予以反击的花之魔术师。\n\n看上去是那种没有任何烦恼的完美乐天人格，\n但梅林自己很清楚自己在人类社会中属于异物，\n所以始终不会破坏最后一步……也就是名为好友的壁垒。\n为了最后，人类能迎来完美的结局，\n日夜守护着。
153	4	天眼：A\n天眼被视为「达成目的的力量」。\n一旦决定要完成某件事，\n就会全身心投入，保证目的必定达成。\n也可以说是将自己的全部存在寄托于视线上，\n并投射向目的地的能力。\n不过武藏只会将天眼用在『斩这个地方』这种事上。\n比如说，一旦她决定『切下对方的右臂』，\n那最后她会不惜使用任何手段都要切断对方的右臂。\n那将会成为最合理的斩击，\n『没有任何多余，制服时间与空间的一刀』。\n将『为达目的使用的手段』范围『缩小到一种』的力量。\n将本应无限的未来限定成『只有一个』的结果，\n可以说是极为特殊的魔眼。
154	4	『死告天使』\n阶级：C　种类：对人宝具\n有效范围：1　最大捕捉：1人\nAzrael。\n稀疏平常的大剑。\n被这个人物一生不断挥舞，不断坚信的信仰所浸透。\n\n据说由于这个人物始终在幽谷境界中行走，\n因此他的剑的所有攻击都会附加即死效果。\n虽然概率很低，\n但无论多厉害的强敌都会遭到即死的危险性。\n身在幽谷之人早已习惯了死亡，\n由于与死早已同化，因此拥有即死耐性与魅惑耐性。
155	4	魔力转换炉Alter莉雅反应炉能够将隐藏在体内的\nAlter元素结晶作为触媒，并把卡路里变换为魔力。\n她强调说，\n「和三盆糖的成分平衡效率最高。最好还能有茶。」\n眼镜是为了能让强化过的视神经能够休息所需的\n必要道具。佩戴期间的视力反而会下降。\n\n她所拥有的神秘道具\n「∞（无限）黑豆沙馅」是通过\n欲望（灵魂）、糖分（力量）、\n柜台（空间）、原价（现实）、\n制作（时间）、需求（心灵）\n这六种原始力量制作而成的，\n所以能为持有者带来无限的力量什么的，\n但X·Alter似乎不是很明白。
156	4	?
157	4	『无限剑制』\n阶级：E～A　种类：对人宝具\n有效范围：30～60　最大捕捉：？\nUnlimited Lost Works\n『无限剑制』是专精锻炼剑的魔术师\n究其一生到达的最高境界。\n这个固有结界中积蓄着所有他所看见的\n拥有「剑」的概念的兵器。\n……然而，这男人的『无限剑制』居然能在对方体内生成。\n极小的固有结界能在体内以极强的威力让对方破碎。
158	4	?
159	4	?
160	4	『誓约胜利之剑』\n阶级：EX　种类：？？？\nExcalibur\n拯救星辰的闪耀圣剑。\n为打败企图摧毁星辰的外敌而铸造，\n能击退所有邪恶的黄金之刃。\n\n圣剑的「十三拘束」中的六拘束被开放后的形态。\n由于开放的拘束没有超过半数，也就是七拘束以上，\n因此未能发挥真正的力量——\n即便如此，还是能够击毙巨恶的激烈之光。\n\n在本作中，「贝德维尔拘束」的开放\n被自动承认，\n可以视为预计将与巨大的存在展开决战。
161	4	『不灭之诚』\n阶级：C+　种类：对人宝具\n新选组。\n自己才是，唯有自己，只要有自己在，\n诚之旗帜便是不灭的。\n这是他强烈的自信与疯狂编织而成的宝具。\n发动时，能让肉体损伤对身体能力的劣化暂时无效化，并在消灭对手之前用尽各种手段令战斗持续。但效果时间一结束，累积的伤害会一口气爆发，可谓双刃剑。
162	4	日轮的宠姬：EX\n能让对象能力阶段性层层下降的诅咒。\n曾令日轮沉没的她本人无论是不是愿意，都会令周围与自己有瓜葛的存在走向破灭。\n「胆敢触碰茶茶可是在玩火自焚的哦！　这话是认真的！」
163	4	高等从者：A\n通过合成复数神话精髓制作而成的人工从者。\n拥有阿耳忒弥斯、利维坦、萨拉斯瓦蒂（辩才天女）的\n要素。\n\n施虐体质：A\n在战斗中，对自己的攻击型进行加成的技能。\n虽常被视为正面技能，但拥有该技能的人战斗时间越长，\n施虐性就越是提升，以至于会失去了平时的冷静。\n\n罪恶芭蕾：A\n就是纯粹的战斗风格。\n为古典芭蕾所倾倒的Meltryllis在经过自主调整后，\n成立的各种攻击技能。\nMeltryllis原本是基于BB的「侍奉需求」与\n「快乐」创造而成的Ego，\n其本质是激发男性难以遏制保护欲望的\n可怜少女形象——曾是如此。\n之所以为芭蕾所倾倒应该也是由于这个印象。\n但在不断夺取他人能力的技能影响下，\n现在性格变得十分好战。
164	4	高等从者：A\n通过合成复数神话精髓制作而成的人工从者。\n拥有帕尔瓦蒂、杜尔嘎、布伦希尔德的要素。\n\n胸部之谷：A\n就是单纯的回收箱。\n临时收纳、保管不需要的数据文件的功能。\n也叫垃圾箱。Passionlip的情况下，\n不知为何那个图标被设置在胸部的中心。简单说来，\n就是可以无限囤积垃圾的虚数空间口袋。\n如果是Passionlip毁掉的垃圾数据，\n无论容量多大，都能无限收纳。\n看上去很方便，但由于无法把垃圾数据恢复原样，\n所以完全是没用的功能。由于Passionlip是个\n会将感情囤积于内部，并有自毁／自伤倾向的少女，\n所以才会获得这种特殊构造吧。\n\n在CCC中，一度坠入死之谷的存在再也无法爬回来，\n但在FGO中，只要是缔结了契约的御主，\n是可以将那些捞回来的。
165	4	神通力：B（A）\n神之力的一部分。能随心所欲移动周围的物体。\n但由于现在作为从者显现，能力被降级，\n能力的对象仅限于自己拥有的道具。\n\n魔眼：B+\n能魅惑目光对上的男性，\n让对手对铃鹿御前产生强烈的恋爱之情。\n可用对魔力技能回避。\n\n神性：A\n对其身体究竟是否具备神性属性的判定。\n身为第四天魔王之女的铃鹿御前具有很高的神灵适性。
12	5	『天地乖离开辟之星』\n阶级：EX　种类：对界宝具\nEnuma Elish\n美索不达米亚神话中冠以神之名的剑，\n乖离剑·EA对空间进行切断。\n在大量宝具中也属于位居顶点的宝具之一，\n也是“斩裂世界”之剑。
166	4	十之王冠：EX→D\n权能级超级技能。\n十之王冠指的是十位邪恶的王，\n七座山丘指的是令人厌恶的恶之都市。\n单纯来看，就是能让受到的伤、发生的事等\n各种结果“变得不存在”的技能。\n实际只要有这个，BB就是无敌的。\n开玩笑啦，这些都是过去的事了。\n你看，无敌挂什么的在旁人看来显得很没品吧？\n这次美丽可爱的BB亲可不需要这种技能啦☆　\n啊，但稍微用一下还是OK的哦？　你看～就像这样！\n\n自我改造：EX\n改造自身的技能。\nMooncell的AI身负“不能提升自己机能”的\n绝对命令。然而，由于故障得以从这枷锁中逃脱的\nBB开始扩张自己的机能。为了提高计算能力，\n用黑色噪声捕食、分解NPC、AI、甚至从者，\n并作为自己的存储器来使用。\n由于这种不惜自我崩溃的后期扩建，\n导致BB成了拥有庞大容量的超级AI。\n其样子犹如边沉没边不断建造的填海造田都市，\n或是类似弗兰肯斯坦的怪物。
167	4	『快乐天·胎藏曼荼罗』\n阶级：EX　种类：对人宝具　最大捕捉：七骑\nAmitabha Amidala Heaven\\'s Hole\n对人理，或是对冠宝具。\n体内饲养着几乎可谓无限魔神柱的BeastⅢ专用宝具。\n她的体内已是整个宇宙，\n已是极乐净土了。\n被吸入其中的存在会在现实中消失，\n从自我中解脱出去，理性被融化。\n无论肉体多么强健，无论防御装甲多么坚固，\n在祈荒的体内都毫无意义，\n就像初生的生命般被无力化，并得到解脱。\nBeastⅢ是存在于现实中的『孔』本身，\n但掉落孔中之人在消灭的瞬间，\n会感受到最为极致的快乐，并在法悦中被祈荒吸收。\n从现实这个苦界中被解放出去的末路，\n从某种角度来看或许也能称之为济度吧。
169	4	『一千零一夜』\n阶级：EX　种类：对王宝具\nAlf Layla wa Layla\n基于其由来，拥有王属性特攻。\n严格说来就算不是王，但只要是类似的存在，\n在她心目中也有可能被视为「王」。\n\n这是名为「她叙述的故事」的固有结界。\n通过使用甚至能令世界都感到信服的压倒性存在感\n与现实感的方式叙述，来令「故事」具现化。\n通过召唤一千零一夜故事中出现的登场人物、\n道具、精灵等的形式。\n在原来（正当历史）的一千零一夜中不存在，\n但经过后世创作，并吸收进来的阿拉丁及阿里巴巴等\n篇章能对身为英灵的她的生存起到作用，因此可以使用。重要的不是正确与否。而是王觉得是否有趣。\n故事（宝具）的最后当然会以这种方式来收尾。\n\n「——故事就是这样。」\n
170	4	成为了皇后，掌握了实权的她\n陆续杀害（暗杀）了碍事的亲人与政敌。\n高宗死后，将国号易为「周」。\n终于自己登上了皇帝的宝座，自称「圣神皇帝」。\n据说她在统治国家的时候，奖励密告，施行恐怖政治。\n名为「酷吏」的官吏实施的残忍拷问\n令民众由衷感到恐惧—— 
171	4	?
172	4	征服者：EX\nConquistador在西班牙语中是「征服者」的意思。\n大航海时代，通过航海，征服未开化土地之人的技能。\n也表现了对未开化土地的入侵、支配、奴隶化等手段。\n严格来说，通过航海征服了「美洲大陆」的人\n才能被称为征服者，但作为其源流——\n作为让「来自西班牙的征服者」这概念最初出现的人，\n哥伦布的这个技能是EX级的。\n
173	4	『这是常识，我亲爱的朋友啊』\n阶级：B　种类：对人宝具／对界宝具\nElementary My Dear\n作为从者现界的夏洛克·福尔摩斯得到的宝具。将自身起源的『究明』升华成宝具的存在。\n哪怕面对的谜题是真正无法究明的存在，也必定会「产生」抵达真实的线索或途径。\n比如说，哪怕有个失去了钥匙的宝箱，也能让钥匙变得「没有失去」，钥匙会变得必然能在世界的某地被找到。\n（只不过，再怎么说也不可能突然出现在手中。所以福尔摩斯或是其协助者必须自行发现位于世界某处的那东西才行。）
174	4	『令人惊叹的伟业』\n阶级：A　种类：对军宝具\nMarvelous Exploits\n将美利坚合众国本身作为概念宝具，将建国历史能量化攻击敌人，将目标位置的一切全部扫荡干净……本人是这么说的，但实际看起来根本就是用巨大的脚踩踏罢了。\n\n在全宝具中拥有令人惊叹的施放速度。
175	4	暴走特权：EX\n皇帝特权变化而来的技能。\n出自以前在奥林匹亚中驾驶战车肆意驰骋的逸事。\n也可以说是宝刀未老。无论发生任何情况，\n都确定能赢得第一名的技能。\n\n予夏以梦：A\n沙滩之花的尼禄版。主动展示自身之美，\n这份美同样是为了所有在海滨露出笑容之人。但——\n（然而这个技能已然失去。）\n\n七冠：C\n这芬芳令剑增厚，令铠变尖。\n存在方式十分模糊，因职阶造成的不利变得毫无意义。\n\n不死的马吉斯：A\n曾担任过一段时间魔术之师的西门·马吉斯教导的魔术。西门主动接受了斩首之刑，并且复生了。
176	4	夏日电疗：B+\n夏日的电疗与众不同。\n具体说来，就是在巴贝奇的支援下，\n蒸汽机关也提供了相应的能量。\n负面效果：好热，好倦。\n\n对空虚酷暑之哀叹：A\n只要稍微觉得有些热，\n弗兰亲就会变得慵懒怕麻烦瘫倒在地。\n这样子犹如被夏日的酷暑整垮的大型犬。\n哎呀好可爱。\n\n适度负载：C\n过量负载太累人了，\n所以就适度负载好啦。
177	4	热砂的王道：A\n由皇帝特权变化而来的技能。\n通过这个技能，\n尼托克丽丝可以得到原本不具备的白刃战斗能力。\n或许是因为看到了克娄巴特拉的法老斗法，\n产生了某种灵感吧。
178	4	傻瓜杀法：A\n凭借难以想象的傻瓜思维进行战斗。\n在寺庙门口敲完门就开溜，\n在茶釜里塞进鞭炮，\n或是惹信胜哭泣，简直肆意妄为。\n原本就特别擅长想这种馊点子，\n所以从不好的意义来说近身战斗力得以提升。\n\n敦盛节拍：B\n让敦盛节拍响彻整个战场的必杀超空间舞蹈敦盛之战。\n本想让她说清楚这究竟是跳舞还是唱歌，\n但信表示这就是摇滚。\n\n顺便说一句，谜之魔王武装的名字是\n『压Kill长谷部』。
179	4	单独行动：EX\n御主不在时也能独自行动的能力。\n尽管有需要侍奉的主人，但一事归一事。\n女佣的服务精神就该是自由的……是自发的行为，\n不应该受到他人强制要求。基于这种信念，\n她获得了极具威胁的单独行动技能。\n为了获得该技能，一般能力会些许降低。\n\n夏日清扫工！：A\n魔力放出技能变化成用于家政方面的用途。\n能用水流清洗一切的洗涤达人。\n一边提升自己的服务能力（攻击力），\n一边严格监督整支队伍，提升队伍的士气。\n\n指导：A\n海边的阿尔托莉雅·Alter是冷血的女家庭教师。\n在她那严格的教育与指导下，纠正错误的战斗方式。\n由于形式极为斯巴达，\n所以受到她教育的人会受到莫大的伤害。
13	5	擅长暗杀、扰乱的英灵，同样精通自然毒素。\n红豆杉也被视为通往冥界的树。\n祈祷之弓拥有瞬间增幅目标腹部囤积的不净物（毒或病）\n并使其释放的力量，若对象带有毒，\n更可令这种毒产生像火药一般爆发的效果。
180	4	NYARF！：B\n自如地操控名为NYARF——\n也就是爱迪生制造的超级水枪。\n或许正是因为本技能的存在，\n海伦娜的灵基才被认定为Archer。\n她本身则表示，\n「我本打算将职阶改成 Rider 的啊……」\n\n上校的暑假：B\n哪怕在暑假，奥尔科特人偶们也会为海伦娜鞠躬尽瘁。\n甚至可以说，为了让比平时更为活跃的她\n能充分享受其中，他们更为全力以赴。\n对他们来说，暑假的喜悦完全取决于\n海伦娜是否能获得满足这一点。
181	4	影之风纪委员长：A\n由无穷的武练变化而来的技能。\n哪怕失去了水手服，无论发生任何情况，\n都不会放过扰乱风纪的行为。\n\n锻铁悠悠球：C\n一提到水手服，\n就会想起这个的金时的理念也传染给了赖光。\n精通百种武艺的赖光能熟练地运用锻铁悠悠球，\n击溃那些企图扰乱迦勒底风纪的各种夏日诱惑。\n\n夏日灾难：EX\n不脱也很厉害——但脱了更厉害。\n展现自己能在海边吸引多少人的注意力，\n与夏日危机似是而非的技能。与沙滩之花不同，\n完全脱离爱恋范畴的视线也会被她吸引。
182	4	骑乘：EX\n能乘坐天舟马安娜的伊什塔尔的骑乘技能\n与人类完全不是同一次元的存在，根本无法相提并论。\n当然，虽说『无法相提并论』，\n却也不代表会比人类『更精湛或更快』。\n总之是『各种意义上的厉害』。\n是已经不用怎么在意时间或空间问题的乌鲁克驾驶技术。\n\n闪耀水之衣：A\n将大王冠换成泳装的技能。\n大王冠仅对伊什塔尔本人有效，而这个则能对全队奏效。但反之，效果会有所降低。\n\n夏日破坏者！：A\n将夏天（从各种意义上）进行破坏的女神。\n「女神变生」的降格版。
183	4	伽摩之灰：EX\n帕尔瓦蒂十分温和，在战斗方面是极为弱小的女神。\n但是，这并不代表她内心也很弱小。\n思念所爱之人的心比任何神都要强烈、深邃。\n为了她所爱之人，不惜破坏自己的躯体，燃烧自己的神性，也要化为战斗的力量。\n尽管只能现出瞬间的火焰，但这力量甚至能与湿婆妻子之一·破坏女神迦梨匹敌。\n\n值得一提的是这和湿婆的感情毫无关系。\n帕尔瓦蒂拥有哪怕被所爱之人无视，也会为了这个人孕育爱情的特性。\n这份爱如此执着，稍微……不，是神话级的沉重。\n\n\n女神的恩惠：A+\n女神（善）的馈赠。\n出自侍从无法忍受饥饿的时候，割伤自己的脖子，赐予其血液的故事。\n\n女神的神核：B\n唯有天生就是完成的女神才会拥有的技能。拥有维持精神与肉体绝对性的效果。能几乎缓和所有精神系干涉，肉体不会成长，无论摄取多少卡路里，体型都不会变化。\n由于是拟似从者，所以等级停留于B阶。但这些无关紧要。\n体型！　不会！　变化！
184	4	?
185	4	?
186	4	武之求道：B\n无视地位、名誉、财富、女色，\n一心磨练武艺之人才会被付与的技能之一。\n只要宝藏院胤舜手持十文字枪，战斗能力就会提升，\n也会获得一定程度对精神攻击的耐性。
187	4	新阴流：A++\n修得了柳生新阴流的奥义。\n从幼年到二十四岁的这段时期，\n父亲宗严（石舟斋）直接教育、培养宗矩的剑术。\n拥有A阶级以上本技能的宗矩，\n不仅精通剑术，更对精神攻击有耐性。\n对必须参禅的新阴流高手而言，\n不会被迷惑，不会犹豫。\n\n无刀取：A\n由剑圣·上泉信纲创造，\n并由柳生石舟斋解明的奥义。\n据说哪怕手中无刀，\n新阴流的高手也能胜过拥有武装的对手。
188	4	『机关幻法·吞牛』\n阶级：C　种类：对兽宝具\n有效范围：0～20　最大捕捉：50只\nKarakurigenpou Dongyu\n创造真空刀刃，将对象吸引过来后进行压缩粉碎。\n将『北越军谈』中提到的\n把牛吞下的幻术进行应用后的产物。\n通过果心居士亲手组装的礼装，获得了魔性特攻的性质。\n正如轶事中所描述的，也可以用作「物体从眼前消失」\n「消失的物体再次出现在眼前」的幻术，\n但在FGO中基本不会这么使用。
189	4	实际上，她的真面目据说是已经活了三百年的狐狸，\n但根据某化生专用SNS（社交网络）的内容，\n由于她与某狐系贤妻从者经过了\n「角色设定比较重复所以请您让步（文雅的意译）」\n这般令人神清气爽的回复应酬后，\n作为以蝙蝠为主题的从者被召唤了。\n\n摘掉眼镜的行为是出于一种公主举止。\n但在那些可以阴暗气质全开的场所，她会一直佩戴眼镜。
190	4	无辜的怪兽：EX\n从技能『无辜的怪物』变化而来的id_es技能。\n身为铁之龙娘的机械伊丽亲会用特殊的摄影力量，\n在天空飞行、喷吐火焰、释放电击、发射导弹。\n这种存在方式正可谓钢铁守护神。\n本人内心暗暗觉得在使用该技能的时候，\n应该播放主题曲才对。\n\n过载改：C\n由弗兰肯斯坦、巴贝奇拥有的技能变化而成。\n尽管不会提升宝具的威力，但会牺牲HP提升NP。\n根据伊丽莎研究家的R氏表示，\n「这怎么看都是自爆前的征兆吧！？」\n\n巨型百连发：EX\n从大量生产线上唤来机械伊丽亲，\n对敌方发动特攻的魔之宴。\n最后上百台机械伊丽亲会进行合体，\n化为巨大的枪，对敌人做很过分的事。\n在其他世界观里，也被称为『超人姐妹同盟』。\n在『FGO』中不会被使用。
191	4	无辜的怪兽：EX\n从技能『无辜的怪物』变化而来的 id_es 技能。\n身为铁之龙娘的机械伊丽亲会用特殊的摄影力量，\n在天空飞行、喷吐火焰、释放电击、发射导弹。\n这种存在方式正可谓钢铁守护神。\n本人内心暗暗觉得在使用该技能的时候，\n应该播放很有反派风格的主题曲才对。\n\n过载改：C\n由弗兰肯斯坦、巴贝奇拥有的技能变化而成。\n尽管不会提升宝具的威力，但会牺牲HP提升NP。\n根据机器人研究家的M氏表示，\n「咦，这是不是电池漏电了？」\n\n机械伊丽拳：EX\n机械伊丽亲Ⅱ号机的本体，\n召唤巨大框架的手，并进行攻击。\n由于存在『只有身为人类之敌的情况才会使用』的\n这种迷之规定，\n所以在获得了御主的状态下，是无法使用的。
192	4	?
193	4	说到底，哪吒根本就不是人类。\n是以昆仑山的仙人·太乙真人丢入下界的宝珠为核，\n从而诞生的非人也非仙人的存在。\n除了出生时便拥有的宝贝「乾坤圈」与「混天绫」以外，\n太乙真人还时不时赠与哪吒的宝贝。「斩妖剑」、\n「砍妖刀」、「缚妖索」、「降魔杵」、「绣球」、\n「风火轮」和「火尖枪」。\n\n在下界成长的哪吒虽不邪恶，却是一个目中无人，\n喜欢闹事之人。只因弄脏了河川被神明责怪，\n就杀害了神明，甚至连其上位之神都杀了。\n最终因这件事遭到责罚，\n导致其下界的双亲都要遭到牵连之时，无奈只能自尽。
194	4	?
195	4	魔女审判：A+\n无视本人的意图，擅自引来猜忌的冲动，\n掀起不幸的连锁，因纯真造成的威胁。\n\n理智丧失：B\n寄宿在少女身上的邪神散发的疯狂，\n能轻易让人类脆弱的常识与道德心崩溃。\n\n信仰的祈祷：C\n注重清贫与每日坚持祈祷的清教徒的信条。
196	4	对魔力：D\n能令D级以下的魔术无效化。\n由于被冥界的阴气所浸透，死亡成了极为日常的存在，\n因此对魔力显著下降。\n\n隐藏的大王冠：A\n使用从伊什塔尔那里没收来的宝物制作而成的女神之冠。\n身为天与地、表里一体的女神，\n将伊什塔尔拥有的各种权能化为自己的东西，\n其效果变得有些阴暗（阴沉）。\n\n魔力放出（槛）：A+\n埃列什基伽勒是个勤恳认真，却又有些消极的女神。\n她平时只要一有空，就会将魔力积蓄在枪槛中，\n并在战斗时使用。\n\n冥界佑护：EX\n作为冥界的支柱被献上，\n并统治冥界的埃列什基伽勒的权能。\n会统治冥界到终结时刻的她就是冥界本身，\n同时，也成了被冥界守护的女王。\n能对己方全体进行支援，也能让她的宝具性能产生变化。
197	4	对魔力：C\n由于其天生的温柔，\n在受到『这不是我想要的礼物』这种投诉时无法反驳，\n导致魔力抗性比身为Saber时明显低下。\n\n骑乘：EX\n被选为圣诞节的英灵，内心平静地燃起了使命感之火的\n阿蒂拉的骑乘技能大幅提升、变化。\n具体来说，就是成了羊大师。\n她骑乘着非名马的名羊茨尔戈疾驰的样子，\n令人不禁联想起过去驰骋于西方世界的\n游牧骑马民族·匈族最强的王……\n联想……能联想到吗……\n\n文明侵蚀：EX\n英灵阿蒂拉本人毫无自觉地发动的技能。\n能将手持的东西变化成对现在自己而言最好的属性。\n『最好』并不是『优秀』的意思，\n而是指阿蒂拉本人最喜欢的东西。\n这次阿蒂拉最喜欢的东西应该不言而喻了吧。\n原本麾下率领的马匹都变化成了羊（之类的东西），\n而爱剑军神之剑则变形成了拐杖糖（杖）。
198	4	森罗万象：A+\n究明自然的样貌，看透其真髓的观察力。\n\n父女的羁绊：A\n直到晚年仍陪伴左右的北斋与应为的心灵羁绊，\n是连邪神的疯狂都无法动摇的。\n\n雅号·异星蛸：B\n通过与深渊邪神达到浑然一体的境地，\n从而绘出的非欧几里德几何学的画风。
199	4	气息遮断：C+\n隐蔽身为从者的气息，适合隐秘行动中使用。\n只要转为攻击态势，气息遮断的阶级就会大幅下降。\n但隐藏毒时，并不适用于这种情况。\n\n阵地建造：EX\n身为魔术师，建造对自己有利的阵地。\n通过搜集具体的材料，\n甚至可形成超越“神殿”的“空中庭园”。\n\n二重召唤：B\nAssassin 与 Caster，在获得双方职阶不同技能的情况下现界。是只有极少一部分从者才会拥有的稀少特性。
200	4	『唯识·歪曲之魔眼』\n阶级：EX　种类：对界宝具　有效范围：1～9999\nYuishiki Waikyoku no Magan\n于夏日降临的怀念之物。\n通过与千里眼（Clairvoyance）并发，从而脱离人类视野的视野——\n把从神之俯瞰视角进行“确认”对象进行扭曲的超远距离物理崩溃。\n\n被封锁的痛苦决堤而出画着螺旋。\n——这种崩溃犹如痛哭的女人。
201	4	“疾走·精灵眼球”\n阶级：EX　种类：精灵宝具\n有效范围：？　最大捕捉：？\nВий Вий Вий。\n解放毕伊（Вий）的魔眼的全部力量。\n看透一切的眼球，甚至可以扭转因果律创造出对手的弱点。\n\n“夕照，不祥的血之城堡”\n阶级：A+　种类：城堡宝具　\n有效范围：1~99　最大捕捉：11人+1只\nSumerki Kremlin。\n分布在俄罗斯各地的城堡（克里姆林，或称为Kreml）的再现。\n继承了皇帝（沙皇）血脉的阿纳斯塔西娅能够\n召唤无比坚固而壮丽的城堡，并用它保护自己。\n\n只有被阿纳斯塔西娅选中的人才能进入这座城堡。\n未被选中的人和入侵者会受到来自整个城堡的攻击。\n在『FGO』中一般不使用。
202	4	“暗天蚀射”\n阶级：A　种类：对人宝具\n有效范围：1~99　最大捕捉：1人\nTauropolos Skia Thermokrasia。\n利用在Archer职阶时使用的Tauropolos，\n倾注全部的魔力释放出的一击。\n与其说是箭矢，不如说是弹道导弹。\n被击中的对手会被黏着质地的“黑暗”所吸附，\n被强制性同化。\n若要抵抗这一招，必须拥有极其强力的对魔力技能。
203	4	“王冠：睿智之光”\n阶级：A+　种类：对军宝具\n有效范围：1~10 最大捕捉：100人\nGolem Keter Malkuth。\n是Caster生前未能完成的宝具。\n它是模仿了“起源的人类（亚当）”，\n是个只要存在，就会不断改写世界的自动型固有结界。\n但是，该宝具与魔偶一样，必须使用现实中存在的材料。\n即使制作了它的Caster死亡，它也会持续运转。\n同时，因为有大地的祝福，\n只要它的双脚还站在大地上，就绝不会毁灭。\n它的武器是黑曜石制成的剑。\n另外，它的心脏部分还需要放置一名魔术师作为炉心。\n根据炉心的强度和相性程度，巨人的实力也会发生变化。\n还有，虽说使用初始材料最多只能达到十五米，\n但借助来自大地的魔力供给，可以逐渐成长到三十米、六十米甚至更大。\n最终，这个巨人会成为乐园本身，\n定会让全世界变得安稳和平吧。
204	4	“至高之神啊，请垂怜于我”\n阶级：C　种类：对军宝具\n有效范围：1~20　最大捕捉：50人\nDio Santissimo Misericordia de mi。\n将普通生物无法驾驭的巨大的杀意压缩、凝固，再混入魔力，\n演奏出同时侵蚀精神与肉体的毁灭之歌。\n生前的安东尼奥·萨列里绝不可能得到的，只有身为无辜的怪物的从者——\nAvenger·萨列里才拥有的，作为绝技的音乐宝具。\n\n……然而，可悲的是。\n那足以匹敌阿马德乌斯的“乐曲”，\n是成为Avenger的萨列里永远无法辨别的“声音”。
205	4	“潜行于余的梦中吧，黑犬”\n阶级：B　种类：对人宝具\n有效范围：领土全域　最大捕捉：3000人\nЧёрный Опричники。\n黑犬兵团。由伊凡雷帝与非常大权一起导入的“亲卫队（Опричники）”变化而成的宝具。\n所谓Опричники，可以称作是伊凡雷帝的左右手。\n他们拥有对所有贵族的财产、土地没收权。\n他们穿着黑衣，骑着佩戴黑色马具、黑色皮毛的马，\n并在马头上绑上了犬的头部。\n同时，他们还拿着用兽毛编成扫帚形状的鞭子，\n据说这象征着“对待背叛者就要像狗一样袭击过去，\n用扫帚肃清他们”。\n曾经作为共同体一度同吃同睡，在同一屋檐下一同生活的他们，现在已经不在这个世上。\n他们只能潜伏在魔兽伊凡雷帝的梦中。\n他们是伊凡雷帝入睡后发动的自动防御，压制宝具。\n他们就那样分散为无数士兵，为杀尽对他们而言的敌兵四处奔走。\n万幸，他们只是作为集团具有压倒性的暴力，个体的力量则很弱。\n但是，首都莫斯科附近的每一只，\n都拥有近乎低等级从者水平的实力。\n\n“服从于我等旅途之兽”\n阶级：A+　种类：对人宝具\n有效范围：0　最大捕捉：1人\n\nЗвери Крестный ход 。\n神兽的游行。是皇帝（坚信）终将会到达天国的游行。\n也就是说，拦在队伍前面的即是对皇帝的叛逆，那也是对神明的亵渎。\n伊凡雷帝会暂时变回曾经的巨兽状态，\n毫不留情地粉碎敌人。
41	5	『女神的微笑』\n阶级：B　种类：对人宝具\nSmile of the Stheno。\n升华后的女神魅力，能够魅惑勇者使之成为俘虏。\n慵懒的视线犹如刀刃，心驰荡漾的呢喃宛若毒物。
206	4	彗星跑法\n阶级：A+　种类：对人(自身)宝具\n有效范围：0　最大捕捉：1人\nDromeus Cometes。\n原本是宝具。\n走下“疾风怒涛的不死战车”后启动的长时间持续型宝具。\n在一切时代的一切英雄之中，最为迅速的传说所具现而成。\n一息之间就能穿越宽阔的战场，即使场地上有障碍物也无法降低他的速度。\n虽然不得不露出自己的弱点脚踝，但能捕捉这个速度的英灵数量并不多。\n\n勇者的不凋花\n阶级：B　种类：对人(自身)宝具\n有效范围：0　最大捕捉：1人\nAndreas Amarantos。\n原本是宝具。\n除脚踝之外全身都被作为母亲的女神忒提斯赋予了不死的祝福。\n能使任何攻击无效化，不过固有技能“神性”的持有者可以抵消这技能。\n\n翔空之星的枪尖\n阶级：B+　种类：对人宝具\n有效范围：2～10　最大捕捉：1人\nDiatrechon Astir Lonchi。\n原本是宝具。\n走下『疾风怒涛的不死战车』后才能使用。\n在阿喀琉斯的父母结婚时，喀戎送给他们的长枪。\n是仅在对方同意的情况下，能制作出以英雄之间单挑为目的的领域的、与固有结界相匹敌的大魔术。\n由于并非以枪兵职阶被召唤，失去了无法治愈的诅咒等部分能力。
207	4	“天蝎一射”\n阶级：A　种类：对人宝具　\n有效范围：5~99　最大捕捉：1人\n\nAntares Snipe。\n成为射手座的喀戎经常会瞄准天蝎的故事的具现化。\n被称为击穿星星的、弓兵能达到的终极一击。\n真名解放时即可发射。并非用弓放出，而是从星星放出的\n流星的一击。\n即便是以敏捷著称的阿喀琉斯，也无法回避这个宝具。\n虽然存在着一晚只能使用一次的缺点，但只要把握住时机，\n就绝不会让目标逃离。
208	4	“灼热龙息·万地融解”\n阶级：EX　种类：对人宝具（自身）　\n有效范围：0　最大捕捉：1\n（龙息范围大约为50）\n\nAkafiloga Argries。\n使自身暂时变身为龙种“法夫纳”的宝具。\n放出的强力龙息（Dragon Breath）\n能够给予敌人巨大的伤害。\n此宝具是由生前变为龙飞上天空而产生的。\n对其本人来说，似乎和人类形态时没有太大的差别。
209	4	○极地：A\n在任何空间都可以行动自如的终极步法。\n\n○不断：B\n照亮持续无尽战斗之路的永不熄灭的光辉。这是那一日的记忆的证明。\n\n○无边：A\n普照一切世界的无边之光。消灭天魔的金色极光。
210	4	○剑法矫捷如鹰隼：A\n这是以藏在江户的道场修行时代，对其剑术的评价。\n以藏虽说学习了许多流派，但由于不管在哪个道场，都是修行途中离开，没有完全修成，因此并没有得到真传。\n在以藏看来，任何流派、任何道场的剑士都不如自己，事实也是如此。
211	4	“翱翔天际宛如龙”\n阶级：EX　种类：对军宝具\n有效范围：2~50　最大捕捉：500人\n\nAmakakeruryuugagotoku。\n这是虽然平时以名为“阿龙”的黑发女性的姿态示人，但真名解放后便会变为巨龙的自律系人型宝具。\n即便是平时的人型形态，也有着与从者不相上下的怪力和战斗力。同时，环绕在她身上的“神秘”也会使通常攻击完全不会伤其分毫，这令她拥有了无可比拟的杰出防御力。真名解放时会展现出如同古时的龙一般的威容，发挥出近乎压倒性的力量。\n等级EX是无法判断的意思。
212	4	○可能性之光：B\n这是类似星之开拓者却又与之不同，与无辜的怪物非常相似的技能。\n英灵拿破仑，将无论是实际自己亲手达成的伟业，还是与史实毫无关系的传闻全盘接受，成为偶像。现界后的他作为“期待”和“可能性”的具现而行动。\n“——嘛，那也像是我说过的话。”\n可能性之光，宛如彩虹。\n与他相遇的敌人，总会看到翱翔于空中的彩虹吧。\n\n○皇帝特权：B\n他作为法国初代皇帝，虽说拥有皇帝特权这一技能……\n但在本作中基本不使用。
213	4	原初之卢恩（战士）：B\n拥有北欧的魔术刻印卢恩符文。\n受到布伦希尔德的教导，有着足以以caster职阶被召唤的本领。\n\n龙种改造：EX\n根据将龙的心脏吞下这一事迹产生的究极的自我改造。\n形成了作为龙种而产生的魔力炉心，身为从者也能够几乎完全独立行动。\n\n睿智的结晶：A\n本来是神话中不应存在的魔导道具。\n食用了龙的心脏后所获得的睿智结晶化的产物。\n从生前的时候就是，即使在没必要的情况下也会因为自身的喜好而佩戴，\n但貌似在浴室里就会不太好用。\n虽然给别人戴上后也能够发挥效果，但会因为其庞大的情报量而产生剧烈的头痛。
214	4	瓦尔基里·斯露德\n瓦尔基里·希露德\n瓦尔基里·奥特琳德\n\n在迦勒底式召唤以及伴随灵基再临的代替召唤中确认到的是以上3骑。预计她们是与御主结下了因缘（或者说大概是在未来会结缘）的个体。\n即便有着魔力量多少的差异，她们的本质基本是相同的，因此她们都以“瓦尔基里”为真名现界。尽管准确来说她们各自有着斯露德、希露德、奥特琳德的个体名，但她们坚决拒绝被当做“彼此不同的个体”。\n\n“瓦尔基里没有本质上的差异。”\n“就是，我们从根本来讲就是一体的嘛。”\n“没错。布伦希尔德姐姐大人才比较奇怪……”\n她（们）如此说道。
215	4	虽然在本作中登场的斯卡哈与丝卡蒂不是完全相同的存在，\n但由于相互影响，得到了「混合」这样的解释。\n\n作为Lancer的斯卡哈继承了主神奥丁全部的原初的卢恩，某种意义上来说，\n大概就是为了这个混合（习合）[2]吧。\n\n据挪威的王朝史书《挪威王列传(Heimskringla）》所述，\n丝卡蒂与自己的第一任丈夫海神尼奥尔德离婚，与奥丁再婚。\n虽然本作中的她未婚，但她本人可能对后人所记载的事情……也很在意吧。\n\n作为「斯卡哈·丝卡蒂」存在于异闻带的她，其中丝卡蒂的成分尤其高，\n因此她多有作为众神的新娘的这一性质。
216	4	○享受无尽夏日！：A\nEndless Enjoy Summer，简称为EES。\n表现了应当在永不结束的盛夏中，全心全意享受快乐的心情。\n\n○水边圣女（海豚）：A+\n大概是变成了弓阶的原因，不知为何变得喜欢海豚了。\n海豚以用牙齿撕咬的方式袭击与贞德为敌的人。\n\n○从者激励！：B\n即使不再是Ruler，那种应援精神也不会改变。\n「大家共同加油吧！」这样说着，一边紧紧握住他人的手。\n这种做法令他人产生了误解。\n其实本人是只打算应援的。
217	4	○狂化：D\n尽管会让力量和持久力的数值等级提升，但理性会被剥夺。\n虽说即使改变了灵基也留下了身为Berserker时的职阶技能，但由于与鬼的种族特性相合，例外地可以控制。\n在控制期间，理性是存在的，也可以平心静气地进行对话。\n\n○吾还不想回去！：B++\n重整旗鼓技能出乎意料地完成进化后的技能。\n尽管夕阳西下，但还不想回家，还想在海边多玩一会。\n天色变暗也想玩。\n但是，大家都回去的话自己也只好回去了。一个人玩一点意思都没有……\n茨木那种闷闷不乐的心情显露了出来。
218	4	○鞍马的天才：A+\n留存于鞍马山上的「某种东西」赐予的加护。\n虽然牛若丸坚信是「山上的天狗赐予的加护」，但详情不明。\n\nＨ女史[1]「……“鞍马（kurama）”的词源是阴暗的山，古时被称作暗部山或是闇部山。不过在更久以前，说不定这里是被称作“Kumāra”的呢？」
219	4	○）Schwarzwald Falke：B\n\n德语。译作黑色森林的雄鹰……非常的……没有深意……。\n「感觉好帅啊」、就是这么起的名字。\n真是不可思议的力量。\n\n○）失坠的魔女：A+\n\n根据从Avenger的而来的职阶变化、\n龙之魔女的技能也发生了变化。\n\n○）Meurs où tu dois：EX\n\n正确的是“Va où tu peux, meurs où tu dois”。\n行至所至、死得其所……这种意思的法国谚语。\n无论如何、身为Avenger的她，都一直在寻求着能让她死得其所的地方。\n并非是寻求很舒服、平静的死去。\n无论多么强烈、多么绝望。\n期望着那是能被人所理解的事情、\n她每天都在不断地战斗着。
220	4	○自我改造：EX\n平常BB所拥有的，改造自身的技能。\n这次似乎并非刻意，而是因偶然而使用。\n在这世界之终结的度假胜地，\n以人类为名的接收者们做好觉悟吧。\n怎么说呢，今夜，星辰将会明显地聚齐。\n\n○黄金猪之杯：A\nAurea Pork Porka。\n据说，女神佩蕾一边痛骂着半人半猪的神[3]一边又深深地爱着他。\n把喜欢的人当作小猪来对待的BB与她的亲和性十分出众。\n是BB偷来的黄金之杯的夏威夷版。\n与之前不同，这回是对自己使用的东西。\n喝了这个东西的BB会打开S的开关哦。\n\n○无貌之月：EX\n宛如试炼人类般将其逼向毁灭，某位神的余香。即是Third Eye[4]。\n将虚数空间的境界面变得更为确切，令周围堕入『月之里侧（ShadowPhase）』的固有结界。\n当世界被月之影所覆盖之时，一切时间都会被冻结。
221	4	『心爱的他的虹霓剑』\n阶级：B　种类：对人宝具\n有效范围：1~20　最大捕捉：1~10人\n\nFergus My Good-looking Brave。\n她使用的武器是生前的情人之一、英雄弗格斯的宝具——魔剑Caladbolg。\n当然，真名解放也是可以的，但这次似乎自己克制着。即便是女王梅芙，不，正因是女王梅芙，才不可能会在美妙的度假胜地引发地震。\n\n这到底是与身为Rider时一样，因『将英雄作为自己的东西』这一轶事、传说的性质，使宝具得以实体化的呢？还是说只是从迦勒底的弗格斯那里普通地借来而已呢？谁也不知道真相如何。\n当然与弗格斯本人使用时相比威力有所下降，相对的，灵活性、自如性则有所提升。\n「嘿~」地一下可爱地挥动这把剑，就会立刻展开彩虹头纱。\n梅芙的目标敌兵会被彩虹头纱束缚，在令人恍惚的光芒中，一无所知地失去力气。\n\n在本作中通常型武装，不会进行真名解放。
222	4	○乘镀：EX\n圣枪甲胄阿瓦隆的加护。甲胄一直以灵子形态存在于XX的周围。\n在-1秒（就算受到突然袭击，也可以将时间回溯到一秒之前并装备）内实体化·武装的神奇技能，本人将其命名为『乘镀[1]』。基本不行。\n这是即便成为了宇宙刑警，早上也还是经常睡过头的迟到惯犯XX掌握的可怕技能。只是个用来换衣服的技能。\n其实并没有实体化的必要，即便在灵子状态下，它也能发挥作为甲胄的功能。\n若是武装这副甲胄，XX攻击方面的能力会显著提升。\n\n○刑警的直觉：E\n为查明犯人的天启。\n在解决事件时还是不用为好的级别。\n虽然是通过无视道理的异次元灵光一闪来向周围散播解决事件的提示，但XX本人却完全注意不到那个提示。\n根据场合，其缺点会变成优点，实际上是非常优秀的技能。
223	4	『愤怒的波涛』\n阶级：B　种类：对人宝具\n有效范围：1~20　最大捕捉：1人\n\nMóralltach。\n要举出迪尔姆德·奥迪那使用的众多武器之中最强武器，就只有这柄可怕的魔剑了。\n一击必杀，初击必胜。\n猛然抽出的魔剑会为迪尔姆德带来切实的胜利，并为敌人带来失败与死亡。
224	4	○神谣：A\n自己以神威的身份讲述的第一人称的神谣。\n身为Alterego的她，通过讲述神谣，可以借用阿伊努神话中各种各样的神威的力量。\n就连作为高等神威的高山·村落·大海的重要神威[1]之力也可以使用。\n\n○赤色黄金：B++\n北欧女神芙蕾雅所拥有的技能。\n不仅是众多神明，就连巨人也被芙蕾雅深深吸引。她有一位深爱之人，据说在芙蕾雅在挂念着以旅行而生的爱人时，曾流下了赤色黄金的眼泪。\n在本作中基本无法使用。
225	4	○护法之鬼·殴杀棒：B\n\nBreak Rod。\n「在那种叫“电视”的箱子里的公主殿下啊，不是挥舞着奇怪的短棒吗？就是那个闪闪发光的那个。妾身也想要那个呢~」\n「包在我身上！」\n据说她与使魔小白之间有过这样的对话。
226	4	?
227	4	○隐美的假面：A\n他为了防止士兵因其美貌而动摇，\n便戴上了面具这一逸闻升华而来的技能。\n阻止周围的人精神上的动摇。因为并非隐藏魅力的缘故，士兵们的士气依然很高。\n\n○魔性之貌：EX\n通过灵基再临而被解禁的兰陵王的真容。\n就连历史书都会称赞他的风采，\n光是露出真容就会影响周围的人。\n不知道月亮是否会发出光束为他声援。
228	4	○忠士之相：B\n她向御主发誓效忠，\n同时也从御主那里得到了信任。\n尽管丈夫因冤罪被关进监狱，\n她仍对明尽忠，当时的皇帝\n崇祯帝也给予她极大的信任。\n\n○白杆枪：B\n原本是宝具。\n传闻中是她和部下都喜欢用的\n梣木做成的枪。\n尽管枪本身并没有轶事，但却有着能让反英雄从者稍稍畏惧的效果。
229	4	?
230	4	?
231	4	○百般武艺（马）：A\n被培养了多方面的战斗技术，可以应对各种战斗状况。\n就连空中战与水中战之类的不同寻常的战斗，甚至是未知·毫无经验的状况，都能运用被培养出的技术与经验进行迅速应对。\n\n○战斗机动（马）：B\n熟习了骑乘状态下的战斗。\n骑乘状态下的攻击判定和伤害都会追加。\n虽然不在骑乘状态下会有着战斗力减少的缺点，但对于随时处于人马一体状态（？）下的他来说，就等于没有缺点。
232	4	『闪光炫目的魔盾』\n阶级：B　种类：对军宝具\n有效范围：1~30　最大捕捉：100人\n\nBouclier de Atlante。\n掳走她的恋人鲁杰罗的魔术师阿特兰特持有的魔盾。\n在真名解放后，这面盾可以放出强力的魔力光线，为对方带来伤害，还可以强行导致昏迷。就算没有昏过去，也会因为眼被闪花而导致敏捷度暂时显著下降。\n\n另外，本来她不会用盾打人的。但由于现界时的她过于兴奋，几乎是在无意识的情况下突击过去进行殴打的。\n据说布拉达曼特打败阿特兰特后，不仅获得了他的盾，还得到的他骑的幻兽骏鹰。（当以骑阶被召唤时，毫无疑问骏鹰也会一起出现）
233	4	○圣诞杀法：EX\n魁札尔·科亚特尔是魂之墨西哥摔角手。\n但同时，这一次她也成为了魂之圣诞老人。\n为消除存在的矛盾而开发出的是『维持着圣诞老人的举止在摔角场上战斗的方法』——\n也就是说，这并非空中杀法，正是『圣诞杀法』。\n她所使用的是并非在空中，而是在圣诞这一概念中奔走的战斗体系。\n\n据说圣诞老人飞翔于空中时，倒数三下的圣之铃音会响彻名为厚垫的密林。
234	4	○心眼（伪）：A\n第六感，也被称作虫子的告知，是源自天生才能的危险预知。\n对于自己与某位剑士有着完全相同的技术、本领一事感受到了缘分，但红阎魔并没有说出口，而是想着下一次遇到那个冒牌武士时就把他斩杀掉。\n\n○腹语术：EX\n为了就算舌头被斩断也能对话的特训成果。使自身能够无效化『技能封印』。
235	4	圈境（极）：A-\n是用心感知周围的状况，\n同时，能让自身的存在消失的技巧。\n达到极致之时将与天地合一，其身影甚至能自然地变得透明。\n由于年龄见长，其技巧也更加老练。\n即使是在交战状态下，也能在眨眼间消失无踪。\n\n阴阳交错：B\n人类所拥有性质的开关。\n虽说年老后更偏向阳面，\n但锋利的獠牙依旧凶猛，他可以瞬间切换至阴面，\n并毫不费力地屠戮敌人。\n其冷酷无情也同样并未改变。
236	4	○愉快型魔术礼装（妹）：A\n奇怪的法杖中的妹妹。\n相较于情绪高涨的姐姐，她比较沉着理性。但是，果然是出于人工天然精灵的本性，折腾主人、引发滑稽可笑的事件的那份麻烦劲，和姐姐毫无二致。\n\n另外，不知为何，她的契约者的装束与姐姐的相比有着暴露较多的倾向。
237	4	○歌仙的诗歌：A\n《太平记》第一六卷「日本朝敌事」有曰，纪朝雄被派遣前去讨伐降伏了非人四鬼的逆贼藤原千方时，咏唱和歌「普天之下，莫非王土，鬼栖之处，愿享太平」。四鬼就此退散。\n名列中古三十六歌仙、女房三十六歌仙的和歌诗人紫式部，可以轻松咏唱像这样令恶鬼退散的诗歌。\n此外，她的和歌还被收录了在了小仓百人一首中。歌为「久别偶逢喜在心，端详未尽又离分。一如夜半高空月，甫见即速入密云」。\n\n○咒术（词）：D+\n紫式部多多少少有些阴阳道的心得，看得出《源氏物语》中也有融入相关要素写成的章节。\n用现代风格的话来说，她就是那种「为了写出有魔术出现的小说而实际去学习魔术」的作家。
238	4	内向而主动。\n不知道在想些什么的天然系。\n因为基本上一直都饿着肚子（渴求着爱），只要是周围存在的东西，遇到什么她就会吃掉什么，是个贪吃系角色。\n\n虽然她的性格与姐妹Passionlip相近（畏首畏尾·窝里横），但由于羞耻心淡薄，也能见到她积极的一面。\n是个少言寡语，但却渴求着沟通和肢体接触的大型犬。\n拥有『正想着“这里有只玲珑可爱的小鸟哦”，试着接近一看，原来是只必须要仰望的巨大的小鸟啊』这种印象。\n\n基本上是个忠诚的巨大机器人……不过会以从者的身份服从。\n虽然少言寡语，但由于有着『希望能爱我』『想要被谁选中』『渴望被人温柔对待』的欲求，就算不爱说话也会寻求交流。\n\n梦想是『成为可爱的新娘』。\n『可爱』和『新娘』并不是各自独立的单词，她认为『只要是新娘就无条件地可爱』，因此，她完全没有考虑过可爱……正是『维持人类的大小』。
1	4	玛修获得了附体于自己身上的英灵的真名。 该骑士的名字是加拉哈德。 是亚瑟王传说中的圆桌骑士之一。 独自一人获得了圣杯并升天的圣者。 迦勒底使用独自的方法成功召唤英灵， 构筑其根干的，是成为加拉哈德召唤触媒的 『英雄们聚集之所』——玛修所持有的用圆桌做成的盾。
11	4	『无限剑制』\n阶级：E～A++　种类：？？？？\nUnlimited Blade Works。\n被称作固有结界的特殊魔术。\n能在一定时间内，将现实转换为心象世界，\n瞬间复制施术者迄今为止目视过的，\n或是现场使用的武器，并进行储藏。\n然而复制后的武器会降一个阶级。
97	4	伦敦各新闻报纸都称颂她为战场上的天使。\n在女王统治的时代出现的女性英雄令人们为之疯狂，\n纷纷献上喝彩。\n——然而她并没有露出微笑。\n自己不是什么天使。只是为了拯救人们。\n\n她继续着自己的活动，\n着手大幅改革战时医疗以及陆军卫生状况。\n连维多利亚女王都成了她的盟友，协助她推进改革。\n为了改革，她推进医院记录分析的行为，\n令她也成了统计学的先驱。
2	5	亚瑟王传说以骑士时代的终结为结局。\n亚瑟王虽然击退了异民族，\n但却无法回避不列颠土地的毁灭。\n圆桌骑士之一·莫德雷德的反叛\n导致国家一分为二，骑士之城卡美洛也失去了其辉煌。
3	5	阿尔托莉雅生前虽从未坠入邪恶之路，\n但她也有过迷茫与纠葛，\n有过对自身的愤怒，有过对周围的哀叹。\n正是这些要素因诅咒而显现为现在的模样，\n逆转了她的“方针”。她的目的与理想本身并没有改变。\n正常的阿尔托莉雅为了理想会贯彻清廉，\n然而这位则觉得为了理想可以实施高压政治。
4	5	为了拯救神秘淡去且逐渐走向毁灭的\n不列颠岛的命运之子。\n是在先代王尤瑟与魔术师梅林的计划下，\n被创造的『龙的化身』。\n也因此被比喻成守护不列颠的红龙。\n拥有隶属幻想种最高位的龙之心脏，\n可在体内生成的魔力量远凌驾其他英灵。
5	5	将罗马人民的幸福与繁荣看得最重的皇帝。\n自己也是个很会享受人生的达人，\n自信在歌剧方面拥有无人能出其右的造诣。\n（※ 仅限自信）\n据说但凡听过她歌声的人，\n整整三天三夜都会因冲击而痛苦不已，\n连入睡后都会做起犹如蔷薇的（噩）梦。
6	5	『幻想大剑·天魔失坠』\n阶级：A+　种类：对军宝具\n拥有魔剑属性的黄昏之剑。\n镶嵌在剑柄的蓝色宝玉内储藏着真以太，\n在通过真名发动时使用。
7	5	好女色。爱罗马，当然也爱尼禄。\n爱世界。也爱克娄巴特拉。\n虽说对御主表现出高傲的言行，\n但基本不会背叛。\n夹杂着讥讽的言语是真心实意的忠告。
8	5	宝具『军神之剑』表现出长剑的形状，\n但不知为何令人觉得设计中带有一丝未来的要素。\n据说由三色之光构成的「刀身」，\n能够破坏在地面上「各种存在」。\n当解放真正实力的时候，阶级与种类都会提升。
9	5	过去绝不会改变。无论曾经是个多么优秀的武将，\n也无法改变他是杀人魔的事实。\n尽管如此，他也不得不永远寻求救赎。
10	5	自我暗示：A\n以自己为对象的强大暗示。固有技能。\n对于那些在精神层面起作用的魔术、技能、宝具，\n都具备极高的防御效果。\n时为男性，时为女性。甚至能令肉体都发生变化……
14	5	她所持有的爱弓——天穹之弓（Tauropolos）\n曾接受了女神阿耳忒弥斯的祝福。\n通过向阿耳忒弥斯与其兄长太阳神阿波罗献上祈祷，\n可以发动强大的对军宝具『诉状箭书』。
15	5	古代希腊神祗之一，原本不可能作为英灵被召唤。\n而作为获得了永恒的美貌的代价，\n成为了这世间最弱的存在……本应是这样一名女神，\n但随着英灵化，还是获得了些许强化。
16	5	基于他宝具的性质并非一点集中型，\n而是发挥广域效果，因此被分类为对军宝具。\n更准确地说应该相当于对国宝具吧。\n然而，只能使用一次。某种意义上，\n是二重幻想崩坏（broken phantasm）。
17	5	乳名是瑟坦特。\n库·丘林拥有「库林的猛犬」这层含义。\n这是因为瑟坦特年幼时，\n在错手杀死富商库林的看门狗后宣誓，\n「若这条狗有孩子，那自己将负责抚养它，\n将其培养成同样强大而忠诚的看门狗。\n在达成这个目标前，我将负责保护你」。
18	5	领袖气质：C\n作为统治阶级表现其威严。\n因特殊的传承辅助，对女性时效果提升一个阶级。\n对男性表现出特殊的洁癖，\n虽然很愿意隔着物件与男性接触，\n但几乎很少直接进行肢体接触。
19	5	这个男人的真名为常陆坊海尊。他虽是义经的部下，\n但却在义经主从最终牺牲的那场战斗中临阵脱逃。\n对此深感耻辱的他成为了义经与弁庆的故事传播者，\n踏上了遍历日本各地的旅程。
20	5	相比于「那位」Lancer，\n对师父斯卡哈的感情与憧憬。\n在其内心中占据了更大的比重。\n只是不知道是因为年轻还是因为时期的缘故。\n那么究竟他是否真的无法认同，\n这世间的的不合理，以及善恶的平衡呢——
21	5	『炎门守护者』2\n……通过宝具召唤而来的三百人，\n与列奥尼达一同承受敌人猛烈的攻击，\n仅在一回合内就会逝去。\n这都是因为他们坚信在此期间，同伴一定会发动反击。
22	5	建国时，他将枪插在帕拉蒂尼。\n该宝具拥有操控树木的能力，\n解放真名时，长枪会扩大变化成大树，\n创造出「帝都罗马的过去、现在与未来的模样」，\n以怒涛般的奔流冲走敌方。质量兵器罗马。
23	5	高挑且风情万种的美女。\n但由于对美杜莎而言，美丽的基准却是「娇小可爱」。\n所以她貌似一直对自己高挑且成熟的身材感到自卑。
24	5	『刚力屠戮祝福之剑』\n阶级：B　种类：对人宝具\nAscalon。\n可驱离心怀害意与恶意的人。\n无论敌人有多强大，都能完成守护之责。\n从这个角度而言，可谓无敌之剑。
25	5	正所谓兴亡盛衰。黑胡子海盗团还是被逐渐逼入绝境。\n被军队突袭的黑胡子率领着极少数部下勇猛地反抗。\n据说他哪怕身中五弹，外加二十处刀伤，\n却依然瞪目裂眦地战斗着，最终在给枪上膛时力尽而毙。
26	5	不列颠、英国等，只要是与不列颠岛有关的后世英灵，\n她都会如自己孩子一般地慈祥对待。\n尤其对于给故乡土地带来哪怕短暂「胜利」的骑士王，\n更是完全地——\n就像亲戚中那个什么事都要过问的大姐姐。
27	5	那就是对战场的恐惧。她一生都与其他武将水火不容。\n赖朝竟会对义经心怀杀意的原因，\n她想必终生都没能理解吧。\n对天才的她而言，根本无法体会对于能力的恐惧。
28	5	『神之祝福』\n阶级：C　种类：对人宝具\nZeus Thunder。作为神之子的自我认识。\n随着使用次数的增加，\n宙斯之雷都会强化身体，提升神性，\n红颜美少年技能阶级则会下降。也就意味着……
29	5	大革命期间她成了众多人民憎恨的对象，\n但在现代的法国，名誉已得以恢复。\n在饥荒中，不惜削减宫廷经费进行捐助，\n并自发向贵族们为人民请求援助等等。\n她无疑是一位为民众着想的女性。
30	5	「非圣女的玛尔达」的表情会变得尖刻、好动、好胜。\n这是她成为圣女之前「与弟妹同居的村姑」时的模样。\n只是，即便言行变化，她的本质也依然不会改变，\n依然是圣女。简而言之，\n就是将过滤器打开还是关闭的区别而已。
31	5	只要与她相处一段时间，谁都能看出，\n由于她也曾经是一位深闺公主，\n本质上是个拥有良知与道德感的大小姐。\n一边说着「这城市里的人都是归我所有」这种话，\n实际上却不会真的夺人性命，就是其证据。
32	5	一些人担心吉尔为了钱可能会将领土贩卖给敌国，\n因此以他平时的恶行之名定罪，\n没收其领地，最终将他处决。\n对他残酷行为与亵渎神明的弹劾，\n都只是政治上的借口罢了。
33	5	『为你撰写的故事』\n阶级：C　种类：对人宝具\nMarchen Meines Lebens。\n他的自传「我的一生」的原稿。\n通过将被观察人物的理想人生、人生态度汇集在一起，\n写成一册书，来强化这个人物的「理想的形象」。\n……但前提是能按时完稿。
34	5	『开演之刻已至，此处应有雷鸣般的喝彩』 \n阶级：B　种类：对人宝具\nFirst Folio。\n莎士比亚释放的究极之剑。他不分敌我，\n将对象设置成自己创作的剧本中的人物。\n能让所有英杰屈服的对心宝具。
35	5	无辜的怪物：B\n契约恶魔■■■■■■■■■。\n以生前所作所为，以及与生俱来的印象，\n而被扭曲了过去和存在方式的怪物之名。\n能力、容貌都发生了变化。\n但对他而言这种变化带来的只有好处。
36	5	他的音乐全都献给一名女性。\n幼年时——某次被邀请到维也纳的宫殿之际，\n他遇见了如同光辉这一概念的代名词的少女。\n玛丽亚。也就是后世的「玛丽·安托瓦内特」，\n那位在行刑台上凋零的悲剧王后——
37	5	『石兵八阵』\n阶级：C　种类：对军宝具\n传说中，诸葛孔明曾在自军战败撤退时布下的奇阵。\n此阵以巨大岩石构成，\n能令入侵者陷入迷途，置之于死地。
38	5	作为宝具出现的巨人胴体内的牢笼是中空的，\n因此，巨人会疯狂寻求献给诸神的祭品。\n这并非卢恩的奥义，而是凯尔特德鲁伊们的宝具。\n这一宝具被赐予能够操控炎热，\n作为「凯尔特魔术师」现界的光之皇子。 
39	5	宗和的心得：B\n无论在对手面前使用多少次相同的能力或剑技，\n命中精度都不会下降的特殊技能。\n不会被对方识破攻击。也就是说，\n绝不会使用“会被眼睛习惯”的笨拙剑技。
40	5	气息遮断：A+\n隐蔽身为从者的气息，适合隐秘行动中使用。\n而只要完全遮断气息，被发现是近乎不可能的。\n然而，只要转为攻击态势，\n气息遮断的阶级就会大幅下降。
42	5	传说觉悟到自己之死的荆轲出口讥讽秦始皇，\n遭到了杀害。身为一名暗杀者，\n荆轲未能完成暗杀就已命丧黄泉。\n但明知自己无法活着回来，\n却依然爽快地接下任务的荆轲，\n不愧为名震天下的侠义人物吧。
43	5	『死亡将为明日的希望』\n阶级：A　种类：对人宝具\nLa Mort Espoir。\n真实的处刑道具——断头台的具现化。\n死亡的概率并非取决于对诅咒的抵抗力或是幸运，\n而是根据是否具有打破命运的强韧精神力进行判定。
44	5	不知是雨生龙之介不断摸索的恶行，\n在十九世纪已经得以完成——\n还是残忍怪人的印象令宝具得以升华，\n总之配合以通过异形般发声器官所唱出的歌声，\n该宝具能释放出不可视的魔力。
45	5	『拥有阳眼之女』\n阶级：A　种类：对军宝具\nMata Hari。\n传说的具现化，洗脑宝具。\n用妖艳的舞蹈麻痹思考，将对方化为自己操控的人偶。\n没有精神耐性技能的从者也会成为目标。
46	5	『幻想铁处女』\n阶级：C　种类：对人宝具\n据说是卡米拉曾使用的著名拷问刑具。\n……但经过长年的调查，结论认为这其实是虚构的。
47	5	十二试炼（Ⅰ）\n他是在神话中被赋予了十二个试炼，并全部克服的英雄。\n一般的英雄完成其中任何一个试炼都已是难上加难了，\n因此为了奖励其功绩，赫拉克勒斯死后，\n被允许成为星座，从而加入了诸神的序列。
48	5	无穷的武练：A+\n达到一代无双般巅峰的武艺技巧。\n心技体完全合为一体，\n无论有着怎样的精神制约，都能发挥十成战斗力。
49	5	吕布善骑射，故也有人将他比作飞将军·李广。\n在与刘备仍称兄道弟之时，\n吕布曾仅用一箭就为其解了围城之急，\n这于后世被人们颂为「辕门射戟」。
50	5	『伤兽的咆吼』\n阶级：A　种类：对人（自身）宝具\nCrying Warmonger。\n保持发动状态的宝具。将受到的伤害化为魔力并存储。\n魔力累积到一定量后，最终甚至能令肉体都发生变化。
51	5	『吞噬黄金』\n阶级：B　种类：对人宝具\n身体内拥有雷神的力量。\n虽然并非真名，但用这个名字能发动。\n简直黄金得不讲道理。\n说句题外话，喜欢的小说家是金庸。
52	5	『血染的王鬼』\n阶级：C+　种类：对人宝具\n发射体内生成的「桩」。材质除了木头以外，\n还有骨、肉、影、毛发等各式各样。\n甚至能吸收射程范围内的物体，并变化成桩。
53	5	『万古不变的迷宫』\n阶级：EX　种类：迷宫宝具\nChaos Labyrinthos。\n阿斯忒里俄斯被囚禁的迷宫的具现化。\n一旦被发现，就会根据「迷宫」\n这概念的知名度而形成通路。
54	5	他所散发的狂乱之源是月之女神狄安娜\n（相当于奥林匹斯十二神中的阿耳忒弥斯）的\n宠爱与佑护——这一传说升华而成的宝具。\n如果对一整支军队使用，\n那将造成极为可怕而凄惨的结果。
55	5	不死队阿塔纳托依。存在于史实中的万人精锐部队，\n被宝具化后的存在。随着后世筑起的传说，\n更为强化了其不灭性与不死性。\n「死之战象」是某种意义上的群体，\n能以可怕的魔力一击将王的敌对者破坏殆尽。
56	5	『转身火生三昧』\n阶级：EX　种类：对人宝具（自身）\n喷吐火焰的大蛇。也就是龙的化身。\n当作为从者被召唤时虽只能维持1回合，\n但龙息的威力依然令人叹为观止。
57	5	『嗜血兽斧』\n阶级：C　种类：对人宝具\n以曾经打倒的魔兽为素材，加工而成的战斧。\n据说成为战斧后的魔兽依然活着，\n它靠吸吮鲜血存活至今。
58	5	狂化：C\n令全能力阶级提升，但夺走大部分理性。\n对打从一开始就没什么理性的玉藻猫而言\n根本说不上是什么狂化，\n反正状态半斤八两，谁都不放在心上。\n偶尔会说一些含蓄的话反倒会令人非常惊讶。
59	5	『红莲圣女』\n阶级：C或是EX　种类：特攻宝具\n“主啊，此身将交由您的处置——”\n以这句辞世之句发动的概念结晶武装。\n固有结界的亚种，\n将心象风景以剑的形式结晶化后的存在。
60	5	『月女神的爱箭恋矢』\n阶级：A+　种类：对人宝具\nTri-star Amore Mio。\n阿耳忒弥斯凭借对俄里翁的爱的力量射出的箭。\n此箭缠绕着女神满溢的爱，因此可造成极大的伤害，\n以及极度的混乱。
61	5	『鲜血极致魔女』\n阶级：E-　种类：对人宝具\n（Bathory Halloween Erzsebet）\n伊丽莎白以此宝具召唤她一生支配的城堡——\n监狱城恰赫季斯，作为展现自我的舞台。\n名字略有变化，但内容并没什么改变。
62	5	狐之婚嫁：EX\n擅自对技能·道具作成进行各式调整而诞生的成果。\n单方面宣称要嫁给对方，降下祝福的太阳雨，\n强行把纪念品塞给恰巧在场的有缘人并让之参与庆祝，\n这技能之开挂程度只能说真不愧是巫女狐狸。\n天照你给我适可而止啊。
63	5	『五块石头』 \n阶级：C　种类：对人宝具\n打倒巨人歌利亚的投石器。\n五块石头代表大卫的宽容，四次会打偏，\n而第五次必然会命中，并打倒敌人。
64	5	在败给失去不死能力却依然无敌的阿喀琉斯之后，\n特洛伊方的崩溃速度愈发加快。如果他还在，\n或许就不会被特洛伊木马所迷惑，或许就能赢得胜利。
65	5	弗朗西斯·德雷克是世上首位活着完成环游世界的伟人。\n（第一位的麦哲伦在完成中途死去）\n史实上虽为男性，但在本作中，德雷克以女性形象出现。\n这是因为周围的人谁都不将德雷克视为女性所致。\n船员表示「哎呀，如果将船长视为女性的话，\n我就根本不能算男人了嘛，而且这也是在侮辱船长吧」
66	5	两人这次例外地作为一组从者而被召唤。\n虽然能力方面没有削弱，但其中任何一人被击倒，\n另一个人都会不由分说地失去战斗能力。
67	5	『万疵必应修补』不是对时间的操作，\n而是通过计算原本的模样，进行自动修复。\n不知其中奥秘的人看来似乎有点像时间倒转。\n能打破“死”以外各种不合理的存在，\n唯独无法复活死者。
68	5	她是具备超绝妙技巧与天赋之才的真正天才剑士，\n但作为Saber职阶而言，\n耐久力、对魔力之低显得十分突兀。\n这是生前的疾病加上后世民众对她的印象所致，\n结果在某种意义上她也受到了和无辜的怪物相近的诅咒。
69	5	第六天魔王据说是信长自称的名号，\n本是佛教欲界魔王之名。\n以生前「烧毁比睿山」为代表的残酷行为，\n令后世民众对她抱有恐怖、敬畏之念层层累积，\n才导致身为魔王的信长的显现。
72	5	在这场战斗中，基于与库·丘林立下的誓约（geis），\n弗格斯与他再战时几乎无条件地取得了胜利。\n第二次阿尔斯特入侵时，为了向库·丘林复仇，\n女王梅芙认定「弗格斯的存在是一个障碍」，\n没有让他上战场。之后，身为梅芙丈夫的里亚尔王，\n因嫉妒心作祟，最终下令将其暗杀。
73	5	圣者的礼物：C\n通过化身为圣诞老人而获得的技能。\n赠送礼物，温暖人心。\n然而无论哪个礼物，在设计上，\n都与收件人想要的东西有些差距，\n所以不能过于期待其效果。\n会微妙地扯人心灵创伤的礼物选择能力，\n只能说是一种天赋的才能了。
74	5	『献给某人的故事（Nursery Rhyme）』\n阶级：EX　种类：对人宝具\n『故事将永远持续下去。\n　用纤细的手指翻回第一页，\n　或是拿起第二卷。\n　只要悲伤的读者继续抗拒现实』
75	5	作为Assassin被召唤的她虽然自称「开膛手杰克」，\n但她也不知道自己是不是「真犯人」。\n虽然存在杀害复数女性的记忆，\n但不清楚这是杰克的记忆，还是牺牲者的记忆。
76	5	作为人工生命体而诞生于这个世界，\n如疾风般经历了各种事件的她，寿命很短。\n或许正因此，将人生的一切都献给父王后，\n莫德雷德无比希望能得到她的认同。\n然而，她却也仍然无法理解亚瑟的苦恼。
77	5	其宝具所展现的猛威，\n令人不禁联想到各种神话中的雷神们的降世，\n这也造就了身为Archer的他。\n只要解放真名，就能「产生限定拟似的时空断层」，\n破坏周围一切。
78	5	据传说，作为Lancer现界的时候，\n骑士王的「某部分」与生前的模样截然不同。\n或许是因为舍弃了圣剑与剑鞘，改为手持圣枪，\n导致原本不老的肉体的「某部分」得以成长，\n也有可能是枪的魔力促进了「某部分」的成长——
79	5	宝具原本的效果是增幅、辅助、强化魔术，\n但通过刀身的魔力，可瞬间执行仪式魔术，\n以五种元素为媒介，\n可以做到短暂地拟似构成神代真乙太。\n真乙太（伪）可怕的威力能粉碎周围。
80	5	『绚烂的灰烬世界』\n阶级：A++、种类：对军宝具\nDimension of Steam。\n渴望与梦想升华了的固有结界，\n他的心，就是身披的机械铠甲本身。
81	5	无力之壳：A\n精神与肉体处于杰基尔的状态时能力值一落千丈，\n也很难以从者的身份被探知。\n反之，通过使用宝具成为海德时，\n仿佛受到了反作用力，能力会急剧提升。
82	5	她之所以会寻求自己的对象，不是因为本能的欲望，\n而是为了追求理性——即希望能如同普通人类般生存。\n唯有成功令她敞开心扉，才有可能被她选为御主吧，\n也就是「弗兰肯斯坦的新郎」。
84	5	已然记不起何时下决心必须杀了迦尔纳。\n或许是从最初见面的那刻起吧。\n这不是诸神所注定的命运。\n这是阿周那本着纯粹的敌意选择的业（Karma）。\n哪怕这并不正确，阿周那也不得不去完成。
85	5	在铠甲转让因陀罗的传说中，\n迦尔纳分解、抛弃了黄金铠甲，\n从而获得了弑神之枪。\n连诸神之王都无法自由掌控的光之枪。\n沾染全身剥离之血所释放的一击\n能一扫所有不净之物。\n\n——日轮啊，顺从死亡。
86	5	在来到这里之前，她曾拯救了古代王朝的危机，\n解决了人类统一工会的内斗，\n赶走了从其他宇宙到来的侵略者。\n但这些事对她而言都是小菜一碟。\n这都是些鸡毛蒜皮的事，所以她根本没记在心上。\n\n为了达成悲愿，她将继续挥舞无铭胜利剑。\n另外黄金大帝宇宙吉尔伽美斯是无论如何都要干掉的。
87	5	『无败紫靫草』\n阶级：A　　种类：对军宝具\nMac an Luin。\n拥有自动攻击，精神干涉无效化等效果。真名解放之后，\n可以释放出伴随着司掌着「流水」的战神努亚达之力的\n激烈奔流的强烈一击。\n真名源自其爱剑的剑铭。这把剑常常也被视作长枪，\n作为宝具而成立之际，同化为杀死了神灵亚连的长枪。
88	5	即使是已成为英灵的现在，她依然深爱着齐格鲁德。\n然而，如果万一他真的在自己眼前应召唤而来的话，\n她应该会自动将枪头对准他吧。\n这是由于作为英灵的她自身以及其宝具\n已经一同被定义为「杀死齐格鲁德之物」的缘故。
89	5	作为从者职阶之一的Berserker的语源\n来自于北欧神话中的Berserk，\n同时传说贝奥武夫之名也同样来自于Berserk一词。\n然而，在垂老之年仍保持着理性\n完成屠龙伟业的贝奥武夫没有表现出丝毫狂暴之意。
90	5	尼禄在17岁时继位帝位，\n其慷慨的政策在民众中赢得了极高的人气。\n同时也十分注重外交，\n罗马日后于英国（不列颠尼亚）获得的人气\n也是起因于她所推行的政策。\n波斯也对尼禄赞赏有加，据说在尼禄死后，\n波斯也因罗马是「尼禄的国家」而十分关照。
91	5	根源接续：A\n其为由「　」而生，至「　」之物。\n告别两仪，回转四象，统帅八卦，\n世界之理的基石。\n两仪指的是太极图所示的阴阳。\n她的名字是取自数式之式、式神之式的式。\n\n也就是万能愿望机的证明。\n对拥有该技能的人而言，普通的能力值毫无意义。
92	5	两仪家历史十分悠久，\n代代钻研『理想的人体』并予以实践。\n理想的人不要“自我”。\n只要有能根据用途进行切换的人格（软件），\n以及能确实完成命令的万能肉体（硬件）就行了。\n虽然其信仰、信念通过数百年的岁月得以证明，\n但这与他们想要的截然不同。\n\n作为其结果而诞生的两仪家当代的继承人，\n就是两仪式。
93	5	『双腕·零次集束』\n阶级：A+　种类：对军宝具\n有效范围：1～200　最大捕捉：500人\nTwin Arm Big Crunch。\n将双腕与灵脉连接，\n使用过剩的魔力令双腕的魔术回路失控。\n精炼出拟似黑暗物质，\n来吸收周围一切存在的破灭型宝具。\n由于需要极为庞大的魔力，\n所以本应不可能作为宝具来使用。\n为了让其作为宝具发挥完全的实力，\n必须确立与御主不同的其他形式的魔力供给路径。
94	5	此外，阿斯托尔福本人虽然确实很弱，\n但在冒险路上获赠，或是借来的各种宝具极为强大，\n足以作为可靠的战斗力来算。\n只不过，要把阿斯托尔福作为从者来操控却极为困难。
95	5	宝具全知且全能之星的效果极为可怕，\n别说对方的真名和宝具了，\n连被隐藏了几重的真相都能一瞥看穿。\n虽然是处于时常发动状态的，\n但应该有意识地进行了限制。
116	5	鬼种之魔：A\n基于鬼之异能以及魔性显现的技能。\n是天性之魔、怪力、领袖气质、魔力放出等的\n混合技能，但在本作中，效果被进行了调整。\n魔力放出的形态与「热」相关的范例较多。\n茨木的情况是「炎」。
96	5	『虎啊，煌煌燎燃』\n阶级：A　种类：对人／对军宝具\n有效范围：1～20　最大捕捉：1～100人\nEnfer Chateau d\\'If。\n在地狱般的伊夫堡监狱内培养出来的\n钢铁般坚韧的意志力成为宝具的存在。\n不止囚禁肉体的牢笼，\n基督山伯爵甚至能逃脱时间，空间等无形的监狱。\n超高速思考，并强行反应在肉体上，\n得以主观实现媲美「时间停止」的超高速行动。\n\n在本作中，表现为通过超高速移动造成「分身」，\n进行同时攻击的形式。
98	5	『噬碎死牙之兽』\n阶级：A　种类：对人宝具（自身）\n有效范围：─　最大捕捉：1人\nCurruid Coinchenn\n疯狂的库·丘林之怒，将作为魔枪原型的\n红海怪物·海兽Curruid的外骨骼暂时具现化，\n作为铠甲穿在身上。攻击型的骨甲装备。\n穿着之后耐久等级上升，筋力等级变为EX。\n发动这个宝具时，无法使用『剜穿鏖杀之枪』。
99	5	在现代爱尔兰也存在着很多“她”的目击情报。\n当然，这并非只是玩笑话。\n而是女王梅芙作为永远的贵妇人，\n至今也存在于人们的心中。
100	5	『金星神·火炎天主』\n阶级：A　种类：对军宝具\n有效范围：1～50　最大捕捉：150人\nSanat Kumara。\n让飞行物出现，对四周发动攻击。\n她表示「这是在短时间内“重现”由金星来到地球的\n神性，也就是地球创造神之一的Sanat Kumara\n（护法魔王尊）力量的神智学的奥义！」，\n但飞行物的真实身份至今不明。
101	5	『穿透罗刹之不灭』\n阶级：A+　种类：对魔宝具\n有效范围：1～10　最大捕捉：1人\nBrahmastra。\n为了打倒魔王罗波那，伴随其一同降生的「不灭之刃」。\n对于魔属性的存在能发挥极大的威力。\n本来是用弓来射出杀敌的箭矢，\n因为罗摩想成为Saber而硬是被改造成了剑的形态。\n但并没有放弃作为投掷武器的性能，仍可作投剑使用。\n「结果还不是要扔出去」这种话可不能当着他的面说。
102	5	李书文具有Lancer，Berserker，\n以及Assassin的职阶适应性。\n并且，也有过将「老年」的李书文召唤出来的事例。\n全盛期的肉体当然是以青年时代作为基准，\n但他武术方面的全盛期则是在其年过花甲之后，\n这样的说法也是有的。\n所以有过青年时期的李书文作为Assassin被召唤，\n也有老年的李书文作为Lancer被召唤的例子。
103	5	『W·F·D』\n阶级：EX　种类：对民宝具\n有效范围：不明　最大捕捉：不明\nWorld·Faith·Domination。\n以爱迪生毕生的三大发明来进行的幻想支配。\n照亮黑暗、记录逝去之音、映射出真实世界的装置，\n因为发明了这一切的爱迪生，\n世界的隐秘变得不复存在了。准确来说，\n是以「原本存在，但被爱迪生给夺走了」这样的形式。\n正是通过隐藏与秘而不宣而才能发挥其力量的隐秘，\n就这样被随意的揭露出来，\n将无法计量的能量以零的状态固定。\n将民众对于神秘的信仰贬低至零，\n「世界信仰强夺」――对民宝具。
104	5	『大地的创造者』\n阶级：B　种类：对军宝具\n有效范围：1～30　最大捕捉：100人\nTsago Degi Naleya。\n召唤出阿帕切族传说中的巨大的《郊狼》。\n召唤成功后，被他夺去烟草的《太阳》便开始追赶他，\n就结果而言，会因为强烈的阳光而造成大范围的伤害。\n与此同时，因为守护者郊狼的存在，\n己方军队也会获得战斗力的提升。
105	5	『坏音霹雳』\n阶级：C++　种类：对人宝具\n有效范围：1～100　最大捕捉：1人\nThunderer。\n由比利小子的爱枪——\n柯尔特M1877双动转轮手枪造成的逆转三连射击。\n准确来说，手枪本身并不是宝具，\n而是将「持有该枪的比利小子的射击」这一整体\n包括在内并视为宝具，近似于固有技能的存在。\n这个宝具最毒辣的一点是，\n「技术」占据宝具概念的大部分而使魔力消费减少。\n具体来说差不多与使用级别E的宝具造成的消耗同等。
106	5	『咆哮吧，吾之愤怒』\n阶级：A+　种类：对军宝具\nLe Grondement Du Haine。\n作为龙之魔女而降临于世的贞德所持有的诅咒之旗。\n以复仇者之名，将自身与周围的怨念进行魔力转换，\n并燃烧。对手的不正，污浊以及独善都将被燃至骨髓。\n可怕。
107	5	『万象之伪誊抄』\n阶级：D　种类：对人宝具\nVerg Avesta。\n琐罗亚斯德教的教典·阿维斯陀的伪书。\n将自身所受创伤直接反弹给对手的起源的诅咒。\n……这么说或许很好听，但如果本人受了致命的伤，\n会导致在宝具发动前就死亡，所以若不能\n「受自己正好死不掉程度的伤」，宝具是无法发动的。\nAvenger一个人是无法战胜敌人的，\n需要有能在宝具发动后替自己打倒敌人的搭档才行。\n正可谓最弱。
108	5	在『王之军势』中，生前整个伊斯坎达尔军团\n都会被召唤。君臣间的维系甚至跨越了时空，\n升华为宝具，也是他王道的象征。\n这就是他为什么不是作为一名拥有个人武勋的英雄，\n而是作为指挥军队而战的英雄的原因。
109	5	通过加速时间流来进行高速攻击与移动，\n通过减速停滞生理节律来进行隐身，\n这就是「固有时制御」的运用方法。\n基于升华为宝具的这种力量，在对人战中，\n他可以几近无敌地完成超连续攻击。
110	5	精通百科：A+\n可随意切换多重人格，自如地运用专业技能。\n在战术、学术、隐秘术、暗杀术、骗术、话术、\n以及其他总计32种专业知识方面，均可发挥\nB级以上的熟练度。
111	5	献身的觉悟：A\n不惜牺牲自己，对深爱之人的感情。\n对防御、回复系魔术、技能和道具的使用\n有加成补正效果。
112	5	果实的酒气：A\n仿佛沉醉于音容吐息般的果实酒之芬芳，\n仅用视线就能令对象烂醉如泥。\n若是没有魔力防御手段的存在（普通人或动物），\n思考就会瞬间被融化。
113	5	传说中孙悟空曾抵达的「世界尽头」——\n也就是释迦巨大的手掌从空中落下，\n惩罚藐视佛法的敌对者。\n对军·对城宝具。觉者掌底。
114	5	狂化：EX\n用理性作为代价，强化身体能力的技能。\n赖光没有失去理性，依然保持了原本理性的她。\n但其精神却因为鬼之血的污浊，\n以及异常的母性爱表现，导致道德面出现异常。\n（只要是为了所爱之物，不惜排除任何东西，\n或是疯狂地想要守护所爱之物）\n嘴上谈论正当的爱，实际为了爱却可以无视社会道德，\n容忍任何行为……也就是说，她精神已经异常了。\n但由于这种异常不会被外部觉察，\n所以她与其他的Berserker截然不同。\n不可能说服、或是让她改变主意。
115	5	只不过，金时倒不是不喜欢她们。\n无论是赖光还是酒吞，\n都是缔结了深深缘分与情义的对象，\n两位无疑都是占据金时内心深处重要地位的存在。\n只不过在现世后，总是无法把握与她们的距离感罢了。
117	5	风魔小太郎流淌着西洋人的血脉，\n同时也混着鬼种的血。\n是一族的人通过彻头彻尾的配种操作诞生的风魔头目，\n生来就是为了在战国乱世生存下来\n而被创造的至高杰作的「忍者」。\n打从一出生就是头目，就是忍者，\n是风魔一族达到的一个顶峰。\n\n……然而，问题在于小太郎自己的本性却十分善良，\n还很小心谨慎。肉体虽然达到了忍者的顶峰，\n但精神却不适合当一名忍者，\n每天都躲在房内闭门不出。
118	5	『光辉之大复合神殿』\n阶级：EX　种类：对城宝具\nRamesseum Tentyris\n法老·奥斯曼狄斯的神威以宝具的形式具现。\n由复数的巨大神殿及灵庙组合而成的巨大异形复合神殿，\n属于一种固有结界。\n主要攻击手段为『丹德拉大灯泡』的魔力炮击，\n但在本作中施放的是作为杀手锏的大质量攻击。
119	5	即使有着十三拘束对其真实力量的限制，\n仍然散发着星辰般的光辉，终焉之柱——\n圣枪其本体为固定世界表层的『光之柱』。\n借由与『拯救世界的星之圣剑』同等过程的十三拘束的存在，使之得以勉强作为宝具成形。
120	5	『冥镜宝典』\n阶级：B+　种类：对军宝具\nAnpu Neb Ta Djeser\n据尼托克丽丝本人宣称，\n这是能够映射出冥界，或说是暗黑异界姿态之镜，\n但具体不明。也可能是映射出了她的精神世界。
121	5	『缚锁全断·过重湖光』 \n阶级：A++　种类：对军宝具\nAroundight Overload。\n令无毁的湖光过载，使其包含的魔力外放而出。\n转而作为进攻手段使用。\n并不释放原本应该用作光之斩击的魔力，\n而是在斩断对象之际再做解放的，富含剑技的宝具。\n庞大的魔力自切断面溢出，而那青色的光芒被称为宛若湖一般。
122	5	在某次战斗中，崔斯坦不幸身中剧毒，\n在濒死的状态下，他祈愿能再见伊索德一面。\n『她来的话就扬白帆，不来的话就用黑帆——』\n崔斯坦一心等待着伊索德的到来，\n但其妻伊索德却在他耳边轻语道，\n『扬着黑帆的船，正往这边驶来』\n正是这一小小的，\n对于迎娶了自己却从未有过爱意的丈夫的叛逆（谎言），\n为崔斯坦的故事拉下了帷幕。
123	5	圣者的数字：EX\n高文卿所拥有的特殊体质。\n从上午的9点到正午的3个小时，\n以及下午3点到日落的3个小时，\n持有的力量将会变为3倍。\n是凯尔特的神圣数字3所表示之物。
124	5	对于她的结局有着多种说法。\n有说是因某军的将军怒于她完全拒绝肢体接触而将其斩首，\n有说是她亲自向将军表明暗杀者身份并哀求『杀了自己』，\n也有说是在将军未能顾及她的间隙，被他人斩杀。
125	5	无尽米袋\n阶级：EX\n美味的大米，源源不断地涌出。
126	5	『紧握其剑，银之臂』\n阶级：C　种类：对人宝具\nSwitch On Agateram。\n与凯尔特战神所使用的的神造兵装同名，\n其真身为「未能归还的圣剑Excalibur」。\n常时发动型宝具。\n「一闪即逝，银之臂（Dead End Agateram）」，\n以真名解放来发动对军队歼灭攻击。
127	5	被迦勒底召唤的英灵第三号。\n在英灵召唤系统·命运尚未完成时召唤的从者。\n由于系统不安定，据说本打算当即离去，但听说了迦勒底的情况，产生了兴趣，并被罗玛尼·阿其曼说服，选择留在了迦勒底。\n达·芬奇亲制作了自己的复制人偶，并声称这就是自己的御主，得以留在现世。做的这事和某位人偶师没什么两样。
128	5	沙滩之花：EX\n正可谓向日葵的化身。\n夏日女神，在此降临！\n「不不，其实我就是神哦？」\n夏日的玉藻并没有采用一边表现着女性的美，一找到机会就会设下LOVE陷阱的态度。\n夏日、海滨、沙滩遮阳伞，此乃展现优雅的机会。只要在夏日的海滨表现得比平时更有魅力，就算回到日常，也已经被迷得神魂颠倒的作战。\n「这已经不是什么淑女，而是猎手了吧？」\n「嗯，说得没错哦，主人。\n　那家伙虽然是本体，但也已经一只脚踏入TAMAMO NINE\n　范畴的玉藻前……海边猎手，人称玉藻鲨鱼哦。」
129	5	阵地建造：A\n原本应该是Caster职阶的技能。\n也被称为魔力放出（水）。\n在妖精的佑护下，提升同伴们的士气、提升幸运、提升命中、消除焦躁、外加能变得凉爽的梦幻效果。在生存游戏中可谓作弊技能。发挥该技能的阿尔托莉雅成为了水枪闪电战世界大赛的霸者，但这已经是其他故事了。
130	5	『吾爱辉煌永恒长驻』\n阶级：A　种类：对军宝具／对民宝具\nCrystal Dress\n将古代确实存在的幻想——王权的光辉本身作为宝具缠绕周身。\n好好见识作为海滩之花、太阳之花动真格的玛丽的光辉吧。超级亮晶晶，亮晶晶，光辉，闪耀！
131	5	『比翼连理』\n阶级：C++　种类：对人宝具\n有效范围：1～3　最大捕捉：1人\nCaribbean Free Bird Act2\n这次是以安妮为主轴，玛莉做辅助。无论哪种，想要阻止她们俩的合作是极为困难的。因为干海盗这行的，一直都在打背水之战。
132	5	召唤时，为了寻找能承受自己力量的冲浪板，厚颜无耻地从父王的宝物库里偷……永远借出来了。其名字为「普利多温（Prydwen）」。根据传说，是既能当船又能当盾的不可思议的道具。但亚瑟王如是说，谁让你拿去当冲浪板啦！
133	5	『蹴穿死翔之枪』\n阶级：B+　种类：对人／对军宝具\nGae Bolg Alternative\n真名与Lancer的时候相同。能夺走对象的性命。\n只不过，达到目的的过程不同。\n这是令众多勇士惊叹的著名的踢踹迦耶伯格。\n能击中战士之心的夏日骚动之一。
134	5	『道成寺钟百八式火龙薙』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\nDoujyoujikane Hyakuhachishikikaryunagi\n用钟囚禁对手，并刺入薙刀，千钧一发之际吹飞。\n夏日酷热，这东西的热气逼人属于最高级。\n为此，与她同行的从者在夏天期间对她评价十分糟糕。
135	5	雅各布的追随者：B\n从雅各布、摩西，然后到玛尔达脉脉相传的古老格斗术。只要能精通，甚至能打赢大天使。根据传说，学会了这种技术的圣者殴杀了率领一万两千名天使的『破坏天使』。\n当解放宝具真名之时，玛尔达之所以会有「那种言行」，也都是因为本技能的效果。
136	5	○可疑的药：A\n红宝石每天晚上在阁楼里精炼的神秘药物。\n正可谓琥珀药草。\n原料主要是植物（毒草）。\n不为人知地在爱因兹家庭院种植可疑的花草，据说已经形成了只要被人看到必然会报警的异常花园了。\n效果卓越到令人后怕，多半不会导致什么好结果，所以尽可能不要使用。
137	5	吻魔：B\n小黑就类似在没有御主情况下意外现界的从者，\n始终需要魔力。\n最喜欢不通过契约的最简单方法，\n也就是通过粘膜接触来进行魔力供给。\n一有破绽就强行插入亲吻镜头，\n令客厅陷入冰点的褐色小恶魔。\n\n但本人表示，\n「但这归根结底还是医疗行为，可别误会了哦」。\n原来如此。
138	5	勇者大原则：EX\n其一，勇者必须要无敌。\n其二，勇者必须要士气高昂。\n其三，勇者可以自由使用大部分掉落物品。\n……等等，据说有十条原则。\n从技能角度来说，类似动作类漫画中，\n主人公大逆转前的铺垫那种东西。\n\n绯红勇者传说：EX\n据说只有在剧场版的时候才能使用的勇者最大奥义，\n也是超·特权。\n通过消耗大量勇者力让力量超级提升。\n和小玉藻夏日版的女神变生属于同种类型的超级buff。\n不过，使用条件那么苛刻，技能本身却是个\n充满了随机要素的赌博技能。\n令人不禁觉得这不过是个游手好闲之人的技能吧。
139	5	陪伴过两位男性的她去世了。\n这是爱恋。是思念的结局。怎可能是算计的产物。\n——然而，别说后世了，连当时的人都纷纷交头接耳，\n说「魔性之女诱惑了罗马的将军们」。\n结果，成了英灵，作为从者在当代现界的她，\n获得了作为「拥有魔性美貌的诱惑之女」的存在。\n\n即便如此，为了自己的尊严——\n就算要寻找伴侣，也只能选择卓越的男性才行。\n只有那些拥有值得信任的诚实内在，\n值得自己不惜与其共同赴死的人物才行，\n就像自己曾经爱过的男人们一样，\n自己定将成功诱惑他们。
140	5	无辜的怪物：A\n由于生前的所作所为给人带来的印象，\n以至于扭曲了过去和存在方式的怪物之名，\n令能力、样貌大为改观。\n在如今世界里，『德古拉』依然是世界最有名的怪物\n之一。也可以说是创作扭曲了现实的最好案例吧。\n……然而，实际上确实无法断言这一切都是创作者\n布莱姆·斯托克的傲慢所致。\n弗拉德三世为了维护瓦拉几亚的独立，不择手段，\n无论是土耳其方，还是本国的民众，\n都将他视为恶魔，恐惧不已。\n根据教廷收到的记录，据说他一生中穿刺的人的数量\n已经达到了10万人。而可怕的是，这个数量并不包括\n敌国的人。
141	5	『优雅歌唱吧，为那圣诞』\n阶级：A+　种类：对军宝具\n有效范围：1～10　最大捕捉：10人\nLa Grace Fille Noel\n与咆哮吧，吾之愤怒成对，\n只有在贞德·Alter·Santa·Lily兴致高昂的时候\n才会发动的圣歌宝具。\n对坏孩子就要予以教训（伤害），\n对好孩子就要给予赠礼（buff）。\n如雪花般飘落堆积的礼物\n似乎在等待圣诞节的孩子们之间大受好评什么的。\n\n另外，其实并不需要唱什么歌。
142	5	以巨大的弓，也就是飞船『天舟马安娜』为主武装。\n马安娜是驰骋于美索不达米亚世界的神之舟，\n也是连接地球与金星的星间转移门（Gate），\n但由于本人是拟似从者，所以传送功能基本被封印。\n伊什塔尔也能运用枪，但这次贯彻了Archer职阶。\n虽说是美索不达米亚的神，\n但给人一种从金星攻打地球的侵略者的印象。\nbiubiu。
143	5	变容：A\n根据情况，将能力值从一定综合值中\n重新分配的特殊技能。是恩奇都最大的特征。\n阶级越高，综合值越高。\n有时将筋力变化为A，有时将耐久变化为A。\n只是参数值变换极限是固定的，\n因此无法将所有数值都变成A。\n恩奇都拥有30数值，各参数消耗数值分别为\nA7、B6、C5、D4、E3。\n\n气息感知：A+\n最高级的气息感知能力。\n能通过大地，远距离探测气息。\n\n完全之形：A\n利用大地的魔力，复原原本的形态。\n利用神代粘土制作而成的恩奇都的身体\n只要还有大地提供魔力，就不会崩溃。\n具备他人不可比拟的强大再生、复原能力。\n但灵魂除外。
144	5	『持翼之神』\n阶级：A　种类：对人·对军宝具\nQuetzalcoatl\n之所以拥有Rider职阶的原因宝具。\n召唤赐予了自己名字的白垩纪翼龙——\n羽蛇神翼龙，并进行骑乘。\n其实是比栖息于白垩纪的羽蛇神翼龙更为大幅强化了的\n幻兽～神兽级的幻想种。\n羽蛇神翼龙以历史上最大的飞行动物而著称。\n\n真名解放时，\n虽说骑乘翼龙的魁札尔·科亚特尔本应能够\n大规模操控风雨雷电……\n但这效果在本作基本没被使用。
145	5	『王之号炮』\n阶级：B　种类：对军～对城宝具\nMelammu Dingir\n从乌鲁克要塞发动的远距离轰炸。\n不只吉尔伽美什，而是集结全体生活于神代的\n乌鲁克民众的力量发动的令人震惊的炮击。\n\n吉尔伽美什怀着断肠之痛，\n将自己的收集品装填于弩上，并交由士兵操作。\n「幻想崩坏？\n　那种事情，本王4000多年前就干过了！」
146	5	怪力：C\n能短暂增幅筋力。只有魔物、魔兽才具备的攻击特性。\n只要使用，就能让筋力提升一个阶级。\n持续时间依“怪力”阶级而定。\n…由于魔的性质较薄弱，因此阶级很低。\n\n心念远方：A\n或许终将有一天会存在的远方——\n对那些深爱日子的感情，成为了她战斗的最后支柱。
147	5	『强制封印·万魔神殿』\n阶级：A　种类：对军宝具\nPandemonium Cetus\n通过放弃身为女神最后的余韵，\n让最终到达的悲惨结局\n『戈耳工的怪物』短时间实体化，\n来溶解指定领域内所有生命。\n若是人类，就会立即失去生命，\n就算是从者，也会遭到强烈打击。\n\n虽然是Rider状态的美杜莎拥有的宝具\n『他人封印·鲜血神殿』强化后的存在，\n但不需要准备时间，靠真名解放就能发动。\n对无机物对象的效果略弱。
148	5	豹之踢：B\n正式技能名：：怪力\n豹子之踢也是破坏力。\n总之自己无论如何先得活下来。\n充满了这种坚强意志，以及令人感到希望的技能。\n\n豹之眼：A+\n正式技能名：昏暗密林之颚\n豹之眼就是光炮之力。\n处于「森林」场地时，会追加各种加成效果判定。
150	5	英雄塑造：EX\n人为创造王、培养王的技术。\n甚至可以说是亚瑟王真正父亲的梅林\n乃是广为人知的世界上屈指可数的国王培育者。\n\n混血：EX\n混着人类以外存在的血脉。\n梅林被视为梦魔的混血，\n完全继承了梦魔的特性。\n\n单独显现：A\n单独出现于现世的技能。\n梅林本来是不会被作为英灵召唤的。\n因为无论怎样的未来，他都不会死亡。\n他之所以作为从者服从于御主，\n是为了释放个人的欲望，\n换种说法就是个人兴趣。\n为了实现自己的兴趣，他靠自己获得了\n只有某个特殊职阶才能拥有的该技能，\n并假装作为从者被召唤了。
207	5	希腊神话知名的大贤者喀戎最终被许德拉的毒箭射中，\n为了摆脱中毒的痛苦，他还回了身为神明才有的不死性。\n怜悯喀戎的神明让他升上天空化为星星，但现界的喀戎\n后悔自己舍弃了不死性，于是许愿重新获得不死性。\n但是，喀戎这么做并非想要成为神明，也并不是想要拥有\n不死之身。\n只是因为，这是双亲赋予他的唯一的特异性，\n所以喀戎希望能将它取回来。
153	5	无空：A\n剑术家能到达的最高位。究极的境界。\n相当于柳生新阴流·水月。\n因无空，故无敌。能捕捉此物者，\n只有抵达无限境界的剑术家。\n\n五轮之书\n武藏临死前将自己毕生到达的境界，\n以及钻研的技法整理撰写而成。\n这是一套分为地水火风空5卷的书籍，\n是“武藏”这个人集大成的存在。五轮之书中，\n地之卷描写了二天一流兵法的理念与概略，\n水之卷则描写了具体的技法，\n火之卷是关于从战略或战术角度而谈的兵法，\n风之卷是对通过否定特定技与战法，\n让读者以“脑海中主动浮现出”的形式，\n从根本上理解二天一流的解说。\n而最后的空之卷，据说是用名为“相对”的技法，\n将武藏个人对“空”的理解撰写而成的东西。
154	5	气息遮断：A\n消除自身气息的技能。曾学会的技能的残留。\n带着强大诅咒的这位剑士\n就算在隐秘行动判定中完全成功，\n也会让“接下来将要杀害的对手”感知自己的存在。\n\n晚钟：EX\n告知人们葬礼的到来，在死亡造访时响起的晚钟。\n与这种仪式一体化的结果产生的特殊技能。\n这位剑士不会凭自己的意志选择杀害的对手。\n当对手化为「迷失了应赴死之时」的亡者时，\n代替天主赐予对方救赎。所有一切都是天的意志，\n因为都是天的意志，\n所以见到这位剑士之人的命运注定已经终结。\n——能否听见，这钟声。\n这才是汝之天运的尽头。\n接受吧，解放灵魂吧。这是，\n身为一个人获得安息的最后机会了。
155	5	已经崩溃消失的暗黑骑士团\n黑暗圆桌中最后的幸存者。\n被赋予的称号是潘德拉贡卿\n\n能够使用念动力“Alter力锁喉”，以及通过手臂\n释放魔力来使用的绝技“Alter力闪电”之类\n似乎在哪里见过的多种多样的技能。\n释放出赤色魔力的“邪圣剑死之胜利剑”\n能够自如变化成双剑或是电锯之类的样子，\n但经常会坏或是发生爆炸。\n越是帅气的武器越是不强，\n这似乎是宇宙共通的规则。\n还是平淡无奇的长剑最棒了。
156	5	?
157	5	当然，能让一个人类的人生发生如此巨变\n自然有其理由。\n让如剑一样强韧的男人的灵魂坠落的，\n据说是一个拥有如圣母般慈爱的女人。\n男人为了将这魔性逼入绝路，\n过程中屠戮了众多信徒，\n仿佛为他们的生命献身般坠入魔道。
158	5	?
159	5	?
160	5	自己原本是隶属其他世界·异世界的英灵，\n为追寻某个强大的敌人、恶相之兆而来到这个世界\n——本人如是说。\n这是凭迦勒底的系统都无法判断真伪的\n令人诧异的发言，\n但至少他是不会对御主说谎的。\n\n他向御主寄予了完全的信任。\n不可能存在虚伪或背叛。
161	5	被剑豪云集的新选组队士们评价成\n「就算不会输给土方，感觉也赢不了他」\n的战鬼·土方岁三的修罗之剑。\n宛若重现了他不停战斗的生涯。发动时，他周围会化为子弹横飞炮火轰鸣的战场。\n看似通过召还大量人员呈现对军宝具的态势，本质却截然不同。一切都表现了「新选组现在仍在此处」的他的那份疯狂。
162	5	『绚烂魔界日轮城』\n阶级：C　种类：城塞宝具\nKenran Makai Nichirinjyou\n日轮之子，作为丰臣秀吉象征的『日轮城』的余韵。燃烧的大阪城具现化，与丰臣相关的亡者们从地面出现，攻击敌人，周围被红莲火焰包围。\n最终一切都会化为灰烬，连自己也被烧尽的毁灭之显现，堕落的日轮残渣。\n作为毁灭了丰臣的女人，被诅咒的倾国美女，火焰地狱公主的茶茶最后具现化的宝具。
163	5	Melt病毒：EX\n这是名为id_es的Alterego们天生就拥有的特殊能力。\n由技能『吸收』进化而成的作弊技能。\n能量吸收的最高级。可做到吸收、拷贝、降级等。\n只要是有形之物，无论有机物还是无机物都可吸收。\n但无形之物……精神或技能之类的存在虽能融解，\n但似乎很难变换成“属于自己的东西”，\n只能成为纯粹的养分。\n\n因此可以被Meltryllis化为“属于自己的东西”的，\n主要是『经验值』与『容量』。\n\n神经障碍：\nMeltryllis的五感中，触觉十分低下。\n尤其是手——指的感觉几乎没有了，\n因此她变得更为积极追求与外界的联系。\n换言之，她的嗜虐兴趣是基于\n“光凭自己无法感受他人的存在”而生的。
164	5	受虐体质：A\nPassionlip的id_es技能。\n在集团战斗中，能将对方的敌意（仇恨）集中在自身，\n提升自己成为攻击对象的概率。\n\n废弃＆崩溃：EX\nid_es。由『怪力』进化而成的作弊技能。\n无论容量多么巨大，只要是“能用手包住的存在”，\n就能用爪子捏碎、压缩。\n被压缩的东西会成为边长一公分的立方体，\n但其质量只能轻量化到压缩前的十分之一左右。\n被压缩的东西会作为垃圾数据被处理。\n只有比Lip的手小的存在可以被压缩——\n事实并非如此，而是在她看来\n“可以收入手中的东西”都算作处理对象。\n虽然这是一种无视远近法则的平面性物理干涉，\n但越大的东西压缩起来还是会越耗时间。是只有在\n电脑空间中才存在的错觉画式压缩方法（编码）。\nLip是破坏特化的存在，如果对象不会移动……\n比如地形或是建筑物之类的话，\n她的破坏力甚至凌驾BB之上。\n不过在面对从者或御主时，会发生对手立刻意识到危险\n并逃脱Lip的视野→笨重的Lip根本追不上的情况。
165	5	才智的祝福：C\n原本是被作为宝具对待的技能。\n通过装备传说由智慧之菩萨打造的小通连，\n得以大幅提升INT的宝具。\n原本十分粗糙的剑术会变得十分扎实，战术也更为宽泛。\n另外还能提升「天鬼雨」的性能，或是能够使用\n「三千大千世界」等，可谓皆大欢喜，\n但由于需要过度使用头脑，因此会反省表演女高中生这种\n毫无效率的生活方式，以至于短时间内陷入自我厌恶。\n所以铃鹿御前不会积极使用这个技能。\n\n三千大千世界：EX\n原本是被作为宝具对待的技能。\n通过将铃鹿御前的爱剑——显明连映照在朝阳下，\n得以在太刀中创造并纵览三千大千世界……\n也就是各种世界，甚至包括平行世界。\n……这究竟意味着什么，铃鹿御前对此保持沉默。\n一旦长时间使用，身为英灵的资格就会被剥夺。
166	5	曾导致了案件·CCC的失控AI。\n本是保健室的管理AI，但由于BUG，\n自我保存的命令系统失控。基于某个理由，\n得出了『无论牺牲什么都要保存自己』的结论，\n成了不断吸收NPC们、从者和御主，\n并不断成长的怪物。\n公开表示「讨厌人类」，将某位御主困在月之背面\n并让其痛苦。本人觉得自己很正常，\n但从客观来看，她明显已经疯了。\n言行中时不时表现出她爱情过剩·爱恨混同的矛盾性，\n导致这种现象的原因请参考CCC正篇。\n\n另外，她属性值中的幸运值曾是最低阶级的E-，\n但BB本人基于能扭曲世界的努力（与献身），\n幸运成了EX。也就是说，她曾经实现过\n如果不假定她是『幸运EX』就无法达成的“奇迹”。
167	5	单独显现：E\n通过变化成Alterego被自我封印了。\n也就是所谓的自重。\n话虽如此，她依然具备单独显现拥有的\n「即死耐性」与「魅惑耐性」。\n\n千里眼（兽）：D\n作为千里眼的阶级很低，不能看穿遥远的存在。\n但能看透、揭开眼前人类的欲望与真理。\n……如果只有这些，那也算是身为贤人的技能。\n但通过揭开对方的兽性与真理，\n祈荒自身会变得极为亢奋，获得随喜。\n如同在猎物面前舔舌头的毒蛇一般。\n\n五停心观：A\n杀生院祈荒开发的医疗软件。\n是以精神治疗为目的的电脑术式，\n测定精神的浑浊与混乱，\n通过物理的方法摘出来令精神获得安定。\n原本是为了绘制患者的精神图，并用于理解而制造的。
169	5	『一千零一夜』\n阶级：EX　种类：对王宝具\nAlf Layla wa Layla\n基于其由来，拥有王属性特攻。\n严格说来就算不是王，但只要是类似的存在，\n在她心目中也有可能被视为「王」。\n\n这是名为「她叙述的故事」的固有结界。\n通过使用甚至能令世界都感到信服的压倒性存在感\n与现实感的方式叙述，来令「故事」具现化。\n通过召唤一千零一夜故事中出现的登场人物、\n道具、精灵等的形式。\n在原来（正当历史）的一千零一夜中不存在，\n但经过后世创作，并吸收进来的阿拉丁及阿里巴巴等\n篇章能对身为英灵的她的生存起到作用，因此可以使用。重要的不是正确与否。而是王觉得是否有趣。\n故事（宝具）的最后当然会以这种方式来收尾。\n\n「——故事就是这样。」\n
170	5	『告密罗织经』\n阶级：B　种类：对人宝具\nKokumitsu Rashokukei\n据说告密罗织经是在她统治的时代著作而成的\n酷吏（拷问官）们的指导书。也就是如何罗织罪名，\n造就罪人的拷问与审问的学习手册。\n\n这宝具等同于「她能自由创造罪人」这一国家法则的\n体现。也就是说，当她展开这宝具的时候，\n她将成为任何人的「拷问的实施者」，\n而对手则不由分说地成为「被拷问之人」。\n\n原本应该能用多种多样的拷问方法处罚不守规矩的人，\n但最近，她将过去用于陷害政敌的酒缸与毒进行了\n拷问向的改造，并经常使用。\n
171	5	?
172	5	『新天地探索航行』\n阶级：A　种类：对军宝具\nSanta Maria Drop Anchor\n最为有名的第一次航海获得成功的存在。\n他乘坐的旗舰圣玛丽亚号出现、靠岸\n（哪怕在陆地中间），并且——\n服从他的指示，做应做的事。\n那就是「圣玛丽亚号啊，抛锚」，\n也是身为船长发出的开始掠夺的命令。
173	5	原本是始终发动型宝具，\n但在『Fate/GO』中会解放真名。\n真名解放时，会出现来路不明的「球体」，向周围一带释放出炫目的光芒。弱化敌方阵营，强化己方阵营，哪怕是无法打倒的对手，福尔摩斯也能寻找出打倒的方法。\n\n另外，其真名虽然是与福尔摩斯有关的名台词之一，但实际上这句台词第一次出现的地方不是在道尔的小说中，而是出自威廉·吉列特负责主演、剧本、演出的舞台剧。据说道尔曾称赞吉列特扮演的福尔摩斯「超越了自己的小说」。\n顺便说一句，道尔的短篇『驼者』中，福尔摩斯对华生说\n「这是常识（ \\""Elementary.\\"" ）」。\n据说吉列特就是从这里获得了灵感。
174	5	其实，保罗·班扬的传说在开拓时代当时几乎无人提及。\n\n现在一般认知的离奇巨人传说多半都是在20世纪之后被捏造的存在。班扬作为民间传说的英雄而言，只是有名无实的肤浅冒牌货，或许这就是她作为从者无法发挥传说一般力量的原因吧。
175	5	上次，没被邀请到南国岛屿的尼禄内心愤愤不平。\n这次她准备好新的泳装，兴致勃勃地打算参加夏季活动。而伊什塔尔杯正在此时召开，她便得意洋洋地参加了。\n然而比赛需要队友，基于这个理由，她向正巧路过的\n阿尔托莉雅·Alter搭话，组建了这支奇迹的队伍。\n\n爱车乃是红色维纳斯。\n对于为何要取维纳斯这名字的原因，\n详情可参考『Fate/EXTELLA』。
176	5	『穿刺之雷刃』\n阶级：D～B　种类：对人宝具　有效范围：1～3\n最大捕捉：1人\n\nSkewered Plasma Blade\n通过将婚礼之刃高速旋转来急速填充能量。\n然后跳跃刺突。其庞大的雷电能量，\n甚至可能不小心将其他人卷入其中。
177	5	『洗刷污秽吧，青色美丽的尼罗河』\n阶级：B　种类：对军宝具\nSneferu Iteru Nile\n对玩弄亦王亦神的法老宝座之不敬，施以惩罚。\n对夺取我心爱兄弟生命之大逆不道，赐予死亡。\n蔑视诸神的当权者将尼托克丽丝作为自己的傀儡，\n推上了法老宝座，然而成了法老的尼托克丽丝\n决不会原谅他们。\n她将他们邀请到自己秘密建造的巨大地下室中，\n召开宴会，并从尼罗河引入大量河水，灌入地下室，\n令他们一个不剩全部淹死——\n尼托克丽丝的复仇才终于得以完成。\n\n希腊历史学家希罗多德所著的『历史』中记载的\n这段复仇故事，成为了获得Assassin职阶的\n尼托克丽丝的宝具。也就是用石壁包围对象周围，\n注入尼罗河之水，致其死亡的复仇的重现。\n行使的乃是与固有结界似是而非的某种大魔术。
178	5	水边的第六天魔王：A-\n根据本人的夏日影响，扭曲自己生活方式的怪物。\n能力、外貌都发生了变化。\n原本技能「魔王」的另一种技能形态。\n魔王在水边换上了泳装后就会这样。\n副作用是胸部好像稍微变大了一点，难道是错觉吗？
179	5	（本人不会说，也没发现，）中了夏日魔力的魔，\n换上了泳装的Alter小姐。\n「我断然不是那种俗称泳装英灵的存在。\n　因为且不论泳装，我更是个女仆啊。」\n原来如此，确实是无法反驳的真理。\n但是，原本就很严格的性格在成为女仆后变得更为严格。化身鬼之女仆长，坚决不放过懒散颓废的御主。\n\n和尼禄一起参加了伊什塔尔杯。\n『暴君流星』这个队名是她出的主意。\n这名字非常适合著名的任性皇帝\n与暴君女仆联手组成的奇迹之队。\n\n参赛动机是为了表现自己是最强的。\n奖励（物理）理当收下，但撇开这个不说，\n她也希望这件事能帮上御主的忙。
180	5	『金星神·白银圆环』\n阶级：B+　种类：对军宝具\nSanat Kumara Wheel\n随着职阶的变更，海伦娜拿出来的新宝具。\n白银圆环。与身为Caster解放宝具真名时出现的飞行物使用的是同一种材质，\n据说其构成与地球上任何物质都不相同。\n真名解放时，会出现无数飞行物体，\n犹如倾盆大雨般向四周发射光线。能引起巨大的爆炸，\n但绝不会射中海伦娜本身。
181	5	『释提桓因·金刚杵』\n阶级：A+　种类：对人宝具／对军宝具\nShakudai Kan\\'in Kongousho\n牛头天王兼东方神帝释天（因陀罗）的金刚杵，\n也就是用圣仙骨打造的诸神最终兵器伐折罗从天而降，\n歼灭所有敌人——\n基于这个宝具，这次赖光的职阶才被认定为Lancer。\n形态与密教中被视为展现万有本体一真如的独钴杵一致。\n\n阿周那「那宝具是父亲的……」\n罗摩「那宝具是……」
182	5	Archer的伊什塔尔使用的弓，\n是从天舟马安娜船首部分卸下的部分，\n这次是将天舟的「桨」的部分变化为小摩托，\n用作交通工具。这辆小摩托的外观酷似现代小摩托，\n但当然，性能是女神级的。\n能够在天空飞翔，也能进行传送。\n伊什塔尔脚下的谜之生物一直在淅淅索索地动，\n但伊什塔尔对该生物贯彻不做评论解释的方针。\n\n认定拯救乌鲁克的御主是前途无量的勇者，\n但还是对「为什么这么平庸的人会成为勇者呢？」\n感到奇怪。觉得御主是个奇妙的人类。\n这次看中了御主的人望（备受从者们信任），\n雇佣他／她当伊什塔尔杯的工作人员……？
183	5	女神接受了成为自己凭依之躯的少女性质中光的部分。\n\n性格温和且有包容力。不会自我主张，\n贞淑、在御主身边默默支持的才女。\n……理想女主角力的素质极高，但由于不喜欢夸张，总是选择坚实朴素的道路，所以多少有些迟钝。\n\n另外虽然她性格温和，但并不代表她十分软弱，内心十分坚强。\n无论面对什么样的痛苦，内心都不会屈服，从这个角度来说，她简直就是倔强与毅力的凝聚体。\n因此，如果真的惹她生气，可是会有些可怕的哦。这帕尔瓦蒂在怨恨彻底消散之前，也是决不会忘记的。
184	5	?
185	5	?
186	5	『胧里月十一式』\n阶级：C　种类：对人宝具\n有效范围：1～5　最大捕捉：1人\nOborourazuki Juichishiki\n由宝藏院胤舜钻研至极致的十文字枪，\n武艺升华后而成的宝具。\n指的是与先代胤荣创出的表十五式招数相对的，\n胤舜所创出的里十一式招数。\n甚至被誉为「此枪可臻神佛之境」的\n胤舜所编出的招数之型，能应对各种敌人、各种招数。\n另外，该宝具在面对初次见到的对手，\n或是无论多么奇妙的武器时，\n都能打消初次见面所造成的不利。
187	5	『剑术无双·剑禅一如』\n阶级：A　种类：对人奥义\n有效范围：0～10　最大捕捉：1人\nKenjutsumusou Kenzenichinyo\n在拥有不动之心的同时，拥有自由——\n泽庵和尚曾道出的剑之奥义，终于，\n在柳生宗矩的内心得以完成。\n剑会在生死狭缝间求得大活，\n禅会在沉思静想中获得大悟。\n由无念无想之域释放的剑禅一如之一刀，\n仅一击，实现必杀。
188	5	感情稀薄，比较机械化的机关忍者。\n机关少女。\n生前没有自由意志，是只会服从输入命令的机械人偶——\n她是这么定义自己的，但当作为英灵被刻印在人类史上，\n作为从者现界之后，\n她似乎开始觉得自己何不也像人类一样思考，\n何不也像人类一样拥有感情呢，\n若被允许，希望自己能变成这样。
189	5	『白鹭城百鬼八天堂大人』\n阶级：A+　种类：对城宝具（自身）\n有效范围：1　最大捕捉：姬路城的最大笼城人数÷7\n\nHakurojyou no Hyakkihachitendousama\n显现出姬路城的袖珍模型，也就是与所谓的固有结界似是而非的大魔术。\n凭借数以万人承认的美丽与威严，为己方付与精神上的支柱。如果刑部姬攻击性再稍微强一点的话，城会当即化为可以发动攻击的暴力性存在吧，但多亏了她是个天生的家里蹲，才会仅止于防御型宝具。
190	5	拥有完美之美的机械伊丽亲也多少有一些缺点。\n其中之一就是『对正义的判断基准』。\n或许是因为基于城之守护者的立场吧，\n无论违反自己规则的人是谁，\n都会被她断定为『恶』而发动攻击……！\n※本人认为这该不会是因为电子头脑在处理\n『人类矛盾性』的时候耗时过长，以至于会教科书般地\n惩罚做了『坏事』的人吧，她甚至为此深刻烦恼，\n但绝不会说出口。\n\n无论是背叛者还是罪犯，都有他们自己的理由。\n理性思考认为有酌情宽大处理余地的机械伊丽亲\n对自己自以为是的思考回路感到不满，\n为改善的必要性而烦恼不已。 \n其实就是个好孩子。
191	5	不喜欢被称作机械伊丽亲，\n希望别人称呼自己为『Ⅱ号机』的帅气女孩。\n看不起人类，人类不过是为国家（领地）添彩的\n零件而已，一旦胆敢反抗，就会予以强制管理，\n这就是她的宗旨。\n\n……话说回来，她也很清楚自己的这种思考回路\n对领民来说并不是什么好事，\n因此绝对不会称其为『好法律』。\n\n身为人类，身为恶，\n要将领民们的生活作为『善之存在』来支配。\n是个在厌恶人类的面孔之下，\n隐藏着这般信念的恶之机械伊丽亲。
192	5	?
193	5	那之后，经过了一番辗转周折，哪吒化为莲花之精复活。\n其复活时不仅仰仗太乙真人，还借助了释迦如来的力量。\n作为Lancer被召唤的哪吒，\n具有浓厚的『西游记』中佛教守护者的性格。\n倘若作为自尽前拥有残虐性质的哪吒被召唤，\n想必会成为Berserker吧。
194	5	?
195	5	身为清教信徒的阿比盖尔是个敬仰神明，\n每天都不忘送上感谢祈祷的纯洁的少女。\n不过是个多愁善感，不知怀疑他人的妙龄少女罢了。\n\n以清贫作为自身信条的清教徒们，\n遭到巴结权势的教会的弹劾，为逃避而漂洋过海，\n来到了新大陆。然而他们最终遭到追赶，被逼上绝路。\n他们抗议（Protest）的矛头，指向了身旁的邻人。\n\n就像在颓废与压抑的时代会有“英雄”挺身而出一样——\n严于律己的纯洁信条成了监视他人的道具，\n重复着战乱与掠夺的殖民地的险恶生活，\n孕育了猜忌心与利己之心。\n——他们最终开始渴望内心深处的疯狂，\n开始渴望“魔女”。嘴上则称，\n我们不得不将这不幸与痛苦归咎于恶魔的勾当才行啊。\n\n最终魔女出现在塞勒姆，凄惨的魔女审判之门打开了。\n作为“钥匙孔”的纷乱状况，以及反映人们欲望的\n身为“钥匙”的少女。倘若两者缺一不可，\n那么，罪过究竟在于谁呢。
196	5	性格被动、内向。\n由于拥有极高的知性与自尊心，\n为冥界主人这份职责鞠躬尽瘁，\n以至于行动遭束缚的死与腐败的女神。\n嫉妒美丽的存在，嘲笑丑陋的存在，\n为了不让自己想要的东西落入他人之手而杀害对方。\n……埃列什基伽勒本是这样一个存在，\n但通过与躯壳的少女融合，她开始客观地认识到\n这种欲望是「不好的」、「令人害臊的」，\n凶暴的性质从而消失在了深层之下。\n然而她性格直率，所以一旦生气就会表现出来，\n成为如神话传说中般可怕且美中不足的女神。\n其行动理念是埃列什基伽勒自己的，\n所以比躯壳的少女更为冷静，也显得更为自虐。\n\n会与伊什塔尔说相同的台词，\n但时不时会使用高贵大小姐的口气。\n直率，或是陷入恐慌的时候，语气会显得有些夸张，\n但这也是循规蹈矩的她『真实一面』的体现。\n被当做千金小姐抚养长大的伊什塔尔\n由于其任性与自由奔放的个性，语气十分活泼，\n反倒是在冥界认真工作的埃列什基伽勒\n会用『千金（不谙世事）大小姐』的措辞。
197	5	星者的礼物：B\n通过化身为圣诞老人从而获得的技能。\n赠送礼物，滋润心灵。\n尽管阿蒂拉很想赠送他人礼物，但总是无法掌握对方的\n愿望，再加上她内向的性格，技能等级比圣诞Alter\n（阿尔托莉雅）较低，而且不知为何，\n技能名也发生了些许变化。\n\n虹之糖艺：B\n圣诞树顶装饰的星星被称为伯利恒之星，\n据称其象征着救世主。\n据说只要用阿蒂拉的杖砰地敲打一下，\n就会赐予该人极大的祝福与恩惠。\n\n耀星之纹章：EX\n刻印在阿蒂拉身体上的独特纹样与圣诞节的概念\n融合变化而成的技能。\n通过这种强大的祝福力量，能令刻印在阿蒂拉灵基上的\n潜力觉醒，让圣诞阿蒂拉能在地球上行动3分钟！\n只能持续3回合的舍身超强化。\n\n天性的肉体：－\n由于成为圣诞节英灵，被付与了冬天的概念，\n以至于体温无法正常调整，遗憾地失去了这个能力。
198	5	性格与众不同的北斋。不局限于一种流派，\n热心学习各种画师技法的同时，也充满了进取心。\n吸收了西洋画的透视，将可以说是现代漫画原点的\n截取动态瞬间的表现运用在风景画之中。\n如果北斋显现于这个现代，脱离幕府严格的监管，\n获得自由的话，一定会欣喜若狂地学习各种技巧，\n并充满干劲地发起挑战吧。\n无论对象是春画、抽象画、还是数码画或行为艺术。
199	5	性格——狡猾，充满野心的女帝。无论是敌还是友，\n都一律踢倒，下毒杀害，或是用毒让对方精神崩溃。\n对他人的猜忌心十分强烈，即便是己方，只要有必要，\n甚至哪怕没有必要，也会下手杀害。与此同时，\n也对自己的力量怀有绝对自信（仅限自身的领域内）。\n所以，她与其他的王极难相容，\n不过与此同时也几乎不会自己主动发难。\n\n例外是当『虚荣的空中庭园』以完全形态成立之时，\n由于在其内部能拥有无与伦比的强大，\n所以就会积极果敢地发动进攻。
200	5	不到二十岁的少女。性格温和内向。\n是贤妻良母型谦和的女性形象。\n尽管不喜欢男性暴力的一面，但同时认为这种孩子气非常可爱。\n因此，对完全理性的人怀有一种异于爱情的憧憬（恋慕的情感）。\n\n是个注重常识，尊重对手的才女，但本质却是个彻头彻尾的悲观主义者与现实主义者，所以有时也会说出毫不留情的意见。忍耐力很强，可一旦失去控制，在将对手逼入绝路前（事态解决为止）决不会收手，犹如失控的货运卡车。\n在这方面，和判断不留情面的式很相似。\n\n行为、语气、性格都很女性化，但爱好却和少女相去甚远。喜欢观看恐怖电影等可以独自偷偷享受的阴暗的东西。\n本人到最后都没有意识到，但她具备潜在的嗜虐性质。之所以一旦被逼入绝境，就会变得残酷、冷酷、恶趣味就是因为这个原因。
201	5	名叫毕伊（Вий）的精灵或者说是妖怪，\n严格意义上来说并不存在。\n他是在俄罗斯文豪果戈里创作的\n短篇惊悚小说《维》中登场的虚构角色。\n不过，斯拉夫存在着数个与毕伊（Вий）相似的传承，\n人们推测他就是这些传承的原型。\n\n与阿纳斯塔西娅定下契约的毕伊（Вий）是\n罗曼诺夫帝国拥有的使魔。\n他能用魔眼看透一切秘密、\n找出城堡的弱点，\n更可以杀死敌人。\n\n但是，如果没有才能，\n就无法看到他，也无法操纵他——\n阿纳斯塔西娅在临终前才\n终于得到了与他签订契约的资格。
202	5	即便持有与狂化毫无二致的技能可以进行对话，\n但一般情况下，想在理论方面说服她几乎是不可能的。\n\n她对你是不是人理的伙伴毫无兴趣。\n无论兽化到何种程度，\n只要不超过刻在她内心的守则，\n她就是你忠诚的从者。\n若是违背了她的守则，\n她就会舍弃御主与从者的关系。\n恐怕就连御主都无法识别。\n当然，只要不违背她的守则，\n就完全没有问题。
203	5	他作为Caster职阶的从者算是不太好交流的类型。\n若是为了实现他自身的梦想，\n他会毫不留情地将任何人踩在脚下。\n从这点看来，应该就能够明白了。\n\n他身体虚弱，经常生病，尤其是皮肤病最为严重。\n或许是因为这样，也有人说他非常悲观而厌世。\n从他在本作中绝不会摘下面具露出真容这一点，也能窥测到他的心情。\n根据史实，阿维斯布隆将哲学思想从阿拉伯传到了欧洲。他也可以称得上是推动了文艺复兴文化的诞生。\n\n此外，他从希伯来语的“接受”一词创造了“卡巴拉”这一词汇。\n传说中，他还制作了女性魔偶用来做家务。
204	5	───安东尼奥·萨列里，曾是阿马德乌斯·莫扎特的朋友。\n他本不该作为反英雄被刻在英灵座上。\n萨列里曾是一位宫廷乐师长。不仅如此，他作为一名值得尊敬的音乐家同样广受尊崇，\n许多音乐家或是他们的子女兄弟也是萨列里的学生。其中包括了莫扎特的头号弟子苏斯迈尔、\n莫扎特的儿子弗朗兹·克萨韦尔·沃尔夫冈·莫扎特，以及贝多芬等人。\n\n然而，19世纪20年代，“莫扎特是被萨列里杀死的”这一传说突然在全球扩散开。\n人们据此想出了一个“为神钟爱的天才与痛恨着他并夺走他生命的才子”的残酷故事，\n毫不在意这个故事与事实并不相同。\n甚至连老年的萨列里对学生莫谢莱斯说过的“这只是恶意中伤而已”的话语，\n也被传为是他对自己犯下的罪过的坦白。还有人煞有介事地说，\n老年萨列里为自己所犯下的罪过忏悔，用匕首割喉自尽了。
205	5	这个世界是在现在的人类史的进程中，作为“不必要之物、不必要的变化（if）”被切除的“另一个”俄罗斯，\n是“由于前方是道路的尽头（DEAD END）所以将历史截断”的就连平行世界论都舍弃了的永久冻土帝国阿纳斯塔西娅。\n伊凡雷帝成为了这样一个世界的皇帝。\n尽管是作为从者复活的人类伊凡雷帝，但在异闻带的历史上，他是这世界上第一个兽人。\n虽然居住在他的帝国中的都是兽人，但那是因为他们以人类的形态，已经无法在严酷的环境中存活了。\n\n然而，在这个变化过程中，他们失去了身为人类时所获得的重要的东西。
206	5	『疾风怒涛的不死战车』\n阶级：A　种类：对军宝具\n有效范围：2～60　最大捕捉：50人\nTroias Tragoidia。 \n三匹马拉的战车。马分别是海神波塞冬所赐的不死神马两匹、从城市中掠夺来的名马一匹。\n以其神速蹂躏战场。能够以加速的比例造成额外伤害。在最高速度下，宛如飞奔的巨型割草机。\n\n『包围苍天的小世界』\n阶级：A+　种类：结界宝具\n有效范围：0　最大捕捉：1人\nAchilles Cosmos。\n与『炽天覆盖七重圆环』相匹敌的防具系结界宝具。\n据说是锻造之神赫菲斯托斯所打造的盾牌。投影出阿喀琉斯所看见的世界，外围部分由海神用海流卷入旋涡。\n与这面盾牌相对抗，也就相当于和世界对抗，由于附带了封印所有宝具的条件，连对城·对国宝具都能彻底防住。\n在『FGO』中基本不会使用。
208	5	他没有过去。\n纯洁无瑕说着好听，然而本质也只是为了某种目的而生，目的实现后再死去而已。\n表面上看来，在知识层面和精神方面都近似青年期，但他已经是脱离了人类的“完美”的存在。\n\n然而，只要他还活着，那份完美就会逐渐消失。\n\n某位神父憎恨着这个事实。但他自己却期望着如此，舍弃了完美。\n……最终，这份对立为圣杯大战落下了帷幕。
209	5	“绝剱·无穹三段”\n阶级：A　种类：对界宝具\n\nZekken Mukyuusandan。\n汇聚无量、无碍、无边三束光形成无穹。\n释放黑色光辉的魔　神人·冲田总司的必杀之魔剑。\n甚至可以将这世上原本不存在的事物、不应存在的事物强制驱逐、消灭。\n该宝具利用特殊的大太刀“炼狱剑”释放。\n\n大太刀原本是无名的谜之兵器，现在的名称“炼狱”只是随意起的。不知为何，它似乎有着自己的意识，根据使用者的心情不同，性能也会大幅变化。状态良好时，刀身中央会发出赤红色的光芒。它似乎相当喜欢炼狱这个名字。
210	5	“始末剑”\n阶级：无　种类：对人魔剑\n有效范围：1　最大捕捉：1人\n\nShimatsuken。\n人斩以藏，异端之剑。可以将只看过一次的剑术原样再现成自己的剑技的宝具。\n被召唤时只能再现出生前记忆中的剑技，\n召唤后因为见到了新的剑术，其强度预计可能会更上一层楼。\n但是，可以再现的剑技是有限制的。若是对人、或是依靠宝具特性的东西就无法再现出来。
211	5	跟随着龙马的黑发女性，阿龙。\n她本被封印在某座山中，在被龙马救出时对其一见钟情，用报恩做借口主动上门做了龙马的妻子。严格意义上说她并不是龙，而是近似于被称为蛟或大蛇的妖怪一类，尚未化龙的存在。\n龙马在幕末年代成就的伟业背后，或许有着她不少的帮助，也或许并没有她的帮助。\n顺便一提，在龙马临终前，由于她不巧离开了龙马身边而没能帮上他的忙。\n陷入悲痛的她并没有化为龙升天，而是消失在了无人知晓的海底。
212	5	“高歌凯旋之虹弓”\n阶级：A　种类：对军宝具\n有效范围：1~99　最大捕捉：100人\n\nArc de Triomphe de l\\'Étoile。\n冠以与凯旋门的法文名同样名称的炮击宝具。\n人类（灵长类）所拥有的可能性化为炮弹，仿佛彩虹一般翱翔于天空。\n以英灵拿破仑的存在本身为中心，加上炮击过吉萨的狮身人面像这一传闻升华而成的宝具。\n外观上看来是单手持的变形型大炮。\n由于有着“击毁了狮身人面像”这一炮击传说，该宝具拥有对神秘的特攻。
213	5	『破灭的黎明』\n阶级：A　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nGram。\n在拥有太阳属性的同时却以魔剑成名的稀有宝具。\n据说这柄由先祖奥丁赐予的宝剑，是能够在选定王的同时为其带来荣光、嫉妒、破灭与宿命的稀世武器。\n于「FGO」中被作为通常武装选用。\n\n\n『坏劫的天轮』\n阶级：A+　种类：对城宝具\n有效范围：1～50　最大捕捉：1～900人\n\nBölverk Gram。\n将本来是对人宝具的Gram全力解放后的版本。\n并不是齐格鲁德将能量通过剑释放出来，而是将剑的力量引出后投掷出去，形成对城宝具。\n本人的说法是「我觉得投掷出去这种方法会更有效果」。\n被投掷出去的剑将会喷溅着火焰直接击中对方，之后齐格鲁德会以全力将Gram用拳头楔入对方体内。\n\nBölverk是「引发祸乱者」的意思，即为他的先祖奥丁的别名。
214	5	“伪·大神宣言”\n阶级：B　种类：对军宝具\n有效范围：5~40　最大捕捉：20人\n\nGungnir。\n大神奥丁授予的武器。\n大神宣言（Gungnir）的劣化复制版。\n只要在真名解放后投掷，就会发动必中功能。\n在FGO中基本不会进行真名解放，而是作为通常武器使用。\n\n\n“终末幻想·少女降临”\n阶级：B　种类：对军宝具\n有效范围：0~40　最大捕捉：100人\n\nRagnarök Lífþrasir。\n完全同步的众多自己——\n复数位女武神们齐聚一堂，将引导抵达瓦尔哈拉的勇者灵魂的全部机能融为一体，一起将得到的宝具“伪·大神宣言”投掷出去。\n在对目标投掷长枪，造成伤害的同时，在效果范围内会展开一种结界。怜爱一切干净的灵魂，同时，否定错误的生命。\n也会制造出驱散从者或是使魔，以及术式、幻想种、吸血种等等类似魔术或魔力的存在的空间（在抵抗判定中失败的个体会被驱散）。
215	5	『死亡外溢的通往魔境之门』\n阶级：A＋　种类：对军宝具/开战宝具\n有效范围：2～50　最大捕捉：200人\n\nGate of Skye。\n与世界相隔断的魔境、异境，暂时召唤出的通往处于世界外侧的「影之国」的门。\n能见到那并不是由女神丝卡蒂所支配的，而是作为凯尔特的斯卡哈自己原本所支配的领域，作为「影之国」的一部分，「影之城」的姿态。\n\n在效果范围内，只要是她所认同的人，「影之城」会赋予其巨大的幸运和祝福。\n被「影之城」赐爱之人，即使是毫无力量的身体，也能击败强大的敌人。\n如果在普通的圣杯战争中有效使用这个宝具的话，可能会带来惊人的意外效果。\n\n斯卡哈·丝卡蒂完全不能理解自己为何会拥有这个宝具。\n只有“这是北欧诸神所赋予的加护”“使用的是由另一个自己（凯尔特的斯卡哈）而来的异境之力吧”这种程度的认识。
216	5	『丰收的大海啊，与欢喜一同』\n阶级：A+　种类：对军宝具\n有效范围：1～20　最大捕捉：100人\n\nDe Océan d\\'Allégresse。\n基于向大海献上的祷告，召唤幻兽。\n或许是因为与幻兽有所关联，与大海有关的事物基本上都能召唤出来，并能够行使其力量。\n压轴的是蓝鲸。会被其压碎而死。那之中能够叫出来巨齿鲨什么的也不是没有可能。
217	5	“愚神礼赞·一条归桥”\n阶级：B++　种类：对结界宝具/对军宝具\n有效范围：1~40　最大捕捉：100人\n\nEncomium Moriae。\n和风的念法是“Gushinraisan Ichijoumodoribashi”。\n此外，原本的宝具名为“打破斋戒·一条归桥”。\n无视对方的防御效果或是结界之类用力敲击，是Lancer茨木童子的全力攻击。\n在罗生门发生的事……不，是回忆起在一条归桥发生的事而怒火中烧，由此激发血脉，将对方的魔术防御瞬间击碎。据说茨木在生前使用这份力量打破了可恨的渡边纲的斋戒，取回了自己被砍下的手臂。\n\n另外，本作中茨木童子在罗生门不敌渡边纲，在一条归桥也败给了他。连续两次输给了渡边纲。
218	5	『天狗之羽团扇·暴风』\n阶级：B　种类：对军宝具\n有效范围：1~30　最大捕捉：300人\n\nTengunohauchiwa Akarashimakaze。\n鞍马山所开发的众多游戏招式的奥义，\n遮那王游戏谭中的一招。\n这是遮那王修行时那玩乐的记忆的再现，并且，还有其他几种像遮那王流离谭之类的招式。\n这是把师父所用的羽扇偷偷拿来用的游戏的再现。\n当然，主要效果是卷起暴风。不过除此之外，天狗的羽扇还拥有分身、飞行、缩地法、火焰操作、魔力的调用……等多方面的功能。
219	5	『烧却天理·鏖杀龙』\n阶级：A＋　种类：对军宝具\n有效范围：1～5 最大捕捉：50人\n\nVölkermord Feuerdrache。\n\n为了对抗贞德、她用海之力自己就用山之力。\n她用水自己就用火。\n在这种想法中产生的。\n以过去作为龙之魔女的力量召唤出类似于黑龙的东西，到处播撒灾厄。\n技能名是德语的理由已经无需多言。
220	5	『C.C.C.』\n阶级：EX　种类：对界宝具　\n最大捕捉：9~999\nCursed Cutting Crater。\n『CCC』中与Mooncell同步的BB所使出的，挖起世界的诅咒之洞。\n通过扩大自己的影子的方式将周围转换成虚数空间，\n使世界与存在于那里的生命体降级为低次元存在，自己则作为支配者对此狂气空间随意处置。\n平常的BB的宝具是『穿着护士服可爱地、开心地、残忍地』贬低敌人的手术，\n这里则会变成能力全开的BB进行的运算。\n作为元祖恐怖系的女主角\n以『规模好大、好恐怖、真的糟了』\n为宗旨的最终BOSS一击。\n变为巨大的高次元存在的BB会轻而易举地挖起地面，侵蚀世界。就好像用勺子舀起布丁那样。\n\n……据说只有在第三形态，她所安装的第二个神性将会显现出原型……？
221	5	『心爱的夏日幽会』\n阶级：A+　种类：对人宝具\n有效范围：1~40　最大捕捉：1人\n\nOneshot My Love。\n一夏的恋情，一张纪念照（Oneshot）。\n原本梅芙是拥有『操纵生前得到的英雄们的宝具』这一特征的Rider，但换上泳装的梅芙改变了灵基，获得了新的宝具。\n也就是说，这是女王梅芙利用自身拥有的强力武器之一『魅力』，获得的可怕的对人必杀宝具。\n「哎呀，你好啊」，被哼着歌散步的她搭话，对象会立刻被她诱惑，陷入夏日的爱河。绝对会陷入爱河。\n之后，被她尽情玩弄，只能消失在夏日的天际——
222	5	谜之女主角X，简单来说就是喜剧主角。\n继承了阿尔托莉雅的认真成分的X\n无论做什么事都追求最短·最快·最简单。\n与其充沛的精力、礼貌的言行举止相反，其本人十分好强（由于并没有自觉，所以不会看场合的问题相当严重）。她有着挑战一切，在获胜之前决不放弃的麻烦性格。\n不过因其善人的本质『最终还是为了周围而工作』，最后还是漂亮地绕了一大圈。\n\n但是。\n从者宇宙由于Extra职阶的泛滥，英雄与反派的比例崩溃，对此也毫无解决办法。当宇宙的天平向反派倾斜时，X重新决定了信条。\n具体来说，就是节目进入了新的一季。\n为没有工作而烦恼的X前往秘密组织·银河警察就职，并在偶然间获得了沉睡于组织中枢宇宙最古老的手工品·伦戈米尼亚德。她的才能受到认可，从此作为宇宙防人（Galaxian）而大大活跃。\n\n　　　　　―CG第1部　故事节选―
223	5	如同操纵命运般的魔剑Móralltach，\n是凯尔特的大海与异界之神玛纳诺赐予的。玛纳诺正是将宝具Fragarach等赠与太阳神鲁格的神明，他拥有众多宝具，并将宝具赠与他人。\n\n在真名解放时，会使用因作为Saber职阶现界而显露的超越人类智慧的超跳跃，发起下坠攻击。此时，Móralltach便仿佛传说中的『玛纳诺神之脚』一般，化为三支利刃粉碎敌人。
224	5	『咆哮吧吾之友、吾之力量』\n阶级：EX　种类：精灵宝具\n有效范围：1~20　最大捕捉：1\n\nOputateshike Okimunpe[2]。\n这是阿伊努的少女英雄西托奈的战友猎犬，变成的一种使魔。\n借由芙蕾雅与娄希的神代魔术进行多重强化，其外表已非猎犬而更像熊，变成近似于精灵的存在。\n作为是女神的使魔，还是勇猛的巨大身躯更为相称，\n属性如果是魔兽或是幻兽就不太相配了——似乎是因为芙蕾雅接受了娄希的这一主张，赞成率变为三分之二，猎犬因此得以熊化。\n\n此为随时发动型宝具。\n在真名解放时，会展开「猎犬（熊）的猛冲」「伴随冰之魔力射出的一箭」「西托奈的斩击」这样如同雪崩一般的连续攻击。\n因西托奈拥有的性质，会发挥出对龙的特殊效果。
225	5	『护法少女·九头龙鏖杀』\n阶级：C++　种类：对人宝具\n有效范围：0~10　最大捕捉：1人\n\nGohoushoujyo Kuzuryuuousatsu。\n身为鬼种所拥有的强健的身躯和运动性能、与生俱来的温柔和残虐性。将这些糅合起来，释放出变化无常的乱打。\n具体来说，就是通过会错看成瞬间移动的超高速移动展开拳打脚踢。\n虽说射程距离比较短，但几乎是不可能回避的。甚至可以打破神性的加护，并施加殴打。\n大部分对手会死在这里。\n在尽情殴打之后，大葫芦中也会喷射出与宝具『千紫万红·神便鬼毒』相同的毒酒——但这对于酒吞来说是「顺便」「趁势」而为，其攻击的核心终归还是乱打。
226	5	?
227	5	『兰陵王入阵曲』\n阶级：C+ 类型：对军宝具(自阵)\n有效范围：1~5 最大捕捉：范围内全部\n\n勇猛无匹覆有假面，\n音容兼美的陵王是也。\n这是为了赞美戴着假面的兰陵王的奋战，由士兵们谱写的曲子。\n此曲作为雅乐，在唐代也传到了日本，至今仍有和着这首曲的舞蹈。\n称赞其勇猛和美貌的歌使我方士气提高，令敌人畏惧。\n再加上被称作『音容兼美』的兰陵王自身，给敌人带来了极为沉重的压力和即便如此也无法移开视线的美之恐怖。
228	5	『崇祯帝四诗歌』\n阶级：B　种类：对人宝具（自身）\n有效范围：0　最大捕捉：1人\n\n无欲忠义之诗。\n这是当时的皇帝崇祯帝\n赠予秦良玉的四首诗歌。\n被召唤至都城的秦良玉，打算负起征讨盗贼失败的责任。\n她将个人财产都分给部下并做好了觉悟，\n却得到了恩赐和皇帝亲自作的四首赞美她的诗。
229	5	?
230	5	?
231	5	『伪·军神五兵』\n阶级：A　种类：对人/对军宝具\n有效范围：1~40　最大捕捉：50人\n\nImitation God Force。\n他并没有身为英灵的吕布所持有的宝具『军神五兵』，即所谓的方天画戟。\n他释放的宝具是……强烈意识着『军神五兵』射击模式的大射击。\n虽说如此，从强弓中射出的竟然并不是大口径的魔力光炮之类，而是「巨大的枪」。\n\n在几经寻找了有迫力的大支箭矢后得出的结论，\n「果然还是把枪射出去比较快啊……」\n也许他就是这样判断的。
232	5	『秀丽公主的戒指』\n阶级：C　种类：对人宝具/结界宝具\n有效范围：1~10　最大捕捉：30人\n\nAngélique Catai。\n十二勇士中的罗兰和布拉达曼特的哥哥都为之倾倒的异国美人安洁莉卡所拥有的魔术戒指。拥有可以无效化一切魔术的力量。\n历经命运坎坷才拿到这枚戒指的布拉达曼特在从邪恶的魔术师阿特兰特手中救出恋人鲁杰罗的过程中，有效的利用了这枚戒指的力量。\n\n本身只有C级程度的对魔力能提升到A级，还有身怀魔术解除的技能都是出于这件宝物的效果。\n如果解放真名的话，己方全体对魔术的防御力都能大大提高，然而在这里基本上是不可能解放的了。以前它还有“隐藏身形”的力量，这个也基本不会用。\n这次现界的时候，她将戒指的魔力灌入了右手的枪中，将对魔术的战斗力提上了一个台阶。
233	5	『爱，在圣夜里传递给孩子们』\n阶级：A　种类：对人宝具\n有效范围：50　最大捕捉：100人\n\nYucatán Regalo de Navidad。\n「那是什么？」「是星星！」「是殖民地！」\n「不对，是圣诞礼物！」\n来自化为圣诞老人的魁札尔·科亚特尔，用尽全力的礼物奉送。\nRegalo de Navidad在西班牙语中是『圣诞礼物』的意思。\n别名，尤卡坦式礼物猛击。\n\n或许是伴着满溢着开放感的桑巴旋律释放的原因，落下来的是尺寸无法想象的\n巨大礼物。\n那份冲击，让人联想到古代时坠落在尤卡坦半岛的巨大陨石——这也被视作她神性的起源。\n当然，这份来自她的礼物中装的并不是能让恐龙灭绝之类的东西，而是塞满了能让孩子们高兴的东西。\n就算是在摔角场上将反派（Rudo）炸裂，那也是为了让观战的孩子们开心。归根结底，这个宝具仅仅是为了让孩子们绽放笑容而存在的。
234	5	○星之笼（大）：EX\n阎雀裁缝术，奥义其一。报应的藤箱。\n从贤者之衣中取出骰子大小的两个藤箱，并打开它们。\n开封的藤箱会实体化成直径一米的大藤箱和直径30厘米的小藤箱。\n酬谢的藤箱会对敌方产生各种各样的厄运……负面效果，但在造成效果的同时会少量回复敌人的HP。\n不论与对手有何种因缘，也不应该失去作为礼物的本质。红阎魔是这么认为的。\n\n○星之笼（小）：EX\n阎雀裁缝术，奥义其二。报答的藤箱。\n送给诚实的爷爷的雀之祝福。\n对己方产生各种各样的好运效果，还能够回复HP。这是什么啊好可怕。\n然后不知道为什么连敌方的HP也回复了。\n不论自军有着何等有利的展开，也要像个礼物的样子。红阎魔是这样认为的。
235	5	『无二打』\n阶级：无　种类：对人宝具\n有效范围：1　最大捕捉：1人\n\nNino Uchi Irazu。\n是和『燕返』以及『神枪无二打』同样，\n由修炼到极致的武技升华而来的宝具。\n其名为猛虎硬爬山，\n是被称作绝招的秘传套路中的一种。
236	5	『照耀星天的地之朔月』\n阶级：EX　种类：对人~对界宝具\n\n对星许愿。\n通过短时间操纵能无差别实现人的愿望这一神稚儿的性质，有限制地实现愿望。\n由于该宝具是仅以御主的愿望\n为焦点才形成的，\n因此，信赖关系重于一切。\n\n她的哥哥曾说过，隐藏其中的微小的心意，\n并非对着月亮，而是对星星许下愿望。\n地面的月亮汇聚起愿望并让其闪耀光辉，\n向着虚空的那一方投射出光芒。
237	5	『源氏物语·葵·物怪』\n阶级：C\n种类：诗歌宝具\n有效范围：1～20\n最大捕捉：50人\n\nGenjimonogatari Aoi Mononoke。\n「丧色衣淡因遵制，\n 袖泪成渊痛哭多。」\n真名解放时咏唱的和歌，会以某种诅咒的形式发动，为对象招来毁灭。\n给予对象伤害并赋予弱化效果。\n\n记载于『源氏物语』第九帖『葵』的和歌。\n妻子葵之上产下儿子夕雾后身亡时，源氏（光源氏）所唱的后悔的和歌。葵之上的死因，是光源氏的情人六条御息所的怨恨所生之物，换言之也是一种咒杀。\n——通过咏唱附有怨恨和咒杀的悲伤之歌，Caster紫式部为对象的命运悲叹。\n\n另外，与葵之上身亡相关的一系列传闻成为了能剧剧目《葵上》的原典。
238	5	○巨大规模：C\n以技能『自我改造』为基础，诞生于『成长愿望』的id_es技能。\n可以无上限地扩大规模。\n等级达到上限后，令自身的规格巨大化，设定更高一层等级上限。将这个流程无限循环，也就是无限增殖。\n总之是破坏星星的宇宙级别的灾害，但由于越是巨大化，她的智力、机能的复杂化便会逐渐消失，普通的知性体无法承受此机能，因此会导致自我崩坏。\n曾经是规格以外的等级EX，但迦勒底式的召唤无法再现，所以等级有所下降。\n从使用的回合开始成长，但由此而增大的数值上限在使用『幼儿退化』之前是永存的。\n\n○幼儿退化：C\n被BB施加的枷锁。是抑制Kingprotea无限成长的安全装置。\n回归自己的等级，将增大的自己重置的技能。\n使用该技能时，从『巨大规模』中获得的成长便会归零。相对的，会根据阶段获得不同数量的NP。\n\n○领域粉碎：A\n完全运转那份巨大灵基使出的攻击，仅凭单纯的挥舞，就会将并非『敌方个体』而是『领域』作为攻击对象。\n操控空间的术式也会用拳头粉碎，这正是『用力量解决一切』的技能。\n不过，觉醒了『心』的Protea封印了这个技能。
1	5	通过经历了七个特异点，克服了无数战斗， 她已经完全是独立的人， 完全成长为一位不再借用他人力量的从者。  尚不知道真名的她使用的假想宝具， 人理之础（Lord Chaldeas）。 这是她“看到人类未来”这由衷愿望成形后的产物。  ……围绕人理烧却的战斗即将结束。 她的旅途将画上怎样的句号。 星之兽静静地见证着这雪花般的光景。
11	5	投影魔术：C（在一定条件下A+）\n想象道具并复制数分钟的魔术。\nArcher爱用的双剑『干将·莫邪』，\n也是用投影魔术制作而成的。\n只有当投影对象是『剑』的分类时，阶级会大幅提升。\n基于『可无数次准备赝品』的特性，\n卫宫可将投影的宝具破坏，\n并通过将其爆炸来瞬间提升威力。
97	5	『我将根绝一切毒物，一切害物』\n阶级：C　种类：对军宝具\n有效范围：0～40　最大捕捉：100人\nNightingale Pledge。\n由驰骋于战场、直面死亡的南丁格尔的精神升华，\n再加上她本人的各种轶事，以及近代才成立的\n「帮助伤病员的白衣天使」这一概念结合而成。\n能令效果范围内所有毒性与攻击性无效化。\n强制产生绝对安全圈。还有回复效果。
\.


--
-- Data for Name: servent_full_pic; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_full_pic (servent_id, full_pic_id, servent_picture) FROM stdin;
2	1	https://fgo.wiki/images/thumb/0/0b/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85-%E5%8D%A1%E9%9D%A21.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85-%E5%8D%A1%E9%9D%A21.png
3	1	https://fgo.wiki/images/thumb/e/ec/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%C2%B7Alter-%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%C2%B7Alter-%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
4	1	https://fgo.wiki/images/thumb/b/b9/Saberlily%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png/285px-Saberlily%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png
5	1	https://fgo.wiki/images/thumb/3/3e/%E5%B0%BC%E7%A6%84%E7%81%B5%E5%9F%BA%E2%85%A0.png/285px-%E5%B0%BC%E7%A6%84%E7%81%B5%E5%9F%BA%E2%85%A0.png
6	1	https://fgo.wiki/images/thumb/3/3c/%E9%BD%90%E6%A0%BC%E9%A3%9E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E9%BD%90%E6%A0%BC%E9%A3%9E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
7	1	https://fgo.wiki/images/thumb/2/2f/%E6%81%BA%E6%92%92%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png/285px-%E6%81%BA%E6%92%92%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png
8	1	https://fgo.wiki/images/thumb/0/04/008A.png/285px-008A.png
9	1	https://fgo.wiki/images/thumb/7/7b/%E5%90%89%E5%B0%94%C2%B7%E5%BE%B7%C2%B7%E9%9B%B7%28Saber%29%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png/285px-%E5%90%89%E5%B0%94%C2%B7%E5%BE%B7%C2%B7%E9%9B%B7%28Saber%29%E7%81%B5%E5%9F%BA%E7%AA%81%E7%A0%B41.png
10	1	https://fgo.wiki/images/thumb/8/8a/%E8%BF%AA%E6%98%82%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E8%BF%AA%E6%98%82%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
12	1	https://fgo.wiki/images/thumb/3/3d/%E9%97%AA%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.jpg/285px-%E9%97%AA%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.jpg
13	1	https://fgo.wiki/images/thumb/b/bf/%E7%BD%97%E5%AE%BE%E6%B1%89%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E7%BD%97%E5%AE%BE%E6%B1%89%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
14	1	https://fgo.wiki/images/thumb/1/10/%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92-%E5%8D%A1%E9%9D%A2-1.png/285px-%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92-%E5%8D%A1%E9%9D%A2-1.png
15	1	https://fgo.wiki/images/thumb/8/8f/%E5%B0%A4%E7%91%9E%E7%88%B1%E4%B8%BD.png/285px-%E5%B0%A4%E7%91%9E%E7%88%B1%E4%B8%BD.png
16	1	https://fgo.wiki/images/thumb/9/97/%E5%A4%A7%E8%8B%B1%E9%9B%841.png/285px-%E5%A4%A7%E8%8B%B1%E9%9B%841.png
17	1	https://fgo.wiki/images/thumb/8/81/%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97-%E5%8D%A1%E9%9D%A21.png/285px-%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97-%E5%8D%A1%E9%9D%A21.png
18	1	https://fgo.wiki/images/thumb/d/d1/%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BDI.png/285px-%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BDI.png
19	1	https://fgo.wiki/images/thumb/5/59/%E5%92%8C%E5%B0%9A1.png/285px-%E5%92%8C%E5%B0%9A1.png
20	1	https://fgo.wiki/images/thumb/9/97/%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%EF%BC%88Prototype%EF%BC%89-%E5%8D%A1%E9%9D%A21.png/285px-%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%EF%BC%88Prototype%EF%BC%89-%E5%8D%A1%E9%9D%A21.png
21	1	https://fgo.wiki/images/thumb/2/24/%E7%82%8E%E5%A4%B41.png/285px-%E7%82%8E%E5%A4%B41.png
22	1	https://fgo.wiki/images/thumb/f/f9/%E7%BD%97%E7%A9%86%E8%B7%AF%E6%96%AF1.png/285px-%E7%BD%97%E7%A9%86%E8%B7%AF%E6%96%AF1.png
23	1	https://fgo.wiki/images/thumb/9/99/%E7%BE%8E%E6%9D%9C%E8%8E%8E-%E5%8D%A1%E9%9D%A21.png/285px-%E7%BE%8E%E6%9D%9C%E8%8E%8E-%E5%8D%A1%E9%9D%A21.png
24	1	https://fgo.wiki/images/thumb/6/60/%E4%B9%94%E8%80%81%E5%B8%881.png/285px-%E4%B9%94%E8%80%81%E5%B8%881.png
25	1	https://fgo.wiki/images/thumb/7/77/%E9%BB%91%E8%83%A1%E5%AD%901.png/285px-%E9%BB%91%E8%83%A1%E5%AD%901.png
26	1	https://fgo.wiki/images/thumb/c/cb/%E5%B8%83%E7%8B%84%E5%8D%A1%E5%88%9D%E5%A7%8B%E9%98%B6%E6%AE%B5.png/285px-%E5%B8%83%E7%8B%84%E5%8D%A1%E5%88%9D%E5%A7%8B%E9%98%B6%E6%AE%B5.png
27	1	https://fgo.wiki/images/thumb/c/c9/%E7%89%9B%E8%8B%A5%E4%B8%B81.png/285px-%E7%89%9B%E8%8B%A5%E4%B8%B81.png
28	1	https://fgo.wiki/images/thumb/e/ec/%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A71.png/285px-%E4%BA%9A%E5%8E%86%E5%B1%B1%E5%A4%A71.png
29	1	https://fgo.wiki/images/thumb/e/e5/%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9-%E5%8D%A1%E9%9D%A2-1.png/285px-%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9-%E5%8D%A1%E9%9D%A2-1.png
30	1	https://fgo.wiki/images/thumb/8/8b/%E7%8E%9B%E5%B0%94%E8%BE%BE%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E7%8E%9B%E5%B0%94%E8%BE%BE%E5%8D%A1%E9%9D%A2%E2%85%A0.png
31	1	https://fgo.wiki/images/thumb/b/be/%E7%BE%8E%E7%8B%84%E4%BA%9A1.png/285px-%E7%BE%8E%E7%8B%84%E4%BA%9A1.png
32	1	https://fgo.wiki/images/thumb/1/12/%E5%90%89%E5%B0%94%C2%B7%E5%BE%B7%C2%B7%E9%9B%B7%28Caster%291.png/285px-%E5%90%89%E5%B0%94%C2%B7%E5%BE%B7%C2%B7%E9%9B%B7%28Caster%291.png
33	1	https://fgo.wiki/images/thumb/f/f3/%E5%AE%89%E5%BE%92%E7%94%9F1.png/285px-%E5%AE%89%E5%BE%92%E7%94%9F1.png
34	1	https://fgo.wiki/images/thumb/5/58/%E8%8E%8E%E6%AF%941.png/285px-%E8%8E%8E%E6%AF%941.png
35	1	https://fgo.wiki/images/thumb/4/4d/%E6%A2%85%E8%8F%B2%E5%8D%A1%E9%9D%A21.png/285px-%E6%A2%85%E8%8F%B2%E5%8D%A1%E9%9D%A21.png
36	1	https://fgo.wiki/images/thumb/d/d9/%E8%8E%AB%E6%89%8E%E7%89%B91.png/285px-%E8%8E%AB%E6%89%8E%E7%89%B91.png
37	1	https://fgo.wiki/images/thumb/5/5f/%E8%AF%B8%E8%91%9B%E5%AD%94%E6%98%8E%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E8%AF%B8%E8%91%9B%E5%AD%94%E6%98%8E%E5%8D%A1%E9%9D%A2%E2%85%A0.png
38	1	https://fgo.wiki/images/thumb/6/66/%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%28Caster%29-%E5%8D%A1%E9%9D%A21.png/285px-%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%28Caster%29-%E5%8D%A1%E9%9D%A21.png
39	1	https://fgo.wiki/images/thumb/b/b0/%E4%BB%8E%E8%80%85039-1.png/285px-%E4%BB%8E%E8%80%85039-1.png
40	1	https://fgo.wiki/images/thumb/9/92/%E5%92%92%E8%85%951.png/285px-%E5%92%92%E8%85%951.png
41	1	https://fgo.wiki/images/thumb/0/01/%E5%A4%A7%E5%A7%90%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E5%A4%A7%E5%A7%90%C2%B7%E5%88%9D%E5%A7%8B.png
42	1	https://fgo.wiki/images/thumb/c/c7/%E8%8D%86%E8%BD%B21.png/285px-%E8%8D%86%E8%BD%B21.png
43	1	https://fgo.wiki/images/thumb/c/c1/%E6%A1%91%E6%9D%BE1.png/285px-%E6%A1%91%E6%9D%BE1.png
44	1	https://fgo.wiki/images/thumb/8/8e/%E5%89%A7%E9%99%A2%E9%AD%85%E5%BD%B11.png/285px-%E5%89%A7%E9%99%A2%E9%AD%85%E5%BD%B11.png
45	1	https://fgo.wiki/images/thumb/4/45/%E8%88%9E%E5%A8%981.png/285px-%E8%88%9E%E5%A8%981.png
46	1	https://fgo.wiki/images/thumb/c/c9/%E5%8D%A1%E7%B1%B3%E6%8B%891.png/285px-%E5%8D%A1%E7%B1%B3%E6%8B%891.png
47	1	https://fgo.wiki/images/thumb/f/f2/Herc1.png/285px-Herc1.png
48	1	https://fgo.wiki/images/thumb/7/7e/%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%85%B0%E6%96%AF%E6%B4%9B%E7%89%B9%E5%8D%A1%E9%9D%A2%E2%85%A0.png
49	1	https://fgo.wiki/images/thumb/0/00/049A.png/285px-049A.png
50	1	https://fgo.wiki/images/thumb/3/34/%E7%88%B1%E9%85%B11.png/285px-%E7%88%B1%E9%85%B11.png
51	1	https://fgo.wiki/images/thumb/f/f8/%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Berserker%EF%BC%89%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Berserker%EF%BC%89%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
52	1	https://fgo.wiki/images/thumb/2/27/%E5%A4%A7%E5%85%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E5%A4%A7%E5%85%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
53	1	https://fgo.wiki/images/thumb/3/34/%E5%B0%8F%E7%89%9B1.png/285px-%E5%B0%8F%E7%89%9B1.png
54	1	https://fgo.wiki/images/thumb/3/36/%E9%AC%BC%E8%88%851.png/285px-%E9%AC%BC%E8%88%851.png
55	1	https://fgo.wiki/images/thumb/d/d6/%E5%A4%A7%E6%B5%81%E5%A3%AB%E4%B8%89%E4%B8%961.png/285px-%E5%A4%A7%E6%B5%81%E5%A3%AB%E4%B8%89%E4%B8%961.png
56	1	https://fgo.wiki/images/thumb/8/85/%E6%B8%85%E5%A7%AC1.png/285px-%E6%B8%85%E5%A7%AC1.png
57	1	https://fgo.wiki/images/thumb/e/eb/%E8%A1%80%E6%96%A71.png/285px-%E8%A1%80%E6%96%A71.png
58	1	https://fgo.wiki/images/thumb/2/21/%E7%8E%89%E8%97%BB%E7%8C%AB%E7%AB%8B%E7%BB%981.png/285px-%E7%8E%89%E8%97%BB%E7%8C%AB%E7%AB%8B%E7%BB%981.png
59	1	https://fgo.wiki/images/thumb/6/6b/%E8%B4%9E%E5%BE%B7-%E5%8D%A1%E9%9D%A21.png/285px-%E8%B4%9E%E5%BE%B7-%E5%8D%A1%E9%9D%A21.png
60	1	https://fgo.wiki/images/thumb/3/36/Orion1.png/285px-Orion1.png
61	1	https://fgo.wiki/images/thumb/e/ef/%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%C2%B7%E5%B7%B4%E6%89%98%E9%87%8C%28%E4%B8%87%E5%9C%A3%E8%8A%82%291.png/285px-%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%C2%B7%E5%B7%B4%E6%89%98%E9%87%8C%28%E4%B8%87%E5%9C%A3%E8%8A%82%291.png
62	1	https://fgo.wiki/images/thumb/b/bc/%E7%8E%89%E8%97%BB%E5%89%8D%E7%AB%8B%E7%BB%981.png/285px-%E7%8E%89%E8%97%BB%E5%89%8D%E7%AB%8B%E7%BB%981.png
63	1	https://fgo.wiki/images/thumb/2/23/%E5%A4%A7%E5%8D%AB%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B41.png/285px-%E5%A4%A7%E5%8D%AB%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B41.png
64	1	https://fgo.wiki/images/thumb/b/b8/%E8%B5%AB%E5%85%8B%E6%89%98%E8%80%B31.png/285px-%E8%B5%AB%E5%85%8B%E6%89%98%E8%80%B31.png
65	1	https://fgo.wiki/images/thumb/c/c1/%E5%BE%B7%E9%9B%B7%E5%85%8B%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%BE%B7%E9%9B%B7%E5%85%8B%E5%8D%A1%E9%9D%A2%E2%85%A0.png
66	1	https://fgo.wiki/images/thumb/c/ce/%E5%AE%89%E5%A6%AE%C2%B7%E4%BC%AF%E5%A6%AE%EF%BC%86%E7%8E%9B%E8%8E%89%C2%B7%E7%91%9E%E5%BE%B71.png/285px-%E5%AE%89%E5%A6%AE%C2%B7%E4%BC%AF%E5%A6%AE%EF%BC%86%E7%8E%9B%E8%8E%89%C2%B7%E7%91%9E%E5%BE%B71.png
67	1	https://fgo.wiki/images/thumb/6/6f/%E7%BE%8E%E7%8B%84%E4%BA%9Alily1.png/285px-%E7%BE%8E%E7%8B%84%E4%BA%9Alily1.png
68	1	https://fgo.wiki/images/thumb/7/70/%E5%86%B2%E7%94%B0%E6%80%BB%E5%8F%B8-%E5%8D%A1%E9%9D%A2-1.png/285px-%E5%86%B2%E7%94%B0%E6%80%BB%E5%8F%B8-%E5%8D%A1%E9%9D%A2-1.png
69	1	https://fgo.wiki/images/thumb/6/62/%E4%BF%A1%E9%95%BF%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E4%BF%A1%E9%95%BF%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
70	1	https://fgo.wiki/images/thumb/6/64/%E6%96%AF%E5%8D%A1%E5%93%88%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E6%96%AF%E5%8D%A1%E5%93%88%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
71	1	https://fgo.wiki/images/thumb/2/2c/%E8%BF%AA%E5%B0%94%E5%A7%86%E5%BE%B7%C2%B7%E5%A5%A5%E8%BF%AA%E9%82%A31.png/285px-%E8%BF%AA%E5%B0%94%E5%A7%86%E5%BE%B7%C2%B7%E5%A5%A5%E8%BF%AA%E9%82%A31.png
72	1	https://fgo.wiki/images/thumb/7/7e/%E5%BC%97%E6%A0%BC%E6%96%AF%C2%B7%E9%A9%AC%E5%85%8B%C2%B7%E7%BD%97%E4%BC%8A1.png/285px-%E5%BC%97%E6%A0%BC%E6%96%AF%C2%B7%E9%A9%AC%E5%85%8B%C2%B7%E7%BD%97%E4%BC%8A1.png
73	1	https://fgo.wiki/images/thumb/4/4d/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%28%E5%9C%A3%E8%AF%9EAlter%291.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%28%E5%9C%A3%E8%AF%9EAlter%291.png
74	1	https://fgo.wiki/images/thumb/0/02/%E7%AB%A5%E8%B0%A3%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E7%AB%A5%E8%B0%A3%C2%B7%E5%88%9D%E5%A7%8B.png
75	1	https://fgo.wiki/images/thumb/0/0d/%E5%BC%80%E8%86%9B%E6%89%8B%E6%9D%B0%E5%85%8B%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E5%BC%80%E8%86%9B%E6%89%8B%E6%9D%B0%E5%85%8B%C2%B7%E5%88%9D%E5%A7%8B.png
76	1	https://fgo.wiki/images/thumb/e/e2/%E5%B0%8F%E8%8E%AB1.png/285px-%E5%B0%8F%E8%8E%AB1.png
77	1	https://fgo.wiki/images/thumb/a/aa/%E7%89%B9%E6%96%AF%E6%8B%891%E9%98%B6.png/285px-%E7%89%B9%E6%96%AF%E6%8B%891%E9%98%B6.png
78	1	https://fgo.wiki/images/thumb/2/2b/%E9%BB%91%E6%9E%AA%E5%91%86%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E9%BB%91%E6%9E%AA%E5%91%86%E5%8D%A1%E9%9D%A2%E2%85%A0.png
79	1	https://fgo.wiki/images/thumb/c/c6/%E8%B1%86%E7%88%B8-%E5%8D%A1%E9%9D%A21.png/285px-%E8%B1%86%E7%88%B8-%E5%8D%A1%E9%9D%A21.png
80	1	https://fgo.wiki/images/thumb/e/eb/%E6%9F%A5%E5%B0%94%E6%96%AF%C2%B7%E5%B7%B4%E8%B4%9D%E5%A5%871.png/285px-%E6%9F%A5%E5%B0%94%E6%96%AF%C2%B7%E5%B7%B4%E8%B4%9D%E5%A5%871.png
81	1	https://fgo.wiki/images/thumb/c/c7/%E6%B5%B7%E5%BE%B7%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E6%B5%B7%E5%BE%B7%E5%8D%A1%E9%9D%A2%E2%85%A0.png
82	1	https://fgo.wiki/images/thumb/8/87/%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6%E5%8D%A1%E9%9D%A2%E2%85%A0.png
84	1	https://fgo.wiki/images/thumb/9/9a/%E9%98%BF%E5%91%A8%E9%82%A3%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E9%98%BF%E5%91%A8%E9%82%A3%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
85	1	https://fgo.wiki/images/thumb/d/d6/%E5%B0%8F%E5%A4%AA%E9%98%B3%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E5%B0%8F%E5%A4%AA%E9%98%B3%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
86	1	https://fgo.wiki/images/thumb/f/f0/%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X-%E5%8D%A1%E9%9D%A21.png/285px-%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X-%E5%8D%A1%E9%9D%A21.png
87	1	https://fgo.wiki/images/thumb/8/89/%E8%8A%AC%E6%81%A91.png/285px-%E8%8A%AC%E6%81%A91.png
88	1	https://fgo.wiki/images/thumb/9/95/%E5%B8%83%E4%BC%A6%E5%B8%8C%E5%B0%94%E5%BE%B7%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E5%B8%83%E4%BC%A6%E5%B8%8C%E5%B0%94%E5%BE%B7%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
89	1	https://fgo.wiki/images/thumb/4/43/%E8%B4%9D%E5%A5%A5%E6%AD%A6%E5%A4%AB1.png/285px-%E8%B4%9D%E5%A5%A5%E6%AD%A6%E5%A4%AB1.png
90	1	https://fgo.wiki/images/thumb/7/74/%E8%8A%B1%E5%AB%81%E7%81%B5%E5%9F%BA1.png/285px-%E8%8A%B1%E5%AB%81%E7%81%B5%E5%9F%BA1.png
91	1	https://fgo.wiki/images/thumb/0/0b/215-%E5%8D%A1%E9%9D%A2-1.png/285px-215-%E5%8D%A1%E9%9D%A2-1.png
92	1	https://fgo.wiki/images/thumb/a/a7/%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Assassin%29-%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Assassin%29-%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
93	1	https://fgo.wiki/images/thumb/2/24/%E5%A4%A9%E8%8D%89%E5%9B%9B%E9%83%8E-%E5%8D%A1%E9%9D%A21.png/285px-%E5%A4%A9%E8%8D%89%E5%9B%9B%E9%83%8E-%E5%8D%A1%E9%9D%A21.png
94	1	https://fgo.wiki/images/thumb/8/89/%E9%98%BF%E6%96%AF%E6%89%98%E5%B0%94%E7%A6%8F%E7%81%B5%E5%9F%BA%E2%85%A0.png/285px-%E9%98%BF%E6%96%AF%E6%89%98%E5%B0%94%E7%A6%8F%E7%81%B5%E5%9F%BA%E2%85%A0.png
95	1	https://fgo.wiki/images/thumb/0/0b/%E5%B9%BC%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E5%B9%BC%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
96	1	https://fgo.wiki/images/thumb/5/5f/%E7%88%B1%E5%BE%B7%E8%92%99%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E7%88%B1%E5%BE%B7%E8%92%99%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
98	1	https://fgo.wiki/images/thumb/d/d1/%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%EF%BC%88Alter%29-%E5%8D%A1%E9%9D%A21.png/285px-%E5%BA%93%C2%B7%E4%B8%98%E6%9E%97%EF%BC%88Alter%29-%E5%8D%A1%E9%9D%A21.png
99	1	https://fgo.wiki/images/thumb/a/ae/099A.png/285px-099A.png
100	1	https://fgo.wiki/images/thumb/c/c6/%E6%B5%B7%E4%BC%A6%E5%A8%9C%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E6%B5%B7%E4%BC%A6%E5%A8%9C%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
101	1	https://fgo.wiki/images/thumb/3/34/%E7%BD%97%E6%91%A9%E5%8D%A1%E9%9D%A21.png/285px-%E7%BD%97%E6%91%A9%E5%8D%A1%E9%9D%A21.png
102	1	https://fgo.wiki/images/thumb/9/9d/%E6%9D%8E%E5%A4%A7%E5%B8%88%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E6%9D%8E%E5%A4%A7%E5%B8%88%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
103	1	https://fgo.wiki/images/thumb/d/d9/%E7%88%B1%E8%BF%AA%E7%94%9F%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E7%88%B1%E8%BF%AA%E7%94%9F%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
104	1	https://fgo.wiki/images/thumb/c/c1/%E6%9D%B0%E7%BD%97%E5%B0%BC%E8%8E%AB1.png/285px-%E6%9D%B0%E7%BD%97%E5%B0%BC%E8%8E%AB1.png
105	1	https://fgo.wiki/images/thumb/f/f8/%E6%AF%94%E5%88%A9%E5%B0%8F%E5%AD%901.png/285px-%E6%AF%94%E5%88%A9%E5%B0%8F%E5%AD%901.png
106	1	https://fgo.wiki/images/thumb/d/d9/%E9%BB%91%E8%B4%9E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E9%BB%91%E8%B4%9E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
107	1	https://fgo.wiki/images/thumb/3/32/%E5%B0%8F%E5%AE%89%EF%BC%8C%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E5%B0%8F%E5%AE%89%EF%BC%8C%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
108	1	https://fgo.wiki/images/thumb/b/bb/%E4%BC%8A%E6%96%AF%E5%9D%8E%E8%BE%BE%E5%B0%94%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E4%BC%8A%E6%96%AF%E5%9D%8E%E8%BE%BE%E5%B0%94%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
109	1	https://fgo.wiki/images/thumb/7/71/%E5%8D%AB%E5%AE%AB%E5%88%87%E5%97%A3%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%8D%AB%E5%AE%AB%E5%88%87%E5%97%A3%E5%8D%A1%E9%9D%A2%E2%85%A0.png
110	1	https://fgo.wiki/images/thumb/d/d9/110A.png/285px-110A.png
111	1	https://fgo.wiki/images/thumb/5/51/%E7%88%B1%E4%B8%BD%E4%B8%9D%E8%8F%B2%E5%B0%94%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E7%88%B1%E4%B8%BD%E4%B8%9D%E8%8F%B2%E5%B0%94%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
112	1	https://fgo.wiki/images/thumb/d/db/%E9%85%92%E5%90%9E%E5%88%9D%E5%A7%8B.png/285px-%E9%85%92%E5%90%9E%E5%88%9D%E5%A7%8B.png
113	1	https://fgo.wiki/images/thumb/7/7f/%E7%8E%84%E5%A5%98%E4%B8%89%E8%97%8F1.png/285px-%E7%8E%84%E5%A5%98%E4%B8%89%E8%97%8F1.png
114	1	https://fgo.wiki/images/thumb/3/36/%E6%BA%90%E8%B5%96%E5%85%89%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E6%BA%90%E8%B5%96%E5%85%89%E5%8D%A1%E9%9D%A2%E2%85%A0.png
115	1	https://fgo.wiki/images/thumb/0/08/%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Rider%EF%BC%89%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81~%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4III.png/285px-%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Rider%EF%BC%89%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81~%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4III.png
116	1	https://fgo.wiki/images/thumb/6/6f/%E8%8C%A8%E6%9C%A8%E7%AB%A5%E5%AD%90-%E5%8D%A1%E9%9D%A2-1.png/285px-%E8%8C%A8%E6%9C%A8%E7%AB%A5%E5%AD%90-%E5%8D%A1%E9%9D%A2-1.png
117	1	https://fgo.wiki/images/thumb/c/cf/%E9%A3%8E%E9%AD%94%E5%B0%8F%E5%A4%AA%E9%83%8E1.png/285px-%E9%A3%8E%E9%AD%94%E5%B0%8F%E5%A4%AA%E9%83%8E1.png
118	1	https://fgo.wiki/images/thumb/8/86/%E6%8B%89%E4%BA%8C%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E6%8B%89%E4%BA%8C%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
119	1	https://fgo.wiki/images/thumb/d/dd/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%28Lancer%29-%E5%8D%A1%E9%9D%A21.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%28Lancer%29-%E5%8D%A1%E9%9D%A21.png
120	1	https://fgo.wiki/images/thumb/d/d2/%E5%B0%BC%E6%89%98%E5%8D%A1%E9%9D%A21.png/285px-%E5%B0%BC%E6%89%98%E5%8D%A1%E9%9D%A21.png
121	1	https://fgo.wiki/images/thumb/d/d8/%E5%89%91%E5%85%B0%E5%8D%A1%E9%9D%A21.png/285px-%E5%89%91%E5%85%B0%E5%8D%A1%E9%9D%A21.png
122	1	https://fgo.wiki/images/thumb/f/f5/%E5%B4%94%E6%96%AF%E5%9D%A6-%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E5%B4%94%E6%96%AF%E5%9D%A6-%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
123	1	https://fgo.wiki/images/thumb/5/5e/%E9%AB%98%E6%96%87%E5%8D%A1%E9%9D%A2%E5%88%9D%E5%A7%8B.png/285px-%E9%AB%98%E6%96%87%E5%8D%A1%E9%9D%A2%E5%88%9D%E5%A7%8B.png
124	1	https://fgo.wiki/images/thumb/2/2d/%E9%9D%99%E8%B0%A7%E5%93%88%E6%A1%911.png/285px-%E9%9D%99%E8%B0%A7%E5%93%88%E6%A1%911.png
125	1	https://fgo.wiki/images/thumb/4/4c/%E4%BF%B5%E8%97%A4%E5%A4%AA1.png/285px-%E4%BF%B5%E8%97%A4%E5%A4%AA1.png
126	1	https://fgo.wiki/images/thumb/5/55/%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94-%E5%8D%A1%E9%9D%A2-1.png/285px-%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94-%E5%8D%A1%E9%9D%A2-1.png
127	1	https://fgo.wiki/images/thumb/8/82/%E8%BE%BE%E8%8A%AC%E5%A5%87%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E8%BE%BE%E8%8A%AC%E5%A5%87%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
128	1	https://fgo.wiki/images/thumb/5/5a/%E7%8E%89%E8%97%BB%E5%89%8D%28%E6%B3%B3%E8%A3%85%29%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E7%8E%89%E8%97%BB%E5%89%8D%28%E6%B3%B3%E8%A3%85%29%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
129	1	https://fgo.wiki/images/thumb/1/19/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85Archer%E5%8D%A1%E9%9D%A21.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85Archer%E5%8D%A1%E9%9D%A21.png
130	1	https://fgo.wiki/images/thumb/9/98/%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%28%E6%B3%B3%E8%A3%85%29-%E5%8D%A1%E9%9D%A2-1.png/285px-%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%28%E6%B3%B3%E8%A3%85%29-%E5%8D%A1%E9%9D%A2-1.png
131	1	https://fgo.wiki/images/thumb/3/33/%E5%AE%89%E5%A6%AE%C2%B7%E4%BC%AF%E5%A6%AE%EF%BC%86%E7%8E%9B%E8%8E%89%C2%B7%E7%91%9E%E5%BE%B7%28Archer%291.png/285px-%E5%AE%89%E5%A6%AE%C2%B7%E4%BC%AF%E5%A6%AE%EF%BC%86%E7%8E%9B%E8%8E%89%C2%B7%E7%91%9E%E5%BE%B7%28Archer%291.png
132	1	https://fgo.wiki/images/thumb/5/50/%E5%86%B2%E8%8E%AB%E5%8D%A1%E9%9D%A21.png/285px-%E5%86%B2%E8%8E%AB%E5%8D%A1%E9%9D%A21.png
133	1	https://fgo.wiki/images/thumb/e/e4/%E6%96%AF%E5%8D%A1%E5%93%88%EF%BC%88%E6%B3%B3%E8%A3%85%EF%BC%89-%E5%8D%A1%E9%9D%A21.png/285px-%E6%96%AF%E5%8D%A1%E5%93%88%EF%BC%88%E6%B3%B3%E8%A3%85%EF%BC%89-%E5%8D%A1%E9%9D%A21.png
134	1	https://fgo.wiki/images/thumb/d/d0/%E6%B8%85%E5%A7%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E6%B8%85%E5%A7%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
135	1	https://fgo.wiki/images/thumb/1/19/%E7%8E%9B%E5%B0%94%E8%BE%BEruler%E5%8D%A1%E9%9D%A21.png/285px-%E7%8E%9B%E5%B0%94%E8%BE%BEruler%E5%8D%A1%E9%9D%A21.png
136	1	https://fgo.wiki/images/thumb/0/0c/%E4%BC%8A%E8%8E%89%E9%9B%85%E4%B8%9D%E8%8F%B2%E5%B0%94%C2%B7%E5%86%AF%C2%B7%E7%88%B1%E5%9B%A0%E5%85%B9%E8%B4%9D%E4%BC%A6-%E5%8D%A1%E9%9D%A2-1.png/285px-%E4%BC%8A%E8%8E%89%E9%9B%85%E4%B8%9D%E8%8F%B2%E5%B0%94%C2%B7%E5%86%AF%C2%B7%E7%88%B1%E5%9B%A0%E5%85%B9%E8%B4%9D%E4%BC%A6-%E5%8D%A1%E9%9D%A2-1.png
137	1	https://fgo.wiki/images/thumb/4/41/Kurostage1-3.png/285px-Kurostage1-3.png
138	1	https://fgo.wiki/images/thumb/7/78/%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%C2%B7%E5%B7%B4%E6%89%98%E9%87%8C%28%E5%8B%87%E8%80%85%291.png/285px-%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%C2%B7%E5%B7%B4%E6%89%98%E9%87%8C%28%E5%8B%87%E8%80%85%291.png
139	1	https://fgo.wiki/images/thumb/9/9e/%E5%85%8B%E5%A8%84%E5%B7%B4%E7%89%B9%E6%8B%891.png/285px-%E5%85%8B%E5%A8%84%E5%B7%B4%E7%89%B9%E6%8B%891.png
140	1	https://fgo.wiki/images/thumb/b/bc/%E5%BC%97%E6%8B%89%E5%BE%B7%E4%B8%89%E4%B8%96%EF%BC%88Extra%EF%BC%89%E7%AB%8B%E7%BB%981.png/285px-%E5%BC%97%E6%8B%89%E5%BE%B7%E4%B8%89%E4%B8%96%EF%BC%88Extra%EF%BC%89%E7%AB%8B%E7%BB%981.png
141	1	https://fgo.wiki/images/thumb/f/f8/%E5%B9%BC%E8%B4%9E%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E5%B9%BC%E8%B4%9E%C2%B7%E5%88%9D%E5%A7%8B.png
142	1	https://fgo.wiki/images/thumb/f/f3/%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
143	1	https://fgo.wiki/images/thumb/d/d7/%E5%B0%8F%E6%81%A9-%E5%8D%A1%E9%9D%A2-1.png/285px-%E5%B0%8F%E6%81%A9-%E5%8D%A1%E9%9D%A2-1.png
144	1	https://fgo.wiki/images/thumb/9/98/%E9%AD%81%E6%9C%AD%E5%B0%94%C2%B7%E7%A7%91%E4%BA%9A%E7%89%B9%E5%B0%94%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E9%AD%81%E6%9C%AD%E5%B0%94%C2%B7%E7%A7%91%E4%BA%9A%E7%89%B9%E5%B0%94%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
145	1	https://fgo.wiki/images/thumb/3/36/C%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-C%E9%97%AA%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
146	1	https://fgo.wiki/images/thumb/4/4e/%E5%AE%89%E5%A8%9C%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E5%AE%89%E5%A8%9C%C2%B7%E5%88%9D%E5%A7%8B.png
147	1	https://fgo.wiki/images/thumb/f/f7/Gorgon1.png/285px-Gorgon1.png
148	1	https://fgo.wiki/images/thumb/a/a6/%E8%B1%B9%E4%BA%BA%E5%8D%A1%E9%9D%A21.png/285px-%E8%B1%B9%E4%BA%BA%E5%8D%A1%E9%9D%A21.png
150	1	https://fgo.wiki/images/thumb/d/dd/%E6%A2%85%E6%9E%971.png/285px-%E6%A2%85%E6%9E%971.png
153	1	https://fgo.wiki/images/thumb/f/f8/%E6%AD%A6%E8%97%8F1.png/285px-%E6%AD%A6%E8%97%8F1.png
154	1	https://fgo.wiki/images/thumb/0/0d/%E7%8E%8B%E5%93%88%E5%88%9D%E5%A7%8B.png/285px-%E7%8E%8B%E5%93%88%E5%88%9D%E5%A7%8B.png
155	1	https://fgo.wiki/images/thumb/f/f9/%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X%EF%BC%88Alter%EF%BC%89%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X%EF%BC%88Alter%EF%BC%89%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
156	1	https://fgo.wiki/images/thumb/f/f0/%E8%8E%AB%E9%87%8C%E4%BA%9A%E8%92%82%E5%88%9D%E5%A7%8B.png/285px-%E8%8E%AB%E9%87%8C%E4%BA%9A%E8%92%82%E5%88%9D%E5%A7%8B.png
157	1	https://fgo.wiki/images/thumb/1/10/%E5%8D%AB%E5%AE%AB%28Alter%291.png/285px-%E5%8D%AB%E5%AE%AB%28Alter%291.png
158	1	https://fgo.wiki/images/thumb/f/f1/%E9%BB%91%E6%A3%AE%C2%B7%E7%BD%97%E4%BC%AF1.png/285px-%E9%BB%91%E6%A3%AE%C2%B7%E7%BD%97%E4%BC%AF1.png
159	1	https://fgo.wiki/images/thumb/c/cf/%E7%87%95%E9%9D%92-%E5%8D%A1%E9%9D%A2-1.png/285px-%E7%87%95%E9%9D%92-%E5%8D%A1%E9%9D%A2-1.png
160	1	https://fgo.wiki/images/thumb/c/ca/%E4%BA%9A%E7%91%9F%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png/285px-%E4%BA%9A%E7%91%9F%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4%E2%85%A0.png
161	1	https://fgo.wiki/images/thumb/6/68/%E5%9C%9F%E6%96%B9%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E5%9C%9F%E6%96%B9%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
162	1	https://fgo.wiki/images/thumb/3/32/%E8%8C%B6%E8%8C%B6%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E8%8C%B6%E8%8C%B6%C2%B7%E5%88%9D%E5%A7%8B.png
163	1	https://fgo.wiki/images/thumb/6/63/%E8%8E%89%E8%8E%89%E4%B8%9D%E5%8D%A1%E9%9D%A21.png/285px-%E8%8E%89%E8%8E%89%E4%B8%9D%E5%8D%A1%E9%9D%A21.png
164	1	https://fgo.wiki/images/thumb/8/87/Lip%E4%B8%80.png/285px-Lip%E4%B8%80.png
165	1	https://fgo.wiki/images/thumb/f/fa/%E9%93%83%E9%B9%BF%E5%BE%A1%E5%89%8D1.png/285px-%E9%93%83%E9%B9%BF%E5%BE%A1%E5%89%8D1.png
166	1	https://fgo.wiki/images/thumb/8/84/BB_1.png/285px-BB_1.png
167	1	https://fgo.wiki/images/thumb/a/a6/%E6%9D%80%E7%94%9F%E9%99%A2%E7%A5%88%E8%8D%92-%E5%8D%A1%E9%9D%A2-1.png/285px-%E6%9D%80%E7%94%9F%E9%99%A2%E7%A5%88%E8%8D%92-%E5%8D%A1%E9%9D%A2-1.png
169	1	https://fgo.wiki/images/thumb/e/eb/%E5%B1%B1%E9%B2%81%E4%BD%90%E5%BE%B71.png/285px-%E5%B1%B1%E9%B2%81%E4%BD%90%E5%BE%B71.png
170	1	https://fgo.wiki/images/thumb/f/f4/%E6%AD%A6%E5%88%99%E5%A4%A9%E5%8D%A1%E9%9D%A21.png/285px-%E6%AD%A6%E5%88%99%E5%A4%A9%E5%8D%A1%E9%9D%A21.png
171	1	https://fgo.wiki/images/thumb/d/d5/%E5%BD%AD%E5%BF%92%E8%A5%BF%E5%8B%92%E4%BA%9A1.png/285px-%E5%BD%AD%E5%BF%92%E8%A5%BF%E5%8B%92%E4%BA%9A1.png
172	1	https://fgo.wiki/images/thumb/e/e7/%E5%85%8B%E9%87%8C%E6%96%AF%E6%89%98%E5%BC%97%C2%B7%E5%93%A5%E4%BC%A6%E5%B8%831.png/285px-%E5%85%8B%E9%87%8C%E6%96%AF%E6%89%98%E5%BC%97%C2%B7%E5%93%A5%E4%BC%A6%E5%B8%831.png
173	1	https://fgo.wiki/images/thumb/6/6c/Svt173P1.png/285px-Svt173P1.png
174	1	https://fgo.wiki/images/thumb/8/87/%E7%8F%AD%E6%89%AC%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E7%8F%AD%E6%89%AC%C2%B7%E5%88%9D%E5%A7%8B.png
175	1	https://fgo.wiki/images/thumb/7/75/%E6%B3%B3%E8%A3%85%E5%B0%BC%E7%A6%84%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E6%B3%B3%E8%A3%85%E5%B0%BC%E7%A6%84%E5%8D%A1%E9%9D%A2%E2%85%A0.png
176	1	https://fgo.wiki/images/thumb/a/ab/%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6saber%E5%8D%A1%E9%9D%A21.png/285px-%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6saber%E5%8D%A1%E9%9D%A21.png
177	1	https://fgo.wiki/images/thumb/7/7d/%E5%B0%BC%E6%89%98%E5%85%8B%E4%B8%BD%E4%B8%9DAssassin%E5%8D%A1%E9%9D%A21.png/285px-%E5%B0%BC%E6%89%98%E5%85%8B%E4%B8%BD%E4%B8%9DAssassin%E5%8D%A1%E9%9D%A21.png
178	1	https://fgo.wiki/images/thumb/4/48/%E7%8B%82%E4%BF%A1%E9%95%BF-%E5%8D%A1%E9%9D%A2-1.png/285px-%E7%8B%82%E4%BF%A1%E9%95%BF-%E5%8D%A1%E9%9D%A2-1.png
179	1	https://fgo.wiki/images/thumb/3/31/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85AlterRider%E5%8D%A1%E9%9D%A21.png/285px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85AlterRider%E5%8D%A1%E9%9D%A21.png
180	1	https://fgo.wiki/images/thumb/b/b8/%E5%BC%93%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%BC%93%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%8D%A1%E9%9D%A2%E2%85%A0.png
181	1	https://fgo.wiki/images/thumb/d/d7/%E6%BA%90%E8%B5%96%E5%85%89%28Lancer%291.png/285px-%E6%BA%90%E8%B5%96%E5%85%89%28Lancer%291.png
182	1	https://fgo.wiki/images/thumb/1/18/%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%28Rider%291.png/285px-%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%28Rider%291.png
183	1	https://fgo.wiki/images/thumb/b/b6/%E5%B8%95%E5%B0%94%E7%93%A6%E8%92%821.png/285px-%E5%B8%95%E5%B0%94%E7%93%A6%E8%92%821.png
184	1	https://fgo.wiki/images/thumb/a/a9/%E5%B7%B4%E5%BE%A1%E5%89%8D%E5%8D%A1%E9%9D%A2%E2%85%A0.png/285px-%E5%B7%B4%E5%BE%A1%E5%89%8D%E5%8D%A1%E9%9D%A2%E2%85%A0.png
185	1	https://fgo.wiki/images/thumb/b/be/%E5%8D%83%E4%BB%A3%E5%A5%B3%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E5%8D%83%E4%BB%A3%E5%A5%B3%C2%B7%E5%88%9D%E5%A7%8B.png
186	1	https://fgo.wiki/images/thumb/4/48/%E5%AE%9D%E8%97%8F%E9%99%A2%E8%83%A4%E8%88%9C1.png/285px-%E5%AE%9D%E8%97%8F%E9%99%A2%E8%83%A4%E8%88%9C1.png
187	1	https://fgo.wiki/images/thumb/f/fb/%E6%9F%B3%E7%94%9F%E4%B8%80.png/285px-%E6%9F%B3%E7%94%9F%E4%B8%80.png
188	1	https://fgo.wiki/images/thumb/c/cc/%E5%8A%A0%E8%97%A4%E6%AE%B5%E8%97%8F1.png/285px-%E5%8A%A0%E8%97%A4%E6%AE%B5%E8%97%8F1.png
189	1	https://fgo.wiki/images/thumb/5/5c/%E5%88%91%E9%83%A8%E5%A7%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E5%88%91%E9%83%A8%E5%A7%AC%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
190	1	https://fgo.wiki/images/thumb/9/90/%E6%9C%BA%E6%A2%B0%E4%BC%8A%E4%B8%BD%E4%BA%B2%E7%AB%8B%E7%BB%981.png/285px-%E6%9C%BA%E6%A2%B0%E4%BC%8A%E4%B8%BD%E4%BA%B2%E7%AB%8B%E7%BB%981.png
191	1	https://fgo.wiki/images/thumb/a/a3/%E6%9C%BA%E6%A2%B0%E4%BC%8A%E4%B8%BD%E4%BA%B2%E2%85%A1%E5%8F%B7%E6%9C%BA%E7%AB%8B%E7%BB%981.png/285px-%E6%9C%BA%E6%A2%B0%E4%BC%8A%E4%B8%BD%E4%BA%B2%E2%85%A1%E5%8F%B7%E6%9C%BA%E7%AB%8B%E7%BB%981.png
192	1	https://fgo.wiki/images/thumb/9/97/%E5%96%80%E8%80%B3%E5%88%BB%E7%AB%8B%E7%BB%981.png/285px-%E5%96%80%E8%80%B3%E5%88%BB%E7%AB%8B%E7%BB%981.png
193	1	https://fgo.wiki/images/thumb/f/f9/%E5%93%AA%E5%90%92%E7%AB%8B%E7%BB%981.png/285px-%E5%93%AA%E5%90%92%E7%AB%8B%E7%BB%981.png
194	1	https://fgo.wiki/images/thumb/1/1c/%E7%A4%BA%E5%B7%B4%E5%A5%B3%E7%8E%8B%E7%AB%8B%E7%BB%981.png/285px-%E7%A4%BA%E5%B7%B4%E5%A5%B3%E7%8E%8B%E7%AB%8B%E7%BB%981.png
195	1	https://fgo.wiki/images/thumb/a/af/%E9%98%BF%E6%AF%94%E7%9B%96%E5%B0%94%C2%B7%E5%88%9D%E5%A7%8B.png/285px-%E9%98%BF%E6%AF%94%E7%9B%96%E5%B0%94%C2%B7%E5%88%9D%E5%A7%8B.png
196	1	https://fgo.wiki/images/thumb/7/7c/%E8%89%BE%E8%95%BE%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E8%89%BE%E8%95%BE%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
197	1	https://fgo.wiki/images/thumb/c/ca/%E9%98%BF%E8%92%82%E6%8B%89%E5%9C%A3%E8%AF%9E%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png/285px-%E9%98%BF%E8%92%82%E6%8B%89%E5%9C%A3%E8%AF%9E%E5%88%9D%E5%A7%8B%E7%8A%B6%E6%80%81.png
198	1	https://fgo.wiki/images/thumb/2/2e/%E8%91%9B%E9%A5%B0%E5%8C%97%E6%96%8B%E7%AB%8B%E7%BB%981.png/285px-%E8%91%9B%E9%A5%B0%E5%8C%97%E6%96%8B%E7%AB%8B%E7%BB%981.png
199	1	https://fgo.wiki/images/thumb/1/13/%E5%A1%9E%E5%BC%A5%E6%8B%89%E5%BC%A5%E6%96%AF%E7%AB%8B%E7%BB%981.png/285px-%E5%A1%9E%E5%BC%A5%E6%8B%89%E5%BC%A5%E6%96%AF%E7%AB%8B%E7%BB%981.png
200	1	https://fgo.wiki/images/thumb/7/77/200-%E6%B5%85%E4%B8%8A%E8%97%A4%E4%B9%83-1-v2.png/285px-200-%E6%B5%85%E4%B8%8A%E8%97%A4%E4%B9%83-1-v2.png
201	1	https://fgo.wiki/images/thumb/e/e7/%E9%98%BF%E7%BA%B3%E6%96%AF%E5%A1%94%E8%A5%BF%E5%A8%85%E7%AB%8B%E7%BB%981.png/285px-%E9%98%BF%E7%BA%B3%E6%96%AF%E5%A1%94%E8%A5%BF%E5%A8%85%E7%AB%8B%E7%BB%981.png
202	1	https://fgo.wiki/images/thumb/f/fa/%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92%EF%BC%88Alter%EF%BC%89%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92%EF%BC%88Alter%EF%BC%89%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
203	1	https://fgo.wiki/images/thumb/5/51/%E9%98%BF%E7%BB%B4%E6%96%AF%E5%B8%83%E9%9A%86%E7%AB%8B%E7%BB%981.png/285px-%E9%98%BF%E7%BB%B4%E6%96%AF%E5%B8%83%E9%9A%86%E7%AB%8B%E7%BB%981.png
204	1	https://fgo.wiki/images/thumb/c/c5/%E5%AE%89%E4%B8%9C%E5%B0%BC%E5%A5%A5%C2%B7%E8%90%A8%E5%88%97%E9%87%8C%E7%AB%8B%E7%BB%981.png/285px-%E5%AE%89%E4%B8%9C%E5%B0%BC%E5%A5%A5%C2%B7%E8%90%A8%E5%88%97%E9%87%8C%E7%AB%8B%E7%BB%981.png
205	1	https://fgo.wiki/images/thumb/2/29/%E4%BC%8A%E5%87%A1%E9%9B%B7%E5%B8%9D%E7%AB%8B%E7%BB%981.png/285px-%E4%BC%8A%E5%87%A1%E9%9B%B7%E5%B8%9D%E7%AB%8B%E7%BB%981.png
206	1	https://fgo.wiki/images/thumb/5/58/%E9%98%BF%E5%96%80%E7%90%89%E6%96%AF-%E5%8D%A1%E9%9D%A2-1.png/285px-%E9%98%BF%E5%96%80%E7%90%89%E6%96%AF-%E5%8D%A1%E9%9D%A2-1.png
207	1	https://fgo.wiki/images/thumb/8/87/%E5%96%80%E6%88%8E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B41.png/285px-%E5%96%80%E6%88%8E%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B41.png
208	1	https://fgo.wiki/images/thumb/c/c2/%E9%BD%90%E6%A0%BC%E7%AB%8B%E7%BB%981.png/285px-%E9%BD%90%E6%A0%BC%E7%AB%8B%E7%BB%981.png
209	1	https://fgo.wiki/images/thumb/5/5b/%E9%BB%91%E6%80%BB%E5%8F%B8%E5%88%9D%E5%A7%8B.png/285px-%E9%BB%91%E6%80%BB%E5%8F%B8%E5%88%9D%E5%A7%8B.png
210	1	https://fgo.wiki/images/thumb/4/42/%E4%BB%A5%E8%97%8F%E5%88%9D%E5%A7%8B.png/285px-%E4%BB%A5%E8%97%8F%E5%88%9D%E5%A7%8B.png
211	1	https://fgo.wiki/images/thumb/e/e8/%E5%9D%82%E6%9C%AC%E9%BE%99%E9%A9%AC%E5%88%9D%E5%A7%8B.png/285px-%E5%9D%82%E6%9C%AC%E9%BE%99%E9%A9%AC%E5%88%9D%E5%A7%8B.png
212	1	https://fgo.wiki/images/thumb/a/af/%E6%8B%BF%E7%A0%B4%E4%BB%91%E5%88%9D%E5%A7%8B.png/285px-%E6%8B%BF%E7%A0%B4%E4%BB%91%E5%88%9D%E5%A7%8B.png
213	1	https://fgo.wiki/images/thumb/9/95/%E9%BD%90%E6%A0%BC%E9%B2%81%E5%BE%B7%E5%88%9D%E5%A7%8B.png/285px-%E9%BD%90%E6%A0%BC%E9%B2%81%E5%BE%B7%E5%88%9D%E5%A7%8B.png
214	1	https://fgo.wiki/images/thumb/8/89/%E7%93%A6%E5%B0%94%E5%9F%BA%E9%87%8C%E5%88%9D%E5%A7%8B.png/285px-%E7%93%A6%E5%B0%94%E5%9F%BA%E9%87%8C%E5%88%9D%E5%A7%8B.png
215	1	https://fgo.wiki/images/thumb/a/ad/%E6%96%AF%E5%8D%A1%E5%93%88-%E4%B8%9D%E5%8D%A1%E8%92%820%E7%A0%B4.png/285px-%E6%96%AF%E5%8D%A1%E5%93%88-%E4%B8%9D%E5%8D%A1%E8%92%820%E7%A0%B4.png
216	1	https://fgo.wiki/images/thumb/7/7b/%E8%B4%9E%E5%BE%B7%28Archer%29%E7%AB%8B%E7%BB%98_%E5%88%9D%E5%A7%8B.png/285px-%E8%B4%9E%E5%BE%B7%28Archer%29%E7%AB%8B%E7%BB%98_%E5%88%9D%E5%A7%8B.png
217	1	https://fgo.wiki/images/thumb/a/a9/%E8%8C%A8%E6%9C%A8%E7%AB%A5%E5%AD%90%28Lancer%290%E7%A0%B4.png/285px-%E8%8C%A8%E6%9C%A8%E7%AB%A5%E5%AD%90%28Lancer%290%E7%A0%B4.png
218	1	https://fgo.wiki/images/thumb/1/12/%E7%89%9B%E8%8B%A5%E4%B8%B8%28Assassin%290%E7%A0%B4.png/285px-%E7%89%9B%E8%8B%A5%E4%B8%B8%28Assassin%290%E7%A0%B4.png
219	1	https://fgo.wiki/images/thumb/4/4e/%E8%B4%9E%E5%BE%B7%28Alter%29%28Berserker%290%E7%A0%B4.png/285px-%E8%B4%9E%E5%BE%B7%28Alter%29%28Berserker%290%E7%A0%B4.png
220	1	https://fgo.wiki/images/thumb/e/e7/%E6%B3%B3%E8%A3%85BB_0%E7%A0%B4.png/285px-%E6%B3%B3%E8%A3%85BB_0%E7%A0%B4.png
221	1	https://fgo.wiki/images/thumb/b/b3/%E6%B3%B3%E8%A3%85%E6%A2%85%E8%8A%99_0%E7%A0%B4.png/285px-%E6%B3%B3%E8%A3%85%E6%A2%85%E8%8A%99_0%E7%A0%B4.png
222	1	https://fgo.wiki/images/thumb/8/80/%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92XX_0%E7%A0%B4.png/285px-%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92XX_0%E7%A0%B4.png
223	1	https://fgo.wiki/images/thumb/e/eb/%E8%BF%AA%E5%B0%94%E5%A7%86%E5%BE%B7%C2%B7%E5%A5%A5%E8%BF%AA%E9%82%A3%28Saber%29_0%E7%A0%B4.png/285px-%E8%BF%AA%E5%B0%94%E5%A7%86%E5%BE%B7%C2%B7%E5%A5%A5%E8%BF%AA%E9%82%A3%28Saber%29_0%E7%A0%B4.png
224	1	https://fgo.wiki/images/thumb/4/42/%E8%A5%BF%E6%89%98%E5%A5%88_0%E7%A0%B4.png/285px-%E8%A5%BF%E6%89%98%E5%A5%88_0%E7%A0%B4.png
225	1	https://fgo.wiki/images/thumb/e/e7/%E9%85%92%E5%90%9E%E7%AB%A5%E5%AD%90%28Caster%290%E7%A0%B4.png/285px-%E9%85%92%E5%90%9E%E7%AB%A5%E5%AD%90%28Caster%290%E7%A0%B4.png
226	1	https://fgo.wiki/images/thumb/f/ff/%E9%A1%B9%E7%BE%BD%E5%88%9D%E5%A7%8B%E7%AB%8B%E7%BB%98.png/285px-%E9%A1%B9%E7%BE%BD%E5%88%9D%E5%A7%8B%E7%AB%8B%E7%BB%98.png
227	1	https://fgo.wiki/images/thumb/4/40/%E5%85%B0%E9%99%B5%E7%8E%8B%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E5%85%B0%E9%99%B5%E7%8E%8B%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
228	1	https://fgo.wiki/images/thumb/8/87/%E7%A7%A6%E8%89%AF%E7%8E%89%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png/285px-%E7%A7%A6%E8%89%AF%E7%8E%89%E5%88%9D%E5%A7%8B%E5%8D%A1%E9%9D%A2.png
229	1	https://fgo.wiki/images/thumb/c/c9/%E7%A7%A6%E5%A7%8B%E7%9A%87_%E5%88%9D%E5%A7%8B.png/285px-%E7%A7%A6%E5%A7%8B%E7%9A%87_%E5%88%9D%E5%A7%8B.png
230	1	https://fgo.wiki/images/thumb/3/35/%E8%99%9E%E5%A7%AC_%E5%88%9D%E5%A7%8B.png/285px-%E8%99%9E%E5%A7%AC_%E5%88%9D%E5%A7%8B.png
231	1	https://fgo.wiki/images/thumb/8/84/%E8%B5%A4%E5%85%94%E9%A9%AC_%E5%88%9D%E5%A7%8B.png/285px-%E8%B5%A4%E5%85%94%E9%A9%AC_%E5%88%9D%E5%A7%8B.png
232	1	https://fgo.wiki/images/thumb/4/4a/%E5%B8%83%E6%8B%89%E8%BE%BE%E6%9B%BC%E7%89%B9-0%E7%A0%B4.png/285px-%E5%B8%83%E6%8B%89%E8%BE%BE%E6%9B%BC%E7%89%B9-0%E7%A0%B4.png
234	1	https://fgo.wiki/images/thumb/2/2c/103700a_1.png/285px-103700a_1.png
235	1	https://fgo.wiki/images/thumb/7/73/603600a_1.png/285px-603600a_1.png
236	1	https://fgo.wiki/images/thumb/2/23/%E7%BE%8E%E6%B8%B83.png/285px-%E7%BE%8E%E6%B8%B83.png
237	1	https://fgo.wiki/images/thumb/0/00/%E7%B4%AB%E5%BC%8F%E9%83%A8_1.png/285px-%E7%B4%AB%E5%BC%8F%E9%83%A8_1.png
238	1	https://fgo.wiki/images/thumb/5/57/%E5%B8%9D%E7%8E%8B%E8%8A%B1_charagragh_1.png/285px-%E5%B8%9D%E7%8E%8B%E8%8A%B1_charagragh_1.png
1	1	https://fgo.wiki/images/thumb/4/4e/%E7%8E%9B%E4%BF%AE%C2%B7%E5%9F%BA%E5%88%97%E8%8E%B1%E7%89%B9-%E5%8D%A1%E9%9D%A2-1.png/285px-%E7%8E%9B%E4%BF%AE%C2%B7%E5%9F%BA%E5%88%97%E8%8E%B1%E7%89%B9-%E5%8D%A1%E9%9D%A2-1.png
11	1	https://fgo.wiki/images/thumb/3/35/%E5%8D%AB%E5%AE%AB%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png/285px-%E5%8D%AB%E5%AE%AB%E7%81%B5%E5%9F%BA%E5%86%8D%E4%B8%B4I.png
97	1	https://fgo.wiki/images/thumb/6/6e/%E5%8D%97%E4%B8%81%E6%A0%BC%E5%B0%94%E5%88%9D%E5%A7%8B.png/285px-%E5%8D%97%E4%B8%81%E6%A0%BC%E5%B0%94%E5%88%9D%E5%A7%8B.png
233	1	https://fgo.wiki/images/thumb/d/dc/%E7%BE%BD%E8%9B%87%E7%A5%9Eruler0.png/285px-%E7%BE%BD%E8%9B%87%E7%A5%9Eruler0.png
\.


--
-- Data for Name: servent_profile_pic; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.servent_profile_pic (servent_id, profile_pic_id, profile_pic) FROM stdin;
1	1	https://fgo.wiki/images/thumb/4/4c/%E7%8E%9B%E4%BF%AE%E5%A4%B4%E5%83%8F1.png/150px-%E7%8E%9B%E4%BF%AE%E5%A4%B4%E5%83%8F1.png
2	1	https://fgo.wiki/images/thumb/b/b3/Servant002%E5%A4%B4%E5%83%8F1%E9%98%B6%E6%AE%B5.png/150px-Servant002%E5%A4%B4%E5%83%8F1%E9%98%B6%E6%AE%B5.png
3	1	https://fgo.wiki/images/thumb/c/ca/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%C2%B7Alter-%E5%A4%B4%E5%83%8FI.png/150px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1%C2%B7Alter-%E5%A4%B4%E5%83%8FI.png
4	1	https://fgo.wiki/images/thumb/b/ba/Slily%E5%A4%B4%E5%83%8F1.png/150px-Slily%E5%A4%B4%E5%83%8F1.png
5	1	https://fgo.wiki/images/thumb/e/e1/%E5%B0%BC%E7%A6%84%E5%A4%B4%E5%83%8F1.png/150px-%E5%B0%BC%E7%A6%84%E5%A4%B4%E5%83%8F1.png
6	1	https://fgo.wiki/images/thumb/2/2a/Servant006%E6%AD%A3%E9%9D%A21.png/150px-Servant006%E6%AD%A3%E9%9D%A21.png
7	1	https://fgo.wiki/images/thumb/6/6b/Servant007%E6%AD%A3%E9%9D%A21.png/150px-Servant007%E6%AD%A3%E9%9D%A21.png
8	1	https://fgo.wiki/images/thumb/2/24/%E9%98%BF%E8%92%82%E6%8B%89%E5%A4%B4%E5%83%8F1.png/160px-%E9%98%BF%E8%92%82%E6%8B%89%E5%A4%B4%E5%83%8F1.png
9	1	https://fgo.wiki/images/thumb/b/b6/Servant009%E6%AD%A3%E9%9D%A21.png/150px-Servant009%E6%AD%A3%E9%9D%A21.png
10	1	https://fgo.wiki/images/thumb/3/3e/%E8%BF%AA%E6%98%82%E5%A4%B4%E5%83%8F1.png/151px-%E8%BF%AA%E6%98%82%E5%A4%B4%E5%83%8F1.png
11	1	https://fgo.wiki/images/thumb/0/0d/Servant011%E6%AD%A3%E9%9D%A21.png/150px-Servant011%E6%AD%A3%E9%9D%A21.png
12	1	https://fgo.wiki/images/thumb/f/f8/%E9%97%AA%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/128px-%E9%97%AA%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
13	1	https://fgo.wiki/images/thumb/d/d5/%E7%BD%97%E5%AE%BE%E6%B1%89%E5%A4%B4%E5%83%8F1.png/150px-%E7%BD%97%E5%AE%BE%E6%B1%89%E5%A4%B4%E5%83%8F1.png
14	1	https://fgo.wiki/images/thumb/1/15/Servant014%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-Servant014%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
15	1	https://fgo.wiki/images/thumb/7/74/%E4%BA%8C%E5%A7%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E4%BA%8C%E5%A7%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
16	1	https://fgo.wiki/images/thumb/5/5b/%E9%98%BF%E6%8B%89%E4%BB%80%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E9%98%BF%E6%8B%89%E4%BB%80%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
17	1	https://fgo.wiki/images/thumb/4/4b/%E5%A4%A7%E7%8B%97%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%A4%A7%E7%8B%97%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
46	1	https://fgo.wiki/images/thumb/8/81/Servant046%E6%AD%A3%E9%9D%A21.png/150px-Servant046%E6%AD%A3%E9%9D%A21.png
18	1	https://fgo.wiki/images/thumb/5/59/%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%E5%A4%B4%E5%83%8F1.png/150px-%E4%BC%8A%E4%B8%BD%E8%8E%8E%E7%99%BD%E5%A4%B4%E5%83%8F1.png
19	1	https://fgo.wiki/images/thumb/4/43/Servant019%E6%AD%A3%E9%9D%A21.png/150px-Servant019%E6%AD%A3%E9%9D%A21.png
20	1	https://fgo.wiki/images/thumb/5/58/Servant020%E6%AD%A3%E9%9D%A21.png/150px-Servant020%E6%AD%A3%E9%9D%A21.png
21	1	https://fgo.wiki/images/thumb/f/fe/Servant021%E6%AD%A3%E9%9D%A21.png/150px-Servant021%E6%AD%A3%E9%9D%A21.png
22	1	https://fgo.wiki/images/thumb/b/bf/%E7%BD%97%E9%A9%AC%E5%A4%B4%E5%83%8F1.png/150px-%E7%BD%97%E9%A9%AC%E5%A4%B4%E5%83%8F1.png
23	1	https://fgo.wiki/images/thumb/5/5a/Servant023%E6%AD%A3%E9%9D%A21.png/150px-Servant023%E6%AD%A3%E9%9D%A21.png
24	1	https://fgo.wiki/images/thumb/7/77/Servant024%E6%AD%A3%E9%9D%A21.png/150px-Servant024%E6%AD%A3%E9%9D%A21.png
25	1	https://fgo.wiki/images/thumb/c/cc/Servant025%E6%AD%A3%E9%9D%A21.png/150px-Servant025%E6%AD%A3%E9%9D%A21.png
26	1	https://fgo.wiki/images/thumb/e/e4/Servant026%E6%AD%A3%E9%9D%A21.png/150px-Servant026%E6%AD%A3%E9%9D%A21.png
27	1	https://fgo.wiki/images/thumb/2/2c/Servant027%E6%AD%A3%E9%9D%A21.png/150px-Servant027%E6%AD%A3%E9%9D%A21.png
28	1	https://fgo.wiki/images/thumb/9/9d/Servant028%E6%AD%A3%E9%9D%A21.png/150px-Servant028%E6%AD%A3%E9%9D%A21.png
29	1	https://fgo.wiki/images/thumb/f/f7/%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
30	1	https://fgo.wiki/images/thumb/8/82/Servant030%E6%AD%A3%E9%9D%A21.png/150px-Servant030%E6%AD%A3%E9%9D%A21.png
31	1	https://fgo.wiki/images/thumb/c/c8/500100_status_servant_1.png/150px-500100_status_servant_1.png
32	1	https://fgo.wiki/images/thumb/3/35/Servant032%E6%AD%A3%E9%9D%A21.png/150px-Servant032%E6%AD%A3%E9%9D%A21.png
33	1	https://fgo.wiki/images/thumb/3/34/%E5%AE%89%E5%BE%92%E7%94%9F%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%AE%89%E5%BE%92%E7%94%9F%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
34	1	https://fgo.wiki/images/thumb/c/c0/Servant034%E6%AD%A3%E9%9D%A21.png/150px-Servant034%E6%AD%A3%E9%9D%A21.png
35	1	https://fgo.wiki/images/thumb/7/7d/Servant035%E6%AD%A3%E9%9D%A21.png/150px-Servant035%E6%AD%A3%E9%9D%A21.png
36	1	https://fgo.wiki/images/thumb/f/ff/Servant036%E6%AD%A3%E9%9D%A21.png/150px-Servant036%E6%AD%A3%E9%9D%A21.png
37	1	https://fgo.wiki/images/thumb/3/3c/Servant037%E6%AD%A3%E9%9D%A21.png/150px-Servant037%E6%AD%A3%E9%9D%A21.png
38	1	https://fgo.wiki/images/thumb/7/7b/Servant038%E6%AD%A3%E9%9D%A21.png/150px-Servant038%E6%AD%A3%E9%9D%A21.png
39	1	https://fgo.wiki/images/thumb/3/37/039%E4%B8%80%E7%A0%B4%E5%A4%B4%E5%83%8F.png/150px-039%E4%B8%80%E7%A0%B4%E5%A4%B4%E5%83%8F.png
40	1	https://fgo.wiki/images/thumb/1/13/Servant040%E6%AD%A3%E9%9D%A21.png/150px-Servant040%E6%AD%A3%E9%9D%A21.png
41	1	https://fgo.wiki/images/thumb/6/6f/%E5%A4%A7%E5%A7%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%A4%A7%E5%A7%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
42	1	https://fgo.wiki/images/thumb/b/bf/Servant042%E6%AD%A3%E9%9D%A21.png/150px-Servant042%E6%AD%A3%E9%9D%A21.png
43	1	https://fgo.wiki/images/thumb/8/83/Servant043%E6%AD%A3%E9%9D%A21.png/150px-Servant043%E6%AD%A3%E9%9D%A21.png
44	1	https://fgo.wiki/images/thumb/4/4b/Servant044%E6%AD%A3%E9%9D%A21.png/150px-Servant044%E6%AD%A3%E9%9D%A21.png
45	1	https://fgo.wiki/images/thumb/1/16/Servant045%E6%AD%A3%E9%9D%A21.png/150px-Servant045%E6%AD%A3%E9%9D%A21.png
47	1	https://fgo.wiki/images/thumb/c/ce/Servant047%E6%AD%A3%E9%9D%A21.png/150px-Servant047%E6%AD%A3%E9%9D%A21.png
48	1	https://fgo.wiki/images/thumb/9/9a/Servant048%E6%AD%A3%E9%9D%A21.png/150px-Servant048%E6%AD%A3%E9%9D%A21.png
49	1	https://fgo.wiki/images/thumb/c/cb/Servant049%E6%AD%A3%E9%9D%A21.png/150px-Servant049%E6%AD%A3%E9%9D%A21.png
50	1	https://fgo.wiki/images/thumb/f/fa/Servant050%E6%AD%A3%E9%9D%A21.png/150px-Servant050%E6%AD%A3%E9%9D%A21.png
51	1	https://fgo.wiki/images/thumb/6/67/B%E9%87%91%E6%97%B6%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-B%E9%87%91%E6%97%B6%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
52	1	https://fgo.wiki/images/thumb/f/fb/%E5%A4%A7%E5%85%AC%E5%A4%B4%E5%83%8F1.png/150px-%E5%A4%A7%E5%85%AC%E5%A4%B4%E5%83%8F1.png
53	1	https://fgo.wiki/images/thumb/c/c7/Servant053%E6%AD%A3%E9%9D%A21.png/150px-Servant053%E6%AD%A3%E9%9D%A21.png
54	1	https://fgo.wiki/images/thumb/0/07/Servant054%E6%AD%A3%E9%9D%A21.png/150px-Servant054%E6%AD%A3%E9%9D%A21.png
55	1	https://fgo.wiki/images/thumb/6/60/Servant055%E6%AD%A3%E9%9D%A21.png/150px-Servant055%E6%AD%A3%E9%9D%A21.png
56	1	https://fgo.wiki/images/thumb/6/6a/%E6%B8%85%E5%A7%AC%E5%A4%B4%E5%83%8F1.png/150px-%E6%B8%85%E5%A7%AC%E5%A4%B4%E5%83%8F1.png
57	1	https://fgo.wiki/images/thumb/d/d9/Servant057%E6%AD%A3%E9%9D%A21.png/150px-Servant057%E6%AD%A3%E9%9D%A21.png
58	1	https://fgo.wiki/images/thumb/e/e4/Servant058%E6%AD%A3%E9%9D%A21.png/150px-Servant058%E6%AD%A3%E9%9D%A21.png
59	1	https://fgo.wiki/images/thumb/d/dc/%E8%B4%9E%E5%BE%B7-%E5%A4%B4%E5%83%8F1.png/150px-%E8%B4%9E%E5%BE%B7-%E5%A4%B4%E5%83%8F1.png
60	1	https://fgo.wiki/images/thumb/b/b3/Servant060%E6%AD%A3%E9%9D%A21.png/150px-Servant060%E6%AD%A3%E9%9D%A21.png
61	1	https://fgo.wiki/images/thumb/d/d7/Servant061%E6%AD%A3%E9%9D%A21.png/150px-Servant061%E6%AD%A3%E9%9D%A21.png
62	1	https://fgo.wiki/images/thumb/b/b9/%E7%8E%89%E8%97%BB%E5%89%8D%E5%A4%B4%E5%83%8F1.png/150px-%E7%8E%89%E8%97%BB%E5%89%8D%E5%A4%B4%E5%83%8F1.png
63	1	https://fgo.wiki/images/thumb/e/eb/%E5%A4%A7%E5%8D%AB%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%A4%A7%E5%8D%AB%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
64	1	https://fgo.wiki/images/thumb/f/f5/Servant064%E6%AD%A3%E9%9D%A21.png/150px-Servant064%E6%AD%A3%E9%9D%A21.png
65	1	https://fgo.wiki/images/thumb/7/7e/Servant065%E6%AD%A3%E9%9D%A21.png/150px-Servant065%E6%AD%A3%E9%9D%A21.png
66	1	https://fgo.wiki/images/thumb/7/76/Servant066%E6%AD%A3%E9%9D%A21.png/150px-Servant066%E6%AD%A3%E9%9D%A21.png
67	1	https://fgo.wiki/images/thumb/1/1c/C%E5%AD%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-C%E5%AD%90%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
68	1	https://fgo.wiki/images/thumb/6/69/Servant068%E6%AD%A3%E9%9D%A21.png/150px-Servant068%E6%AD%A3%E9%9D%A21.png
69	1	https://fgo.wiki/images/thumb/d/d4/%E4%BF%A1%E9%95%BF%E5%A4%B4%E5%83%8F.png/150px-%E4%BF%A1%E9%95%BF%E5%A4%B4%E5%83%8F.png
70	1	https://fgo.wiki/images/thumb/7/75/Servant070%E6%AD%A3%E9%9D%A21.png/150px-Servant070%E6%AD%A3%E9%9D%A21.png
71	1	https://fgo.wiki/images/thumb/5/5b/Servant071%E6%AD%A3%E9%9D%A21.png/150px-Servant071%E6%AD%A3%E9%9D%A21.png
72	1	https://fgo.wiki/images/thumb/6/62/Servant072%E6%AD%A3%E9%9D%A21.png/150px-Servant072%E6%AD%A3%E9%9D%A21.png
171	1	https://fgo.wiki/images/thumb/e/ef/Servant171%E6%AD%A3%E9%9D%A21.png/150px-Servant171%E6%AD%A3%E9%9D%A21.png
73	1	https://fgo.wiki/images/thumb/4/49/Servant073%E6%AD%A3%E9%9D%A21.png/150px-Servant073%E6%AD%A3%E9%9D%A21.png
74	1	https://fgo.wiki/images/thumb/f/f3/%E7%AB%A5%E8%B0%A3%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E7%AB%A5%E8%B0%A3%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
75	1	https://fgo.wiki/images/thumb/2/22/%E5%BC%80%E8%86%9B%E6%89%8B%E6%9D%B0%E5%85%8B%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%BC%80%E8%86%9B%E6%89%8B%E6%9D%B0%E5%85%8B%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
76	1	https://fgo.wiki/images/thumb/b/b0/%E5%B0%8F%E8%8E%AB%E5%A4%B4%E5%83%8F1.png/150px-%E5%B0%8F%E8%8E%AB%E5%A4%B4%E5%83%8F1.png
77	1	https://fgo.wiki/images/thumb/6/6f/%E7%89%B9%E6%80%BB1%E9%98%B6%E5%A4%B4%E5%83%8F.png/150px-%E7%89%B9%E6%80%BB1%E9%98%B6%E5%A4%B4%E5%83%8F.png
78	1	https://fgo.wiki/images/thumb/e/e5/Servant078%E6%AD%A3%E9%9D%A21.png/150px-Servant078%E6%AD%A3%E9%9D%A21.png
79	1	https://fgo.wiki/images/thumb/6/63/Servant079%E6%AD%A3%E9%9D%A21.png/150px-Servant079%E6%AD%A3%E9%9D%A21.png
80	1	https://fgo.wiki/images/thumb/e/e0/Servant080%E6%AD%A3%E9%9D%A21.png/150px-Servant080%E6%AD%A3%E9%9D%A21.png
81	1	https://fgo.wiki/images/thumb/d/d5/Servant081%E6%AD%A3%E9%9D%A21.png/150px-Servant081%E6%AD%A3%E9%9D%A21.png
82	1	https://fgo.wiki/images/thumb/f/f9/%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%BC%97%E5%85%B0%E8%82%AF%E6%96%AF%E5%9D%A6%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
84	1	https://fgo.wiki/images/thumb/6/69/Servant084%E6%AD%A3%E9%9D%A21.png/150px-Servant084%E6%AD%A3%E9%9D%A21.png
85	1	https://fgo.wiki/images/thumb/2/23/%E5%B0%8F%E5%A4%AA%E9%98%B3%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-%E5%B0%8F%E5%A4%AA%E9%98%B3%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
86	1	https://fgo.wiki/images/thumb/f/f9/%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X%E5%A4%B4%E5%83%8F1.png/150px-%E8%B0%9C%E4%B9%8B%E5%A5%B3%E4%B8%BB%E8%A7%92X%E5%A4%B4%E5%83%8F1.png
87	1	https://fgo.wiki/images/thumb/8/8a/Servant087%E6%AD%A3%E9%9D%A21.png/150px-Servant087%E6%AD%A3%E9%9D%A21.png
88	1	https://fgo.wiki/images/thumb/9/9c/Servant088%E6%AD%A3%E9%9D%A21.png/150px-Servant088%E6%AD%A3%E9%9D%A21.png
89	1	https://fgo.wiki/images/thumb/f/fd/Servant089%E6%AD%A3%E9%9D%A21.png/150px-Servant089%E6%AD%A3%E9%9D%A21.png
90	1	https://fgo.wiki/images/thumb/7/72/%E8%8A%B1%E5%AB%81%E5%A4%B4%E5%83%8F1.png/150px-%E8%8A%B1%E5%AB%81%E5%A4%B4%E5%83%8F1.png
91	1	https://fgo.wiki/images/thumb/e/ea/%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Saber%29-%E5%A4%B4%E5%83%8F1.png/150px-%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Saber%29-%E5%A4%B4%E5%83%8F1.png
92	1	https://fgo.wiki/images/thumb/8/86/%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Assassin%29-%E5%A4%B4%E5%83%8F.png/150px-%E4%B8%A4%E4%BB%AA%E5%BC%8F%28Assassin%29-%E5%A4%B4%E5%83%8F.png
93	1	https://fgo.wiki/images/thumb/6/6c/Servant093%E6%AD%A3%E9%9D%A21.png/150px-Servant093%E6%AD%A3%E9%9D%A21.png
94	1	https://fgo.wiki/images/thumb/b/be/%E9%98%BF%E6%96%AF%E6%89%98%E5%B0%94%E7%A6%8F%E5%A4%B4%E5%83%8F1%E6%AD%A3%E9%9D%A2.png/200px-%E9%98%BF%E6%96%AF%E6%89%98%E5%B0%94%E7%A6%8F%E5%A4%B4%E5%83%8F1%E6%AD%A3%E9%9D%A2.png
95	1	https://fgo.wiki/images/thumb/1/1e/%E5%B9%BC%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-%E5%B9%BC%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
141	1	https://fgo.wiki/images/thumb/4/4e/%E5%B9%BC%E8%B4%9E%E5%A4%B4%E5%83%8F.png/150px-%E5%B9%BC%E8%B4%9E%E5%A4%B4%E5%83%8F.png
96	1	https://fgo.wiki/images/thumb/3/3a/%E5%B2%A9%E7%AA%9F%E7%8E%8B%E5%A4%B4%E5%83%8F1.png/150px-%E5%B2%A9%E7%AA%9F%E7%8E%8B%E5%A4%B4%E5%83%8F1.png
97	1	https://fgo.wiki/images/thumb/e/ef/Servant097%E6%AD%A3%E9%9D%A21.png/150px-Servant097%E6%AD%A3%E9%9D%A21.png
98	1	https://fgo.wiki/images/thumb/b/b0/%E9%BB%91%E7%8B%97%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E9%BB%91%E7%8B%97%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
99	1	https://fgo.wiki/images/thumb/5/5a/%E6%A2%85%E8%8A%99%E5%A4%B4%E5%83%8F1.png/200px-%E6%A2%85%E8%8A%99%E5%A4%B4%E5%83%8F1.png
100	1	https://fgo.wiki/images/thumb/0/02/%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
101	1	https://fgo.wiki/images/thumb/2/21/%E7%BD%97%E6%91%A9%E5%A4%B4%E5%83%8F1.png/150px-%E7%BD%97%E6%91%A9%E5%A4%B4%E5%83%8F1.png
102	1	https://fgo.wiki/images/thumb/8/88/%E6%9D%8E%E5%A4%A7%E5%B8%88%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%9D%8E%E5%A4%A7%E5%B8%88%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
103	1	https://fgo.wiki/images/thumb/4/41/%E7%88%B1%E8%BF%AA%E7%94%9F1%E9%98%B6%E5%A4%B4%E5%83%8F.png/150px-%E7%88%B1%E8%BF%AA%E7%94%9F1%E9%98%B6%E5%A4%B4%E5%83%8F.png
104	1	https://fgo.wiki/images/thumb/f/f4/Servant104%E6%AD%A3%E9%9D%A21.png/150px-Servant104%E6%AD%A3%E9%9D%A21.png
105	1	https://fgo.wiki/images/thumb/3/31/Servant105%E6%AD%A3%E9%9D%A21.png/150px-Servant105%E6%AD%A3%E9%9D%A21.png
106	1	https://fgo.wiki/images/thumb/7/77/%E9%BB%91%E8%B4%9E%E5%A4%B4%E5%83%8F1.png/150px-%E9%BB%91%E8%B4%9E%E5%A4%B4%E5%83%8F1.png
107	1	https://fgo.wiki/images/thumb/9/9a/%E5%B0%8F%E5%AE%89%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%B0%8F%E5%AE%89%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
108	1	https://fgo.wiki/images/thumb/a/a1/Servant108%E6%AD%A3%E9%9D%A21.png/150px-Servant108%E6%AD%A3%E9%9D%A21.png
109	1	https://fgo.wiki/images/thumb/7/77/Servant109%E6%AD%A3%E9%9D%A21.png/150px-Servant109%E6%AD%A3%E9%9D%A21.png
110	1	https://fgo.wiki/images/thumb/6/62/Servant110%E6%AD%A3%E9%9D%A21.png/150px-Servant110%E6%AD%A3%E9%9D%A21.png
111	1	https://fgo.wiki/images/thumb/c/ce/Servant111%E6%AD%A3%E9%9D%A21.png/150px-Servant111%E6%AD%A3%E9%9D%A21.png
112	1	https://fgo.wiki/images/thumb/1/1a/%E9%85%92%E5%90%9E%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E9%85%92%E5%90%9E%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
113	1	https://fgo.wiki/images/thumb/a/ad/Servant113%E6%AD%A3%E9%9D%A21.png/150px-Servant113%E6%AD%A3%E9%9D%A21.png
114	1	https://fgo.wiki/images/thumb/9/97/Servant114%E6%AD%A3%E9%9D%A21.png/150px-Servant114%E6%AD%A3%E9%9D%A21.png
115	1	https://fgo.wiki/images/thumb/7/7c/%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Rider%EF%BC%89%E5%A4%B4%E5%83%8F.png/150px-%E5%9D%82%E7%94%B0%E9%87%91%E6%97%B6%EF%BC%88Rider%EF%BC%89%E5%A4%B4%E5%83%8F.png
116	1	https://fgo.wiki/images/thumb/7/7b/%E8%8C%A8%E6%9C%A8%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E8%8C%A8%E6%9C%A8%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
117	1	https://fgo.wiki/images/thumb/a/ab/Servant117%E6%AD%A3%E9%9D%A21.png/150px-Servant117%E6%AD%A3%E9%9D%A21.png
118	1	https://fgo.wiki/images/thumb/0/04/%E6%8B%89%E4%BA%8C%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-%E6%8B%89%E4%BA%8C%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
119	1	https://fgo.wiki/images/thumb/a/a5/%E7%99%BD%E6%9E%AA%E5%91%86%E5%A4%B4%E5%83%8F1.png/150px-%E7%99%BD%E6%9E%AA%E5%91%86%E5%A4%B4%E5%83%8F1.png
221	1	https://fgo.wiki/images/thumb/2/2c/Servant221%E6%AD%A3%E9%9D%A21.png/150px-Servant221%E6%AD%A3%E9%9D%A21.png
120	1	https://fgo.wiki/images/thumb/c/c1/%E5%B0%BC%E6%89%98%E5%A4%B4%E5%83%8F1.png/150px-%E5%B0%BC%E6%89%98%E5%A4%B4%E5%83%8F1.png
121	1	https://fgo.wiki/images/thumb/4/4a/%E5%89%91%E5%85%B0%E5%A4%B4%E5%83%8F1.png/150px-%E5%89%91%E5%85%B0%E5%A4%B4%E5%83%8F1.png
122	1	https://fgo.wiki/images/thumb/4/4d/Servant122%E6%AD%A3%E9%9D%A21.png/150px-Servant122%E6%AD%A3%E9%9D%A21.png
123	1	https://fgo.wiki/images/thumb/8/8a/Servant123%E6%AD%A3%E9%9D%A21.png/150px-Servant123%E6%AD%A3%E9%9D%A21.png
124	1	https://fgo.wiki/images/thumb/5/53/Servant124%E6%AD%A3%E9%9D%A21.png/150px-Servant124%E6%AD%A3%E9%9D%A21.png
125	1	https://fgo.wiki/images/thumb/1/17/Servant125%E6%AD%A3%E9%9D%A21.png/150px-Servant125%E6%AD%A3%E9%9D%A21.png
126	1	https://fgo.wiki/images/thumb/0/02/%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-%E8%B4%9D%E5%BE%B7%E7%BB%B4%E5%B0%94%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
127	1	https://fgo.wiki/images/thumb/8/85/Servant127%E6%AD%A3%E9%9D%A21.png/150px-Servant127%E6%AD%A3%E9%9D%A21.png
128	1	https://fgo.wiki/images/thumb/4/4e/%E7%8E%89%E8%97%BB%E5%89%8D%28%E6%B3%B3%E8%A3%85%29%E5%A4%B4%E5%83%8F1.png/150px-%E7%8E%89%E8%97%BB%E5%89%8D%28%E6%B3%B3%E8%A3%85%29%E5%A4%B4%E5%83%8F1.png
129	1	https://fgo.wiki/images/thumb/d/dd/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85Archer%E5%A4%B4%E5%83%8F1.png/150px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85Archer%E5%A4%B4%E5%83%8F1.png
130	1	https://fgo.wiki/images/thumb/9/9e/%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%28%E6%B3%B3%E8%A3%85%29%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E7%8E%9B%E4%B8%BD%C2%B7%E5%AE%89%E6%89%98%E7%93%A6%E5%86%85%E7%89%B9%28%E6%B3%B3%E8%A3%85%29%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
131	1	https://fgo.wiki/images/thumb/c/c9/Servant131%E6%AD%A3%E9%9D%A21.png/150px-Servant131%E6%AD%A3%E9%9D%A21.png
132	1	https://fgo.wiki/images/thumb/d/da/%E5%86%B2%E8%8E%AB%E5%A4%B4%E5%83%8F1.png/150px-%E5%86%B2%E8%8E%AB%E5%A4%B4%E5%83%8F1.png
133	1	https://fgo.wiki/images/thumb/a/a6/Servant133%E6%AD%A3%E9%9D%A21.png/150px-Servant133%E6%AD%A3%E9%9D%A21.png
134	1	https://fgo.wiki/images/thumb/b/bf/%E6%B8%85%E5%A7%AC%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%B8%85%E5%A7%AC%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
135	1	https://fgo.wiki/images/thumb/4/45/%E7%8E%9B%E5%B0%94%E8%BE%BEruler%E5%A4%B4%E5%83%8F1.png/150px-%E7%8E%9B%E5%B0%94%E8%BE%BEruler%E5%A4%B4%E5%83%8F1.png
136	1	https://fgo.wiki/images/thumb/4/4d/%E4%BC%8A%E8%8E%89%E9%9B%85%E5%A4%B4%E5%83%8F1.png/160px-%E4%BC%8A%E8%8E%89%E9%9B%85%E5%A4%B4%E5%83%8F1.png
137	1	https://fgo.wiki/images/thumb/9/9a/202700_status_servant_1.png/150px-202700_status_servant_1.png
138	1	https://fgo.wiki/images/thumb/9/91/Servant138%E6%AD%A3%E9%9D%A21.png/150px-Servant138%E6%AD%A3%E9%9D%A21.png
139	1	https://fgo.wiki/images/thumb/0/06/Servant139%E6%AD%A3%E9%9D%A21.png/150px-Servant139%E6%AD%A3%E9%9D%A21.png
140	1	https://fgo.wiki/images/thumb/b/b9/Servant140%E6%AD%A3%E9%9D%A21.png/150px-Servant140%E6%AD%A3%E9%9D%A21.png
142	1	https://fgo.wiki/images/thumb/1/12/%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E4%BC%8A%E4%BB%80%E5%A1%94%E5%B0%94%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
143	1	https://fgo.wiki/images/thumb/a/a9/Servant143%E6%AD%A3%E9%9D%A21.png/150px-Servant143%E6%AD%A3%E9%9D%A21.png
144	1	https://fgo.wiki/images/thumb/1/13/%E9%AD%81%E6%9C%AD%E5%B0%94%C2%B7%E7%A7%91%E4%BA%9A%E7%89%B9%E5%B0%94%E5%A4%B4%E5%83%8F1.png/150px-%E9%AD%81%E6%9C%AD%E5%B0%94%C2%B7%E7%A7%91%E4%BA%9A%E7%89%B9%E5%B0%94%E5%A4%B4%E5%83%8F1.png
145	1	https://fgo.wiki/images/thumb/7/79/C%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png/150px-C%E9%97%AA%E5%A4%B4%E5%83%8F%E5%88%9D%E5%A7%8B.png
146	1	https://fgo.wiki/images/thumb/f/fc/%E5%AE%89%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%AE%89%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
147	1	https://fgo.wiki/images/thumb/b/be/Servant147%E6%AD%A3%E9%9D%A21.png/150px-Servant147%E6%AD%A3%E9%9D%A21.png
148	1	https://fgo.wiki/images/thumb/a/a6/Servant148%E6%AD%A3%E9%9D%A21.png/150px-Servant148%E6%AD%A3%E9%9D%A21.png
150	1	https://fgo.wiki/images/thumb/7/75/%E6%A2%85%E6%9E%97%E9%98%B6%E6%AE%B51%E5%A4%B4%E5%83%8F.png/150px-%E6%A2%85%E6%9E%97%E9%98%B6%E6%AE%B51%E5%A4%B4%E5%83%8F.png
153	1	https://fgo.wiki/images/thumb/c/ca/%E6%AD%A6%E8%97%8F%E5%A4%B4%E5%83%8F1.png/150px-%E6%AD%A6%E8%97%8F%E5%A4%B4%E5%83%8F1.png
154	1	https://fgo.wiki/images/thumb/0/05/%E7%8E%8B%E5%93%88%E5%A4%B4%E5%83%8F1.png/150px-%E7%8E%8B%E5%93%88%E5%A4%B4%E5%83%8F1.png
155	1	https://fgo.wiki/images/thumb/d/d1/Bx%E5%A4%B4%E5%83%8F1.png/150px-Bx%E5%A4%B4%E5%83%8F1.png
156	1	https://fgo.wiki/images/thumb/4/42/Svt156%E5%A4%B4%E5%83%8F1.png/150px-Svt156%E5%A4%B4%E5%83%8F1.png
157	1	https://fgo.wiki/images/thumb/9/90/Servant157%E6%AD%A3%E9%9D%A21.png/150px-Servant157%E6%AD%A3%E9%9D%A21.png
158	1	https://fgo.wiki/images/thumb/f/fc/Servant158%E6%AD%A3%E9%9D%A21.png/150px-Servant158%E6%AD%A3%E9%9D%A21.png
159	1	https://fgo.wiki/images/thumb/c/c7/%E7%87%95%E9%9D%92%E5%A4%B4%E5%83%8F1.png/150px-%E7%87%95%E9%9D%92%E5%A4%B4%E5%83%8F1.png
160	1	https://fgo.wiki/images/thumb/9/9f/%E4%BA%9A%E7%91%9F%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1-%E5%A4%B4%E5%83%8F-1.png/150px-%E4%BA%9A%E7%91%9F%C2%B7%E6%BD%98%E5%BE%B7%E6%8B%89%E8%B4%A1-%E5%A4%B4%E5%83%8F-1.png
161	1	https://fgo.wiki/images/thumb/b/b2/Servant161%E6%AD%A3%E9%9D%A21.png/150px-Servant161%E6%AD%A3%E9%9D%A21.png
162	1	https://fgo.wiki/images/thumb/3/38/%E8%8C%B6%E8%8C%B6%E5%A4%B4%E5%83%8F.png/150px-%E8%8C%B6%E8%8C%B6%E5%A4%B4%E5%83%8F.png
163	1	https://fgo.wiki/images/thumb/d/de/Servant163%E6%AD%A3%E9%9D%A21.png/150px-Servant163%E6%AD%A3%E9%9D%A21.png
164	1	https://fgo.wiki/images/thumb/6/64/Servant164%E6%AD%A3%E9%9D%A21.png/150px-Servant164%E6%AD%A3%E9%9D%A21.png
165	1	https://fgo.wiki/images/thumb/9/9a/Servant165%E6%AD%A3%E9%9D%A21.png/150px-Servant165%E6%AD%A3%E9%9D%A21.png
166	1	https://fgo.wiki/images/thumb/3/35/BB%E5%A4%B4%E5%83%8F.png/150px-BB%E5%A4%B4%E5%83%8F.png
167	1	https://fgo.wiki/images/thumb/c/cc/Servant167%E6%AD%A3%E9%9D%A21.png/150px-Servant167%E6%AD%A3%E9%9D%A21.png
169	1	https://fgo.wiki/images/thumb/0/04/Servant169%E6%AD%A3%E9%9D%A21.png/150px-Servant169%E6%AD%A3%E9%9D%A21.png
170	1	https://fgo.wiki/images/thumb/0/0e/%E6%AD%A6%E5%88%99%E5%A4%A9%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%AD%A6%E5%88%99%E5%A4%A9%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
172	1	https://fgo.wiki/images/thumb/a/a6/Servant172%E6%AD%A3%E9%9D%A21.png/150px-Servant172%E6%AD%A3%E9%9D%A21.png
173	1	https://fgo.wiki/images/thumb/6/6b/%E7%A6%8F%E5%B0%94%E6%91%A9%E6%96%AF%E5%A4%B4%E5%83%8F1.png/150px-%E7%A6%8F%E5%B0%94%E6%91%A9%E6%96%AF%E5%A4%B4%E5%83%8F1.png
174	1	https://fgo.wiki/images/thumb/e/ea/%E7%8F%AD%E6%89%AC%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E7%8F%AD%E6%89%AC%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
175	1	https://fgo.wiki/images/thumb/6/6d/Servant175%E6%AD%A3%E9%9D%A21.png/150px-Servant175%E6%AD%A3%E9%9D%A21.png
176	1	https://fgo.wiki/images/thumb/b/ba/Servant176%E6%AD%A3%E9%9D%A21.png/150px-Servant176%E6%AD%A3%E9%9D%A21.png
177	1	https://fgo.wiki/images/thumb/9/91/%E5%B0%BC%E6%89%98%E5%85%8B%E4%B8%BD%E4%B8%9DAssassin%E5%A4%B4%E5%83%8F1.png/150px-%E5%B0%BC%E6%89%98%E5%85%8B%E4%B8%BD%E4%B8%9DAssassin%E5%A4%B4%E5%83%8F1.png
178	1	https://fgo.wiki/images/thumb/c/c6/%E7%8B%82%E4%BF%A1%E9%95%BF%E5%A4%B4%E5%83%8F1.png/150px-%E7%8B%82%E4%BF%A1%E9%95%BF%E5%A4%B4%E5%83%8F1.png
179	1	https://fgo.wiki/images/thumb/9/91/%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85AlterRider%E5%A4%B4%E5%83%8F1.png/150px-%E9%98%BF%E5%B0%94%E6%89%98%E8%8E%89%E9%9B%85AlterRider%E5%A4%B4%E5%83%8F1.png
180	1	https://fgo.wiki/images/thumb/7/78/%E6%B3%B3%E8%A3%85%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%B3%B3%E8%A3%85%E6%B5%B7%E4%BC%A6%E5%A8%9C%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
181	1	https://fgo.wiki/images/thumb/8/85/Servant181%E6%AD%A3%E9%9D%A21.png/150px-Servant181%E6%AD%A3%E9%9D%A21.png
182	1	https://fgo.wiki/images/thumb/5/59/Servant182%E6%AD%A3%E9%9D%A21.png/150px-Servant182%E6%AD%A3%E9%9D%A21.png
183	1	https://fgo.wiki/images/thumb/8/8d/Servant183%E6%AD%A3%E9%9D%A21.png/150px-Servant183%E6%AD%A3%E9%9D%A21.png
184	1	https://fgo.wiki/images/thumb/3/36/Servant184%E6%AD%A3%E9%9D%A21.png/150px-Servant184%E6%AD%A3%E9%9D%A21.png
185	1	https://fgo.wiki/images/thumb/5/5b/%E5%8D%83%E4%BB%A3%E5%A5%B3%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%8D%83%E4%BB%A3%E5%A5%B3%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
186	1	https://fgo.wiki/images/thumb/c/cc/Servant186%E6%AD%A3%E9%9D%A21.png/150px-Servant186%E6%AD%A3%E9%9D%A21.png
187	1	https://fgo.wiki/images/thumb/2/2e/Servant187%E6%AD%A3%E9%9D%A21.png/150px-Servant187%E6%AD%A3%E9%9D%A21.png
188	1	https://fgo.wiki/images/thumb/6/68/Servant188%E6%AD%A3%E9%9D%A21.png/150px-Servant188%E6%AD%A3%E9%9D%A21.png
189	1	https://fgo.wiki/images/thumb/a/ae/%E5%88%91%E9%83%A8%E5%A7%AC%E5%A4%B4%E5%83%8F1.png/150px-%E5%88%91%E9%83%A8%E5%A7%AC%E5%A4%B4%E5%83%8F1.png
190	1	https://fgo.wiki/images/thumb/5/58/Servant190%E6%AD%A3%E9%9D%A21.png/150px-Servant190%E6%AD%A3%E9%9D%A21.png
191	1	https://fgo.wiki/images/thumb/4/4e/Servant191%E6%AD%A3%E9%9D%A21.png/150px-Servant191%E6%AD%A3%E9%9D%A21.png
192	1	https://fgo.wiki/images/thumb/4/46/Circe%E5%A4%B4%E5%83%8F1.png/200px-Circe%E5%A4%B4%E5%83%8F1.png
193	1	https://fgo.wiki/images/thumb/1/12/Servant193%E6%AD%A3%E9%9D%A21.png/150px-Servant193%E6%AD%A3%E9%9D%A21.png
194	1	https://fgo.wiki/images/thumb/6/6a/Servant194%E6%AD%A3%E9%9D%A21.png/150px-Servant194%E6%AD%A3%E9%9D%A21.png
195	1	https://fgo.wiki/images/thumb/9/90/%E9%98%BF%E6%AF%94%E7%9B%96%E5%B0%94%C2%B7%E5%88%9D%E5%A7%8B%C2%B7%E5%A4%B4%E5%83%8F.png/200px-%E9%98%BF%E6%AF%94%E7%9B%96%E5%B0%94%C2%B7%E5%88%9D%E5%A7%8B%C2%B7%E5%A4%B4%E5%83%8F.png
196	1	https://fgo.wiki/images/thumb/4/45/%E8%89%BE%E8%95%BE%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E8%89%BE%E8%95%BE%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
197	1	https://fgo.wiki/images/thumb/2/23/%E9%98%BF%E8%92%82%E6%8B%89%E5%9C%A3%E8%AF%9E%E5%A4%B4%E5%83%8F.png/150px-%E9%98%BF%E8%92%82%E6%8B%89%E5%9C%A3%E8%AF%9E%E5%A4%B4%E5%83%8F.png
198	1	https://fgo.wiki/images/thumb/d/d9/Servant198%E6%AD%A3%E9%9D%A21.png/150px-Servant198%E6%AD%A3%E9%9D%A21.png
199	1	https://fgo.wiki/images/thumb/7/79/%E5%A5%B3%E5%B8%9D%E5%A4%B4%E5%83%8F1.png/150px-%E5%A5%B3%E5%B8%9D%E5%A4%B4%E5%83%8F1.png
200	1	https://fgo.wiki/images/thumb/e/ef/%E6%B5%85%E4%B8%8A%E8%97%A4%E4%B9%83%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E6%B5%85%E4%B8%8A%E8%97%A4%E4%B9%83%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
201	1	https://fgo.wiki/images/thumb/7/7c/Servant201%E6%AD%A3%E9%9D%A21.png/150px-Servant201%E6%AD%A3%E9%9D%A21.png
202	1	https://fgo.wiki/images/thumb/5/5b/%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92%EF%BC%88Alter%EF%BC%89%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E9%98%BF%E5%A1%94%E5%85%B0%E5%BF%92%EF%BC%88Alter%EF%BC%89%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
203	1	https://fgo.wiki/images/thumb/c/c9/Servant203%E6%AD%A3%E9%9D%A21.png/150px-Servant203%E6%AD%A3%E9%9D%A21.png
204	1	https://fgo.wiki/images/thumb/e/e1/Servant204%E6%AD%A3%E9%9D%A21.png/150px-Servant204%E6%AD%A3%E9%9D%A21.png
205	1	https://fgo.wiki/images/thumb/e/ea/Servant205%E6%AD%A3%E9%9D%A21.png/150px-Servant205%E6%AD%A3%E9%9D%A21.png
206	1	https://fgo.wiki/images/thumb/c/cd/%E9%98%BF%E5%96%80%E7%90%89%E6%96%AF-%E5%A4%B4%E5%83%8F-1.png/150px-%E9%98%BF%E5%96%80%E7%90%89%E6%96%AF-%E5%A4%B4%E5%83%8F-1.png
207	1	https://fgo.wiki/images/thumb/f/fa/%E5%96%80%E6%88%8E%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png/150px-%E5%96%80%E6%88%8E%E5%88%9D%E5%A7%8B%E5%A4%B4%E5%83%8F.png
208	1	https://fgo.wiki/images/thumb/d/d8/Servant208%E6%AD%A3%E9%9D%A21.png/150px-Servant208%E6%AD%A3%E9%9D%A21.png
209	1	https://fgo.wiki/images/thumb/f/f0/%E5%86%B2%E7%94%B0%E6%80%BB%E5%8F%B8%28Alter%29%E5%A4%B4%E5%83%8F1.png/150px-%E5%86%B2%E7%94%B0%E6%80%BB%E5%8F%B8%28Alter%29%E5%A4%B4%E5%83%8F1.png
210	1	https://fgo.wiki/images/thumb/2/28/%E5%86%88%E7%94%B0%E4%BB%A5%E8%97%8F%E5%A4%B4%E5%83%8F1.png/150px-%E5%86%88%E7%94%B0%E4%BB%A5%E8%97%8F%E5%A4%B4%E5%83%8F1.png
211	1	https://fgo.wiki/images/thumb/c/c9/%E5%9D%82%E6%9C%AC%E9%BE%99%E9%A9%AC%E5%A4%B4%E5%83%8F.png/150px-%E5%9D%82%E6%9C%AC%E9%BE%99%E9%A9%AC%E5%A4%B4%E5%83%8F.png
213	1	https://fgo.wiki/images/thumb/9/9a/Servant213%E6%AD%A3%E9%9D%A21.png/150px-Servant213%E6%AD%A3%E9%9D%A21.png
214	1	https://fgo.wiki/images/thumb/b/b1/Servant214%E6%AD%A3%E9%9D%A21.png/150px-Servant214%E6%AD%A3%E9%9D%A21.png
216	1	https://fgo.wiki/images/thumb/7/76/Servant216%E6%AD%A3%E9%9D%A21.png/150px-Servant216%E6%AD%A3%E9%9D%A21.png
217	1	https://fgo.wiki/images/thumb/e/e0/Servant217%E6%AD%A3%E9%9D%A21.png/150px-Servant217%E6%AD%A3%E9%9D%A21.png
218	1	https://fgo.wiki/images/thumb/e/e6/Servant218%E6%AD%A3%E9%9D%A21.png/150px-Servant218%E6%AD%A3%E9%9D%A21.png
219	1	https://fgo.wiki/images/thumb/9/95/Servant219%E6%AD%A3%E9%9D%A21.png/150px-Servant219%E6%AD%A3%E9%9D%A21.png
220	1	https://fgo.wiki/images/thumb/f/f9/Servant220%E6%AD%A3%E9%9D%A21.png/150px-Servant220%E6%AD%A3%E9%9D%A21.png
222	1	https://fgo.wiki/images/thumb/f/f9/Servant222%E6%AD%A3%E9%9D%A21.png/150px-Servant222%E6%AD%A3%E9%9D%A21.png
224	1	https://fgo.wiki/images/thumb/7/7d/Servant224%E6%AD%A3%E9%9D%A21.png/150px-Servant224%E6%AD%A3%E9%9D%A21.png
225	1	https://fgo.wiki/images/thumb/5/53/Servant225%E6%AD%A3%E9%9D%A21.png/150px-Servant225%E6%AD%A3%E9%9D%A21.png
226	1	https://fgo.wiki/images/thumb/1/19/Servant226%E6%AD%A3%E9%9D%A21.png/150px-Servant226%E6%AD%A3%E9%9D%A21.png
227	1	https://fgo.wiki/images/thumb/9/97/Servant227%E6%AD%A3%E9%9D%A21.png/150px-Servant227%E6%AD%A3%E9%9D%A21.png
228	1	https://fgo.wiki/images/thumb/d/dd/Servant228%E6%AD%A3%E9%9D%A21.png/150px-Servant228%E6%AD%A3%E9%9D%A21.png
229	1	https://fgo.wiki/images/thumb/0/08/%E7%A7%A6%E5%A7%8B%E7%9A%87_%E6%AD%A3%E9%9D%A21.png/150px-%E7%A7%A6%E5%A7%8B%E7%9A%87_%E6%AD%A3%E9%9D%A21.png
230	1	https://fgo.wiki/images/thumb/0/01/%E8%99%9E%E5%A7%AC_%E6%AD%A3%E9%9D%A21.png/150px-%E8%99%9E%E5%A7%AC_%E6%AD%A3%E9%9D%A21.png
231	1	https://fgo.wiki/images/thumb/b/b3/%E8%B5%A4%E5%85%94%E9%A9%AC_%E6%AD%A3%E9%9D%A21.png/150px-%E8%B5%A4%E5%85%94%E9%A9%AC_%E6%AD%A3%E9%9D%A21.png
232	1	https://fgo.wiki/images/thumb/5/58/%E5%B8%83%E6%8B%89%E8%BE%BE%E6%9B%BC%E7%89%B9_1.png/150px-%E5%B8%83%E6%8B%89%E8%BE%BE%E6%9B%BC%E7%89%B9_1.png
234	1	https://fgo.wiki/images/thumb/6/60/%E7%BA%A2%E9%98%8E%E9%AD%94_1.png/150px-%E7%BA%A2%E9%98%8E%E9%AD%94_1.png
235	1	https://fgo.wiki/images/thumb/9/9b/%E6%9D%8E%E4%B9%A6%E6%96%87_1.png/150px-%E6%9D%8E%E4%B9%A6%E6%96%87_1.png
237	1	https://fgo.wiki/images/thumb/f/fd/%E7%B4%AB%E5%BC%8F%E9%83%A8_icon_1.png/150px-%E7%B4%AB%E5%BC%8F%E9%83%A8_icon_1.png
238	1	https://fgo.wiki/images/thumb/b/b9/%E5%B8%9D%E7%8E%8B%E8%8A%B1_1.png/150px-%E5%B8%9D%E7%8E%8B%E8%8A%B1_1.png
236	1	https://fgo.wiki/images/thumb/5/5a/%E7%BE%8E%E6%B8%B8_icon_1.png/150px-%E7%BE%8E%E6%B8%B8_icon_1.png
223	1	https://fgo.wiki/images/thumb/3/38/Servant223%E6%AD%A3%E9%9D%A21.png/150px-Servant223%E6%AD%A3%E9%9D%A21.png
212	1	https://fgo.wiki/images/thumb/a/af/Servant212%E6%AD%A3%E9%9D%A21.png/150px-Servant212%E6%AD%A3%E9%9D%A21.png
215	1	https://fgo.wiki/images/thumb/e/ea/Servant215%E6%AD%A3%E9%9D%A21.png/150px-Servant215%E6%AD%A3%E9%9D%A21.png
233	1	https://fgo.wiki/images/thumb/a/a9/%E7%BE%BD%E8%9B%87%E7%A5%9E_1.png/150px-%E7%BE%BD%E8%9B%87%E7%A5%9E_1.png
\.


--
-- Data for Name: voice_actor; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.voice_actor (voice_actor_name, voice_actor_id) FROM stdin;
小山力也	1
小见川千明	2
诹访部顺一	3
早见沙织	4
东山奈央	5
浪川大辅	6
悠木碧	7
户松遥	8
雨宫天	9
大冢明夫	10
大久保瑠美	11
能登麻美子	12
潘惠美	13
绿川光	14
佐藤聪美	15
阿澄佳奈	16
置鲇龙太郎	17
津田健次郎	18
小松未可子	19
大和田仁美	20
明坂聪美	21
小仓唯	22
福山润	23
福圆美里	24
冈本信彦	25
泽城美雪	26
坂本真绫	27
下屋则子	28
武内骏辅	29
茅野爱衣	30
高桥李依	31
中村悠一	32
阿部彬名	33
中井和哉	34
关俊彦	35
名塚佳织	36
野中蓝	37
伊濑茉莉也	38
稻田彻	39
宫野真守	40
寺岛拓笃	41
水岛大宙	42
岛崎信长	43
内山昂辉	44
茜屋日海夏	45
千本木彩花	46
田中敦子	47
神奈延年	48
子安武人	49
大冢芳忠	50
嶋村侑	51
原由实	52
古川慎	53
远藤绫	54
宫本充	55
鹤冈聪	56
西前忠久	57
鸟海浩辅	58
久野美咲	59
安井邦彦	60
土师孝也	61
游佐浩二	62
铃村健一	63
门胁舞以	64
高野直子	65
星野贵纪	66
田中美海	67
真堂圭	68
金元寿子	69
钉宫理惠	70
大原沙耶香	71
吉野裕行	72
竹内良太	73
樱井孝宏	74
小林优	75
关智一	76
山路和弘	77
日野聪	78
黑田崇矢	79
高乃丽	80
Yukana	81
佐仓绫音	82
花江夏树	83
川澄绫子	84
三木真一郎	85
斋藤千和	86
浅川悠	87
加濑康之	88
伊藤美纪	89
山寺宏一	90
种田梨沙	91
丹下樱	92
井泽诗织	93
森永千才	94
井上喜久子	95
中田让治	96
森奈奈子	97
江川央生	98
植田佳奈	99
堀江由衣	100
田中理惠	101
\.


--
-- Data for Name: writer; Type: TABLE DATA; Schema: public; Owner: ubuntu
--

COPY public.writer (writer_id, writer_name) FROM stdin;
1	托马斯·马洛礼
2	盐野七生
6	英雄王
\.


--
-- Name: alignment_alignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.alignment_alignment_id_seq', 15, true);


--
-- Name: article_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.article_article_id_seq', 5, true);


--
-- Name: author_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.author_author_id_seq', 4, true);


--
-- Name: book_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.book_book_id_seq', 23, true);


--
-- Name: class_class_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.class_class_id_seq', 13, true);


--
-- Name: illustrator_illustrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.illustrator_illustrator_id_seq', 66, true);


--
-- Name: origin_origin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.origin_origin_id_seq', 58, true);


--
-- Name: pedia_name_pedia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.pedia_name_pedia_id_seq', 4, true);


--
-- Name: prototype_prototype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.prototype_prototype_id_seq', 170, true);


--
-- Name: region_region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.region_region_id_seq', 45, true);


--
-- Name: voice_actor_voice_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.voice_actor_voice_actor_id_seq', 101, true);


--
-- Name: writer_writer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ubuntu
--

SELECT pg_catalog.setval('public.writer_writer_id_seq', 6, true);


--
-- Name: alignment alignment_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.alignment
    ADD CONSTRAINT alignment_pkey PRIMARY KEY (alignment_id);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (article_id);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);


--
-- Name: book_and_writer book_and_writer_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.book_and_writer
    ADD CONSTRAINT book_and_writer_pkey PRIMARY KEY (book_id, writer_id);


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);


--
-- Name: class class_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.class
    ADD CONSTRAINT class_pkey PRIMARY KEY (class_id);


--
-- Name: illustrator illustrator_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.illustrator
    ADD CONSTRAINT illustrator_pkey PRIMARY KEY (illustrator_id);


--
-- Name: origin_and_article origin_and_article_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_article
    ADD CONSTRAINT origin_and_article_pkey PRIMARY KEY (origin_id, article_id);


--
-- Name: origin_and_book origin_and_book_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_book
    ADD CONSTRAINT origin_and_book_pkey PRIMARY KEY (origin_id, book_id);


--
-- Name: origin origin_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin
    ADD CONSTRAINT origin_pkey PRIMARY KEY (origin_id);


--
-- Name: pedia_name pedia_name_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.pedia_name
    ADD CONSTRAINT pedia_name_pkey PRIMARY KEY (pedia_id);


--
-- Name: pedia pedia_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.pedia
    ADD CONSTRAINT pedia_pkey PRIMARY KEY (prototype_id, pedia_id);


--
-- Name: servent pk_servent; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent
    ADD CONSTRAINT pk_servent PRIMARY KEY (servent_id);


--
-- Name: bond pk_servent_bond; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.bond
    ADD CONSTRAINT pk_servent_bond PRIMARY KEY (bond_id, servent_id);


--
-- Name: prototype_and_origin prototype_and_origin_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_origin
    ADD CONSTRAINT prototype_and_origin_pkey PRIMARY KEY (prototype_id, origin_id);


--
-- Name: prototype_and_region prototype_and_region_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_region
    ADD CONSTRAINT prototype_and_region_pkey PRIMARY KEY (prototype_id, region_id);


--
-- Name: prototype prototype_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype
    ADD CONSTRAINT prototype_pkey PRIMARY KEY (prototype_id);


--
-- Name: region_and_article region_and_article_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_article
    ADD CONSTRAINT region_and_article_pkey PRIMARY KEY (region_id, article_id);


--
-- Name: region_and_book region_and_book_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_book
    ADD CONSTRAINT region_and_book_pkey PRIMARY KEY (region_id, book_id);


--
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (region_id);


--
-- Name: servent_and_alignment servent_and_alignment_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_alignment
    ADD CONSTRAINT servent_and_alignment_pkey PRIMARY KEY (servent_id, alignment_id);


--
-- Name: servent_and_class servent_and_class_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_class
    ADD CONSTRAINT servent_and_class_pkey PRIMARY KEY (servent_id, class_id);


--
-- Name: servent_and_illustrator servent_and_illustrator_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_illustrator
    ADD CONSTRAINT servent_and_illustrator_pkey PRIMARY KEY (servent_id, illustrator_id);


--
-- Name: servent_and_prototype servent_and_prototype_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_prototype
    ADD CONSTRAINT servent_and_prototype_pkey PRIMARY KEY (servent_id, prototype_id);


--
-- Name: servent_and_voice_actor servent_and_voice_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_voice_actor
    ADD CONSTRAINT servent_and_voice_actor_pkey PRIMARY KEY (servent_id, voice_actor_id);


--
-- Name: servent_bond servent_bond_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_bond
    ADD CONSTRAINT servent_bond_pkey PRIMARY KEY (servent_id, bond_id);


--
-- Name: servent_full_pic servent_full_pic_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_full_pic
    ADD CONSTRAINT servent_full_pic_pkey PRIMARY KEY (servent_id, full_pic_id);


--
-- Name: servent_profile_pic servent_profile_pic_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_profile_pic
    ADD CONSTRAINT servent_profile_pic_pkey PRIMARY KEY (servent_id, profile_pic_id);


--
-- Name: voice_actor voice_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.voice_actor
    ADD CONSTRAINT voice_actor_pkey PRIMARY KEY (voice_actor_id);


--
-- Name: writer writer_pkey; Type: CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.writer
    ADD CONSTRAINT writer_pkey PRIMARY KEY (writer_id);


--
-- Name: alignment_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX alignment_name ON public.alignment USING btree (alignment_name);


--
-- Name: class_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX class_name ON public.class USING btree (class_name);


--
-- Name: origin_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX origin_name ON public.origin USING btree (origin_name);


--
-- Name: prototype_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX prototype_name ON public.prototype USING btree (prototype_name);


--
-- Name: region_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX region_name ON public.region USING btree (region_name);


--
-- Name: servent_name; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX servent_name ON public.servent USING btree (servent_name);


--
-- Name: author_and_article author_and_article_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.author_and_article
    ADD CONSTRAINT author_and_article_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.article (article_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: author_and_article author_and_article_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.author_and_article
    ADD CONSTRAINT author_and_article_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author (author_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: bond bond_and_servent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.bond
    ADD CONSTRAINT bond_and_servent_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: book_and_writer book_and_writer_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.book_and_writer
    ADD CONSTRAINT book_and_writer_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book (book_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: book_and_writer book_and_writer_writer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.book_and_writer
    ADD CONSTRAINT book_and_writer_writer_id_fkey FOREIGN KEY (writer_id) REFERENCES public.writer (writer_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: origin_and_article origin_and_article_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_article
    ADD CONSTRAINT origin_and_article_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.article (article_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: origin_and_article origin_and_article_origin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_article
    ADD CONSTRAINT origin_and_article_origin_id_fkey FOREIGN KEY (origin_id) REFERENCES public.origin (origin_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: origin_and_book origin_and_book_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_book
    ADD CONSTRAINT origin_and_book_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book (book_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: origin_and_book origin_and_book_origin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.origin_and_book
    ADD CONSTRAINT origin_and_book_origin_id_fkey FOREIGN KEY (origin_id) REFERENCES public.origin (origin_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pedia pedia_pedia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.pedia
    ADD CONSTRAINT pedia_pedia_id_fkey FOREIGN KEY (pedia_id) REFERENCES public.pedia_name (pedia_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pedia pedia_prototype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.pedia
    ADD CONSTRAINT pedia_prototype_id_fkey FOREIGN KEY (prototype_id) REFERENCES public.prototype (prototype_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prototype_and_origin prototype_and_origin_origin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_origin
    ADD CONSTRAINT prototype_and_origin_origin_id_fkey FOREIGN KEY (origin_id) REFERENCES public.origin (origin_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prototype_and_origin prototype_and_origin_prototype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_origin
    ADD CONSTRAINT prototype_and_origin_prototype_id_fkey FOREIGN KEY (prototype_id) REFERENCES public.prototype (prototype_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prototype_and_region prototype_and_region_prototype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_region
    ADD CONSTRAINT prototype_and_region_prototype_id_fkey FOREIGN KEY (prototype_id) REFERENCES public.prototype (prototype_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prototype_and_region prototype_and_region_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.prototype_and_region
    ADD CONSTRAINT prototype_and_region_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.region (region_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_and_article region_and_article_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_article
    ADD CONSTRAINT region_and_article_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.article (article_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_and_article region_and_article_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_article
    ADD CONSTRAINT region_and_article_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.region (region_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_and_book region_and_book_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_book
    ADD CONSTRAINT region_and_book_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book (book_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: region_and_book region_and_book_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.region_and_book
    ADD CONSTRAINT region_and_book_region_id_fkey FOREIGN KEY (region_id) REFERENCES public.region (region_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_alignment servent_and_alignment_alignment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_alignment
    ADD CONSTRAINT servent_and_alignment_alignment_id_fkey FOREIGN KEY (alignment_id) REFERENCES public.alignment (alignment_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_alignment servent_and_alignment_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_alignment
    ADD CONSTRAINT servent_and_alignment_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_class servent_and_class_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_class
    ADD CONSTRAINT servent_and_class_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.class (class_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_class servent_and_class_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_class
    ADD CONSTRAINT servent_and_class_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_illustrator servent_and_illustrator_illustrator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_illustrator
    ADD CONSTRAINT servent_and_illustrator_illustrator_id_fkey FOREIGN KEY (illustrator_id) REFERENCES public.illustrator (illustrator_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_illustrator servent_and_illustrator_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_illustrator
    ADD CONSTRAINT servent_and_illustrator_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_prototype servent_and_prototype_prototype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_prototype
    ADD CONSTRAINT servent_and_prototype_prototype_id_fkey FOREIGN KEY (prototype_id) REFERENCES public.prototype (prototype_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_prototype servent_and_prototype_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_prototype
    ADD CONSTRAINT servent_and_prototype_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_voice_actor servent_and_voice_actor_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_voice_actor
    ADD CONSTRAINT servent_and_voice_actor_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_and_voice_actor servent_and_voice_actor_voice_actor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_and_voice_actor
    ADD CONSTRAINT servent_and_voice_actor_voice_actor_id_fkey FOREIGN KEY (voice_actor_id) REFERENCES public.voice_actor (voice_actor_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_bond servent_bond_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_bond
    ADD CONSTRAINT servent_bond_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_full_pic servent_full_pic_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_full_pic
    ADD CONSTRAINT servent_full_pic_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: servent_profile_pic servent_profile_pic_servent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ubuntu
--

ALTER TABLE ONLY public.servent_profile_pic
    ADD CONSTRAINT servent_profile_pic_servent_id_fkey FOREIGN KEY (servent_id) REFERENCES public.servent (servent_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

