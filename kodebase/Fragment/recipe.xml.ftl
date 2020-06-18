<?xml version="1.0"?>
<recipe>
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <dependency mavenUrl="android.arch.lifecycle:extensions:+"/>
    <#assign escapedResOut="${escapeXmlAttribute(resOut)}">
    <#assign escapedSrcOut="${escapeXmlAttribute(srcOut)}">

    <#if generateKotlin && useAndroidX>
        <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:+"/>
    </#if>

    <merge from="res/navigation/nav_graph.xml.ftl" to="${escapedResOut}/navigation/nav_graph.xml" />

    <instantiate from="res/layout/fragment.xml.ftl"
                   to="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="src/app_package/Fragment.kt.ftl"
                   to="${escapedSrcOut}/${className}.kt" />

    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapedSrcOut}/${viewModelName}.kt" />

    <open file="${escapedSrcOut}/${viewModelName}.kt" />
    <open file="${escapedSrcOut}/${className}.kt" />
    <open file="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />

</recipe>
