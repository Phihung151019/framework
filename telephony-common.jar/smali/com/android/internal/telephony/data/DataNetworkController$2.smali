.class Lcom/android/internal/telephony/data/DataNetworkController$2;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1283
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .locals 2

    .line 1292
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 1296
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result p3

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    .line 1298
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v0

    .line 1296
    invoke-virtual {p2, p3, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->setMobileDataSetting(ZZ)V

    .line 1302
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 1304
    :goto_0
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1302
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDataEnabledOverrideChanged(ZI)V
    .locals 2

    .line 1315
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledOverrideChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 1316
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 1318
    :goto_0
    sget-object p2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_ENABLED_OVERRIDE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1316
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 1332
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result v2

    .line 1330
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->setMobileDataSetting(ZZ)V

    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->ignoreDataEnabledOnRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isUserDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string p1, "data not enabled by user"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    return-void

    .line 1346
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$2;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 1348
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->ROAMING_ENABLED_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    .line 1346
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
