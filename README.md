# General View Model

This demo app is about the generic view model that contains array of items and table view data source. In the generic view model you only define a type of items and a type of shown cell and that's it.

<img src="https://github.com/ostatnicky/GenericViewModel/blob/master/Simulator%20Screen%20Shot1.png?raw=true" width="320">  <img src="https://github.com/ostatnicky/GenericViewModel/blob/master/Simulator%20Screen%20Shot2.png?raw=true" width="320">


## Implementation

`GenericViewModel` is defined like this:

```swift
class GenericViewModel<ModelType, CellType: UITableViewCell & Configurable>: NSObject, UITableViewDataSource where ModelType == CellType.ModelType {
    
    var items: [ModelType] = []
    
    func setItems(items: [ModelType]) {
        self.items = items
    }
    
    func item(atIndexPath indexPath: IndexPath) -> ModelType {
        return items[indexPath.row]
    }
    
    ...
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as CellType
        cell.configure(withItem: item(atIndexPath: indexPath))
        return cell
    }
}
```

So only what you need to define new view model is this:

```swift
class SkillsViewModel: GenericViewModel<Skill, SkillCell> {
    
    func configure(withPerson person: Person?) {
        guard let person = person else { return }
        setItems(items: person.skills)
    }
}
```

**Easy, right? :)**
