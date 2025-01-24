import SwiftUI

struct StackView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                HStack {
                    Circle().overlay(
                        AsyncImage(url: URL(string: DataAnimals().animals[0].breeds[0].url) , placeholder: {
                        Text(verbatim: "Loading...")
                        })
                            .frame(width: 100, height: 100)
                    ).clipShape(Circle())
                        .frame(width: 250)
                        .padding(.leading, -50)
 
                    Text("Doggi")
                        .padding(10)
                }
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
