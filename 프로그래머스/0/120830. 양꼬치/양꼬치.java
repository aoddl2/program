class Solution {
    public int solution(int n, int k) {
        int answer = 0;
        int x = 12000;
        int y = 2000;
        
        answer = n * x + y * k - ((n / 10) * y);
        
        return answer;
    }
}