# TwitterSentimentAnalysisApp

## 구현 화면

<img src="https://user-images.githubusercontent.com/40762111/94369257-a04fce80-0123-11eb-9713-4df5e8f72831.gif" width="200">

## 구현 과정

[블로그 참조](https://wnsah052.tistory.com/95)

## 주요 기능

- 키워드를 포함한 최근 트윗 100개를 분석하여 표정으로 표현

## 사용한 기술

- AutoLayout, Cocoapods, Swift Package Manager

## 사용한 라이브러리

- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) - Swift에서 트위터 API 를 통해 불러온 JSON 파일을 편리하기 파싱하기 위해 사용하는 라이브러리
- [Swifter](https://github.com/mattdonnelly/Swifter) -  Swift에서 트위터 API 사용하기 위한 라이브러리
- [IQKeyboardManager](https://github.com/hackiftekhar/IQKeyboardManager): 키보드를 편리하게 사용하기 위한 라이브러리

## 회고

- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) 의 사용으로 JSON을 파싱하기 정말 편하다고 생각했다. 마치 내장 함수와 같은 느낌..! 
- 프로젝트에서 CreatML을 이용해서 모델을 생성 후, 프로젝트에 적용했는데 사실 어떻게 동작하는지도 모르고 사용했다. 찾아보니, 자연어 처리 기술(Natual Language Processing)이 사용되었고, 알고리즘으로는 LogisticClassification이 이용되었다고 한다. 김성훈 교수님의 [모두를 위한 머신러닝/딥러닝](http://hunkim.github.io/ml/) 강의를 조금 들어봤는데, 매우 흥미로웠다.