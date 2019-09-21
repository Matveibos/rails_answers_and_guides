1. How to change a `column_type` and a `column_name with a migration?

```rb
def change
  rename_column :general_exams, :semester, :semester_id
  change_column :general_exams, :semester_id, :integer
end
```
