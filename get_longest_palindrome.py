#TODO
#what if there more than 1 longest palindrome
def function(test_str):
    new_str = ''
    for x in test_str:
        new_str = new_str + x + '$'
    new_str = new_str[:-1]
    #print(new_str)
    log = [-1] * len(new_str)
    for i in range(len(log)):
        if log[i] == -1:
            stop = False
            count = 0
            while not(stop):
                if i-count-1 >= 0 and i+count+1<len(log) and new_str[i-count-1] == new_str[i+count+1]:
                    count += 1
                else:
                    stop = True
                    log[i] = count
                    for j in range(1,count):
                        if log[i-j] < count-j:
                            log[i+j] = log[i-j]
    #print(log)
    r_str = new_str[log.index(max(log))-max(log):log.index(max(log))+max(log)+1]
    #print(r_str)
    r_str = r_str.replace('$','')
    #print(r_str)
    return(r_str)
    
if __name__ == '__main__':
    test_str = 'aedfdgdf'
    print(function(test_str))
