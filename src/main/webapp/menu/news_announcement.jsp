<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../static/css/news.css"/>
    <script type="text/javascript" src="../../static/js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="../../static/js/jquery.SuperSlide.2.1.1.js"></script>
</head>
<body>
<div style="height:100px;"></div>

<div class="rolling">
    <div class="roll-title roll-title clearfix">
        <h2>最新公告</h2>
        <a href="#" class="rolling-more">更多</a>
        <a class="next">
            <img src="https://www.17sucai.com/preview/10221/2018-06-14/gundong/images/arrow-fl.png" alt="">
        </a>
        <a class="prev">
            <img src="https://www.17sucai.com/preview/10221/2018-06-14/gundong/images/arrow-fr.png" alt="">
        </a>
    </div>
    <div class="content">
        <ul class="roll-list">
            <li>
                <a href="#" target="_blank">中药配方颗粒是对中药饮片的传承创新，是在中医药理论指导下发展应用，灵活加减的特点，身份的认可。</a>
                <span>2021年3月1日</span>
            </li>
            <li>
                <a href="#" target="_blank">为进一步加强药品质量安全监督管理，及时有效防范化解药品安全风险，提高风险防控能力</a>
                <span>2021年3月2日</span>
            </li>
            <li>
                <a href="#" target="_blank">3月3日，国家药监局生产商Boston Scientific Corporation对皮下植入式心律转复除颤器。</a>
                <span>2021年3月3日</span>
            </li>
            <li>
                <a href="#" target="_blank">亚洲拥有全世界60%的人口，蕴含了当今世界最大的医疗市场机会。在过去的几十年中</a>
                <span>2021年3月4日</span>
            </li>
            <li>
                <a href="#" target="_blank">玉环市场监管局对当地某卫生室日常检查时，发现其治疗室货架上摆放着14瓶500ml葡萄糖氯化钠注射液，</a>
                <span>2021年3月5日</span>
            </li>
            <li>
                <a href="#" target="_blank">近日，中央纪委国家监委网站发布《新规约束医药代表行为 斩断药品回扣利益链》一文，。</a>
                <span>2021年3月6日</span>
            </li>
        </ul>
    </div>
</div>

<script type="text/javascript">

    jQuery(".rolling").slide({titCell:".roll-title ul",mainCell:".content ul",autoPage:true,effect:"leftLoop",autoPlay:true,scroll:1,vis:1,delayTime:1000,trigger:"click"});

</script>

</body>
</html>
