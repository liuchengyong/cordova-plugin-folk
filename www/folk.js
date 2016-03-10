module.exports = {
    topicDetail: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Folk", "topicDetail", [name]);
    },
    articleId:function(successCallback, errorCallback){
        cordova.exec(successCallback, errorCallback, "Folk", "articleId", []);
    }
};