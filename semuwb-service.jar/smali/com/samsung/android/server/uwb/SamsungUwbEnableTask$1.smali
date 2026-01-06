.class Lcom/samsung/android/server/uwb/SamsungUwbEnableTask$1;
.super Ljava/lang/Object;
.source "SamsungUwbEnableTask.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->registerFoldStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 2
    .param p1, "isFolded"    # Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFoldStateChanged: isFolded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungUwbEnableTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileForFolded()Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFile()Z

    .line 99
    :goto_0
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 102
    return-void
.end method
