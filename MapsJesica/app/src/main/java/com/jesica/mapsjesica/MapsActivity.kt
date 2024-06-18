package com.jesica.mapsjesica

import android.content.ContentValues.TAG
import android.content.res.Resources
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.Menu
import android.view.MenuItem

import com.google.android.gms.maps.CameraUpdateFactory
import com.google.android.gms.maps.GoogleMap
import com.google.android.gms.maps.OnMapReadyCallback
import com.google.android.gms.maps.SupportMapFragment
import com.google.android.gms.maps.model.*
import com.jesica.mapsjesica.databinding.ActivityMapsBinding
import java.util.*
import java.util.zip.Inflater

class MapsActivity : AppCompatActivity(), OnMapReadyCallback {
    val zoom = 10F

    private lateinit var mMap: GoogleMap
    private lateinit var binding: ActivityMapsBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMapsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // Obtain the SupportMapFragment and get notified when the map is ready to be used.
        val mapFragment = supportFragmentManager
            .findFragmentById(R.id.map) as SupportMapFragment
        mapFragment.getMapAsync(this)
    }

    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
        val inflater = menuInflater
        inflater.inflate(R.menu.map_options,menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem) = when (item.itemId) {
        R.id.normal_maps -> {
            mMap.mapType = GoogleMap.MAP_TYPE_NORMAL
            true
        }

        R.id.satellite_maps -> {
            mMap.mapType = GoogleMap.MAP_TYPE_SATELLITE
            true
        }

        R.id.hybrid_maps -> {
            mMap.mapType = GoogleMap.MAP_TYPE_HYBRID
            true
        }

        R.id.terrain_maps -> {
            mMap.mapType = GoogleMap.MAP_TYPE_TERRAIN
            true
        }

        else -> super.onOptionsItemSelected(item)
    }

    private fun setMapLongClick(map : GoogleMap){
        map.setOnMapLongClickListener {
                latLng ->
            val snippet = String.format(
                Locale.getDefault(),
                "Lat : %1$.5f, Long : %2$.5f",
            latLng.latitude,
            latLng.longitude
            )
            map.addMarker(
                MarkerOptions()
                    .position(latLng)
                .title("Drop Pin")
            .snippet(snippet)
            .icon(BitmapDescriptorFactory.fromResource(R.drawable.star))
            )
        }
    }


    private fun setMapStyle(googleMap: GoogleMap){
        try{
            val succes = googleMap.setMapStyle(MapStyleOptions.loadRawResourceStyle(this,R.raw.maps_style))
            if(!succes){
                Log.e(TAG,"Gagal mengganti style maps yang baru")
            }
        }catch (e: Resources.NotFoundException){
            Log.e(TAG,"Maps style yang baru tidak berubah")

        }
    }

    override fun onMapReady(googleMap: GoogleMap) {
        mMap = googleMap

        val pantaiPadang = LatLng(-0.9262772631722664, 100.35002142605795)
        var markerPantaiPadang: Marker?=null
        markerPantaiPadang=mMap.addMarker(MarkerOptions().position(pantaiPadang).title("Pantai Padang").snippet("Pantai Indah di Kota Padang").icon(
            BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_CYAN)))
        markerPantaiPadang?.tag=0

        val masjidRaya = LatLng(-0.9241036502648715, 100.3625002810877)
        var markerMasjidRaya: Marker?=null
        markerMasjidRaya=mMap.addMarker(MarkerOptions().position(masjidRaya).title("Masjid Raya Sumbar").snippet("Masjid terbesar di Kota Padang").icon(
            BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_GREEN)))
        markerMasjidRaya?.tag=0

        val orenji = LatLng(-0.9572715968824729, 100.35594335040035)
        var markerOrenji: Marker?=null
        markerOrenji=mMap.addMarker(MarkerOptions().position(orenji).title("Orenji Kmart").snippet("Orenji Daily Kmart").icon(
            BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_VIOLET)))
        markerOrenji?.tag=0

        val basko = LatLng(-0.8827367856085839, 100.34479233181864)
        var markerBasko: Marker?=null
        markerBasko=mMap.addMarker(MarkerOptions().position(basko).title("Basko Grandmall").snippet("Mall terbesar di Kota Padang").icon(
            BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_BLUE)))
        markerBasko?.tag=0



        // Add a marker in rsup and move the camera
        val rsup = LatLng(-0.9426666830380485, 100.36728373778523)
        mMap.addMarker(MarkerOptions().position(rsup).title("RSUP M. Djamil Padang"))
        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(rsup,zoom))
        //setMapStyle(googleMap)
        setMapLongClick(googleMap)
    }
}