text_list = []
final_text = ''


# Input data
table_name = input("TABLE NAME ? :")
cols_number = int(input("TABLE COLUMNS ? :"))
rows_number = int(input("TABLE ROWS ? :"))

for text_input in range(rows_number * cols_number):
    text_list.append(input("TABLE TEXT COPY ? :\n\n\n\n\n\n"))

# Creating CREATE TABLE MODEL
# for col in range(cols_number):
#     text = text_list[:cols_number][col]
#
#     # first row
#     if col == 0:
#         final_text += f'CREATE TABLE {table_name.lower()}(\n    "{text.lower()}" VARCHAR(255),\n'
#
#     # last row
#     elif col == cols_number - 1:
#         final_text += f'    "{text.lower()}" VARCHAR(255));'
#
#     # FILLERS
#     else:
#         final_text += f'    "{text.lower()}" VARCHAR(255),\n'

# Creating INSERT INTO
for col in range(cols_number):
    text = text_list[:cols_number][col]

    # first row
    if col == 0:
        final_text += f'\n\nINSERT INTO {table_name.lower()} (\n    "{text.lower()}",\n'

    # last row
    elif col == cols_number - 1:
        final_text += f'    "{text.lower()}")'

    # fillers
    else:
        final_text += f'    "{text.lower()}",\n'


# Creating VALUES MODEL
for col in range(cols_number * rows_number - cols_number):
    text = text_list[cols_number:][col]
    if text[0].isalpha() and text != "NULL":
        text = f"'{text}'"

    # first box, first row
    if col == 0:
        final_text += f"\n\nVALUES\n    ({text}"

    # first box , next row
    elif col % cols_number == 0:
        final_text += f"    ({text}"

    # last box , last row
    elif col == cols_number * rows_number - cols_number - 1:
        final_text += f", {text});"

    # last box , next row
    elif col % cols_number == cols_number - 1:
        final_text += f", {text}),\n"

    # fillers
    else:
        final_text += f", {text}"

print(final_text)