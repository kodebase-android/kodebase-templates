package ${escapeKotlinIdentifiers(packageName)}

import androidx.databinding.ObservableArrayList

class ${viewModelName} : BaseVM() {
    val items = ObservableArrayList<${itemName}>()
}
