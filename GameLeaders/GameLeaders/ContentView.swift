import SwiftUI

struct GameLeader: Identifiable {
    let id = UUID()
    let name: String
    let team: String
    let stats: String
    let image: String
}

struct PlayerStatView: View {
    let leader1: GameLeader
    let leader2: GameLeader

    var body: some View {
        HStack {
            PlayerView(leader: leader1)
            Spacer()
            PlayerView(leader: leader2)
        }
        .padding(.vertical, 4)
    }
}

struct PlayerView: View {
    let leader: GameLeader

    var body: some View {
        VStack {
            Image(leader.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1.5))
            Text(leader.name)
                .font(.headline)
            Text(leader.team)
                .font(.subheadline)
            Text(leader.stats)
                .font(.footnote)
        }
    }
}

struct ContentView: View {
    let cell1Leaders = (GameLeader(name: "H. Hooker", team: "TENN", stats: "15-19, 225 YDS, 3 TD", image: "H Hooker"),
                        GameLeader(name: "C. Bazelak", team: "MIZ", stats: "27-44, 322 YDS, 2 INT", image: "C Bazelak"))
    let cell2Leaders = (GameLeader(name: "T. Evans", team: "TENN", stats: "15 CAR, 156 YDS, 3 TD", image: "T Evans"),
                        GameLeader(name: "T. Badie", team: "MIZ", stats: "21 CAR, 41 YDS, 1 TD", image: "T Badie"))
    let cell3Leaders = (GameLeader(name: "V. Jones Jr.", team: "TENN", stats: "7 REC, 79 YDS, 1 TD", image: "V Jones Jr"),
                        GameLeader(name: "K. Chism", team: "MIZ", stats: "4 REC, 76 YDS", image: "K Chism"))

    var body: some View {
        NavigationView {
            List {
                Text("PASSING")
                PlayerStatView(leader1: cell1Leaders.0, leader2: cell1Leaders.1)
                Text("Rushing")
                PlayerStatView(leader1: cell2Leaders.0, leader2: cell2Leaders.1)
                Text("Recieving")
                PlayerStatView(leader1: cell3Leaders.0, leader2: cell3Leaders.1)
            }
            .navigationTitle("Game Leaders")
        }
    }
}






#Preview {
    ContentView()
}
