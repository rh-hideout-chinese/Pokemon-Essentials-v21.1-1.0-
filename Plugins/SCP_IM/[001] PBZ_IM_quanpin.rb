﻿#--------------------------------------------------------------------------
# Ｚ 全拼输入法引擎
#--------------------------------------------------------------------------
class PBZ_IM_quanpin < Array
  #--------------------------------------------------------------------------
  # ● 定义实例变量
  #--------------------------------------------------------------------------
  attr_reader   :value         #输入法内容
  #----------------------------------------------------------------------------
  # ● 全键盘按键列表。
  #---------------------------------------------------------------------------- 
  PY = {
    'a' => '阿啊腌',
    'ai' => '哎哀埃挨唉癌矮蔼艾爱暧碍隘',
    'an' => '安氨鞍庵俺岸按案胺暗黯',
    'ang' => '肮昂盎',
    'ao' => '凹熬敖遨獒嗷鳌翱袄坳傲骜鏊奥澳懊',
    'ba' => '八扒叭巴芭吧疤笆粑捌拔跋把靶钯坝爸罢霸灞鲅',
    'bai' => '掰白百佰伯柏摆败拜稗',
    'ban' => '扳颁班斑般搬癍阪坂板版钣办半伴拌绊扮瓣',
    'bang' => '邦帮梆浜绑榜膀蚌棒傍谤磅镑',
    'bao' => '包苞孢胞剥煲褒雹薄饱宝保葆堡褓鸨报抱鲍豹暴爆曝',
    'bei' => '杯卑碑悲北贝呗狈钡备惫倍蓓碚焙悖被辈',
    'ben' => '奔贲本苯笨',
    'beng' => '崩绷嘣甭迸泵蚌',
    'bi' => '哔逼鼻匕比妣彼笔鄙币必秘闭庇陛毙畀痹婢俾裨蔽弊弼蓖辟壁避臂碧璧',
    'bian' => '边编蝙鳊煸鞭贬匾变便遍辨辫辩卞汴苄',
    'biao' => '标彪骠镖飙表裱',
    'bie' => '瘪憋鳖别蹩',
    'bin' => '宾滨缤彬斌濒殡膑鬓',
    'bing' => '冰兵槟丙柄秉饼禀并病',
    'bo' => '波拨玻菠钵饽剥播伯泊柏铂舶箔驳勃脖渤钹帛亳搏博膊薄礴跛啵卜',
    'bu' => '补捕哺逋不布步部怖埠簿卜',
    'ca' => '擦嚓',
    'cai' => '猜才材财裁采彩睬踩菜蔡',
    'can' => '参餐残蚕惭惨灿璨',
    'cang' => '仓苍沧舱藏',
    'cao' => '操糙曹嘈槽草',
    'ce' => '册侧厕测恻策',
    'cen' => '岑参',
    'ceng' => '层曾蹭',
    'cha' => '叉杈插差喳嚓茬茶查衩岔诧姹刹',
    'chai' => '拆柴钗豺',
    'chan' => '掺搀婵禅蝉馋缠阐蟾产铲忏颤',
    'chang' => '伥昌猖长肠尝偿倘嫦裳厂敞怅畅倡唱',
    'chao' => '抄超钞巢朝嘲潮吵炒焯',
    'che' => '车扯彻澈撤掣',
    'chen' => '抻琛嗔尘臣辰晨沉陈忱衬称趁',
    'cheng' => '称撑瞠蛏成诚城盛丞呈程承乘惩澄橙逞骋秤',
    'chi' => '吃哧嗤痴池弛驰匙迟持尺齿侈耻叱斥赤炽翅',
    'chon' => '冲充舂憧虫重崇宠铳',
    'chong' => '冲充舂憧虫重崇宠铳',
    'chou' => '抽仇筹踌惆稠酬愁丑愁臭',
    'chu' => '出初雏除厨橱锄躇处杵础储褚楚怵畜触矗',
    'chuai' => '揣踹',
    'chuan' => '川穿氚钏传船喘舛串',
    'chuang' => '创疮窗床幢闯怆',
    'chui' => '吹炊垂锤捶陲槌',
    'chun' => '春椿纯唇淳醇鹑蠢',
    'chuo' => '戳啜辍绰龊',
    'ci' => '差疵茨词祠雌瓷慈磁辞此次伺赐刺',
    'con' => '匆葱聪囱从丛枞琮',
    'cong' => '匆葱聪囱从丛枞琮',
    'cou' => '凑',
    'cu' => '粗猝促醋簇蹴殂蹙',
    'cuan' => '汆蹿攒窜篡',
    'cui' => '崔催摧璀萃粹悴淬翠脆',
    'cun' => '村存寸',
    'cuo' => '搓磋蹉撮挫矬锉措错',
    'da' => '搭耷答笪达妲沓打大哒嗒',
    'dai' => '呆待歹逮傣代岱玳贷袋黛殆怠戴',
    'dan' => '丹担单郸眈耽胆疸掸旦但诞惮弹蛋淡啖氮澹',
    'dang' => '当铛裆挡党档荡宕',
    'dao' => '刀叨氘导岛捣倒祷蹈盗悼道稻',
    'de' => '的得德地',
    'dei' => '得',
    'den' => '灯登噔蹬等邓凳澄瞪',
    'deng' => '灯登噔蹬等邓凳澄瞪',
    'di' => '低堤提滴狄迪笛敌嘀嫡涤抵底地弟第递娣睇帝蒂缔棣',
    'dia' => '嗲',
    'dian' => '掂滇颠巅癫典碘点电店惦踮佃甸玷垫淀靛奠殿',
    'diao' => '刁叼凋碉雕鲷貂吊钓调掉',
    'die' => '爹跌迭碟喋谍叠',
    'din' => '丁叮盯钉町酊顶鼎订定锭腚',
    'ding' => '丁叮盯钉町酊顶鼎订定锭腚',
    'diu' => '丢',
    'don' => '东冬咚氡董懂动冻栋侗峒恫胴',
    'dong' => '东冬咚氡董懂动冻栋侗峒恫胴',
    'dou' => '都兜斗抖蚪陡豆逗痘窦',
    'du' => '都嘟督毒独读渎犊肚堵睹赌笃杜妒度渡镀',
    'duan' => '端短段断缎锻煅',
    'dui' => '堆队对怼兑',
    'dun' => '吨敦墩礅蹲盹沌炖囤顿盾遁',
    'duo' => '多哆掇夺咄踱朵躲剁垛跺铎驮舵堕惰',
    'e'=> '讹俄娥鹅蛾峨额恶厄呃扼轭饿鄂鳄遏噩',
    'ei' => '诶',
    'en' => '恩嗯摁',
    'er' => '儿而鸸尔迩耳饵洱贰',
    'fa' => '发乏伐阀筏罚法砝珐',
    'fan' => '帆番幡翻凡矾梵烦樊繁反返犯范饭贩泛',
    'fang' => '方坊芳防妨肪房仿访纺舫放',
    'fei' => '飞妃非菲啡绯霏扉蜚肥匪诽斐翡吠肺沸费废痱',
    'fen' => '分芬吩纷汾酚坟焚粉份氛奋忿愤',
    'feng' => '丰风枫疯封峰锋蜂烽冯逢讽凤奉俸',
    'fo' => '佛',
    'fou' => '否缶',
    'fu' => '夫肤孵敷扶芙伏袱茯弗佛拂氟孚俘符浮服幅辐福涪斧釜抚甫辅脯府俯腑腐讣父赴附咐驸负妇阜复腹覆副富赋傅缚',
    'ga' => '伽咖嘎旮尬',
    'gai' => '该赅改丐钙盖概溉',
    'gan' => '干杆肝甘坩柑尴秆竿赶敢感擀赣淦',
    'gang' => '冈刚岗钢纲肛缸罡港杠',
    'gao' => '高膏羔糕搞稿镐告',
    'ge' => '戈疙咯胳搁哥歌鸽割革阁格骼隔蛤葛个各膈铬',
    'gei' => '给',
    'gen' => '跟根艮',
    'geng' => '更耕羹庚哽梗埂耿鲠',
    'gon' => '工攻功弓躬公蚣供龚宫恭觥巩汞拱共贡',
    'gong' => '工攻功弓躬公蚣供龚宫恭觥巩汞拱共贡',
    'gou' => '勾沟钩佝构篝苟狗构购诟垢够',
    'gu' => '估咕姑沽菇辜孤箍骨古牯钴谷贾股蛊故固顾雇锢',
    'gua' => '瓜呱刮括剐寡挂卦褂',
    'guai' => '乖掴拐怪',
    'guan' => '关观官棺冠莞馆管贯掼惯灌罐',
    'guang' => '光咣广逛',
    'gui' => '归圭闺硅鲑龟规瑰轨诡鬼癸柜刽桂贵桂跪鳜',
    'gun' => '衮滚辊棍',
    'guo' => '锅郭蝈聒国掴果裹过',
    'ha' => '哈蛤',
    'hai' => '还海害咳氦孩骇骸亥嗨',
    'han' => '喊鼾含汗寒汉旱酣韩焊函憨翰罕撼捍憾悍邯',
    'hang' => '行巷航杭',
    'hao' => '蒿号好毫嗥豪嚎壕好郝昊耗浩皓镐灏',
    'he' => '和喝合河禾核何呵荷颌贺赫褐盒鹤菏涸劾',
    'hei' => '黑嘿',
    'hen' => '很狠恨痕',
    'heng' => '横恒哼衡亨',
    'hon' => '红轰哄虹洪宏烘鸿弘泓',
    'hong' => '红轰哄虹洪宏烘鸿弘泓',
    'hou' => '后厚吼喉侯候猴逅',
    'hu' => '湖户呼惚虎壶浒互胡护糊弧忽狐沪乎唬扈囫',
    'hua' => '话花化画华划滑哗猾桦',
    'huai' => '坏怀淮徊踝',
    'huan' => '换还唤环患缓欢幻宦焕痪獾寰',
    'huang' => '黄慌晃荒簧凰皇谎惶蝗磺恍幌徨璜',
    'hui' => '回会灰荟绘挥汇辉毁悔惠晦徽恢秽贿讳卉烩彗珲茴桧',
    'hun' => '混昏荤浑婚魂珲',
    'huo' => '或活火伙货获祸豁霍惑攉锪',
    'ji' => '几讥叽饥机肌击圾鸡奇畸跻积姬基期箕稽缉激羁及岌级极吉即亟急疾疾嫉棘集辑藉籍几已挤济给脊戟计记纪忌伎技妓系际季悸剂荠迹既绩觊继继祭寂稷冀',
    'jia' => '加伽茄迦袈嘉夹佳家郏颊甲钾假价驾架嫁稼',
    'jian' => '浅溅尖奸歼坚间肩艰监兼渐煎拣茧柬俭检减碱剪简见舰涧贱践溅健毽腱荐剑监槛鉴渐谏箭',
    'jiang' => '江将浆姜僵缰疆讲奖桨蒋匠降酱强犟',
    'jiao' => '交郊姣蛟跤浇娇骄教椒焦侥佼狡饺绞矫脚搅缴剿叫轿觉校教酵窖醮嚼',
    'jie' => '节阶皆喈结接揭街孑节劫洁桔杰桀捷婕睫竭羯截姐解介价芥界蚧戒诫届借藉',
    'jin' => '巾斤今矜金津筋禁仅尽紧谨瑾锦仅尽进近劲晋缙浸',
    'jing' => '茎泾经京惊鲸荆睛精晶旌兢井阱颈憬警径痉净静竞境镜靖敬',
    'jion' => '迥炯炅窘',
    'jiong' => '迥炯炅窘',
    'jiu' => '究纠赳鸠阄啾揪九久韭酒旧臼舅咎疚救就',
    'ju' => '狙拘驹居据锯俱掬鞠局桔菊橘柜矩咀沮龃枸举巨拒炬距句具俱惧飓剧据锯踞聚',
    'juan' => '捐涓娟鹃圈卷倦眷隽狷绢',
    'jue' => '决诀角桷觉绝倔掘崛脚爵厥獗蹶撅倔',
    'jun' => '军均钧君菌筠俊峻骏竣郡菌',
    'ka' => '咔咖卡',
    'kai' => '开揩铠凯楷慨忾',
    'kan' => '刊看勘堪坎砍侃槛瞰',
    'kang' => '康慷糠扛亢伉抗',
    'kao' => '考烤拷栲犒铐靠',
    'ke' => '棵颗科蝌苛柯坷磕壳咳可渴克刻课客恪',
    'ken' => '肯啃恳垦',
    'keng' => '坑吭铿',
    'kon' => '空孔控恐倥崆箜',
    'kong' => '空孔控恐倥崆箜',
    'kou' => '扣抠口叩寇蔻',
    'ku' => '哭枯骷窟堀苦库裤绔酷',
    'kua' => '夸侉垮挎跨胯',
    'kuai' => '块快筷侩郐狯脍',
    'kuan' => '宽髋款',
    'kuang' => '匡框诓眶筐狂邝纩旷矿况',
    'kui' => '亏盔窥奎逵魁馗葵暌睽蝰傀跬馈溃愧',
    'kun' => '坤昆琨锟鲲捆困',
    'kuo' => '括扩阔廓',
    'la' => '垃拉啦邋拉喇瘌落腊蜡辣啦',
    'lai' => '来睐赖癞',
    'lan' => '兰拦栏岚婪澜蓝褴篮览揽缆懒烂滥',
    'lang' => '郎廊榔狼琅郎浪',
    'lao' => '捞劳唠崂牢醪老佬姥络烙酪唠涝',
    'le' => '肋勒乐了',
    'lei' => '勒累雷擂镭垒累磊蕾儡肋泪类累',
    'li' => '丽厘狸离蓠篱梨犁黎罹礼李里俚哩理锂鲤逦力荔历坜沥雳厉励立笠粒吏丽俪利俐莉痢例隶栎砾栗傈蜊',
    'lia' => '俩',
    'lian' => '连莲涟鲢怜帘联廉镰敛脸练炼恋殓链',
    'liang' => '良粮凉梁粱量两俩亮谅晾踉辆靓量',
    'liao' => '了辽聊撩僚撩寥燎料撂廖',
    'lie' => '咧裂列冽烈趔劣猎',
    'lin' => '拎邻林淋琳霖监粼嶙凛吝躏膦',
    'ling' => '伶玲铃聆羚零龄灵棂凌陵菱棱岭领另令',
    'liu' => '溜刘浏留榴瘤流琉硫柳陆碌遛镏溜',
    'lo' => '咯',
    'lon' => '龙珑胧聋笼隆窿陇拢垄笼弄',
    'long' => '龙珑胧聋笼隆窿陇拢垄笼弄',
    'lou' => '搂娄偻喽髅搂篓瘘漏露',
    'lu' => '卢泸鸬芦庐炉虏陆录绿禄碌辂赂鹿辘麓鹭戮',
    'luan' => '峦孪挛鸾卵乱',
    'lue' => '掠略',
    'lun' => '抡仑伦论囵沦轮论',
    'luo' => '捋罗萝逻锣箩骡螺裸洛骆络烙落摞',
    'lv' => '驴吕侣铝捋旅偻屡缕履律虑滤率绿氯',
    'ma' => '妈抹吗嘛麻蟆马玛蚂骂',
    'mai' => '埋买迈麦卖脉',
    'man' => '埋蛮蔓镘瞒满谩幔漫慢',
    'mang' => '邙芒忙盲氓茫莽蟒',
    'mao' => '猫毛牦髦矛茅猫锚卯貌冒帽贸',
    'me' => '么',
    'mei' => '没玫枚眉嵋楣莓梅酶霉媒煤糜每美镁妹昧寐魅袂媚',
    'men' => '闷门扪闷们',
    'meng' => '蒙萌檬蠓朦猛锰孟梦',
    'mi' => '咪眯弥猕迷谜糜靡米觅秘密蜜',
    'mian' => '眠绵棉免勉娩冕娩缅腼面',
    'miao' => '喵苗描瞄渺缈淼藐妙庙',
    'mie' => '咩灭蔑',
    'min' => '民岷玟闵悯抿泯敏',
    'ming' => '名铭明鸣冥瞑螟酩命',
    'miu' => '谬缪',
    'mo' => '摸馍摹模膜嬷摩磨蘑魔抹末沫没陌脉莫蓦寞墨默',
    'mou' => '牟眸哞谋某',
    'mu' => '模母拇姆牡亩木沐目钼牧募墓幕慕暮睦穆',
    'na' => '拿哪娜呐纳钠衲捺',
    'nai' => '乃奶氖奈耐',
    'nan' => '男南喃楠腩难',
    'nang' => '囊囔馕',
    'nao' => '孬挠铙恼脑瑙闹',
    'ne' => '呢',
    'nei' => '馁内',
    'nen' => '嫩恁',
    'neng' => '能',
    'ni' => '妮呢泥倪猊拟你旎逆匿腻溺',
    'nian' => '蔫年粘黏撵碾念', 
    'niang' => '娘酿',
    'niao' => '鸟袅尿溺',
    'nie' => '捏聂蹑镍孽',
    'nin' => '您',
    'ning' => '宁拧狞柠凝',
    'niu' => '妞牛扭纽拗',
    'non' => '农侬浓脓弄',
    'nong' => '农侬浓脓弄',
    'nu' => '奴驽努弩怒',
    'nuan' => '暖',
    'nue' => '虐疟',
    'nuo' => '挪娜诺懦糯',
    'nv' => '女',
    'nve' => '虐疟',
    'o' => '哦噢',
    'ou' => '瓯欧鸥呕偶耦',
    'pa' => '趴葩啪扒爬耙琶帕怕',
    'pai' => '拍俳排徘版迫排派湃',
    'pan' => '潘攀盘蟠蹒判叛畔盼',
    'pang' => '乓滂膀彷庞旁胖',
    'pao' => '抛刨咆狍炮跑泡疱',
    'pei' => '呸胚陪赔培裴佩配',
    'pen' => '喷盆',
    'peng' => '抨怦砰烹澎朋棚硼膨蓬篷捧碰',
    'pi' => '坯批砒披劈霹皮疲枇毗琵脾裨匹痞劈癖媲辟僻譬',
    'pian' => '片扁偏篇翩便骈胼骗',
    'piao' => '剽漂缥飘嫖瓢缥瞟票骠',
    'pie' => '氕撇瞥',
    'pin' => '拼姘贫频嫔品聘',
    'ping' => '乒娉平评坪苹萍凭屏瓶',
    'po' => '朴陂坡颇泊泼婆鄱叵朴迫魄破',
    'pou' => '剖',
    'pu' =>'仆扑铺喋葡脯蒲菩璞镤朴圃普谱蹼铺暴曝',
    'qi' => '七柴妻凄栖桤戚期欺缉漆蹊歧齐脐祁祈芪其棋旗奇麒崎骑琦鳍畦岂杞起企启绮稽气汽讫迄弃泣亟契砌器',
    'qia' => '掐卡洽恰',
    'qian' => '千仟阡迁签牵铅谦骞黔前虔钱钳乾潜浅遣欠嵌茜倩歉',
    'qiang' => '呛枪羌腔锵强墙蔷抢褪呛跄',
    'qiao' => '悄跷雀锹敲橇乔侨桥翘僬瞧巧愀壳俏峭窍撬',
    'qie' => '切伽茄且窃妾怯锲趄',
    'qin' => '钦侵亲芹芩矜琴秦禽擒勤',
    'qing' => '青清蜻轻氢倾卿情睛擎顷请庆箐磬罄',
    'qion' => '穷穹琼茕',
    'qiong' => '穷穹琼茕',
    'qiu' => '丘邱蚯秋鳅囚求球裘酋糗',
    'qu' => '区岖躯曲诎祛趋渠瞿曲取去趣',
    'quan' => '圈权全诠痊泉拳蜷犬劝券',
    'que' => '炔缺瘸却确雀榷',
    'qun' => '群裙',
    'ran' => '然燃冉苒染',
    'rang' => '嚷壤让',
    'rao' => '饶娆扰绕',
    're' => '惹热',
    'ren' => '人仁忍荏刃纫认任妊',
    'reng' => '扔仍',
    'ri' => '日',
    'ron' => '戎绒茸荣嵘容蓉溶榕融冗',
    'rong' => '戎绒茸荣嵘容蓉溶榕融冗',
    'rou' => '柔揉蹂肉',
    'ru' => '如茹儒濡蠕汝乳辱入褥',
    'ruan' => '软阮',
    'rui' => '蕊芮蕤锐瑞睿',
    'run' => '润闰',
    'ruo' => '若弱偌',
    'sa' => '仨撒洒撒飒萨',
    'sai' => '腮鳃塞噻赛',
    'san' => '三散伞叁',
    'sang' => '丧桑嗓',
    'sao' => '搔臊嫂扫瘙',
    'se' => '色涩啬瑟塞',
    'sen' => '森',
    'seng' => '僧',
    'sha' => '杀刹杉沙莎痧裟鲨纱砂啥傻厦煞挲',
    'shai' => '晒筛',
    'shan' => '山舢杉衫删姗珊栅跚扇煽闪陕讪疝单掸禅善膳擅赡',
    'shang' => '伤殇商上晌赏尚裳',
    'shao' => '烧捎稍勺芍少韶绍邵哨',
    'she' => '奢赊舌佘蛇舍设社射涉赦摄慑',
    'shen' => '申伸呻绅身参娠深什甚神沈审婶肾甚渗蜃慎',
    'sheng' => '升生牲胜甥声省绳圣晟盛乘剩',
    'shi' => '尸失师狮诗虱施湿嘘十石时识实拾食蚀史驶矢使始士氏舐示世市柿式试拭似势事侍恃饰视是适室逝誓释嗜匙',
    'shou' => '收熟手守首寿受授狩售兽瘦',
    'shu' => '书抒舒枢叔淑殊梳疏蔬输孰塾熟赎暑薯曙属蜀鼠数术述束树竖恕墅漱',
    'shua' => '刷耍',
    'shuai' => '摔甩率帅衰蟀',
    'shuan'=> '闩拴栓涮',
    'shuang' => '双霜孀爽',
    'shui' => '谁水说税睡',
    'shun' => '顺舜瞬',
    'shuo' => '说烁铄朔硕数',
    'si' => '四私丝思锶斯厮撕死巳寺似伺嗣食肆',
    'song' => '松嵩怂耸讼颂宋送诵',
    'sou' => '搜嗖锼艘叟擞嗽',
    'su' => '苏酥稣俗夙诉素肃速宿粟塑溯簌',
    'suan' => '酸算蒜',
    'sui' => '虽隋髓岁碎祟遂穗',
    'sun' => '孙损笋隼荪狲',
    'suo' => '娑挲嗦唆梭缩蓑所索唢琐锁',
    'ta' => '它他她塌塔拓踏榻遢',
    'tai' => '胎台苔邰抬跆太汰态钛酞泰',
    'tan' => '贪摊滩瘫坛昙谈覃谭潭檀忐坦袒毯叹探炭碳',
    'tang' => '汤唐塘搪糖堂棠膛倘淌躺烫趟',
    'tao' => '叨滔涛掏韬饕桃逃陶萄讨套',
	'te' => '特忑',
    'ten' => '疼腾滕藤誊',
    'teng' => '疼腾滕藤誊',
    'ti' => '梯踢剔锑提题啼蹄体剃倜惕替涕屉',
    'tian' => '天添田钿恬甜填舔殄腆',
    'tiao' => '挑条鲦苕笤迢调窕眺跳',
    'tie' => '贴帖铁餮',
    'tin' => '厅汀听廷庭蜓霆亭停婷挺艇',
    'ting' => '厅汀听廷庭蜓霆亭停婷挺艇',
    'ton' => '通恫同侗峒铜酮仝彤佟童潼瞳筒统桶捅痛',
    'tong' => '通恫同侗峒铜酮仝彤佟童潼瞳筒统桶捅痛',
    'tou' => '偷头投骰透',
    'tu' => '凸秃突图荼途涂徒屠土吐兔',
    'tuan' => '团',
    'tui' => '推忒颓腿退褪蜕',
    'tun' => '吞屯囤饨豚臀',
    'tuo' => '托拖脱驮陀沱驼砣鸵跎妥椭拓唾',
    'wa' => '哇挖洼蛙娲娃瓦袜',
    'wai' => '歪崴外',
    'wan' => '弯湾蜿丸纨完玩顽烷宛惋婉菀皖挽晚万腕蔓',
    'wang' => '汪王亡枉往网罔惘魍旺望妄忘',
    'wei' => '危巍威隈煨微葳围为违桅唯惟维韦伟苇纬炜伪尾娓委诿萎痿猥卫未味位畏胃谓猬渭尉蔚慰巍',
    'wen' => '温瘟文纹蚊雯闻刎吻紊稳问',
    'weng' => '翁嗡瓮',
    'wo' => '挝涡窝蜗倭我沃卧握渥龌斡',
    'wu' => '乌呜钨污巫诬於屋无芜毋吾梧吴蜈五伍午妩鹉侮捂牾舞兀勿物坞务雾误恶悟晤骛',
    'xi' => '夕兮西茜栖牺硒舾吸希稀昔惜析晰息熄奚溪蹊溪悉蟋犀锡熙嘻嬉膝曦习席袭媳洗铣玺徙喜禧戏系细隙',
    'xia' => '虾瞎匣狎侠峡狭遐瑕霞辖下吓夏厦',
    'xian' => '仙氙先纤掀锨鲜弦舷闲娴贤咸衔嫌洗显险现县限线宪陷馅羡腺献',
    'xiang' => '乡相厢湘香详祥降翔享响饷想向项巷相象像橡',
    'xiao' => '肖削逍消宵销霄枭骁萧潇箫小晓哮校效笑啸',
    'xie' => '些楔歇蝎协胁邪挟谐斜携鞋写血泄泻卸屑械亵谢解邂懈蟹',
    'xin' => '心芯昕欣辛锌新薪信衅',
    'xing' => '兴星猩惺腥刑形型行省醒杏幸性姓',
    'xion' => '凶匈汹胸兄雄熊',
    'xiong' => '凶匈汹胸兄雄熊',
    'xiu' => '休修羞朽宿秀绣锈袖嗅宿',
    'xu' => '须胥虚墟需徐许浒诩栩旭序叙恤蓄绪续婿絮',
    'xuan' => '轩萱喧玄悬旋漩璇选癣泫眩绚旋',
    'xue' => '削靴薛穴学雪血',
    'xun' => '勋熏薰旬询峋寻巡循训驯讯汛徇殉逊熏',
    'ya' => '丫压呀押鸭哑牙芽崖衙哑雅亚氩讶呀',
    'yan' => '咽胭烟恹焉嫣阉淹腌燕延蜒严言妍岩炎沿铅盐颜檐掩衍郾眼演厌咽彦谚艳晏宴验焱雁焰',
    'yang' => '央泱殃秧扬杨疡佯洋烊阳仰养氧怏样恙烊漾',
    'yao' => '幺吆夭妖约要腰邀侥姚窑遥谣摇瑶杏咬妥窈药要钥耀',
    'ye' => '耶椰掖邪爷揶也野业页佼夜掖液咽',
    'yi' => '一.伊衣依铱医椅揖迤仪夷姨沂怡贻宜颐移遗忆议艺仡屹亦弈奕衣裔异抑轶役疫毅译驿绎易羿翼益溢谊逸意',
    'yin' => '因茵姻阴荫音殷吟银龈淫寅尹引蚓饮隐瘾印饮胤',
    'ying' => '应英瑛莺罂婴缨樱鹦鹰迎荧莹萤营盈楹蠃颍影应映硬',
    'yo' => '哟',
    'yon' => '佣拥痈庸雍臃永咏泳俑勇涌恿踊用',
    'yong' => '佣拥痈庸雍臃永咏泳俑勇涌恿踊用',
    'you' => '优忧悠幽尤犹鱿由邮油游友有酉黝又右佑幼诱',
    'yu' => '迂於于盂竽与予余馀腴鱼渔於隅愚俞逾渝愉榆娱屿宇羽雨禹语玉驭芋峪浴欲裕郁育狱域预豫谕喻愈尉蔚熨寓御誉',
    'yuan' => '鸳冤渊元园员圆援媛袁猿辕原源缘远苑怨院愿',
    'yue' => '曰约月钥乐岳越阅跃粤',
    'yun' => '晕芸耘允孕运酝晕愠蕴韵熨',
    'za' => '扎杂砸咋',
    'zai' => '灾哉栽仔载宰崽再在载',
    'zan' => '咱攒暂赞',
    'zang' => '臧赃脏葬藏',
    'zao' => '遭糟凿早枣蚤澡藻皂灶造噪燥躁',
    'ze' => '则责咋迮择泽仄侧',
    'zei' => '贼',
    'zen' => '怎',
    'zeng' => '曾增赠憎',
    'zha' => '扎吒查揸喳渣楂札轧闸炸铡眨诈炸蚱榨栅',
    'zhai' => '斋摘宅窄债寨',
    'zhan' => '沾毡粘詹瞻斩崭盏展搌占战站栈湛绽蘸',
    'zhang' => '张章獐彰璋蟑长涨掌丈仗杖帐账胀障',
    'zhao' => '钊招昭着朝嘲爪找沼召诏照兆赵罩',
    'zhe' => '遮折哲蜇辄蛰辙者锗褶这浙蔗着',
    'zhen' => '贞侦针珍真榛臻斟诊疹枕阵鸠振赈震朕镇',
    'zheng' => '征怔争峥狰铮筝蒸拯整正证政症郑诤挣',
    'zhi' => '之芝支吱枝肢祗织栀汁知蜘脂执直值植殖侄职止址趾只枳咫旨指酯抵纸至郅致窒志痣帜秩制质炙治陟挚掷智滞置稚',
    'zhon' => '中忠钟衷终肿种踵仲众重',
    'zhong' => '中忠钟衷终肿种踵仲众重',
    'zhou' => '舟州洲周粥轴肘帚纣皱咒宙昼骤',
    'zhu' => '朱侏诛珠株蛛诸猪竹竺逐烛主拄煮褚嘱瞩贮助住注驻柱蛀祝著铸筑',
    'zhua' => '抓爪',
    'zhuai' => '拽',
    'zhuan' => '专砖转传赚撰馔',
    'zhuang' => '妆庄桩装壮状撞幢',
    'zhui' => '椎锥追坠缀惴赘',
    'zhun' => '屯肫谆准',
    'zhuo' => '拙捉桌灼茁卓浊镯啄琢著着',
    'zi' => '孜咨姿资兹滋淄辎锱子仔姊紫梓自字恣眦渍',
    'zon' => '宗综棕踪鬃总纵粽',
    'zong' => '宗综棕踪鬃总纵粽',
    'zou' => '邹走奏揍',
    'zu' => '租足卒族阻组祖诅',
    'zuan' => '钻攥',
    'zui' => '嘴罪醉',
    'zun' => '尊遵樽鳟',
    'zuo' => '嘬昨左佐坐座作祚做'
  }
  #--------------------------------------------------------------------------
  # ● 初始化
  #--------------------------------------------------------------------------
  def initialize
    init
  end
  def init
    @value = ''
    clear
  end
  #--------------------------------------------------------------------------
  # ● 增加
  #--------------------------------------------------------------------------
  def add(char)
    if @value.size < 10
      @value+=char.downcase
      clear
      if (char = PY[@value])!=nil
        concat PY[@value].split(//)
      end
      return true
    else
      return false
    end
  end
  #--------------------------------------------------------------------------
  # ● 删除
  #--------------------------------------------------------------------------
  def back 
    if(@value !='')
      value=@value.split(//)
      @value=''
      for i in 0..(value.size - 2)
        @value += value[i]
      end
      clear
      if (char = PY[@value])!=nil
        concat PY[@value].split(//)
      end
      return true
    else
      return false
    end
  end
end

class PokemonEntryScene2
  MaxCharsPerLine = 11
  #--------------------------------------------------------------------------
  # ● 输入法页面，上一页
  #--------------------------------------------------------------------------
  def prevPage
    if @IM_page > 0
      @IM_page -= 1
      $game_system.se_play($data_system.decision_se)# 演奏确定 SE
    end
  end
  #--------------------------------------------------------------------------
  # ● 输入法页面，下一页 
  #--------------------------------------------------------------------------
  def nextPage
    if @IM_page < @IM.size / MaxCharsPerLine
      @IM_page += 1
      $game_system.se_play($data_system.decision_se)# 演奏确定 SE
    end
  end
end