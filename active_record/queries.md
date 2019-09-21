1. How to select only the values inside the given range?

```rb
  # for the integers
  ModelName.where(id: 1..100)
  # for the dates
  ModelName.where(date_of_birth: Date.today..(Date.today + 6.months))
```
