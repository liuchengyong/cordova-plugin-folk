module.exports = {
    topicDetail: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Folk", "topicDetail", [name]);
    },
    articleId:function(successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "articleId", []);
    },
    imageShow:function(name,successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "imageShow", [name]);
    },
    alert:function(message, completeCallback, title, buttonLabel) {
        var _title = (typeof title === "string" ? title : "Alert");
        var _buttonLabel = (buttonLabel || "OK");
        cordova.exec(completeCallback, null, "Folk", "alert", [message, _title, _buttonLabel]);
    }

};