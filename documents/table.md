# history
- id
- genre_id
- method_id
- money
- contents
- date
- is_spending


# small_genre
- id
- big_genre_id
- term

# big_genre
- id
- term

# method
- id
- ~~spending_method_id~~
- ~~income_method_id~~
- name

# ~~spending_method~~
- id
- name

# ~~income_method~~
- id
- name

# date_history
- id
- history_id
- date
- income
- spending

# budget
- id
- year
- month
- money
- carry_forward
- total