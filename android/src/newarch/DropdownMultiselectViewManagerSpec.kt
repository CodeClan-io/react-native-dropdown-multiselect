package com.dropdownmultiselect

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.DropdownMultiselectViewManagerDelegate
import com.facebook.react.viewmanagers.DropdownMultiselectViewManagerInterface

abstract class DropdownMultiselectViewManagerSpec<T : View> : SimpleViewManager<T>(), DropdownMultiselectViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = DropdownMultiselectViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
