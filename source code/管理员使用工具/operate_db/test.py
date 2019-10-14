import csv

csvData = [
['英灵姓名', 'No','身高', '体重', '出处', '地域', '日文名', '英文名', '画师', '声优', '职阶', '性别', '属性','阵营','筋力','耐久','敏捷','魔力','幸运','宝具','特性','角色详情','资料一','资料二','资料三','资料四','资料五','羁绊礼装解说','羁绊礼装名称','羁绊礼装图片','羁绊礼装代替文字','所属作品']

]
def deal(string):
    temp = 0
    while(string.find("'", temp) >= -1 and string.find("'", temp)-1 >= 0 and string[string.find("'", temp)-1] is not '\\'):
        temp = string.find("'", temp)
        string = string[:temp] + "\\'" + string[temp:]
        temp+=3
        
    temp = 0
    while(string.find('"', temp) >= -1 and string.find('"', temp)-1 >= 0 and string[string.find('"', temp)-1] is not '\\'):
        temp = string.find('"', temp)
        string = string[:temp] + '\\"' + string[temp:]
        temp+=3
    
    return string

deal("fdsa'fsad'fsad'")

