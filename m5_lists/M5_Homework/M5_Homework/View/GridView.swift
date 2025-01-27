import SwiftUI

struct GridView: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            let columns: [GridItem] = [.init(.fixed(size.width * 0.5))]
            ScrollView(.vertical) {
                LazyVGrid(columns: columns) {
                    ForEach(DataAnimals().animals) { animal in
                        if #available(iOS 16.0, *) {
                            Text(animal.name)
                                .font(.system(size: size.width * 0.08))
                                .foregroundStyle(Color.blue)
                                .fontWeight(.bold)
                            ForEach(animal.breeds, id: \.id) {species in
                                ZStack {
                                    Circle().overlay(
                                        AsyncImage(url: URL(string: species.url) , placeholder: {
                                            Text(verbatim: "Loading...")
                                        })
                                    )
                                    .clipShape(Circle())
                                    .frame(width: size.width * 0.6)
                                    Text(species.name)
                                        .background(content: {
                                            Rectangle()
                                                .cornerRadius(10)
                                                .foregroundColor(Color.white)
                                                .opacity(0.5)
                                        })
                                        .position(x: size.width * 0.3, y: size.height * 0.25)
                                        .font(.system(size: size.width * 0.05))
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
