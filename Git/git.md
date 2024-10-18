# GIT
- 분산 버전 관리 시스템
### 버전관리
- 정의 : 변화를 기록하고 추적하는 것
- 어떻게 이뤄지는가 : 변경사항과 최종만 관리하는 형태
### 분산 
- 중앙 집중식 vs 분산식
    - 중앙 집중식 : 버전은 중앙 서버에 저장되고 중앙 서버에서 파일을 가져와 다시 중앙에 업로드
    - 분산식 : 버전을 여러 개의 복제된 저장소에 저장 및 관리

- 장점
    - 중앙 서버에 의존X
        - 개발자들 간의 작업 충돌을 줄여주고 개발 생산성 향상
    - 중앙 서버 장애나 손실에 대비하여 백업 및 복구가 용이
    - 인터넷 연결되지 않은 환경에서도 작업 계속할 수 있음
        - 변경 이력과 코드를 로컬 저장소에 기록 하고 중앙 서버와 동기화

### Git의 역할
- 코드의 버전(히스토리)를 관리
    - 개발되어 온 과정 파악
- 이전 버전과의 변경 사항 비교
- 코드 변경 이력을 기록하고 협업을 원활하게 함

### git 서비스
- git이라는 시스템(도구)을 이용한 서비스
    - gitlab
    - github

### git의 영역

물리적 구분이 아닌, 가상으로 구분
>  Working Directory | Staging Area | Repository

- Working Directory
    - Git으로 관리되고 있는 곳 중, 실제 작업 중인 파일들(수정, 생성, 삭제)이 위치하는 영역
- Staging Area
    - Working Directory에서 변경된 파일 중, 다음 버전에 포함시킬 파일들을 선택적으로 추가하거나 제외할 수 있는 중간 준비 영역. 
    - 실질적 버전 관리할 파일들을 선별하는 공간
    - 물리적 공간이 아닌 가상의 공간
- Repository
    - 변경사항이 버전이력으로 저장되는 영역
    - 버전 이력과 파일들이 영구적으로 저장되는 영역
    - 모든 버전과 변경 이력이 기록됨
---
- `Commit`
    - 변경된 파일들을 저장하는 행위이며, 마치 사진을 찍듯이 기록한다 하여 'snapshot'이라고도 함

### git의 동작

- `git init`
    - git 설정
    - 해당 폴더를 git으로 관리를 할 준비
    - 로컬저장소 설정(초기화)
    - git의 버전 관리를 시작할 디렉토리에서 진행
    - 해당 폴더부터 하위 폴더까지 모두 git으로 관리

- `git add`
    - 변경사항이 있는 파일을 staging area에 추가
    - 버전을 관리할 파일만 남길 수 있도록 분류하는 것. 분류소
    - Staging area에 올라와있는 파일들이 commit을 찍을 수 있는 파일들임
    - 현재 위치의 모든 파일을 한꺼번에 추가하고 싶다면, `git add.` 다만 불필요한 파일이 모두 올라갈 수 있음
- `git commit`
    - staging area에 있는 파일들을 저장소에 기록
    - 해당 시점의 버전을 생성하고 변경 이력을 남기는 것

- `Working Directory` -add-> `Staging Area` -commit-> `Repository`

- `git status`
    - 상태가 빨강색으로 나온다 -> working directory에 있음
        - Untracked : 새 파일
        - modified : 이미 관리되고 있는 파일 (commit이 찍혀있는 상태)
    - Staging Area : 버전관리할 파일만 남기기
        - 파일 이름이 초록색으로 바뀜
        - `git add 파일명` 해당 파일을 working directory에서 staging area로 옮김

- `git commit`
    - 커밋을 찍을 때 이력내용(title)을 남겨야함
    - 커밋 내용에 대한 메시지를 적을 것.(연관된 메시지)
``` git
$ git commit -m '메시지'
``` 
- `git config`
    - 레포지토리 사용자와 깃 커밋을 시작하기 위해선 이름과 이메일 주소를 적어야 함
    - `git config --global -l` git 정보 보기
``` git
$ git config -- global user.name "이름" 
$ git config -- global user.email "이메일 주소" 
```
- `git log` : 커밋 히스토리를 보는 명령어
    - q 눌러서 log에서 종료
    - `--oneline` 한줄로 보기
---
- git은 로컬 저장소 내 모든 파일의 '변경사항'을 감시하고 있음
- 변경점이 조금이라도 생기면 working directory에 등록함
---
- `cd ~` or `cd /`로 접근 가능
- `~`는 홈 디렉토리를 나타냄 
- `/`는 root 폴더를 나타냄 (시작지점)
    - `/path/`는 루트폴더부터 시작
    - `path/`는 현재폴더부터 시작
---
1. git init을 할 땐 (master)가 없는 경우에만 git init을 하자
---
### vim
- command editor
- 메시지를 길게 쓰고 싶을 경우 `git commit` 을 쓰면 `vim`으로 이동
- `vim` 사용방법
    - `i` 누를 시 insert로 텍스트 변경이 가능함
    - `esc` 누를 시 command 모드
    - `command`모드에서 나가고 싶으면
        - `:wq!` 저장하고 나가기 (w: 저장, q:나가기, !:강제)

### 그 외
- 경고에 관하여
    - warning: in the working copy of 'b.txt' LF will be replaced by CRLF the next time Git touches it
    - 줄바꿈을 어떻게 할건지에 대한 이야기 이므로 무시해도 됨
    - `LF` : Line Feed (줄바꿈)
    - `CRLF` : Carriage Return 커서를 앞으로 땡김 (줄바꿈)
    - 줄바꿈을 의미하는 글자가 리눅스와 윈도우가 달라서 어떻게 처리하는지 묻는 워닝.
        - git bash는 리눅스

### Commit 수정하기
- 바로 직전 생성한 commit 수정하기
- `git commit --amend`
    - commit 메시지 수정
    - commit 전체 수정
        - 내가 놓친 파일을 최근에 올린 파일과 같이 올리고 싶을 때 사용 
            - 놓친 파일을 add 한 후, `git commit --amend`
        - repo에 올린 파일을 다시 staging area로 뺀 다음 놓친 파일을 추가해서 다시 commit
    
- commit을 수정하면 hashcode가 바뀜 (알려주고 해야하는 중대한 일)
- 버전관리 측면에서 빠진 파일을 넣는 것과, 오타를 고치는 commit은 유효한 버전이라고 보기 어려움
- 즉 불필요한 commit을 생성하지 않고, 직전 commit을 수정할 수 있는 git에 꼭 필요한 기능

### git ignore
- 필터링 역할