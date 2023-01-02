import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { DropdownMultiselectView } from 'react-native-dropdown-multiselect';

export default function App() {
  const [selectedItem, setSelectedItem] = React.useState<any>([]);
  return (
    <View style={styles.container}>
      <DropdownMultiselectView
        data={[
          { key: 1, value: 'orange' },
          { key: 2, value: 'apple' },
          { key: 3, value: 'banana' },
        ]}
        displayKey="value"
        displayValue="key"
        selectedItem={selectedItem}
        setSelectedItem={setSelectedItem}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});
