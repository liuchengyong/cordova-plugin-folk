module.exports = {
    topicDetail: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "TopicDetail", "topicDetail", [name]);
    }
};