package ${escapeKotlinIdentifiers(packageName)}

import ${rootPackage}.R
import kodebase.view.KodebaseFragment

class ${androidClassName} : KodebaseFragment<${viewStateName}Binding, ${viewModelName}>(R.layout.${layoutName}, ViewModel::class) {
    
}