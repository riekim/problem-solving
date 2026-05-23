def solution(num_list, n):
    answer = []
    for i in range(0, len(num_list), n): # 처음(0)부터 끝(len(num_list))까지 n 간격으로 추출.
        answer.append(num_list[i]) # 문자열을 리스트에 추가할 때는 append() 함수 사용.
    return answer