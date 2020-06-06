package ${escapeKotlinIdentifiers(packageName)}

import app.ui.base.BaseFragment
import app.R
import app.databinding.Fragment${name}Binding

class ${className} : BaseFragment<Fragment${name}Binding, ${viewModelName}>(R.layout.${layoutName}, ${viewModelName}::class) {

}
