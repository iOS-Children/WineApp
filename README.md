# WineApp
와인 정보 공유 및 커뮤니티


## 사용법 
- cocodpod 설치 
- pod install 진행 

## 브랜치전략 
1. 모든 개발사항은 develop브랜치에서 feature/~ 식으로 피쳐를 따서 진행 
2. 각 기능, 큰 틀별로 피쳐랑 이슈를 진행할 예정이고 각 기능들이 얼추 완성되었다 싶으면 develop으로 머지 
   - PR올라온 내용에 대한 머지는 반드시 PR올린 사람이 직접 머지 진행 
   - 리뷰어들은 Approve만 진행
3. main(master)브랜치는 나중에 만약 앱 배포나 그렇게 사용되야 할때 사용 우선은 안쓰임 

## 스펙
1. iOS 13이상부터 사용 가능하도록 (SwiftUI 등 여러 신규 기술들이나 라이브러리 적용 예정)
2. Xcode 12.5이상(파이어베이스 사용 예정이라)
