class Solution {
    public int solution(String my_string) {
        String[] st = my_string.split(" ");
        int answer = Integer.parseInt(st[0]);
        
        for(int i = 1; i < st.length; i+=2) {
            int num = Integer.parseInt(st[i+1]);
            
            if(st[i].equals("+")) 
                answer += num;
            else
                answer -= num;
        }
        return answer;
    }
}


//연산자가 여러개일 경우
//         string[] st = my_string.Split(" ").ToArray();
//         int answer = int.Parse(st[0]);

//         for(int i = 1; i < st.Length; i+= 2)
//         {
//             int num1 = int.Parse(st[i + 1]);

//             if(st[i] == "+")
//                 answer += num1;
//             else
//                 answer -= num1;    
//         }
//         return answer;
//     }