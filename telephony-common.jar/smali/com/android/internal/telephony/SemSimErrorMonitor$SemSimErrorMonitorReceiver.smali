.class Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemSimErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSimErrorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSimErrorMonitorReceiver"
.end annotation


# instance fields
.field private blacklist mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;


# direct methods
.method public static synthetic blacklist $r8$lambda$2MwSl8Od_K8ZErX0Y-D77h4IXT0(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J7UgtQo5k0NwPtTWcGVUUCkJIYo(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimRecoveryComplete(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Uxrz9bX2lT121f5QiB-WcOE3Yzo(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimNoSimError(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eUpM4XJWBASpeyQtztsN4aHiJMo(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimIccidChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iVXo_sfB5kIO9bW1nkTUYc_U2t8(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimCommandError(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jn7_b5-ixjWwkCk5khdT448_7w0(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tJQyLZKlMXslkkHthdf_MW9-MLA(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimAuthSuccess(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zSOudJRHgBomylsV_J7rIchArVg(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->handleSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemSimErrorMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "com.samsung.intent.action.SIM_COMMAND_ERROR"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "com.samsung.intent.action.SIM_AUTH_SUCCESS"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "com.samsung.intent.action.SIM_RECOVERY_COMPLETE"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "com.samsung.intent.action.SIM_NOSIM_ERROR"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;)V

    const-string p0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmSimErrorNotiDisplayed(Lcom/android/internal/telephony/SemSimErrorMonitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const-string v0, "ServiceState.STATE_IN_SERVICE"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mregisterDefaultNetworkCb(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleSimAuthSuccess(Landroid/content/Intent;)V
    .locals 4

    .line 219
    const-string v0, "authSimtype"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCommandError: get the SIM_AUTH_SUCCESS action, authSimtype is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;ZI)V

    return-void
.end method

.method private blacklist handleSimCommandError(Landroid/content/Intent;)V
    .locals 5

    .line 209
    const-string v0, "cmdtype"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 210
    const-string v2, "operator"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const-string v4, "slotId"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v3, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fputmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCommandError: get the SIM_COMMAND_ERROR action, cmdType is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", operator is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mmakeSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;II)V

    :cond_0
    return-void
.end method

.method private blacklist handleSimIccidChanged(Landroid/content/Intent;)V
    .locals 3

    .line 242
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get the SIM_ICCID_CHANGED action slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;ZI)V

    :cond_0
    return-void
.end method

.method private blacklist handleSimNoSimError(Landroid/content/Intent;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const-string v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fputmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    .line 234
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get the SIM_NOSIM_ERROR action, slotId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlogSimErrorCount(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    :cond_0
    return-void
.end method

.method private blacklist handleSimRecoveryComplete(Landroid/content/Intent;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const-string v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fputmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    .line 226
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemSimErrorMonitor;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get the SIM_RECOVERY_COMPLETE action, slotId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlogSimErrorCount(Lcom/android/internal/telephony/SemSimErrorMonitor;I)V

    :cond_0
    return-void
.end method

.method private blacklist handleSimStateChanged(Landroid/content/Intent;)V
    .locals 3

    .line 250
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 251
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {v1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v1, "ABSENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get the SIM_STATE_CHANGED ABSENT action slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver;->mHandlerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemSimErrorMonitor$SemSimErrorMonitorReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
