//
//  ContentView.swift
//  DreamBoardGames
//
//  Created by Ugo Mariotto on 08/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = GamesViewModel()
    var body: some View {
        
        TabView{
            TopGamesView(viewModel: viewModel)
                .tabItem{
                    Label("Top Games", systemImage: "dice")}
            SearchGameView(viewModel: viewModel)
                .tabItem{
                    Label("Search Games", systemImage: "magnifyingglass")}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
