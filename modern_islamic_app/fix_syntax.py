
file_path = r'c:\Users\UMUT\OneDrive\Masaüstü\Way of Allah\modern_islamic_app\lib\core\constants\asma_ul_husna_data.dart'
with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the trailing braces issue
# It looks like:
#     }, }
#   ];
# }
new_content = content.replace('    },}', '    },')

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(new_content)
print("Fixed syntax error.")
