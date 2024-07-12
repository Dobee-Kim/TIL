### Git Revert

- 특정 commit을 없었던 일로 만들고, 새로운 commit으로 남김
    - git amend와는 다름  `git commit --amend` : 커밋 수정
- `git revert <commit id>` : 해당 id를 가진 commit이 취소됨
    - "재설정"
    - 단일 commit을 실행 취소하는 것
    - commit == 변경사항을 남기는 것

- 변경 사항을 안전하게 실행 취소할 수 있도록 도와주는 순방향 실행 취소 작업
- Commit 기록에서 commit을 삭제하거나 분리하는 대신, 지정된 변경 사항을 반전시키는 새 commit을 생성
- git에서 기록이 손실되는 것을 방지하며 기록의 무결성과 협업의 신뢰성을 높임 (커밋 히스토리가 남음)

### Revert 추가 명령어
- 공백을 사용해 여러 commit을 한꺼번에 실행 취소 가능
    - `git revert 커밋ID 커밋ID 커밋ID`
- '..'을 사용해 범위를 지정하여 여러 commit을 한꺼번에 실행 취소 가능
    - `git revert 커밋ID..커맷ID`
- commit 메시지 작성을 위한 편집기를 열지 않음 (자동으로 commit 진행)
    - `git revert --no-edit 7f6c24c(커밋ID)`
- 자동으로 commit 하지 않고, Staging Area에만 올림 (이후에 직접 commit 해야 함)
    - 이 옵션은 여러 commit을 revert 할 때 하나의 commit으로 묶는 것이 가능
    - Revert를 할 때 추가적으로 같이 작업하고 싶은게 있다면, no commit
    - `git revert --no-commit 커밋ID`