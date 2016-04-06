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
    testFolk:function(message, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Folk", "testFolk", [message]);
    },
    isDebug:function(successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "isDebug", []);
    },
    focusWeChat:function(successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "focusWeChat", []);
    },
    getPostUrl:function(successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "getPostUrl", []);
    },
    doShare:function(type,successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "doShare", [type]);
    },
    commentsList:function(articleId,successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "commentsList", [articleId]);
    }
};