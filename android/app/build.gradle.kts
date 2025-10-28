
plugins {
    id "com.android.application"
    id "kotlin-android"
    id "com.google.gms.google-services"
    id "dev.flutter.flutter-gradle-plugin"
}

android {
    namespace "com.example.pendataan_relawan"
    compileSdkVersion 34
    ndkVersion flutter.ndkVersion

    defaultConfig {
        applicationId "com.example.pendataan_relawan"
        minSdkVersion 21
        targetSdkVersion 34
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        multiDexEnabled true
    }

    buildTypes {
        release {
            signingConfig signingConfigs.debug
            shrinkResources false
            minifyEnabled false
        }
    }
}

flutter {
    source '../..'
}

dependencies {
    implementation "org.jetbrains.kotlin:kotlin-stdlib:1.9.24"
    implementation 'com.android.support:multidex:1.0.3'
}

apply plugin: 'com.google.gms.google-services'

