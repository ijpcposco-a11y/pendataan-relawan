
buildscript {
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        // Android Gradle Plugin terbaru stabil
        classpath "com.android.tools.build:gradle:8.6.0"

        // Kotlin versi stabil untuk Flutter + plugin Firebase
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:1.8.22"

        // Google Services terbaru
        classpath "com.google.gms:google-services:4.4.3"
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = "../build"
subprojects {
    project.buildDir = "${rootProject.buildDir}/${project.name}"
}

tasks.register("clean", Delete) {
    delete rootProject.buildDir
}
