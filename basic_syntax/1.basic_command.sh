
# git add . 은 모든 변경(추가) 사항을 staging area로 이동
git add .

# git commit은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m "메시지"

# 원격 repo에 main브랜치 변경사항(commitID)을 업로드
git push origin main

# 현재 working directory, staging area의 상태 조회
git status

# 특정 파일만 add할 경우
git add 특정파일(위치포함)

# local repository에 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi에디터 모드에서 작성 : 첫줄에는 제목, 두번째줄부터 내용
git commit

# add와 커밋을 동시에
git commit -am "add와 commit을 동시에"

# local repository의 commit 이력을 조회
git log

# git 로그를 간결하게 조회
git log --oneline

# git 로그를 그래프 형태로 조회
git log --graph

# main브랜치 뿐만 아니라 전체 commit 이력 조회
git log --all

# 특정 commit ID로의 전환(소스코드를 과거의 특정 버전으로 되돌릴떄)
git checkout 커밋ID

# 다시 현재의 브랜치의 commit으로 되돌아올때
git checkout 현재브랜치명(main)

# git pull은 원격의 변경사항을 local로 내려받는 것(working directory까지 반영)
# git pull = git fetch + git merge
git pull origin 브랜치명

# 워격에 변경사항을 local에 가져오되 병합은 하지 않은 것
git fetch origin main


# git 작업 취소
# commit 이후의 취소
git reset head~1
git reset head^
# staging area로 까지만 취소 
git reset --soft head~1

# push 이후의 취소 -> commit 메시지 작성 vi 화면으로 이동 -> :wq
git revert 기존의ID


# 작업중인 사항을 임시저장(충돌상황에서 많이 사용)
git stash

# 저장한 최신의 작업목록을 꺼내서 적용하기
git stash pop

# 임시저장한 목록은 그대로 놔둔채 특정 index 항목 적용용
git stash apply 인덱스번호

# 임시저장한 작업 내용 조회
git stash show -p 인덱스번호

# 임시저장한 작업 목록 조회
git stash list

# 저장목록 모두 삭제
git stash clear