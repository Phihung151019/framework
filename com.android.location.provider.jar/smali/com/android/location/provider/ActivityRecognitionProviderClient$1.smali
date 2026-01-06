.class Lcom/android/location/provider/ActivityRecognitionProviderClient$1;
.super Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;
.source "ActivityRecognitionProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;


# direct methods
.method constructor <init>(Lcom/android/location/provider/ActivityRecognitionProviderClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/ActivityRecognitionProviderClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .locals 4
    .param p1, "isSupported"    # Z
    .param p2, "instance"    # Landroid/hardware/location/IActivityRecognitionHardware;

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 44
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    const-string v2, "ArProviderClient"

    if-eq v0, v1, :cond_0

    .line 45
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

    .line 46
    return-void

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {v1, p2}, Lcom/android/location/provider/ActivityRecognitionProvider;-><init>(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Error creating Hardware Activity-Recognition Provider."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void

    .line 50
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    .line 54
    .local v1, "provider":Lcom/android/location/provider/ActivityRecognitionProvider;
    :goto_0
    nop

    .line 55
    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProviderClient$1;->this$0:Lcom/android/location/provider/ActivityRecognitionProviderClient;

    invoke-virtual {v2, p1, v1}, Lcom/android/location/provider/ActivityRecognitionProviderClient;->onProviderChanged(ZLcom/android/location/provider/ActivityRecognitionProvider;)V

    .line 56
    return-void
.end method
