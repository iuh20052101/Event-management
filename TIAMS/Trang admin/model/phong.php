<?php
function load_phong(){
    $sql = "select * from phongchieu where 1";
    $re = pdo_query($sql);
    return $re;

}
function loadone_phong($id){
    $sql = "select * from phongchieu where id=".$id;
    $re = pdo_query_one($sql);
    return $re;

}
function xoa_phong($id)
{
    $sql = "delete from phongchieu where id=" . $id;
    pdo_execute($sql);
}

function update_phong($id,$name){
    $sql = "update phongchieu set `name`='{$name}' where `id`=". $id;
    pdo_execute($sql);
}
function them_phong($name){
    $sql = "insert into `phongchieu`(`name`) values ('$name')";
    pdo_execute($sql);
}
function loadall_phongchieu(){
    $sql = "sSELECT phongchieu.id, phongchieu.name
    FROM phongchieu;
    ";
    $re = pdo_query($sql);
    return $re;
}