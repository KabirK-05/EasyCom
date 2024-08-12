import SwiftUI
import Neumorphic


var PageTracker = 0

struct ContentView: View {
    @StateObject var chatController: ChatController = .init()
    @State var selectedTab: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TopPage()
                Spacer()
                
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(0)
                    SearchView()
                        .tag(1)
                    ReelsView()
                        .tag(2)
                    RouteView()
                        .tag(3)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .onAppear {
                    UIScrollView.appearance().isScrollEnabled = false
                }
                
                NavBar(selectedTab: $selectedTab)
                    .padding(.bottom, 20)
            }
            .edgesIgnoringSafeArea(.bottom)
            
            
            .background(BackgroundGradient)
            
        }
        .environmentObject(chatController)
        
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
          .environmentObject(ChatController())
  }
}




