# 마크다운

마크다운 : 일반 텍스트로 문서를 작성하는 간단한 방법 주로 개발자들이 텍스트와 코드를 작성해서 문서를 작성하는 것을 말함

# 제목1 (대제목)
## 제목2 (중제목)
### 제목3 (소제목)
#### 제목4
##### 제목5
###### 제목6
####### 7개는 지원 안함 \
(notion은 세 개까지만 지원함)

table of content -> 목차를 생성하는 용도 \
이 때 Heading으로 구분되어 목차를 자동 생성

---
리스트 작성해보기!

1. 순서가
    1. 있는 
        1. 그런
2. 리스트

- 순서가
    * 없는
+ 리스트
- 불릿 포인트느 +,-,* 동일하게 사용됨
- 같은 선상에 위치 시키면 그 곳부터 이어서 리스트 계속 생성 가능

혼용 사용도 가능
1. 순서가 있는 리스트에
    - 순서가 없는 리스트 사용 가능
* 순서 없는 리스트에
    1. 순서 있는 리스트 사용 가능
---
코드 블럭

코드 블럭 표현은 백틱(물결 따음표) 3개 ```
```python
if x < 10:
    print('x는 10보다 작습니다.')
else:
    print('x는 10보다 같거나 큽니다.')
```

한 줄만 코드로 표시하고 싶을 때
=> 백틱 하나로 감싸주기
`print('hello')`

---
링크 만들어보기

`[텍스트 정보](링크)`

[google](https://www.google.com/)

[AI계의 google](https://www.perplexity.ai/)

---
이미지 추가하기

`![이미지대체텍스트](이미지주소)`

* 웹 상의 이미지 표현

![Lorem Picsum Image](https://picsum.photos/200/200)

* 로컬 환경에서 이미지는 어떻게?

![로컬 이미지](./img.jpg)

* 이미지의 크기 조정은 markdown 문법은 지원하지 않음
    * html을 사용해서 조정할 수는 있음

<img src="./img.jpg" width="100">

---
텍스트 스타일링

* 텍스트 **굵게**

* 텍스트 *기울여서*

* 텍스트 ~~취소표시~~
---

인용문구 추가
> 인용문구는 이렇게 표현 가능
> 인용 문구의
>> 인용은 >의 개수로 조정 가능

- 테이블
| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |

- 정렬 하기

| First Header  | Second Header |
| -------------: | :-------------: |
| 우측 정렬  | 가운데 정렬  |
| Content Cell  | Content Cell  |
----
체크 리스트 작성
> 지원하는 서비스도 있고 아닌 서비스도 있다.
- [X] 체크리스트 작성
- [] ㅜㅜ

[Mark down guide](https://www.markdownguide.org/getting-started/)

마크다운 에디터
1. Typora
2. MarkText
3. Markdown All ino\One

