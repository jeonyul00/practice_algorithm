const expandAroundCenter = (s, left, right) => {
    while (left >= 0 && right < s.length && s[left] === s[right]) {
        left--;
        right++;
    }        
    return right - left - 1;
};

function solution(s) {
    let maxLen = 1;

    for (let i = 0; i < s.length; i++) {        
        const len1 = expandAroundCenter(s, i, i);    
        const len2 = expandAroundCenter(s, i, i + 1);
        maxLen = Math.max(maxLen, len1, len2);       
    }
    return maxLen;
}
