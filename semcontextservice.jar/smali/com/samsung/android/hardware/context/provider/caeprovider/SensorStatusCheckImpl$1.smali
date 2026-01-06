.class Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SensorStatusCheckImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$fgetmSensorHubResetCnt(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$fputmSensorHubResetCnt(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;I)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$mstoreSensorHubResetTime(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v1, "context":Landroid/os/Bundle;
    const-string v2, "Status"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v2, "XAxis"

    const v3, 0x9c40

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string v2, "YAxis"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "ZAxis"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$fgetmSensorHubResetCnt(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)I

    move-result v2

    const-string v3, "ResetCnt"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$fgetmSensorHubResetTime(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)[J

    move-result-object v2

    const-string v3, "SensorHubResetTimeStampArray"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->-$$Nest$msetSensorHubResetTimeStampArraySize(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    iget-object v2, v2, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;

    iget-object v2, v2, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/context/util/EventStoreManager;->storeData(Landroid/os/Bundle;)V

    .line 68
    .end local v1    # "context":Landroid/os/Bundle;
    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "SemContext.CaeProvider.SensorStatusCheckImpl"

    const-string v2, "SensorStatusCheck isn\'t started. skip event of resetting sensorhub"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    :goto_0
    return-void
.end method
