/**
 * Created by leemon on 2016/6/17.
 */
function deleteServer(){
    id=$("#del_Id").val();
    window.location.href="/delete/"+id;
}
function setDelId(){
    id = $("#id").text()
    $("#del_Id").val(id);
}
function alert_reload(data, status) {
    if(data=='True'){
        alert("修改成功");
    }
    else{
        alert("修改失败")
    }
    window.location.reload();
}
$(document).ready(function () {
    $("div#myTabContent input,textarea ").change(function(){
        value=$("#textChange").val();
        $(this).css("background-color","#FFFFCC");
        if (value){
            if (value.indexOf($(this).attr('id'))=='-1'){
                value+=','+$(this).attr('id');
            }
            }
        else{
            value+=$(this).attr('id');
        }
        $("#textChange").val(value);

    });
    $(".update_server").click(function(){
        if ($("#textChange").val()){
            changed_list =$("#textChange").val().split(',');
            server = new Object();
            for(i=0;i<changed_list.length;i++){
                server[changed_list[i]] = $("#"+changed_list[i]).val();
            }
            if (Object.keys(server).length) {
                $.post("/server/" + $("#id").text(), server, function(data, status){
                    alert_reload(data,status);
                });
            }
            else{
                alert('未修改任何值，无需保存！');
            }
        }
        else{
            alert('未修改任何值，无需保存！');
        }

    })
});
