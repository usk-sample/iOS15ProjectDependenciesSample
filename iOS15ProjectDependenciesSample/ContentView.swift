//
//  ContentView.swift
//  iOS15ProjectDependenciesSample
//
//  Created by Yusuke Hasegawa on 2021/09/16.
//

import SwiftUI
import Nuke

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
        }.onAppear {
            Nuke.loadImage(with: "https://placehold.jp/150x150.png", into: UIImageView()) { response in
                switch response {
                case.success(let imageRes):
                    debugPrint(imageRes)
                case .failure(let error):
                    debugPrint(error)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
