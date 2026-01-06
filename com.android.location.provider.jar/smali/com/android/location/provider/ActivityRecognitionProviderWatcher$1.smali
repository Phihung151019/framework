.class Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
.source "ActivityRecognitionProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderWatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 4
    .param p1, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 60
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    const-string v2, "ActivityRecognitionProviderWatcher"

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring calls from non-system server. Uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProviderWatcher$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderWatcher;

    new-instance v3, Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {v3, p1}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V

    invoke-static {v1, v3}, Lcom/android/location/provider/ActivityRecognitionProviderWatcher;->-$$Nest$fputmActivityRecognitionProvider(Lcom/android/location/provider/ActivityRecognitionProviderWatcher;Lcom/android/location/provider/ActivityRecognitionProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Error creating Hardware Activity-Recognition"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
