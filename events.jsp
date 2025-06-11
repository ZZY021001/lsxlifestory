<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>人生大事记</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    body {
      background-color: #f8f9fa;
      font-family: 'Microsoft YaHei', sans-serif;
      color: #333;
    }

    .header {
      background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
      color: white;
      padding: 3rem 0;
      text-align: center;
      margin-bottom: 3rem;
    }

    .timeline-container {
      max-width: 900px;
      margin: 0 auto;
      padding: 0 20px;
      position: relative;
    }

    .timeline-container::before {
      content: '';
      position: absolute;
      top: 0;
      bottom: 0;
      width: 4px;
      background: #2575fc;
      left: 50%;
      margin-left: -2px;
    }

    .timeline-item {
      margin-bottom: 50px;
      position: relative;
      width: 50%;
      box-sizing: border-box;
    }

    .timeline-item:nth-child(odd) {
      left: 0;
      padding-right: 70px;
    }

    .timeline-item:nth-child(even) {
      left: 50%;
      padding-left: 70px;
    }

    .timeline-dot {
      position: absolute;
      width: 24px;
      height: 24px;
      background: #2575fc;
      border: 4px solid white;
      border-radius: 50%;
      top: 20px;
      z-index: 1;
    }

    .timeline-item:nth-child(odd) .timeline-dot {
      right: -12px;
    }

    .timeline-item:nth-child(even) .timeline-dot {
      left: -12px;
    }

    .timeline-content {
      background: white;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s;
      cursor: pointer;
    }

    .timeline-content:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .timeline-year {
      font-weight: bold;
      font-size: 1.4rem;
      color: #2575fc;
      margin-bottom: 10px;
    }

    .timeline-title {
      font-size: 1.2rem;
      margin-bottom: 15px;
      font-weight: 600;
    }

    .btn-detail {
      background: #2575fc;
      color: white;
      border: none;
      padding: 8px 15px;
      border-radius: 5px;
      cursor: pointer;
      transition: background 0.3s;
    }

    .btn-detail:hover {
      background: #1a5dc4;
    }

    .modal-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.7);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 1000;
      display: none;
    }

    .modal-content {
      background: white;
      width: 90%;
      max-width: 700px;
      border-radius: 15px;
      padding: 30px;
      position: relative;
      max-height: 90vh;
      overflow-y: auto;
    }

    .close-modal {
      position: absolute;
      top: 15px;
      right: 15px;
      font-size: 1.5rem;
      cursor: pointer;
      color: #888;
    }

    .event-detail-title {
      font-size: 1.8rem;
      color: #2575fc;
      margin-bottom: 15px;
    }

    .event-image {
      width: 100%;
      border-radius: 10px;
      margin: 20px 0;
      cursor: pointer;
      transition: transform 0.3s;
    }

    .event-image:hover {
      transform: scale(1.02);
    }

    .image-modal {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.9);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 1010;
      display: none;
    }

    .image-modal img {
      max-width: 90%;
      max-height: 90%;
      border-radius: 5px;
    }

    .continue-btn {
      display: block;
      margin: 50px auto;
      padding: 12px 40px;
      background: #49a09d; /* 使用和 present.jsp 中相同的背景颜色 */
      color: white;
      border: none;
      border-radius: 50px;
      font-size: 1.2rem;
      cursor: pointer;
      transition: all 0.3s;
    }

    .continue-btn:hover {
      background: #3a8a85; /* 使用和 present.jsp 中相同的悬停颜色 */
      transform: scale(1.05);
    }

    @media (max-width: 768px) {
      .timeline-container::before {
        left: 30px;
      }

      .timeline-item {
        width: 100%;
        padding-left: 70px !important;
        padding-right: 0 !important;
        left: 0 !important;
      }

      .timeline-item:nth-child(odd) .timeline-dot,
      .timeline-item:nth-child(even) .timeline-dot {
        left: 18px;
      }
    }
  </style>

</head>
<body>
<div class="header">
  <div class="container">
    <h1><i class="fas fa-history"></i> 驰隙流年，恍如一瞬星霜换</h1>
    <p class="lead">胜仙生命中的重要时刻回顾</p>
  </div>
</div>

<div class="timeline-container">
  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(0)">
      <div class="timeline-year">1951年</div>
      <div class="timeline-title">降生</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(1)">
      <div class="timeline-year">1969年</div>
      <div class="timeline-title">成婚</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(2)">
      <div class="timeline-year">1971年-1975年</div>
      <div class="timeline-title">女儿出生</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(3)">
      <div class="timeline-year">1977年-1980年</div>
      <div class="timeline-title">儿子出生</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(4)">
      <div class="timeline-year">2001年-2003年</div>
      <div class="timeline-title">孙辈出生</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(5)">
      <div class="timeline-year">2008年</div>
      <div class="timeline-title">痛失长女</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(6)">
      <div class="timeline-year">2011年</div>
      <div class="timeline-title">再失长子</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(7)">
      <div class="timeline-year">2018年</div>
      <div class="timeline-title">搬新家</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>
  <div class="timeline-item">
    <div class="timeline-dot"></div>
    <div class="timeline-content" onclick="showDetail(8)">
      <div class="timeline-year">2020年</div>
      <div class="timeline-title">家里出了大学生</div>
      <button class="btn-detail">查看详情</button>
    </div>
  </div>
  </div>


</div>

<button class="continue-btn" onClick="location.href='present.jsp'">继续浏览</button>

<div class="modal-overlay" id="detailModal">
  <div class="modal-content">
    <span class="close-modal" onclick="closeModal()">&times;</span>
    <h2 class="event-detail-title" id="detailTitle"></h2>
    <p id="detailDescription"></p>
    <img src="" alt="" class="event-image" id="detailImage" onclick="openImageModal(this.src)">
  </div>
</div>

<div class="image-modal" id="imageModal" onclick="closeImageModal()">
  <img src="" alt="" id="modalImage">
</div>

<script>
  const events = [
    {
      title: "1951年  降生",
      description: "1951年夏天，胜仙出生在河北省一个贫瘠的小村庄。<br>" +
              "家中孩子十个，实在难以生存，把妹妹送了人。<br>" +
              "胜仙十岁，父母全部离世。童年的她，除了种地放牛就是带孩子，读书更是不敢肖想。<br>" +
              "胜仙很聪明懂事也很能干好强，可惜生错了时代。"
    },
    {
      title: "1969年  成婚",
      description: "19岁，受兄长之命，媒妁之言，胜仙与隔壁村的张家的独子——一个木匠结婚了。<br>" +
              "几袋米面的彩礼，不过是未来这许多年的不幸婚姻的先行。<br>" +
              "这个男人品格很差，对婚姻不忠，好吃懒做自私自利，动辄打骂。<br>" +
              "胜仙只是拼了命地干活，挣工分，料理家务，照顾公婆，生怕这门第让人看轻了去。",
      image: "/pic/wedding.jpeg"
    },
    {
      title: "1971年-1975年 - 女儿出生",
      description: "20岁，胜仙的两个女儿先后出生。重男轻女的丈夫因此一个月不曾踏入屋门半步，<br>" +
              "但作为母亲的她依旧用无限的爱和耐心，精心照料着孩子。",
      image: "/pic/kid.jpeg"
    },
    {
      title: "1977年-1980年  儿子出生",
      description: "1977年，两个儿子相继出生。从此胜仙在婆家也算能抬起头来。<br>" +
              "善良朴实踏实实在的胜仙也逐渐撑起了这破败不堪的张家的门楣，在村里的口碑大胜于前。",
      image: "/pic/mom.jpeg"
    },
    {
      title: "2001年-2003年  孙辈出生",
      description: "2001年-2003年，大儿子家诞下两个女儿，二儿子诞下一对龙凤胎。<br>" +
              "当上奶奶的胜仙一个人带四个孩子，十分辛苦但幸福满足。<br>" +
              "两个儿子的事业也逐渐有了起色，全家都在朝着向上的势头发展！",
      image: "/pic/sun.png"
    },
    {
      title: "2008年  痛失长女",
      description: "58岁，大女儿在回娘家探亲时发生车祸身亡。<br>" +
              "大儿媳和胜仙无理取闹，搅得家宅不宁，最终离婚。",
      image: "/pic/two.jpeg"
    },
    {
      title: "2011年  再失长子",
      description: "失女的悲痛刚刚被时间勉强掩盖，胜仙慢慢也愿意去和老姐妹们一起去跳跳广场舞了。<br>" +
              "但偏偏上天又跟这个朴实善良的人开了一个天大的玩笑。<br>" +
              "2011年，最有出息的大儿子确诊肺癌晚期，顽强抗争数月后还是与世长辞。胜仙被彻底击溃，夜夜难眠，以泪洗面。",
      image: "/pic/alone.jpeg"
    },
    {
      title: "2018年  搬新家",
      description: "接连的白发人送黑发人不是片刻的大雨，而是十年的潮湿。<br>" +
              "不知是时间的魔力，还是胜仙的有意，似乎不刻意提起那两个名字，就不会再笼罩在痛苦的梦靥里。生活总是要过的。<br>" +
              "68岁，小儿子把家里的老房子翻新，一家人喜气洋洋乔迁新居。",
      image: "/pic/home.jpg"
    },
    {
      title: "2020年  家里出了大学生",
      description: "胜仙70岁。孙辈也很争气，全都考上了大学，经常传来好消息。<br>" +
              "爱是存钱罐，胜仙给孩子们存了无数的爱，孩子们自然十分敬爱奶奶。日子会这样平淡幸福地过下去的！",
      image: "/pic/le.jpeg"
    }
  ];

  function showDetail(index) {
    const event = events[index];
    document.getElementById('detailTitle').textContent = event.title;
    document.getElementById('detailDescription').innerHTML = event.description;
    document.getElementById('detailImage').src = event.image;
    document.getElementById('detailModal').style.display = 'flex';
  }

  function closeModal() {
    document.getElementById('detailModal').style.display = 'none';
  }

  function openImageModal(src) {
    document.getElementById('modalImage').src = src;
    document.getElementById('imageModal').style.display = 'flex';
  }

  function closeImageModal() {
    document.getElementById('imageModal').style.display = 'none';
  }

  // 点击模态框外部关闭
  window.onclick = function (event) {
    if (event.target === document.getElementById('detailModal')) {
      closeModal();
    }
  };
</script>
</body>
</html>