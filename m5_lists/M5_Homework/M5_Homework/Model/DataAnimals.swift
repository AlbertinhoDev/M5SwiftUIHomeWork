import SwiftUI

/// реализуйте протокол Identifiable
/// для работы с линивой загрузкой
/// добавте для генерация уникального id
/// свойтсво let id = UUID()
struct Breed {
    let name: String
    let url: String
}

struct Animal: Identifiable {
    let name: String
    let breeds: [Breed]
    let id = UUID()
}

struct DataAnimals {
    let animals = [
        Animal(name: "Dog", breeds: [
            Breed(name: "Bulldog", url: "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bulldog_inglese.jpg"),
            Breed(name: "German Shepard", url: "https://6kcmxu3d7l.a.trbcdn.net/upload/files-new/e1/92/f0/562588_1000x1000.jpg"),
            Breed(name: "Golden Retriever", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMXfwRp0cQtYI2MYYZDgzszxJzcks8Hl03zA&s")]),
        Animal(name: "Cat", breeds: [
            Breed(name: "Siamese", url: "https://media.istockphoto.com/id/177689719/ru/%D1%84%D0%BE%D1%82%D0%BE/%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9-%D0%B8%D0%BB%D0%B8-%D1%81%D0%B8%D0%B0%D0%BC%D1%81%D0%BA%D0%B0%D1%8F-%D0%BA%D0%BE%D1%88%D0%BA%D0%B0.jpg?s=612x612&w=0&k=20&c=1GftKcPsPb39GFQXSved8AzV5HzQXIcMlTGr6lY06H0="),
            Breed(name: "Persian", url: "https://yac-wh-sb-prod-s3-media-07001.storage.yandexcloud.net/media/images/Shutterstock_180046616.max-2880x1820.format-jpeg.jpg"),
            Breed(name: "Bengal", url: "https://www.proplan.ru/sites/default/files/breeders/%D0%B1%D0%B5%D0%BD%D0%B3%D0%B0%D0%BB%D1%8C%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BA%D0%BE%D1%88%D0%BA%D0%B0%202-min.jpg")]),
        Animal(name: "Bird", breeds: [
            Breed(name: "Parrot", url: "https://media.istockphoto.com/id/168663169/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B7%D0%B5%D0%BB%D0%B5%D0%BD%D1%8B%D0%B9-%D0%BA%D1%80%D1%8B%D0%BB%D1%8B%D1%88%D0%BA%D0%B0%D0%BC%D0%B8-%D0%B0%D1%80%D0%B0-ara-chloropterus-%D0%BF%D0%B5%D1%80%D0%B5%D0%B4-%D0%B1%D0%B5%D0%BB%D1%8B%D0%BC-%D1%84%D0%BE%D0%BD%D0%BE%D0%BC.jpg?s=612x612&w=0&k=20&c=7Crw6mIK0hStaAPHH10-O2fm5N-7lWTt5JSh9IyX1hE="),
            Breed(name: "Dove", url: "https://media.istockphoto.com/id/658430100/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%BF%D0%BE%D0%BB%D0%BD%D0%BE%D0%B5-%D1%82%D0%B5%D0%BB%D0%BE-%D1%81%D0%BA%D0%BE%D1%80%D0%BE%D1%81%D1%82%D0%B8-%D0%B3%D0%BE%D0%BD%D0%BE%D1%87%D0%BD%D1%8B%D1%85-%D0%B3%D0%BE%D0%BB%D1%83%D0%B1%D1%8C-%D0%BF%D1%82%D0%B8%D1%86%D0%B0-%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D1%82%D1%8C-%D0%B1%D0%B5%D0%BB%D1%8B%D0%B9-%D1%84%D0%BE%D0%BD.jpg?s=612x612&w=0&k=20&c=cOJaEmWeGiMn39mV9slVschXDUFRwfuqs-bGvrmxrsI="),
            Breed(name: "Finch", url: "https://media.istockphoto.com/id/649598194/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B7%D0%B5%D0%B1%D1%80%D0%B0-%D1%84%D0%B8%D0%BD%D1%87-%D0%BF%D1%82%D0%B8%D1%86%D0%B0.jpg?s=612x612&w=0&k=20&c=c_0PtMiHsYxT7zGZ1MkufQ5-TPDCMgL8VOwHVRpUmdg=")])
    ]
}
