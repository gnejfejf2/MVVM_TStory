//
//  ViewModel.swift
//  MVVMTestApp
//
//  Created by 강지윤 on 2022/03/09.
//

import Foundation

class ViewModel {
    private var members : [MVVM_GFriendModel] = []
    var selectedMemeber : Observable<MVVM_GFriendModel?> = Observable(nil)
    private var index : Int = 0
    
    init(){
        self.members.append(MVVM_GFriendModel(name: "소원", imageName: "소원", memberType: "서브보컬 , 서브댄서 , 쏘리다", fancamURL: "https://www.youtube.com/watch?v=PeCsIDzTsb0"))
        self.members.append(MVVM_GFriendModel(name: "예린", imageName: "예린", memberType: "서브보컬 , 서브댄서 , 옌니", fancamURL: "https://www.youtube.com/watch?v=gw92213ow9s"))
        self.members.append(MVVM_GFriendModel(name: "은하", imageName: "은하", memberType: "서브보컬 , 최애캐 , 으나 , 짜냥이", fancamURL: "https://www.youtube.com/watch?v=G_-SNiuZrJA"))
        self.members.append(MVVM_GFriendModel(name: "유주", imageName: "유주", memberType: "메인보컬 , 가창력갑 , 바리스타 유주", fancamURL: "https://www.youtube.com/watch?v=Rk9nbLFm_uo"))
        self.members.append(MVVM_GFriendModel(name: "신비", imageName: "신비", memberType: "메인댄서 , 춤신춤왕 , 막내", fancamURL: "https://www.youtube.com/watch?v=L9U3hcCSKIA"))
        self.members.append(MVVM_GFriendModel(name: "엄지", imageName: "엄지", memberType: "서브댄서 , 서브보컬 , 막내", fancamURL: "https://www.youtube.com/watch?v=Rrm62tCrNVw"))
        
        self.selectedMemeber.value = members[index]
        
    
        
        
        
    }
    
    
    
    func tapButton(isPrevious : Bool) {
        if isPrevious {
            index = index > 0 ? index-1 : members.count - 1
        }else {
            index = index < members.count - 1 ? index + 1 : 0
        }
        self.selectedMemeber.value = members[index]
        
    }
    
    
}
