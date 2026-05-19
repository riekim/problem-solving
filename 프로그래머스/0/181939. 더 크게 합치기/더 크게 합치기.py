def solution(a, b):
    answer = 0
    
    # 두 정수를 문자열로 붙인 뒤, 다시 int()로 감싸 숫자로 변환한 후 변수에 저장
    ab = int(str(a) + str(b))
    ba = int(str(b) + str(a))
    
    # a ⊕ b가 더 큰 경우
    if ab > ba:
        answer = ab
    # b ⊕ a가 더 큰 경우
    elif ab < ba:
        answer = ba
    # 두 값이 동일한 경우 (a ⊕ b rerturn)
    else:
        answer = ab
        
    return answer