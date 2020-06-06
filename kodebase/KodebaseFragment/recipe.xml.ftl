<?xml version="1.0"?>
<recipe>
    <dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/>
    <dependency mavenUrl="android.arch.lifecycle:extensions:+"/>
    <#assign escapedResOut="${escapeXmlAttribute(resOut)}">
    <#assign escapedSrcOut="${escapeXmlAttribute(srcOut)}">

    <#if generateKotlin && useAndroidX>
        <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:+"/>
    </#if>

    <instantiate from="res/layout/blank_fragment.xml.ftl"
                   to="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />

    <instantiate from="src/app_package/BlankFragment.kt.ftl"
                   to="${escapedSrcOut}/${className}.kt" />

    <instantiate from="src/app_package/BlankViewModel.kt.ftl"
                   to="${escapedSrcOut}/${viewModelName}.kt" />

    <open file="${escapedSrcOut}/${viewModelName}.kt" />
    <open file="${escapedSrcOut}/${className}.kt" />
    <open file="${escapedResOut}/layout/${escapeXmlAttribute(layoutName)}.xml" />

</recipe>
