class Solution {
    public int solution(int n) {
        int answer = 0;
        if(n == 1) return 1;
        
        if(n / 7 * 7 == n) {
             answer = n / 7;
        }else if(n / 7 * 7 < n) {
            answer = n / 7 + 1;
        }
        return answer;
    }
}