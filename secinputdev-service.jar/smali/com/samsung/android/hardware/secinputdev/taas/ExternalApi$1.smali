.class Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    const-string v0, "SemInputExternalApi"

    const-string v1, "bigDataBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmHqmLoggingData(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->getCaseACountHqm()I

    move-result v1

    const-string v2, "CASA"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->setLoggingData(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmHqmLoggingData(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->getCaseBCountHqm()I

    move-result v1

    const-string v2, "CASB"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->setLoggingData(Ljava/lang/String;I)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->getmHqmLoggingData()Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->sendHwParamToHqm(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$1;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fgetmHqmLoggingData(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->clear()V

    .line 111
    return-void
.end method
