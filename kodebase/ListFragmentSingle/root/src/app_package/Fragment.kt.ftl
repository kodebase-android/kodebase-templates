package ${escapeKotlinIdentifiers(packageName)}

import app.R
import app.databinding.Fragment${name}Binding
import app.ui.base.BaseFragment
import androidx.databinding.ObservableArrayList

class ${className} : BaseFragment<Fragment${name}Binding, ${viewModelName}>(R.layout.${layoutName}, ${viewModelName}::class) {
    val items = ObservableArrayList<${itemName}>()
}
