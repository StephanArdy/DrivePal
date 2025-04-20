//import SwiftUI
//
//enum Route: Hashable {
//    case pageTwo
//    case pageThree
//}
//
//struct PageOneView: View {
//    @Binding var path: NavigationPath
//
//    var body: some View {
//        VStack {
//            Text("Page One")
//                .font(.largeTitle)
//        }
//        .navigationTitle("Page One")
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button("Next") {
//                    path.append(Route.pageTwo)
//                }
//            }
//        }
//    }
//}
//
//struct PageTwoView: View {
//    @Binding var path: NavigationPath
//
//    var body: some View {
//        VStack {
//            Text("Page Two")
//                .font(.largeTitle)
//        }
//        .navigationTitle("Page Two")
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button("Next") {
//                    path.append(Route.pageThree)
//                }
//            }
//        }
//    }
//}
//
//struct PageThreeView: View {
//    var body: some View {
//        VStack {
//            Text("Page Three")
//                .font(.largeTitle)
//        }
//        .navigationTitle("Page Three")
//    }
//}
//
//struct MainNavigationStack: View {
//    @State private var path = NavigationPath()
//
//    var body: some View {
//        NavigationStack(path: $path) {
//            PageOneView(path: $path)
//                .navigationDestination(for: Route.self) { route in
//                    switch route {
//                    case .pageTwo:
//                        PageTwoView(path: $path)
//                    case .pageThree:
//                        PageThreeView()
//                    }
//                }
//        }
//    }
//}
//
//#Preview {
//    MainNavigationStack()
//}
//
