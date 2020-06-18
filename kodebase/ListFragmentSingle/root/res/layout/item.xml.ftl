<?xml version="1.0" encoding="utf-8"?>
<layout>
    <data>
        <variable name="item" type="${packageName}.${itemName}"/>
        <variable name="vm" type="${packageName}.${viewModelName}"/>
    </data>

<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    <#if orientation=="vertical">
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    </#if>
    <#if orientation=="horizontal">
    android:layout_width="wrap_content"
    android:layout_height="match_parent"
    </#if>>

</androidx.constraintlayout.widget.ConstraintLayout>
</layout>
