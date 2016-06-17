/**
 * Created by leemon on 2016/6/17.
 */
function deleteServer(){
    id=$("#del_Id").val();
    window.location.href="/delete/"+id;
}
function setDelId(id){
    $("#del_Id").val(id);
}
function updateServer(){
    id = $("#serverId").val();
    name = $("#serverName").val();
    ip = $("#serverIPAddr").val();
    os = $("#serverOS").val();
    desc = $("#serverDesc").val();
    alert(id+name+ip+os+desc);
}
$(document).ready(function () {
    $("div#myTabContent input,textarea ").change(function(){
        value=$("#textChange").val()
        $(this).css("background-color","#FFFFCC");
        if (value){
            value+=','+$(this).attr('id') +":"+$(this).val()
            }
        else{
            value+=$(this).attr('id') +":"+$(this).val()
        }
        $("#textChange").val(value)
    });
})
