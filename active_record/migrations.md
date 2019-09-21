## Manipulations with column

1. How to change a `column_name`? 

```rb
def change
  rename_column :general_exams, :semester, :semester_id
end
```

2. How to change a `column_type`? 

```rb
def change
  change_column :general_exams, :semester_id, :integer
end
```

3. How to remove the column? 

```rb
def change
  remove_column :table_name, :column_name
end
```

4. How to change the default value? 

```rb
def change
  change_column_default :table, :column, value
end
```
