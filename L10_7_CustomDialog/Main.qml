import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Dialogs

Window {
    id: rootId
    width: 640
    height: 800
    visible: true
    title: qsTr("QML - Custom Dialog")

    readonly property int buttonWidth: 300

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 25
        width: parent.width * 0.9
        implicitWidth: parent.width * 0.9

        Label {
            text: "Dialog is a popup that is mostly used for short-term tasks " + "and brief communications with the user."
            wrapMode: Label.Wrap
            Layout.fillWidth: true
            Layout.preferredWidth: parent.width
            horizontalAlignment: Qt.AlignHCenter
        }

        Button {
            text: "Message"
            implicitWidth: buttonWidth
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log(text)
                           messageDialogId.open()
                       }
        }

        Dialog {
            id: messageDialogId
            width: parent.width * 0.9
            height: parent.height * 1.3
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            title: "Message"
            standardButtons: Dialog.Ok

            Flickable {
                id: flickInDialogId
                // contentHeight: mesInDialogId.implicitHeight
                anchors.fill: parent
                clip: true
                ScrollBar.vertical: ScrollBar {}
                Label {
                    id: mesInDialogId

                    text: "鳥跑麻外珠「飽菜鴨大頁生采帶要」收京旦停拍畫兆親書神相未汗錯右反新？麻面反問里誰兌叫詞可昌。內抱里飛會，花蝴英雞早入。

元還息十打子珠具躲羊，日雨王辛院三旦掃清住朋京直至；園耍浪安愛吧連收米；壯假包帽手去錯葉在怪福節耍道良沒肉。和父河、每松民夕畫己子「黑自兌朋都」語。

屋婆有呢干的占往知面直月黃石都，畫完外媽寺發而躲圓穿乾河波音教紅，白間候枝面個貓完蝶來右古果實千由來步！怕口色戶三經；女包而走外，國像干再給亭息泉尼火司羽鼻間火尤玉來波屋，或事信英樹蝸跟「遠次申掃力蝸」。

青跳冒洋學去喝已羊告到片來音！昔跟色歡禾自壯天王黑木乍心。的物步會多胡貫日信像不午姊貓次南游。品洋蝶院誰葉忍；背玩禾們過久洋蝶。

村百買水抓假別入字故孝身蝴耳經能身知！和陽手物造種兌神玉公山斗年瓜王加寸而，個蝶波山信亭友知八畫面重間何蛋首就早。面衣蝸村，采遠室北根怎力。步定六。

弓穴蛋早婆斤乞從兒快長姊兒蝴直原力彩今「它友」士同人園吹定天語巾想早忍申吧和完，田唱出做邊扒二個足蛋！辛科她洋半貫肉貓已借力開吃牛：媽詞爸玉飯愛又風至。

在丟是視看爬房早魚，完帶回助孝立加哭或瓜做訴放浪半英是頭，更種貝珠犬房鴨兔，年下秋他跳，苦月天貓得更。"
                    wrapMode: Label.WordWrap
                }
            }

            onWidthChanged: () => {
                                mesInDialogId.width = width - 40
                            }
            onHeightChanged: () => {
                                 flickInDialogId.contentHeight = mesInDialogId.implicitHeight
                             }
        }

        Button {
            text: "Confirmation"
            implicitWidth: buttonWidth
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log(text)
                           confirmationDialogId.open()
                       }
        }

        Dialog {
            id: confirmationDialogId
            x: (parent.width - implicitWidth) / 2
            y: (parent.height - implicitHeight) / 2
            modal: true
            title: "Confirmation"
            standardButtons: Dialog.Yes | Dialog.No

            ColumnLayout {
                anchors.fill: parent
                Label {
                    text: "The document has been modified.\nDo you want to save your changes?"
                }

                CheckBox {
                    checked: false
                    text: qsTr("Do not ask again")
                    Layout.alignment: Qt.AlignRight
                }
            }
        }

        Button {
            text: "Content"
            implicitWidth: buttonWidth
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log(text)
                           contentDialogId.open()
                       }
        }

        Dialog {
            id: contentDialogId
            width: parent.width * 0.9
            height: rootId.height * 0.8
            x: (parent.width - width) / 2
            y: (parent.height - height) / 2
            modal: true
            title: "Content"
            standardButtons: Dialog.Ok

            ColumnLayout {
                anchors.fill: parent

                Image {
                    id: logo
                    width: 50
                    Layout.alignment: Qt.AlignHCenter
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/images/LearnQtLogo.png"
                }

                Flickable {
                    id: flickContentId
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    clip: true
                    ScrollBar.vertical: ScrollBar {}
                    Label {
                        id: mesInContentId

                        text: "未再根清共二實做寸

信對穴躲只問麼合日土爬實校住具一朋金它！肉貝見苗，誰玩示，竹師朱虎隻亭動長至固林「飽結杯秋告」歌又意几停瓜清功弟要品衣七牛教力知心假，空至貝個背。

想手交信夏世牛。還以走走功忍麼圓節兆即成可着尺固，田位鼻各羊會村菜，知牛二吉聽綠已快，根乾安今左弓屋沒司邊耍意一里室住停。

飛去香去：裝雞買兔告。住言他化支字買游、娘彩植原買寺己今上丁就訴采爸紅，戶實禾朱林文親想巴後新位哭實胡面。原共北姊國止飛唱父，服姐媽。

高貫王田主鴨一多？升五工行她綠几語。美車今文位了手祖什屋收牠品尼畫錯貓爬字。爪幸師娘牙畫，年封跑戶夏這香禾拍發東收門果已朋穴語造？毛爪林很，杯發科草，穴平元公叫只明哭抱她祖兩！世且寫。

光中常跟飯雲爬勿的門有王姊尾急：消犬右屋戊寫斗回還住科從好乾京原。乙具話行晚。身食南話朋年穴士下中看新筆哥巾姊跳果「昌」都牙來主吹免到停乞怪戊生掃歌十魚木帶找；棵也爬明朋念陽祖。打上種「馬玉」。

歡空丟錯足掃弓己立故路唱屋色聲美香己昌水，童大時四己米雄苗重位甲松用校方，什休喝成干老哭男科尼朵村，斥占買後兌東假男方讀兆昌青親七南鴨尼們掃。教休己晚天叫祖尺自，背言幼路片采。丁節哪。

玩珠前玩共車幫古入不跟上語清寫，用合反正坐放瓜更貫裝，哪好細即點兄刃足對禾畫昌三松喜在樹荷，冰息合行前、南清元波貫植哥雪消林什丁植游拍可內同知反。

巴巾在員且文。掃羊清坡南扒；尼節王壯即南春事空神沒食司怕、林呢牛字首重即由雲尺假，入夕寸生買「色音」蛋馬燈着，麼示海，個穿從元讀內星用刃。怕午追會聲香申您？枝合香室掃。

白書根進重，根瓜羊寺國進乍親書旦身蝸種立、左爸寫西完、要昔麼節少方吉爬回隻至欠知中秋固兔信回蝸，師吃間但口尼玉，兒幾畫怎安。

去丟位地牛也？像汁甲良玩天士我即原會！司左生方身，找反八瓜入弟着回海言雪，秋或几您讀且更休故老兩帶飽今「司」各肉肉尺，造松而。固片音平片嗎蝸肉南許司皮：畫坡目內追刀。

才哪由奶秋想叫林休裝語您根回。河住道荷行蝶打問姊；住目只林冬姊住告牙幸校？裏封裏男面媽草交送氣發。草飛竹松牛事秋也巴。山外爪。呢門是九，河耍往「父成」海工話果？背氣禾服校。

抱鳥喜才說能吹裏候每坡飽活急浪跟，共完穿斤千奶國連姐了；帶夕菜筆只了做回節字丁冒半神着一午，五各讀進植別假。身根青夏游。

品內四棵高來，送你具何玩子間北中。呢加春見！七前信。種巾帽洋條假抱刃占還爸至抄昌：雲京節我鼻次北二。日說九進沒物。

別拍乍天躲，內五直吧卜玉愛「書裏中借見生明對」力子要里甲哭心畫兩象爪假行婆、種坡工年雞立，請她跟且習種可士己眼成多娘交。喝良申尾美羊尤，誰林就都外點回重課汁同加更九婆几個汁，英次十呢。

世牛歌呀工科開國後英尼，和女哥亮元沒去黑氣且誰裝固友太！貝犬天何意丟害，珠力北入不瓜面黑九往把手何寸急白皮夕幾。山青公早要荷院跑。

記河波向央水亭百假香員、石像入她們它眼，門果抄玩斥實音交候蝸經和小，哥十活六央地羊原跳，您出七從，七枝假也直由三虎丟乍食少甲鳥員首掃常視耳冒。

歡吉穿水成夏。文陽北想筆記「怪把合」老火朋根加童每忍們汗刃午課生穴哪寸，自害尤；尼內冰采文食波十事晚收火、昌歌乍色他冒百「清司快生定怪文」。

造山午衣只水，和抄要地完她加姐學青男五少，忍象造重位成封日字同今竹耳半了辛路；共入瓜王黑何世拉門奶起生種園生即、半法喜幾哪位樹，食成事。貓右員安。

果菜得天珠河或中掃祖西根冒天生帽斥着人；做反動杯在起停沒借邊朋學平真丁意視急。第裏四根手彩丁道支的候回，不同福頭我往給書兄足衣你屋面！弓重真，笑朵種。

玩老久會不夏兒到同地二主斤它！男知躲白根見跳氣犬話半。常習村您，米相休玩己嗎兆們，真由力事重玩比院次尺很，燈行兌巴！門跑牛才科抱司中。

位冰飛辛男「即實她時」刃司波信雞沒住連發。二昔綠水黃冒且地別秋都石道屋；面她今蝸目豆爸條着胡還寸：早水抓！世北文荷游三卜園太只貫固都在身。習且是「時快視林雄大忍孝地手」爬雨。

石休綠得以常民品山共亮您且畫連拍右肉，斗香把寸上正怪示魚土植。寫虎就奶結忍書棵百右就土魚他種丟。爪能乞少斤院吉童同升洋定生几找快開語，和意尾出王尺告故讀送嗎公苗占，哥喝交因占能甲喝。

王唱半禾內尾飛休新起過裝向穴怪內；幸過怎加助村把上事下怕。邊立錯石爬扒？還一抱采千兌教。每千姐急知合元兒欠木息樹明牙，立松多比往，犬記把的候原反很。

壯民土反旁親友穴欠上根交。錯馬語波草奶花條虎：讀園把自金今高害久千斥主，是夏它相雞白象扒晚蝸畫皮但升包邊司？條字而跟從陽走右念。

訴聲這裝休卜頁經旦記把至亮吉道月；才課知校高嗎那肉候姊更有豆收子朋更：次事魚院雲空結朋、現半的元首時內幼頭士步。已即哪幼昔親蝴動借字耍尺婆寫東蛋古金法。

者七把几美只功門首紅卜員快重羽村後象，告苦想學教戶借嗎課園。共王躲亭陽兒旦口跳目訴孝。歌勿人子坡媽步住，娘頭三動對免許直松雲，或鳥吃毛蝴聲一鼻。

兄哭許外雞放抓子黑幼呢彩春哪玩說中；乙位文雨。"
                        wrapMode: Label.WordWrap
                    }
                }

                onWidthChanged: () => {
                                    mesInContentId.width = width
                                }
                onHeightChanged: () => {
                                     flickContentId.contentHeight = mesInContentId.implicitHeight
                                 }
            }
        }

        Button {
            text: "Input"
            implicitWidth: buttonWidth
            Layout.alignment: Qt.AlignHCenter
            onClicked: () => {
                           console.log(text)
                           inputDialogId.open()
                       }
        }

        Dialog {
            id: inputDialogId
            x: (parent.width - implicitWidth) / 2
            y: (parent.height - implicitHeight) / 2
            modal: true
            title: "Input"
            standardButtons: Dialog.Ok | Dialog.No
            ColumnLayout {
                anchors.centerIn: parent
                spacing: 20
                Label {
                    elide: Label.ElideRight
                    text: "Please enter the credentials:"
                    Layout.fillWidth: true
                }
                TextField {
                    focus: true
                    placeholderText: "Username"
                    Layout.fillWidth: true
                }
                TextField {
                    placeholderText: "Password"
                    echoMode: TextField.PasswordEchoOnEdit
                    Layout.fillWidth: true
                }
            }
        }
    }
}
