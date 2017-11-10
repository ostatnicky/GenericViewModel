# General View Model

This demo app is about the generic view model that contains array of items and table view data source. In the generic view model you only define a type of items and a type of shown cell and that's it.

<img src="https://github.com/ostatnicky/GenericViewModel/blob/master/Simulator%20Screen%20Shot1.png?raw=true" width="320">  <img src="https://github.com/ostatnicky/GenericViewModel/blob/master/Simulator%20Screen%20Shot2.png?raw=true" width="320">


## Implementation

`GenericViewModel` is defined like this:

```
class GenericViewModel<T, S: GenericTableViewCell<T>>: NSObject, UITableViewDataSource {
    
    var items: [T]?
    
    func setItems(items: [T]?) {
        self.items = items
    }
    
    func item(atIndexPath indexPath: IndexPath) -> T? {
        return items?[indexPath.row] ?? nil
    }
    
    ...
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as S
        cell.configure(withItem: item(atIndexPath: indexPath))
        return cell
    }
}
```

So only what you need to define new view model is this:

```
class SkillsViewModel: GenericViewModel<Skill, SkillCell> {
    
    func configure(withPerson person: Person?) {
        guard let person = person else { return }
        setItems(items: person.skills)
    }
}
```

**Easy, right? :)**
