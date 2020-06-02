
def is_null_data_in_list(data):
    is_null = False
    for item in data :
        if is_null_value(item):
            is_null = True
            break
    return is_null

def is_null_value(value):
    return (value.strip().lower() == None or value.strip().lower() == '')
