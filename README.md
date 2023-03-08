# swift_app_with_allen

앨런 Swift문법 마스터 스쿨 (15개의 앱을 만들면서 근본원리부터 배우는 UIKit)

----------------------------

> 앱 만들기 기초 (5개의 앱 만들어 보기)
1. 앱 - 1 : 기초 
+ 프로젝트 생성 방법
+ label(앱에서 글자를 표시) 폰트 스타일, 사이즈 정렬
+ Button은 Plain-> Default로 변경 후 작업하기
+ Button 배경색, 글자색
+ 오토 레이아웃 설정하기 -> 제약걸기, 정렬제약
    + 설정한 제약 보기 -> Size Inspector에서 수정가능
+ Label 속성 다루기
+ Button 속성 다루기 
+ colorLiteral 사용하기 -> #colorLiteral(
+ @IBOutlet
    + 코드에 대한 내용을 배출시키는 배출구, 속성에 대한 값을 스토리보드한테 알려주는 배출구 
+ @IBAction
    + 버튼을 눌렀을 때 동작이 전달되는 것 (함수를 실행시킨다)


2. 앱 - 2 : 주사위 게임
+ 이미지뷰
    + 이미지뷰 복사 -> option키
    + 이미지뷰 묶기 -> Embed in > Stack View
        + Stack View
        + Distribution, Spacing 
        + 제약설정
    + 이미지뷰 Aspect Ratio -> ctrl + 이미지뷰 자기자신
    + 이미지 넣기 -> Assets 파일
        + 1x 2x 3x : 이미지 해상도를 가리킴
            + 1x는 예전 아이폰 (화질이 안 좋은)
            + 2x는 일반 아이폰 (아이폰 12...)
            + 3x는 max
        + 해상도에 맞게 이미지를 각각 넣어준다. 
+ 프로젝트 파일은 빌드로 저장 -> cmd+b
+ imageLiteral 사용하기 -> #imageLiteral  
+ randomElement() 사용하기

3. 앱 - 3 : 가위바위보 게임
+ 오토 레이아웃 설정하기 -> 제약걸기, 정렬제약
+ 정렬이 필요할 때는 Stack View 사용하기
+ 비율을 조정할 때는 Aspect Ratio 사용하기 (ctrl+자기자신)
+ 비슷한 역할을 하는 함수는 액션(버튼) 여러개를 연결할 수 있다 
+ 데이터 저장을 위한 변수 선언 및 사용
+ enum 사용하기
+ 이미지 초기 세팅 방법
    + imageLiteral 사용하기 -> #imageLiteral  
    + UIImage(named : "asset에 저장된 이미지 파일 이름과 확장자를 적어준다.")
+ UIButton 타입의 sender 파라미터 사용하기 
    + sender.currentTitle 
        + 버튼스타일이 Plain이 아니라 Default로 설정되어 있어야 사용할 수 있다. 
        + 버튼을 구분할 때 사용
        
4. 앱 - 4 : 맥 앱 
    + macOs 커맨드 라인 툴 사용하기
    + 무조건 처음에 main.swift(파일)가 실행된다
        + 이전의 앱 3개에서는 main.swift 파일이 존재하지 않았다
            + @main이 main.swift 파일과 동일한 역할을 한다
            + AppDelegate.swift 파일을 들어가보면 상단에 @main 키워드가 표시되어 있다 
    + readLine() 사용하기
    
5. 앱 - 5 : 업다운게임 앱 
+ UIView 사용하기
    + 선이 필요할 때 사용하기도 한다(선이 따로 없기 때문)
+ 하나의 액션 함수로 여러개 버튼 연결하기
+ 사용자가 선택한 버튼 값 저장하기
+ 사용자가 선택한 버튼 값을 따로 저장하지 않고 label에서 가져오기

----------------------------

> 앱 - 1 : 타이머 앱
+ 오토레이아웃 설정하기
+ stack view 사용하기
    + stack view 안에 있는 속성들 꽉 차게 만들기 -> alignment: fill   
+ weak (레이블, 버튼...연결 시)
    + 가리키는 상대방의 레퍼런스 카운팅을 올라가지 않게 한다
    + 스트리보드와 연결을 할 때에는 서로를 가리킬 수 있는 가능성이 있기 때문에 weak를 기본으로 사용한다
+ selector 사용
    + 메모리 주소를 담아서 어떤 함수를 가르킬거니 연결시키는 것 (object-c에서 사용하던 기법)
+ UISlider
    + Event 설정 시, Touch Up Inside(버튼)이 아닌 Value Changed로 설정
    + thumb를 움직일때마다 값이 바뀐다
    + outlet으로 연결을 시켜줘야 내가 작성한 코드가 슬라이더에 영향을 미친다
        + viewDidLoad() 함수 위에 연결시키면 자동으로 outlet으로 설정된다
+ 타이머 사용하기
+ 시스템 사운드 사용하기 

    

        

