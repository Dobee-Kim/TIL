## 원격 저장소
코드와 버전 관리 이력을 온라인 상의 특정 위치에 저장하여 여러 개발자가 협업하고 코드를 공유할 수 있는 저장 공간
- 제공 서비스
    - github
    - gitlab

### 명령어

- `Local Repository` --push--> `GitHub Repository`
- `Local Repository` <--pull or clone-- `GitHub Repository`
- `clone`은 최초 한 번만 사용. 로컬에 레포가 없을 때, remote에 있는 걸 복제해서 가져올 때 한 번만 사용

- 로컬 저장소에 원격 저장소 추가
    - `git remote add origin remote_repo_url`
    - `git remote add {별명} {원격저장소 주소}`
    - 원격 저장소는 여러개, 다른 서비스에도 등록할 수 있음
    - 원격 저장소 주소는 Git Bash 창에서 `shift`+ `insert` 로 붙여넣기 가능 

- `git remote -v` 으로 연결되어 있는거 확인 가능

- fetch : Remote -> Local
- push : Local -> Remote
    - `git push origin master`
    - `git push {별명} {브랜치}`
    - push를 받기 전에 pull을 받는 연습을 할 것

- 원격 저장소에는 commit이 올라가는 것
    - commit 이력이 없다면 push할 수 없다

- pull & clone
    - clone을 하면 init 필요 없음 (clone은 main 브랜치만 복사됨)
        - `git pull origin master` remote history와 맞추기 위해 
        - `git add` 변경 사항을 커밋이력으로 남기기
        - `git commit -m '메시지'` 커밋하기
        - `git push origin master` 
        - 사이사이에 `git status`를 통해 상태를 확인할 것

- gitignore
    - git에서 특정 파일이나 디렉토리를 추적하지 않도록 설정하는 데 사용되는 텍스트 파일
        - file black list 개념
            - Working directory에 조차 등록이 되지 않음
        - 보안이 필요한 파일들을 등록
            - 프로젝트에 따라 공유하지 않아야 하는 것들도 존재하기 때문
    - `.gitignore`
        - 추적 대상이 아닌 파일들을 대상으로 동작
          - git commit : 추적 대상 등록
        - ignore에 뒤늦게 등록을 해도 블랙리스트로 동작하지 않음
        - ignore의 생성 시점은 init한 직후 바로 생성할 것.
    - `gitignore.io` : 제외되어야 하는 파일들을 알려주는 웹사이트
    - 이미 올라간 파일을 추적 대상에서 제외 하는 방법
      - 이미 git의 관리를 받은 이력이 있는 파일이나 디렉토리는 나중에 gitignore에 작성해도 적용되지 않음 (git rm --cached 명령어를 통해 git 캐시에서 삭제 필요)

### Github 활용하기
- TIL(Today I Learned)을 통해 내가 학습하는 것을 기록
- TIL : 매일 내가 배운 것을 마크다운으로 정리해서 문서화하는 것
    - 단순히 배운 것만을 필기하는 것이 아닌 스스로 더 나아가 어떤 학습을 했는지를 기록하는 것
    - 어떤걸 배웠고, 어떤 에러가 났고와 같이 경험과 생각을 녹여낼 것
- 문서화의 중요성

- git이라는 시스템을 이용하는 서로 다른 서비스이기에 동시에 업로드 가능 (두 서비스는 서로 연결되어 있지 않음 ⇒ 수정 사항 발생 시 각각 push 필요)
- 모든 싱크는 자동이 아닌 수동이다!
- gitlab (lab.ssafy에서 레포 만들기)
- + 버튼 통해 new repository 생성
- project URL : 개인 레포의 경우 Users > 본인 아이디 선택할 것
- gitlab은 레포 생성 시 기본적으로 README 생성이 체크되어 있기에 해제 필요
- gitlab에서 README를 자동 생성할 경우에는 clone → pull로만 작업 시작해야함 (init → touch README.md 할 경우 README에 대한 커밋 꼬임)
- --allow-unrelated ~ 옵션을 통해 설정 변경 가능
항상 프로젝트 깃 히스토리를 잘 기억하고 있어야 한다

### README.md 파일이란?
- 프로젝트에 대한 설명, 사용 방법, 문서화된 정보 등을 포함하는 역할
- Markdown 형식으로 작성되며, 프로젝트의 사용자, 개발자, 혹은 기여자들에게 프로젝트에 대한 전반적인 이해와 활용 방법을 제공하는데 사용
- 주로 프로젝트의 소개, 설치 및 설정 방법, 사용 예시, 라이센스 정보 등을 작성
- 반드시 저장소 최상단에 위치해야 원격 저장소에서 올바르게 출력됨
    - .git 폴더와 같은 레벨에 위치하여야 함

### git 기타 명령어
- git remote -v
    - 현재 로컬 저장소에 등록된 원격 저장소 목록 보기
- git remote rm 원격_저장소_이름
    - 현재 로컬 저장소에 등록된 원격 저장소 삭제
- git remote rm origin
    - origin에 등록된 정보 삭제