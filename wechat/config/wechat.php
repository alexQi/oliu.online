<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-6-25
 * Time: 上午11:32
 */

return [
    'wechat' => array(
        'AppID'     => 'wxa6d88347eb94a706',
        'AppSecret' => '887361f0b8859314260993b5767ee6ac',
        'Token'     => 'woshishei',
        'ApiUrl'    => 'hk.api.weixin.qq.com',
        'EncodingAESKey' => 'xrgnBv8pkwnbIN9EOfhWa96PaEsJURRnF5dK4aYgLM1',
        'tpl'       => array(
            'text'  => "<xml>
                    <ToUserName><![CDATA[%s]]></ToUserName>
                    <FromUserName><![CDATA[%s]]></FromUserName>
                    <CreateTime>%s</CreateTime>
                    <MsgType><![CDATA[text]]></MsgType>
                    <Content><![CDATA[%s]]></Content>
                    </xml>",
            'image' => "<xml>
                    <ToUserName><![CDATA[%s]]></ToUserName>
                    <FromUserName><![CDATA[%s]]></FromUserName>
                    <CreateTime>%s</CreateTime>
                    <MsgType><![CDATA[image]]></MsgType>
                    <Image>
                    <MediaId><![CDATA[%s]]></MediaId>
                    </Image>
                    </xml>",
            'voice' => "<xml>
                    <ToUserName><![CDATA[toUser]]></ToUserName>
                    <FromUserName><![CDATA[fromUser]]></FromUserName>
                    <CreateTime>12345678</CreateTime>
                    <MsgType><![CDATA[voice]]></MsgType>
                    <Voice>
                    <MediaId><![CDATA[media_id]]></MediaId>
                    </Voice>
                    </xml>",
            'video' => "<xml>
                    <ToUserName><![CDATA[toUser]]></ToUserName>
                    <FromUserName><![CDATA[fromUser]]></FromUserName>
                    <CreateTime>12345678</CreateTime>
                    <MsgType><![CDATA[video]]></MsgType>
                    <Video>
                    <MediaId><![CDATA[media_id]]></MediaId>
                    <Title><![CDATA[title]]></Title>
                    <Description><![CDATA[description]]></Description>
                    </Video> 
                    </xml>",
            'music' => "<xml>
                    <ToUserName><![CDATA[toUser]]></ToUserName>
                    <FromUserName><![CDATA[fromUser]]></FromUserName>
                    <CreateTime>12345678</CreateTime>
                    <MsgType><![CDATA[music]]></MsgType>
                    <Music>
                    <Title><![CDATA[TITLE]]></Title>
                    <Description><![CDATA[DESCRIPTION]]></Description>
                    <MusicUrl><![CDATA[MUSIC_Url]]></MusicUrl>
                    <HQMusicUrl><![CDATA[HQ_MUSIC_Url]]></HQMusicUrl>
                    <ThumbMediaId><![CDATA[media_id]]></ThumbMediaId>
                    </Music>
                    </xml>",
            'news'  => "<xml>
                    <ToUserName><![CDATA[toUser]]></ToUserName>
                    <FromUserName><![CDATA[fromUser]]></FromUserName>
                    <CreateTime>12345678</CreateTime>
                    <MsgType><![CDATA[news]]></MsgType>
                    <ArticleCount>2</ArticleCount>
                    <Articles>
                    <item>
                    <Title><![CDATA[title1]]></Title> 
                    <Description><![CDATA[description1]]></Description>
                    <PicUrl><![CDATA[picurl]]></PicUrl>
                    <Url><![CDATA[url]]></Url>
                    </item>
                    <item>
                    <Title><![CDATA[title]]></Title>
                    <Description><![CDATA[description]]></Description>
                    <PicUrl><![CDATA[picurl]]></PicUrl>
                    <Url><![CDATA[url]]></Url>
                    </item>
                    </Articles>
                    </xml>",
        ),
    ),
];