import SwiftUI

struct ListView: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            List(DataAnimals().animals) { category in
                DisclosureGroup(category.name) {
                    ForEach(category.breeds) {child in
                        HStack {
                            Circle().overlay(
                                AsyncImage(url: URL(string: child.url) , placeholder: {
                                    Text(verbatim: "Loading...")
                                })
                                .clipShape(Circle())
                                .frame(width: size.width * 0.2)
                            )
                            Text(child.name)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, size.width * 0.05)
                                .font(.system(size: size.width * 0.05))
                        }
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
