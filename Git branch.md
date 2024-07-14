### branch

- 브랜치 생성
  - `git branch 브랜치명`

- 브랜치로 이동
  - `git switch 브랜치명`
  - `git checkout 브랜치명`


- `Head`는 현재 위치

- 브랜치 병합
  - `merge`
    - main 브랜치 이동
    - `merge 합치는 브랜치` 
    - 새로운 하나의 커밋이 생김 (리셋이 가능)
    - 브랜치의 흔적이 남음
  - `rebase`
    - 대상 브랜치로 이동
    - `git rebase main`
    - `rebase` 브랜치를 그대로 잘라서 main에 붙임
    - main 브랜치로 이동후 `git merge 대상 브랜치` (시점이동)    

- 현재 branch 확인
  - `git branch`

- 브랜치 생성과 동시에 이동
- `git switch -c 새 브랜치명`

- 브랜치 삭제
- `git branch -d 브랜치명`

- 브랜치 이름 바꾸기
- `git branch -m 기존 브랜치명 새 브랜치명`

- 브랜치 제거
  - `git branch -d 브랜치명`

### Remote
- 정보 확인
  - `git remote show 원격저장소 별명`
- 원격저장소 추가
  - `git remote add 저장소별명 저장소주소`
- 원격 저장소 연결
  - `git push -u origin main`
  - 현재 브랜치와 명시된 원격 브랜치 기본 연결

- push, pull 동시에 필요할 때 & 충돌날 때
  - ` git pull --no - rebase`
    - merge 방식 : 로컬과 깃허브의 어긋난 시간을 한군데로 모아
  - `git pull rebase`
    - rebase 방식 : 원격에 맞춰서 바꾼 후 로컬을 붙임
- 로컬 내용에 강제로 맞출 때 (사용 시 주의)
  - `git push --force`
- 로컬에서 브랜치 만들어서 원격에 push
  - `git push -u 원격저장소별명 로컬 브랜치명`
- 원격의 브랜치명을 다 보고 싶을 때
  - `git branch -a`
  - `git branch --all`
- 원격의 브랜치 로컬에 받아오기
  - 원격의 변경사항 확인
    - `git fetch`
  - 로컬에 같은 이름의 브랜치를 생성하여 연결하고 switch
    - `git switch -t origin/from-remote`
  - 원격의 브랜치 삭제
    - `git push 원격이름 --delete 원격의 브랜치명`