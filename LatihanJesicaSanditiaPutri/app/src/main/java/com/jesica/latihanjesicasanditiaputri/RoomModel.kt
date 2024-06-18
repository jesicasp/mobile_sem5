package com.jesica.latihanjesicasanditiaputri

class RoomModel {
    var roomImages:Int =0
    var roomKelass:String?=null
    var roomFasilitass:String?=null
    var roomBedd:String?=null
    var roomSarapann:String?=null
    var roomTambahann:String?=null
    var roomHargaa:String?=null

    fun setRoomImage(roomImages:Int){
        this.roomImages = roomImages
    }

    fun getRoomImage():Int{
        return roomImages
    }

    fun setRoomFasilitas(roomFasilitas:String){
        this.roomFasilitass = roomFasilitas
    }

    fun getRoomFasilitas():String{
        return roomFasilitass.toString()
    }

    fun setRoomKelas(roomKelass:String){
        this.roomKelass = roomKelass
    }

    fun getRoomKelas():String{
        return roomKelass.toString()
    }

    fun setRoomBed(roomBed:String){
        this.roomBedd = roomBed
    }

    fun getRoomBed():String{
        return roomBedd.toString()
    }

    fun setRoomSarapan(roomSarapan:String){
        this.roomSarapann = roomSarapan
    }

    fun getRoomSarapan():String{
        return roomSarapann.toString()
    }

    fun setRoomTambahan(roomTambahan:String){
        this.roomTambahann = roomTambahan
    }

    fun getRoomTambahan():String{
        return roomTambahann.toString()
    }

    fun setRoomHarga(roomHarga: String){
        this.roomHargaa = roomHarga
    }

    fun getRoomHarga(): String{
        return roomHargaa.toString()
    }

}