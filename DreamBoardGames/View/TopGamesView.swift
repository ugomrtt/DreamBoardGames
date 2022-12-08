//
//  TopGamesView.swift
//  DreamBoardGames
//
//  Created by Ugo Mariotto on 08/12/2022.
//

import SwiftUI

struct TopGamesView: View {
    @ObservedObject var viewModel : GamesViewModel
    
    var body: some View {
        NavigationView{
            List{
                GameListView(games: viewModel.games)
                ProgressView()
                    .onAppear{
                        Task {
                            do{
                                try await viewModel.getGames()
                            } catch{
                                print(error)
                            }
                            
                        }
                    }
            }.navigationTitle(Text("Top games"))
        }

    }
}
