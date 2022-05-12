//
//  ViewModelData.swift
//  HW1
//
//  Created by proff on 4/26/22.
//

import Foundation
import UIKit

//var likesCount = (1...100).randomElement()!
let authors = ["Anton@CheXXov", "Leo_fAt", "GoGol@MoGoL", "GoncharOFF", "Fyodor_D", "TourGen", "PUSH_Kine", "BeautyLessMan", "Island_Sky", "Leskov", "MaMaSiB", "TuT_Che", "Mad_Max(Gorky)"]

let names = ["Лосяш", "Мишки", "Волк", "Леопард?", "Лефф", "Зебра", "Бегемот", "Кенгуру", "С_Л_О_Н", "Жираф", "Тигр_кусок", "Лис", "Олень"]


struct DataModel {
    var image: UIImage
    var author: String = ""
    var description: String = ""
    var likesCount: Int = 0
}

