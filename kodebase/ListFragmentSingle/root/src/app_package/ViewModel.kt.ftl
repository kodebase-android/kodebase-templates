package ${escapeKotlinIdentifiers(packageName)}

import app.ui.base.BaseVM
import androidx.databinding.ObservableArrayList

class ${viewModelName} : BaseVM() {
    val items = ObservableArrayList<${itemName}>()
}
