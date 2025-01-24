import SwiftUI

enum MainRoute {
    case gridView
    case listView
    case stackView
}

struct MainRouter: Router {
    typealias Route = MainRoute
    
    func viewFor<T>(route: MainRoute, content: () -> T) -> AnyView where T : View {
        switch route {
        case .gridView:
            return AnyView(TabView {
                content()
            })
        case .listView:
            return AnyView(TabView {
                content()
            })
        case .stackView:
            return AnyView(TabView {
                content()
            })
        }
    }
}
