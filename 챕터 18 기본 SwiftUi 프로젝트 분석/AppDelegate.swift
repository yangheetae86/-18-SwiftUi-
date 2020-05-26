//
//  AppDelegate.swift
//  챕터 18 기본 SwiftUi 프로젝트 분석
//
//  Created by HEE TAE YANG on 2020/05/26.
//  Copyright © 2020 yht. All rights reserved.
//

/* 18.2 uikit과 swiftUi
 애플은 swiftui와 uikit 코드가 동일한 프로젝트 내에 통합되도록 하는 여러 방법을 제공한다. 실제로 swiftui뷰들이 앱을 만드는 주체가 되도록 하기 위하여 통합 기술을 사용하는 uikit 기반의 앱을 생성한다. 따라서 이번장의 몇몇 파일은 uikit 기반이며, ui라는 접두가사 붙어있는 모든 클래스는 uikit 클래스다 */

/* 18.3 AppDelegate.swift 파일
 모든 ios앱은 이벤트 처리와 사용자 인터페이스를 표시하기 위하여 앱에 의해 사용될 서로 다른 UIWindow 객체를 관리하는 UIApplication 클래스의 인스턴스 하나를 갖는다. UIWindow 인스턴스는 사용자에게 보이지 않지만 사용자 인터페이스를 구성하는 시각적 객체를 담기 위한 컨테이너를 제공한다
 
 (let UIWindow = UIApplication 클래스를 갖는 UIWindow 인스턴스는, 사용자에게 보이지않지만 UIWindow 객체를 관리한다_
 
 UIApplication 인스턴스는 앱의 생명 주기와 관련된 중요한 이벤트(예를들어, 앱 실행, 알림 수신, 디바이스 메모리 부족, 앱 종료 보류, 앱 내에 새로운 화면 생성 등)에 대한 메서드 호출을 통하여 알림을 주는 델리게이트와 연결된다.
 Xcode에 의해 디폴트로 생성되는 AppDelegate.swift 파일은 AppDelegate 프로토콜을 따르는 필수 메서드들만 포함하지만, 다른 종류의 앱 생명 주기 이벤트의 알림을 받기 위하여 관련된 메서드를 추가할수도 있다. 이러한 메서드들은 네트 워크 연결을 구축하거나 데이터베이스 접근 설정과 같이 앱 초기에 해야할 초기화 작업을 구현하는데 유용하다. didDiscardSceneSessions 메서드는 초기화 코드를 추가하는 데 특히 유용하다. 왜냐하면 앱이 실행된 후에 첫 번째로 호출되는 메서드이기 때문이다.
 */

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

