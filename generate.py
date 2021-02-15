def fact(n):
    if n==0:
        return 1
    return n*fact(n-1)


def match_arm(n):
    return '{0} => "{1}",'.format(n, fact(n))


for a in range(171):
    print(match_arm(a))
