import SwiftUI

struct StackView: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            ScrollView {
                LazyVStack {
                    ForEach(DataAnimals().animals) { animal in
                        if #available(iOS 16.0, *) {
                            Text(animal.name)
                                .padding(.trailing, size.width * 0.7)
                                .padding(.bottom, size.height * 0.04)
                                .font(.system(size: size.width * 0.08))
                                .foregroundStyle(Color.blue)
                                .fontWeight(.bold)
                        }
                        ForEach(animal.breeds, id: \.id) {species in
                            HStack {
                                Circle().overlay(
                                    AsyncImage(url: URL(string: species.url) , placeholder: {
                                        Text(verbatim: "Loading...")
                                    })
                                )
                                .clipShape(Circle())
                                .frame(width: size.width * 0.6)
                                .position(x: size.width * 0.3, y: size.height * 0.15)
                                Text(species.name)
                                    .multilineTextAlignment(.leading)
                                    .position(x: size.width * 0.3, y: size.height * 0.15)
                                    .padding(.trailing, size.width * 0.2)
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

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
