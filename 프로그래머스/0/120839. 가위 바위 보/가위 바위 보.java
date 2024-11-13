class Solution {
    public String solution(String rsp) {
        String answer = "";
        // 가위 : 2 가위(2)가 나오면 바위(0)가 나와야함 
        // 바위 : 0 바위(0)가 나오면 보(5)가 나와야함
        // 보 : 5 보(5)가 나오면 가위(2)가 나와야함
        for(int i = 0; i < rsp.length(); i++) {
        	if(rsp.split("")[i].equals("2")) {
        		answer += "0";
        	} else if(rsp.split("")[i].equals("0")) {
        		answer += "5";
        	} else if(rsp.split("")[i].equals("5")) {
        		answer += "2";
        	}
        }
        return answer;
    }
}