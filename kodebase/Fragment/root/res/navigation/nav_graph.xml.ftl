<?xml version="1.0" encoding="utf-8"?>
<navigation xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/nav_graph"
    app:startDestination="@id/mainFragment">
    <fragment
        android:id="@+id/${name?uncap_first}"
        android:name="${packageName}.${className}"
        android:label="${className}"
        tools:layout="@layout/${layoutName}"/>
</navigation>
