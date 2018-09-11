// JavaScript Document

function changenewsbg(k) {
    for (var j = 1; j <= 13; j++) {
        if (j == k) {
            getObject('p' + j).className = 'bg02 f14b_0334';
        }
        else {
            getObject('p' + j).className = 'bg01 f14b_0334';
        }
    }
}

function getObject(objectId) {
    if (document.getElementById && document.getElementById(objectId)) {
        // W3C DOM
        return document.getElementById(objectId);
    } else if (document.all && document.all(objectId)) {
        // MSIE 4 DOM
        return document.all(objectId);
    } else if (document.layers && document.layers[objectId]) {
        // NN 4 DOM.. note: this won't find nested layers
        return document.layers[objectId];
    } else {
        return false;
    }
}


/**
 * 判断是否选员工
 */
$("#plan").click(function () {
    var a = 0;
    $("table input:radio").each(function () {
        if (this.checked) {
            a=3;
            window.location = "taskview"
        }

    })
    if (a == 0) {
        alert("请选中一个任务");
    }
})

/**
 * 添加员工
 */
function  personAdd() {
    window.location="admin/personadd";
}
