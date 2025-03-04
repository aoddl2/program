import java.util.*;

class Solution {
    public String solution(String my_string) {
        String[] arr = my_string.split(""); // 문자열을 배열로 변환
        List<String> arr2 = new ArrayList<>(); // 중복 없는 문자를 저장할 리스트 생성

        for (String s : arr) { // 배열을 하나씩 확인하면서
            if (!arr2.contains(s)) { // 리스트에 없는 경우만 추가
                arr2.add(s);
            }
        }

        return String.join("", arr2); // 리스트를 다시 문자열로 변환하여 반환
    }
}
