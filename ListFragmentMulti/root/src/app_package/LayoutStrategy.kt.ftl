package ${escapeKotlinIdentifiers(packageName)}

import app.R
import kodebase.adapter.RecyclerLayoutStrategy
import java.io.InvalidClassException

object ${name}LayoutStrategy : RecyclerLayoutStrategy {
    override fun getLayoutId(item: Any): Int {
        return when(item){
            is ${itemName1} -> R.layout.${itemLayoutName1}
            is ${itemName2} -> R.layout.${itemLayoutName1}
            else -> throw InvalidClassException("Layout mapping not found for this object")
        }
    }
}
