def solution(n):
    answer = 0
    # n이 홀수인 경우
    if n % 2 != 0:
        for i in range(1, n+1, 2): # 1부터 n까지의 홀수 
            answer += i
    # n이 짝수인 경우
    else:
        for i in range(2, n+1, 2): # 2부터 n까지의 짝수의 제곱합
            answer += i ** 2
    return answer