<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>집</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

    <link rel="stylesheet" href="../../CSS/blog.css" type="text/css">
    <link rel="stylesheet" href="../../CSS/hobby.css" type="text/css">
    <script src="../../JS/blog_menu.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  </head>
  <body>
    <%@ include file="menubar.jsp" %>

    <section class="jumbotron text-center">
      <div class="container">
        <h1 class="jumbotron-heading">취미와 취향</h1>
        <p class="lead text-muted">음악 듣거나, 만화나 애니메이션을 보거나, 게임을 하거나. 이것들이 취미예요.</p>
        <p>
          <a href="#music" class="btn btn-outline-info">좋아하는 뮤지션</a>
          <a href="#animation" class="btn btn-outline-info">재미있게 본 만화</a>
          <a href="#game" class="btn btn-outline-info">인상깊었던 게임</a>
        </p>
      </div>
    </section>

    <div class="album text-muted">
      <div class="container">
        <div class="row">
          <div class="category" id="music">
            <h3>좋아하는 뮤지션</h3>
            <p>전 음악을 듣는 게 좋아요. 그렇지만 제가 좋아하는 음악들은 대부분 유명하지 않죠. 그래서 여기에서라도 제가 좋아하는 뮤지션들의 음악들을 소개해 볼게요.</p>
            <div class="card">
              <img src="../../IMAGE/CaravanPalace.jpg" alt="Picture of Caravan Palace">
              <p class="card-text">'Caravan Palace'는 프랑스의 일렉트로스윙 밴드예요. 이 장르의 곡을 만드는 뮤지션 중에서는 아마 가장 유명할 걸요.
                 저는 이 밴드의 곡 중에서 <a href='https://youtu.be/fBGSJ3sbivI'>'Black betty'</a>, <a href='https://youtu.be/D_JxMb8RLEY'>'Tattos'</a>, <a href='https://youtu.be/qQ-Pyx4joKM'>'Rock it for me'</a> 등의 노래를 좋아해요.</p>
            </div>
            <div class="card">
              <img src="../../IMAGE/PHD.jpg" alt="Picture of Dr.Gothick">
              <p class="card-text">'팔황단(팔보채와 황금단무지)'은 웹에서 활동하는 아마추어 작곡가예요. 특이한 점은 노래마다 그럴듯한? 가짜 설정을 만들어놓는다는 거예요. 설정들의 내용을 보면 독특한 정신세계를 가진 사람인 것 같아요.
                  이 사람의 노래 중에서는 <a href='https://youtu.be/yQyP_iRZKK0'>'파란등'</a>, <a href='https://soundcloud.com/meatballrec/4lihcf1mm6nl'>'경원선 블루스'</a>, <a href='https://youtu.be/zEbHggnBW-g'>'사진'</a> 등을 좋아해요.</p>
            </div>
            <div class="card">
              <img src="../../IMAGE/baasik.jpg" alt="Picture of Baasik">
              <p class="card-text">'Baasik'는 독립 프로듀서/작곡가예요. 혼자 작업하기도 하고, 형인 'BlackGryph0n'과 같이 곡을 쓰기도 해요.
                이 사람의 곡들 중에서는 <a href='https://youtu.be/0M7-6_Ipmd0'>'The Fight'</a>, <a href='https://youtu.be/kZvBaLCU52U'>'Can't Get Enough'</a>, <a href='https://youtu.be/fHzdwHiVHpE'>'Awake'</a> 등을 좋아해요.</p>
            </div>
          </div>

          <div class="category" id="animation">
            <h3>재미있게 본 만화</h3>
            <p>설명은 여기에</p>
            <div class="card">
              <img src="../../IMAGE/ThereSheIs.jpg" alt="Wallpaper of 'There She Is!'">
              <p class="card-text"><a href='https://youtu.be/3quYcNI3dOs'>'떳다 그녀!'</a>는 한국의 그룹 <a href='http://www.sambakza.net/'>'삼박자'</a>가 만든 단편 애니메이션에요. 토끼와 고양이로 이루어진 세계에서 토끼인 '도키'와 고양이인 '나비'가 연인이 되며 벌어지는 일을 그리고 있어요. 2003년부터 2008년까지 총 5편으로 완결이 났어요. 그리고 2016년에는 HD로 리마스터었어요. 현재는 떳다 그녀!의 외전이 만들어지는 중이에요. 각 화는 뮤직비디오 형식으로 만들어져 있어요. 귀여운 캐릭터와 감동적인 결말 덕에 5편 모두 Newgrounds에서 별점/조회수 상위에 들고 있어요.</p>
            </div>
            <div class="card">
              <img src="../../IMAGE/GravityFalls.jpg" alt="Title image of Gravity Falls">
              <p class="card-text">'그래비티 폴즈'는 2012년부터 2016년까지 방영된 미국 애니메이션이에요. 남매인 '디퍼 파인즈'와 '메이블 파인즈'가 방학동안 친척집에 살며 일어나는 이야기들을 그리고 있어요. 흥미로운 스토리 전개와 숨겨져있는 수많은 복선 덕분에 성인들에게도 많은 인기를 얻었던 만화예요. 유쾌하면서도 진지할 땐 진지한 그런 작품이죠.</p>
            </div>
            <div class="card">
              <img src="../../IMAGE/LWA.jpg" alt="Poster of Little Witch Academia">
              <p class="card-text">'리틀 위치 아카데미아'는 2017년에 방영된 일본 애니메이션이에요. 마녀를 교육하는 학교인 '루나 노바'에 일반인 '카가리 아츠코'가 입학하며 일어나게 되는 일을 그리고 있어요. 일본 만화를 별로 좋아하지 않는 저도 재미있게 봤던 작품이에요. </p>
            </div>
          </div>

          <div class="category" id="game">
            <h3>인상깊었던 게임</h3>
            <p>설명은 여기에</p>
            <div class="card">
              <img src="../../IMAGE/Undertale.jpg" alt="Screenshot of Undertale">
              <p class="card-text">'언더테일'은 2015년에 출시된 인디 RPG게임이에요. 참신한 스토리와 다채로운 캐릭터 덕분에 백만 장 이상 팔리고 2015년의 GOTY(Game of the Year) 후보에도 오르며 호평을 받았어요.</p>
            </div>
            <div class="card">
              <img src="../../IMAGE/Ori.jpg" alt="Drawing of Ori and the Blind Forest">
              <p class="card-text">'Ori and the Blind Forest'는 2015년 출시된 플랫포머 인디게임이에요. 뛰어난 음악과 아름다운 그래픽을 가지고 있는 게임이죠. 하지만 겉보기와는 다르게 게임의 난이도는 높은 편이에요. </p>
            </div>
            <div class="card">
              <img src="../../IMAGE/NITW.jpg" alt="Title image of Night in the woods">
              <p class="card-text">'Night in the woods'는 2017년 출시된 인디 어드벤처게임이에요. 좋은 스토리와 그래픽을 가지고 있는 게임이죠. 스토리 덕에 '등장하는 건 동물 뿐인데 사람냄새가 넘치는 게임'이라는 평을 듣기도 했어요.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>