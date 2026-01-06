.class Lcom/android/internal/telephony/CmcCallTracker$2;
.super Lcom/android/ims/ImsCall$Listener;
.source "CmcCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CmcCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CmcCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CmcCallTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1287
    iput-object p1, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1372
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallHeld"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1374
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 1379
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "CmcListener.onCallHoldFailed"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1403
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CmcListener.onCallHoldReceived"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1405
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallProgressing"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1292
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 1391
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "CmcListener.onCallResumeFailed"

    const/4 v0, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1396
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CmcListener.onCallResumeReceived"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1398
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallResumed"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1386
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 1341
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "CmcListener.onCallStartFailed"

    invoke-static {v0, v2, v1, p2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1343
    iget-object p2, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    const/4 v0, -0x1

    .line 1345
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->removeCmcCallInfo(ILcom/android/ims/ImsCall;)V

    .line 1346
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallStarted"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1299
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1300
    iput-boolean v0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 1301
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    return-void

    .line 1303
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)V

    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4

    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallTerminated"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/CmcCallTracker;->mPendingSdPull:Z

    .line 1355
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result p2

    const/16 v0, 0x1779

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    const/16 v0, 0xd2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x25b

    if-ne p2, v0, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1366
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    sget-object p2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/internal/telephony/CmcCallTracker;->updateCmcCallstatus(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    :cond_3
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 4

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const/4 v1, 0x2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CmcListener.onCallUpdated"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$miLog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1314
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v0, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1316
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    const-string p1, "onCallUpdated - bundle is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CmcCallTracker;->-$$Nest$mlog(Lcom/android/internal/telephony/CmcCallTracker;Ljava/lang/String;)V

    return-void

    .line 1322
    :cond_1
    const-string v0, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1323
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    iget-object v2, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1325
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1326
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    aget-char v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendDtmf(C)V

    goto :goto_0

    .line 1328
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker$2;->this$0:Lcom/android/internal/telephony/CmcCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/CmcCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1330
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
