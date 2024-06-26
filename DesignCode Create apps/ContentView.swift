//  Adam Kaum on 20.05.2024


import SwiftUI

struct ContentView: View {
    
    @State var isTapped = false
    
    var body: some View {
        
        
        
        ZStack {
            Image(.image1)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment:.center ) {
                
                Text("modern architecture, an isometric tiny house, cute illustration, minimalist, vector art, night view")
                    .font(.subheadline)
                
                HStack(spacing: 8) {
                    
                    VStack(alignment: .leading) {
                        Text("Size")
                            .foregroundStyle(.secondary)
                        Text("1024x1024")
                            
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Type")
                            .foregroundStyle(.secondary)
                        Text("Upscale")
                            
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Date")
                            .foregroundStyle(.secondary)
                        Text("Today 5:19")
                            
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                .frame(height: 44)
                
                
                
                HStack {
                    HStack {
                        Image(systemName: "ellipsis")
                            .symbolEffect(.pulse)
                        Divider()
                        Image(systemName: "sparkle.magnifyingglass")
                            .symbolEffect(.scale.up)
                        Divider()
                        Image(systemName: "face.smiling")
                    }
                    .padding()
                    .frame(height: 44)
                    .overlay(
                        UnevenRoundedRectangle(cornerRadii:
                                RectangleCornerRadii(topLeading: 0,
                                                     bottomLeading: 20,
                                                     bottomTrailing: 0,
                                                     topTrailing: 20)
                                              )
                            .strokeBorder(linearGradient)
                    )
                    .offset(x: -20, y: 20)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.down")
                        .padding()
                        .frame(height: 44)
                        .overlay(
                            UnevenRoundedRectangle(cornerRadii:
                                    RectangleCornerRadii(topLeading: 20,
                                                         bottomLeading: 0,
                                                         bottomTrailing: 20,
                                                         topTrailing: 0)
                                                  )
                                .strokeBorder(linearGradient)
                        )
                        .offset(x: 20, y: 20)
                        
                }
                    
                
            }
            .padding(20)
            .background(.regularMaterial)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(linearGradient)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(20)
            .offset(y: 80)
            
            
            HStack(spacing: 30) {
                
                Image(systemName: "wand.and.rays")
                    .frame(width: 44)
                    .symbolEffect(.variableColor.iterative.reversing, options: .speed(3))
                    .symbolEffect(.bounce, value: isTapped)
                
                Image(systemName: isTapped ? "pause.fill" : "play.fill")
                    .frame(width: 44)
                    .contentTransition(
                        .symbolEffect(.replace)
                    )
                    .onTapGesture {
                        isTapped.toggle()
                    }
                
                Image(systemName: "bell.and.waves.left.and.right.fill")
                    .frame(width: 44)
                    .symbolEffect(.bounce, options: .speed(3).repeat(3),
                                  value: isTapped)
                
            }
            .foregroundStyle(.primary, .white)
            .font(.largeTitle)
            .padding(20)
            .background(.ultraThinMaterial)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(linearGradient)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(y: -44)
            
        }
        .frame(maxWidth: 400)
        .padding(20)
        .dynamicTypeSize(.xSmall ... .xLarge)
        
        
    }
    
    
    var linearGradient: LinearGradient {
        LinearGradient(colors: [.clear,
                                .primary.opacity(0.3),
                                .clear]  , startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    
}

#Preview {
    ContentView()
}
