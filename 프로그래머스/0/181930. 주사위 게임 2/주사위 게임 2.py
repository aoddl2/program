import math

def solution(a, b, c):
    answer = 0
    # a, b, c 세 개 숫자가 모두 다른지, 두 숫자가 같은지, 모두 같은지 확인하는 조건문 생성
    if a == b == c :
        answer = (a + b + c) * (a**2 + b**2 + c**2) * (math.pow(a,3) + math.pow(b,3) + math.pow(c, 3))
    elif a == b != c or a != b == c or a == c != b :
        answer = (a + b + c) * (a**2 + b**2 + c**2)
    else :
        answer = a + b + c
        
    # 조건에 따른 answer에 결과값 대입
    return answer