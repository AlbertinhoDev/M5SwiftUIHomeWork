import SwiftUI

struct MainRouterView<MainRouter: Router>: View where MainRouter.Route == MainRoute{
    
    let router: MainRouter
    
    var body: some View {
        TabView {
            router.viewFor(route: .stackView) {
                StackView()
            }
            .tabItem {
                Label("StackView", systemImage: "square.stack.3d.up.badge.automatic")
            }
            router.viewFor(route: .gridView) {
                GridView()
            }
            .tabItem {
                Label("GridView", systemImage: "square.grid.3x3.topmiddle.filled")
            }
            router.viewFor(route: .listView) {
                ListView()
            }
            .tabItem {
                Label("ListView", systemImage: "list.dash")
            }
        }
    }
}

struct MainRouterView_Preview: PreviewProvider {
    static var previews: some View {
        MainRouterView(router: MainRouter())
    }
}
