package ${escapeKotlinIdentifiers(packageName)}

import kodebase.view.KodebaseFragment

<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${className} : KodebaseFragment<Fragment${name}Binding, ${viewModelName}>(R.layout.${layoutName}, ${viewModelName}::class) {

}
