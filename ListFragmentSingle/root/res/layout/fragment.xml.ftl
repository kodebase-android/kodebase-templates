<?xml version="1.0" encoding="utf-8"?>
<layout>
    <data>
        <variable name="vm" type="${packageName}.${viewModelName}"/>
        <variable name="lifecycle" type="androidx.lifecycle.LifecycleOwner"/>
    </data>

<androidx.constraintlayout.widget.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="${packageName}.${className}">

    <androidx.recyclerview.widget.RecyclerView
                android:id="@+id/recyclerView"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:orientation="${orientation}"
                app:items="@{vm.items}"
                app:viewModel="@{vm}"
                app:lifecycle="@{lifecycle}"
                app:layoutId="@{@layout/${itemLayoutName}}"
                <#if spanCount=="1">
                app:layoutManager="androidx.recyclerview.widget.LinearLayoutManager"
                </#if>
                <#if spanCount!="1">
                app:layoutManager="androidx.recyclerview.widget.GridLayoutManager"
                app:spanCount="${spanCount}"
                </#if>
                tools:listitem="@layout/${itemLayoutName}" />

</androidx.constraintlayout.widget.ConstraintLayout>
</layout>
