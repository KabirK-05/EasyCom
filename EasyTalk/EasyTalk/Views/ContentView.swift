import SwiftUI
import Neumorphic


var PageTracker = 0

struct ContentView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                TopPage()
                Spacer()
                
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                        .tag(0)
                    SearchView()
                        .tabItem {
                            Image(systemName: "wand.and.stars")
                            Text("Auto Suggestions")
                        }
                        .tag(1)
                    ReelsView()
                        .tabItem {
                            Image(systemName: "safari.fill")
                            Text("Instrument view")
                        }
                        .tag(2)
                    RouteView()
                        .tabItem {
                            Image(systemName: "mappin.and.ellipse")
                            Text("Route")
                        }
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
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}




