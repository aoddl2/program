def solution(n):
    answer = []
    answer.append(n)
    # 짝수 홀수 구분 조건문
    while n != 1 :
        if n % 2 == 0 :
            n = n / 2
            answer.append(n)
        elif n % 2 == 1 :
            n = 3 * n + 1
            answer.append(n)
    return answer