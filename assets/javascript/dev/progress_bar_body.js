var ProgressBarBody = {
    progressBarElement:  null,
    progressBarInterval: null,
    progressCount:       0,
    progressCurrent:     0,
    progressTime:        0,

    init: function() {
        if (ProgressBarBody.progressBarElement == null)
            ProgressBarBody.progressBarElement = document.getElementById("progress-bar-body");
    },

    updateProgressCurrent: function(current) {
        ProgressBarBody.progressCurrent = current;
    },

    getProgressCurrent: function() {
        return ProgressBarBody.progressCurrent;
    },

    updateProgressTime: function(time) {
        ProgressBarBody.progressTime = time;
    },

    getProgressTime: function() {
        return ProgressBarBody.progressTime;
    },

    updateProgressCount: function(count) {
        ProgressBarBody.progressCount = count;
    },

    getProgressCount: function() {
        return ProgressBarBody.progressCount;
    },

    repaint: function() {
        ProgressBarBody.init();

        if (ProgressBarBody.progressBarInterval != null)
            clearInterval(ProgressBarBody.progressBarInterval, null);

        if (ProgressBarBody.progressBarElement.style.display === "none")
            ProgressBarBody.progressBarElement.style.width = "0%";

        ProgressBarBody.progressBarElement.style.display = "block";
        ProgressBarBody.progressBarInterval = setInterval(frame, ProgressBarBody.progressTime);

        function frame() {
            if (ProgressBarBody.progressCount >= ProgressBarBody.progressCurrent || ProgressBarBody.progressCount >= 100) {
                clearInterval(ProgressBarBody.interval);

                if (ProgressBarBody.progressCount >= 100)
                    ProgressBarBody.progressBarElement.style.display = "none";
            } else {
                ProgressBarBody.progressCount                 += 1;
                ProgressBarBody.progressBarElement.style.width = ProgressBarBody.progressCount + "%";
            }
        }
    }
};