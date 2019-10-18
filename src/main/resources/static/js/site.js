function getDateType (d){
    switch (d) {
        case 0:
            return "一期";
        case 1:
            return "二期";
        case 2:
            return "三期";
        case 3:
            return "四期";
        case 4:
            return "特殊";
        case 5:
            return "周一";
        case 6:
            return "周二";
        case 7:
            return "周三";
        case 8:
            return "周四";
        case 9:
            return "周五";
        case 10:
            return "周六";
        case 11:
            return "周日";
        default:
            return "未定义";
    }
}

function  getSeType (d){
    switch (d) {
        case 0:
            return "春季";
        case 1:
            return "秋季";
        case 2:
            return "寒假";
        case 3:
            return "暑假";
        default:
            return "未定义";
    }
}
function getGradeType(d) {
    switch (d) {
        case 0:
            return "一年级";
        case 1:
            return "二年级";
        case 2:
            return "三年级";
        case 3:
            return "四年级";
        case 4:
            return "五年级";
        case 5:
            return "六年级";
        default:
            return "未定义";
    }
}
function getClassesType(d) {
    switch (d) {
        case 0:
            return "A";
        case 1:
            return "B";
        default:
            return "未定义";
    }
}
function getClassesLevel(d) {
    switch (d) {
        case 0:
            return "一档";
        case 1:
            return "二档";
        case 2:
            return "三档";
        case 3:
            return "四档";
        case 4:
            return "五档";
        default:
            return "未定义";
    }
}