//
//  ContentView.swift
//  챕터 18 기본 SwiftUi 프로젝트 분석
//
//  Created by HEE TAE YANG on 2020/05/26.
//  Copyright © 2020 yht. All rights reserved.
// 18.5
// 18.6 Assets.xcassets 폴더는 에셋이 포함되며 이미지 아이콘 색상 등 앱에서 사용되는 리소스를 저장하기 위하여 사용
// 18.7 info.plist 이것은 정보 프로퍼티 파일로 앱을 구성하는 데 사용되는 키-값 쌍으로 된 XML 파일이다.
// 예를들어, 다중 윈도우 지원을 활성화하기 위한 설정은 이 파일에 포함된다.
// 18.8 LaunchScreen.storyboard 앱이 실행될때 사용자에게 표시되는 화면의 사용자 인터페이스 레이아웃을 담는 스토리보드 파일이다. 이것은 UIKit Storyboard 화면이므로 인터페이스 빌더를 이용하여설계 swiftui 가 아닌.
// 18.9 요약
// 
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
