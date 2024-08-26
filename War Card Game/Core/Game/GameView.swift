import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(viewModel.playerCard)
                    
                    Spacer()
                    
                    Image(viewModel.cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    viewModel.deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("\(viewModel.playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text("\(viewModel.cpuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    GameView()
}
