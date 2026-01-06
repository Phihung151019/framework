.class Lcom/android/internal/telephony/SemServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemServiceStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemServiceStateTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 142
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 145
    :cond_0
    const-string v0, "com.samsung.intent.action.ACTION_MOCK_CELL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string p1, "mode"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MockCell - mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 148
    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string v0, "CELL_INFO_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/util/List;)V

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MockCell - size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", list: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fgetmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p1, "MockCell - mMockCellInfoList is null!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$fputmMockCellInfoList(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/util/List;)V

    return-void

    .line 159
    :cond_3
    const-string v0, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    const-string v0, "CCT"

    const-string v1, "CHA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 161
    const-string p1, "android.telephony.extra.CARRIER_ID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 162
    const-string v1, "android.telephony.extra.CARRIER_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "android.telephony.extra.SUBSCRIPTION_ID"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED - phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extraSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extraCarrierId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extraCarrierName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 167
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    if-ne p1, p2, :cond_8

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p2, "Refresh network name when CarrierId changed"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    .line 172
    :cond_4
    const-string v0, "com.samsung.intent.action.tplmn_barring"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p1, "timer"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msetPlmnBarringTimer(Lcom/android/internal/telephony/SemServiceStateTracker;I)V

    return-void

    .line 177
    :cond_5
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$misUiccSlotReady(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$mcheckAndNotifyRilConnected(Lcom/android/internal/telephony/SemServiceStateTracker;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    const-string p1, "Unblock IPC to send done"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msemLog(Lcom/android/internal/telephony/SemServiceStateTracker;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    .line 186
    :cond_7
    const-string v0, "com.samsung.intent.action.regist_reject"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.samsung.intent.action.LTE_REJECT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    return-void

    .line 187
    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$msendNetworkRejectToTUI(Lcom/android/internal/telephony/SemServiceStateTracker;Landroid/content/Intent;)V

    return-void

    .line 143
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SemServiceStateTracker;->-$$Nest$mnotifyTimeChanged(Lcom/android/internal/telephony/SemServiceStateTracker;)V

    return-void
.end method
