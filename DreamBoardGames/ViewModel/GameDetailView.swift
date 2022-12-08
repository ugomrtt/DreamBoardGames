//
//  GameDetailView.swift
//  DreamBoardGames
//
//  Created by Ugo Mariotto on 08/12/2022.
//

import SwiftUI

struct GameDetailView: View {
    var game: Game
        
    var body: some View{
        VStack{
            if let url = game.thumbUrl{
            
                GameImage(gameURL: url).frame(width: 300)
                
            }
            Text("Description")
                .font(.title)
                .fontWeight(.bold)
            Text(game.descriptionPreview)
            
            Spacer()
        }
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let path = Bundle.main.path(forResource: "root", ofType: "json")!
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        
        let game = try! JSONDecoder().decode(Game.self, from: data)
    
        
        GameDetailView(game: game)
    }
}
