package com.example.navigation

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.setupActionBarWithNavController
import androidx.navigation.ui.setupWithNavController
import com.google.android.material.bottomnavigation.BottomNavigationView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val botomNav = findViewById<BottomNavigationView>(R.id.boton_menu)
        val navController = findNavController(R.id.fragmentContainerView)
        val appBarConf = AppBarConfiguration(setOf(R.id.firs,R.id.second,R.id.third))
        setupActionBarWithNavController(navController,appBarConf)
        botomNav.setupWithNavController(navController)
    }
}