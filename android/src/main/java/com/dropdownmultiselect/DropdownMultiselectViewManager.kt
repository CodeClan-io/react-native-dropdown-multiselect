package com.dropdownmultiselect

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = DropdownMultiselectViewManager.NAME)
class DropdownMultiselectViewManager :
  DropdownMultiselectViewManagerSpec<DropdownMultiselectView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): DropdownMultiselectView {
    return DropdownMultiselectView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: DropdownMultiselectView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "DropdownMultiselectView"
  }
}
