//
//  SceneDelegate.swift
//  챕터 18 기본 SwiftUi 프로젝트 분석
//
//  Created by HEE TAE YANG on 2020/05/26.
//  Copyright © 2020 yht. All rights reserved.
//
/* 18.4 SceneDelegate.swift 파일
 앱의 사용자 인터페이스 전부는 UIWindow 자식인 UIWindowScene 객체의 형태인 화면(scene)으로 표시된다. 앱 사용자 인터페이스 내에 단일 화면만 나타내는 UIKit 스토리보드 화면(Storyboard scene)과 혼동하지 않는 것이 중요하다. 디폴트로, 앱은 단 하나의 화면만 갖겟지만 IOS 13 에서 다중 윈도우가 지원되면서 여러개의 사용자 인터페이스 인스턴스로 앱을 구성할수있게 되었다. 아이폰에서 사용자는 앱 스위처(app switcher)를 이용하여 사용자 인터페이스 복사본들 간의 전환을 하며, 아이패드에서도 사용자 인터페이스의 복사본이 나란히 표시된다.
 
 여러화면 모두는 동일한 UIApplication 객체를 공유하지만, 다중 윈도우 구성에서의 각 UIWindowScene 인스턴스는 자신만의 화면 델리게이트 인스턴스를 갖는다.
 SceneDelegate 클래스 파일은 UIWindowSceneDelegate 프로토콜을 구현하며, 현재 세션과 연결되는 새로운 화면 객체, 백그라운드와 포그라운드 간의 화면 전환, 또는 앱에서 연결이 끊긴 화면과 같은 이벤트를 메서드를 포함한다.
  SceneDelegate의 모든 메서드는 앱의 생명 주기 동안 초기화와 초기화 해제 작업을수행하는데 유용하다. 하지만, 이 파일에서 가장 중요한 델리게이트 메서드는 새로운 화면 객체가 앱에 추가될 때마다 호출되는 willConnectTo 메서드다.
 
 디폴트로, xcode에 의해 구현되는 willConnectTo 델리게이트 메서드는 ContentView()파일에 선언된 ContentView 뷰의 인스턴스를 생성하고 사용자에게 보이도록 한다. 이 메서드 내에서 UIKit 아키텍처와 SwiftUI 간의 가격이 해소된다.
 
 UIKit 프로젝트 내에 SwiftUI 뷰가 포함되기 위해서 SwiftUI 뷰는 UIHostingController 인스턴스애 포함된다.
 
 이에 대한 내용은 32장에서 다룬다. 이 작업을 하기 위하여 willConnectTo 델리게이트 메서드는 다음과 같은 작업을 수행한다.
1. ContentView 인스턴스 생서
2. 새로운 UIWindow 객체 생성
3. UIHostingController 인스턴스에 ContentView 객체 포함
4. UIHostingController를 새롭게 생성된 UIWindow 객체의 최상위 뷰 컨트롤러(window root view controller)로 할당
5. 화면의 현재 UIWindow 인스턴스를 새로운 인스턴스로 치환
6. 사용자에게 윈도우 표시

 */
import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {//앱의 사용자 인터페이스 전부는 UIWindow의 자식인 UIWindowScene 객체의 형태인 화면scene으로 표시된다.
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


struct SceneDelegate_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
