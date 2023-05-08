import UIKit

// -> (tenMonDiemThapNhat: String, tenMonDiemCaoNhat:String)

func kiemTraDiem(diemToan: Float, diemVan: Float, diemAnh: Float) -> (tenMonDiemThapNhat: String, tenMonDiemCaoNhat:String){

    let tenMon = ["Toan": diemToan, "Van": diemVan, "Anh": diemAnh]
    
    let diemThapNhat = tenMon.values.min() ?? 0
    let diemCaoNhat = tenMon.values.max() ?? 0
    
    print("\(diemThapNhat)")
    print("\(diemCaoNhat)")

    var tenMonDiemThapNhat = ""
    var tenMonDiemCaoNhat = ""
    
    for check in tenMon {
        if(check.value == diemThapNhat){
            tenMonDiemThapNhat = check.key
        }
        if check.value == diemCaoNhat {
            tenMonDiemCaoNhat = check.key
        }
    }
    return(tenMonDiemThapNhat,tenMonDiemCaoNhat)
}
let ketQua = kiemTraDiem(diemToan: 10, diemVan: 8, diemAnh: 3)
print(ketQua)
