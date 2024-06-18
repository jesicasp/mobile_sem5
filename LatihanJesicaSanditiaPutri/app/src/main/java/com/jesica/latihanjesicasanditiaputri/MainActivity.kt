package com.jesica.latihanjesicasanditiaputri

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.ListView

class MainActivity : AppCompatActivity() {

    private var listRoom : ListView?=null
    private var roomAdapter : RoomAdapter?=null
    private var roomList:ArrayList<RoomModel>?=null

    private val roomImageList = intArrayOf(
        R.drawable.room1, R.drawable.room2, R.drawable.room3, R.drawable.room4, R.drawable.room5)

    private val roomKelasList = arrayOf(
        "Kelas : Suite", "Kelas : Eksekutif", "Kelas : Deluxe", "Kelas : Standard", "Kelas : Ekonomi")

    private val roomFasilitasList = arrayOf(
        "Fasilitas : AC, Wifi, TV", "Fasilitas : AC, Wifi, TV",
        "Fasilitas : AC, Wifi,", "Fasilitas : Kipas, Wifi", "Kipas")

    private val roomBedList = arrayOf(
        "Bed : Double", "Bed : Double",
        "Bed : King", "Bed : Single", "Bed : Single")

    private val roomSarapanList = arrayOf(
        "Sarapan : Ya", "Sarapan : Ya",
        "Sarapan : Ya", "Sarapan : Ya", "Sarapan : Tidak")

    private val roomTambahanList = arrayOf(
        "Tambahan : Sandal, Coffee, Handuk", "Tambahan : Sandal, Coffee, Handuk",
        "Tambahan : Sandal, Coffee", "Tambahan : Coffee" , "Tambahan : Coffee")

    private val roomHargaList = arrayOf(
        "Rp.1000.000/net", "Rp.900.000/net",
        "Rp.800.000/net", "Rp.400.000/net", "Rp.300.000/net")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        listRoom = findViewById(R.id.listRoom)
        roomList = populateList()
        Log.d("Succes", roomList!!.size.toString()+"")
        roomAdapter = RoomAdapter(this@MainActivity, roomList!!)
        listRoom!!.adapter = roomAdapter
    }

    private fun populateList(): ArrayList<RoomModel>? {
        val list= ArrayList<RoomModel>()
        for(i in 0..4){
            val room = RoomModel()

            room.setRoomImage(roomImageList[i])
            room.setRoomKelas(roomKelasList[i])
            room.setRoomBed(roomBedList[i])
            room.setRoomFasilitas(roomFasilitasList[i])
            room.setRoomBed(roomBedList[i])
            room.setRoomSarapan(roomSarapanList[i])
            room.setRoomTambahan(roomTambahanList[i])
            room.setRoomHarga(roomHargaList[i])

            list.add(room)
        }
        return list
    }
}