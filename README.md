# 🤔 불타는 토요 스터디 C반

## 🤓 참여자

🚀 [Derrickkim](https://github.com/derrickkim0109), [웡빙](https://github.com/wongbingg), [브래드](https://github.com/bradheo65), [백곰](https://github.com/Baek-Gom-95)

## 목차 
- [🤓 공통 Rule](#공통룰)
- [🤓 학습목록](#학습목록)
- [🤓 커밋 컨벤션](#커밋컨벤션)
- [🤓 문제 풀이 등록 방법](#문제풀이등록방법)
- [🌴 branch 사용 방법](#브랜치사용방법)
- [📑 파일명 규칙](#파일명규칙)


<a name="공통룰"></a>
## 🤓 공통 Rule

- 매주 `토요일` 정해진 시간에 모여서 스터디를 진행합니다
- 매주 스터디한 내용을 정리하여 github에 정리한 후 디스코드 채널에 github 링크를 공유합니다. 
- 감을 유지하고, 학습 효과를 극대화하기 위해 `매주 토요일날` 풀이하는 것을 목표로 합니다.

<a name="커리큘럼"></a>
## 🤓 학습목록 

### 주차 별 학습 내용

|주차|날짜|주제|
|:---:|:---:|:---:|
|1|2022-04-16|Optional - binding, nil-coalescing, forced-unwrapping, channing |
|2|2022-04-23|Type 정의, 접근제어자 정의|2| 
|3|2022-04-30|notificationCenter|0|
|4|2022-05-07|Singleton패턴, ViewLifeCycle, delegate 패턴|
|5|2022-05-14|UML, Unit Test, TDD|

<details>
<summary> 1주차(4/16) </summary>
<div markdown="1">

📚 1주차 오전 C반 스터디
🧑🏻‍💻 모각코 주제
: Optional, 한주동안 진행한 학습 내용, Error 처리 

📒 공부하면서 나눈 이야기 및 질문

- 포문에 Array.indicises 를  사용 하면 0..<Array.count를 안해도 된다
- 포문에 Array.enumerated 를 사용하면 배열의 index값과 배열의 value값을 뽑을수 있다.
                                                
    
</div>
</details>

<details>
<summary> 2주차(4/23) </summary>
<div markdown="1">

## 📖  2주차 오전 C반 토요스터디 - [6기]

## 공부한 내용
지난주 토요일에 진행한 Optional 프로젝트를 활용하여 각 주체에 따른 타입화 부분에 대해서,
기능을 구별하여 서로의 결합도를 떨어뜨리는 방향에 대해서 토론하였습니다.
또한 접근 제어자를 통해 은닉화와 캡슐화하는 방식에 대한 토론을 하였습니다. 

### 실험 목표
- [x] 비슷한 요소(상수, 변수, 함수)들을 추상화해 타입을 정의해봅시다.
- [x] 객체지향적 관점에서 인스턴스가 서로 상호작용할 수 있도록 해봅시다

## 추가로 공부 해야 할 부분
- 이니셜라이저
- Delegate Design Pattern 
    
</div>
</details>

<details>
<summary> 3주차(4/30) </summary>
<div markdown="1">

## 토요스터디
### 📚 3주차 [6기] 오후 C반 스터디

## ✏️ 공부한내용
- IBOutlet
- IBAction
- 기본 MVC vs Cocoa MVC 차이
- Storyboard 
- ViewController
- Notification Center
    
</div>
</details>
  
<details>
<summary> 4주차(5/07) </summary>
<div markdown="1">

## 토요스터디
### 📚 4주차 [6기] 오후 C반 스터디

## ✏️ 공부한내용
- View Life Cycle
- Singleton Pattern
- Singleton Pattern의 사용
- 전체화면 전환
- delegate 사용
- 스터디 Readme.md 작성
    
</div>
</details>  

  
<details>
<summary> 5주차(5/14) </summary>
<div markdown="1">

## 토요스터디
### 📚 5주차 [6기] 오후 C반 스터디

## ✏️ 공부한내용
- TDD
- Unit Test
- UML

</div>
</details>  

<details>
<summary> 6주차(5/21) </summary>
<div markdown="1">

## 토요스터디
### 📚 6주차 [6기] 오후 C반 스터디

## ✏️ 공부한내용
- LLDB 사용 이유
- Help 와 Apropos 를 통한 명령어 검색
- BreakPoint
    - BreakPoint만들기 : 
        - 함수이름을 통해(b s -n "name"), 
        - 파일이름을 통해(b s -f "filename" -l "line")
        - 조건을 걸어서( br s -n "viewWillAppear" -c animated) 조건이 true일 경우 break
    - Command실행과 AutoContinue:
        - (-C) 옵션을 통해 break시 원하는 command 실행가능
        - (-G) 옵션을 통해 break에 걸린채로 있지 않고 자동 진행하게 만들어 주기 
    - breakPoint List 확인하기:
        - breakpoint list
    - breakPoint 삭제하기, 비활성화 하기:
        - breakpoint delete, breakpoint disable
- Stepping
    - Stepping Over: (n) 다음 statement로 이동
    - Stepping In: (s) 함수 내부에 위치한 시작지점으로 이동
    - Stepping Out: (finish) 함수 반환까지 프로그램을 진행 후 break
- Expression
    - po: 객체의 정보를 출력
    - Variable: 자동으로 $R0 에 저장된다? 
        - $R0 을 지역변수로 사용할 수 있다
        - expr var $someNumber = 10 이런식으로 콘솔창에서 선언도 가능

</div>
</details>  
  
<a name="커밋컨벤션"></a>

## 🤓 커밋 컨벤션
- `chore` : 폴더/파일 구조 변경
- `docs` : 공통 문서 수정 및 추가

<a name="브랜치사용방법"></a>

### 🌴 branch 사용 방법

1. Master branch 사용
2. 본인 폴더로 이동
4. 스터디 이후나 아무때에 main branch에 push

<a name="폴더명규칙"></a>

### 📑 폴더명 규칙 
    - 주제 / 본인이름 / 공부내용 
