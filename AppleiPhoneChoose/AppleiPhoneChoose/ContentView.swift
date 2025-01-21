import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("From $999 or $41.62/mo before trade-in*")
            Text("Choose your finish.")
                .bold()
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .listRowBackground(Color.clear)

            HStack {
                FinishCell(text: "Sierra Blue", color: .blue)
                FinishCell(text: "Silver", color: .gray)
            }

            HStack {
                FinishCell(text: "Gold", color: .yellow)
                FinishCell(text: "Graphite", color: .black)
            }


            Text("Choose your capacity.")
                .bold()
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Your current iPhone X is a 64 GB model")
                .font(.caption)
                .foregroundColor(.gray)
            
            Text("How much capacity is right for you?")
                .font(.caption)
                .foregroundColor(.blue)
                

            HStack {
                CapacityCell(text: "128GB", price: "From $999 or $41.62/mo. before trade-in*")
                CapacityCell(text: "256GB", price: "From $1099 or $45.79/mo. before trade-in*")
            }


            HStack {
                CapacityCell(text: "512GB", price: "From $1299 or $54.12/mo. before trade-in*")
                CapacityCell(text: "1TB", price: "From $1499 or $62.45/mo. before trade-in*")
            }
        }
    }
}

struct FinishCell: View {
    var text: String
    var color: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .border(Color.gray, width: 1)
            VStack {
                Circle()
                    .fill(color)
                    .frame(width: 30, height: 30)
                    .padding(5)
                Text(text)
            }
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
    }
}

struct CapacityCell: View {
    var text: String
    var price: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 100)
                .cornerRadius(20)
                .border(Color.gray, width: 1)
            VStack {
                Text(text)
                    .bold()
                    .padding(10)
                Text(price)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 8)
    }
}



#Preview {
    ContentView()
}
