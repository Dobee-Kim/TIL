### Git reset
- 특정 commit으로 되돌아가는 작업
- `Git Reset {옵션} {hashID}`
- 작동원리
    - 되돌리기
    - 과거로 돌리는 듯한 행위
    - 특정 commit으로 되돌아 갔을 때, 되돌아간 commit 이후의 commit은 모두 삭제
- 3가지 옵션
    - `--soft`
        - 삭제된 commit의 기록을 staging area에 남김
    - `--mixed`
        - 삭제된 commit의 기록을 working directory에 남김 (기본 옵션값)
    - `--hard`
        - 삭제된 commit의 기록을 남기지 않음 (이전 커밋 그냥 버림)
    - reset은 과거 commit으로 되돌아간 후 되돌아간 commit 이후 commit들이 삭제됨
    - 그런데 삭제되는 commit들의 기록을 어떤 영역에 남겨둘 것인지 옵션을 활용해 조정할 수 있음

- 이미 삭제한 commit으로 다시 돌아가고 싶다면?
    - `git reflog` HEAD가 이전에 가리켰던 모든 commit을 보여줌
    - reset의 --hard 옵션을 통해 지워진 commit도 reflog로 조회하여 복구 가능
    - `git reset --hard <복구하고자 하는 commitID>`

- remote에서 reset하고 싶으면?
    - local에서 reset하고 push하면, remote는 pull을 받으라고 함
    - history 기록의 sync가 맞아야 하기 때문에. pull 받으면 원상복구가 됨.
    - `git push -f` 이 경우 강제로 push해야함. (local에 remote를 맞춤)
    - 강제로 무엇인가를 해야 하면, 팀원간에 정보공유가 이뤄져야 함

## Undoing
### 파일 내용을 수정 전으로 되돌리기

- `git restore`
    - 관리되고 있는(추적하고 있는) 파일을 대상으로 함
    - Modified 상태의 파일 되돌리기
    - Working Directory에서 파일을 수정한 뒤, 파일의 수정 사항을 취소하고, 원래 모습대로 되돌리는 작업
    - 기존 작업 한번이라도 commit 등록된 파일
    - restore하면 작업한 것 다 날라감
- `git stash`
    - 작업한 결과물을 잠시 다른공간에 저장하고, 기존 작업을 원상복구 시키는 것.
    - `git stash apply` 다른 공간에 저장한걸 다시 불러오는 것.

### Staging area에 올라간 파일을 Unstage하기
- `git rm --cached {파일명}`
    - new file인 경우 추적 대상에서 삭제 혹은 제외
        - Staging area에서 working directory로 되돌리기
        - git 저장소에 commit이 없는 경우
    - gitignore 이미 등록된 추적파일을 더이상 추적하고싶지 않을 때 git rm --cached
- `git restore --staged`
    - Staging Area에서 Working Directory로 되돌릭
    - git 저장소에 commit이 존재하는 경우
    
