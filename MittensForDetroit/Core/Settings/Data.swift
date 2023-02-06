//
//  Data.swift
//  MittensForDetroit
//
//  Created by MohamedSafaoui on 1/31/23.
//

import Foundation
import SwiftUI


class TitleTest: ObservableObject{
    @AppStorage ("title") var title: String?
   
    static let data = TitleTest()
   
    
}
class emailuser: ObservableObject{
    @AppStorage ("USEREMAIL") var useremailtitle: String?
    static let data2 = TitleTest()
    
}
