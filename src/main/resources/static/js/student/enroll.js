layui.use(['form','layer','table','element'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        element = layui.element,
        table = layui.table;

    $(".js_nextToClass").on("click",function(){
        if (validBasicForm()) {
            element.tabChange('enrollForm', 'classInfo');
        }else{
            return false;
        }
    });
    function validBasicForm(){
        var $validator = $("#studentForm").validate();
        if(!$validator.element($("#userName"))){
            return false;
        }
        if(!$validator.element($("#mobilePhone1"))){
            return false;
        }
        if(!$validator.element($("#phone1Info"))){
            return false;
        }
        if(!$validator.element($("#mobilePhone2"))){
            return false;
        }
        if(!$validator.element($("#phone2Info"))){
            return false;
        }
        if(!$validator.element($("#school"))){
            return false;
        }
        return true;
    }
    $(".js_preToBasic").on("click",function(){
        element.tabChange('enrollForm', 'basicInfo');
    });
})

    // $.fn.extend($.validator.defaults, {
    //     //重写showErrors
    //     showErrors: function (errorMap, errorList) {
    //         $.each(errorList, function (i, v) {
    //             //在此处用了layer的方法,显示效果更美观
    //             if($(v.element)[0].tagName.indexOf("SELECT")>-1){ // 针对于select2  控件做了调整
    //                 layer.tips(v.message, $(v.element).next(), {icon: 2 , time: 3000 });
    //             }else{
    //                 layer.tips(v.message, v.element, {icon: 2 , time: 3000 });
    //             }
    //             return false;
    //         });
    //     }
    // });
