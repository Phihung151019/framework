.class public Lcom/android/internal/telephony/SemRIL$SemRilHandler;
.super Landroid/os/Handler;
.source "SemRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemRilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 303
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 305
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", service = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cookie = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v6}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object v6

    .line 307
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iput-boolean v3, p1, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 310
    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmLinkedServices(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 311
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmLinkedServices(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "All services are dead!!!"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mresetProxyAndRequestListAll(Lcom/android/internal/telephony/SemRIL;)V

    .line 317
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 321
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    const-string v0, "Set rild_reset = 1"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "rild_reset"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    const-string p0, "ril.rildreset_state"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", service = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {v0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$smserviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", service cookie = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object v4

    .line 295
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/SemRIL;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_4

    .line 297
    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iput-boolean v3, p0, Lcom/android/internal/telephony/SemRIL;->mHidlSetResponseFunctionsCalled:Z

    .line 298
    invoke-static {p0}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mresetProxyAndRequestListAll(Lcom/android/internal/telephony/SemRIL;)V

    return-void

    .line 284
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget v0, v0, Lcom/android/internal/telephony/SemRIL;->mAckWlSequenceNum:I

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z

    :cond_4
    :goto_0
    return-void

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v0, v0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 256
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget v4, v4, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$mclearWakeLock(Lcom/android/internal/telephony/SemRIL;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    invoke-static {v1}, Lcom/android/internal/telephony/SemRIL;->-$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/SemRIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 261
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 262
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAKE_LOCK_TIMEOUT mRequestList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :goto_2
    if-ge v3, v1, :cond_8

    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object v4, v4, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/RILRequest;

    if-eqz v4, :cond_7

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v5

    .line 267
    invoke-static {v5, v6, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 274
    :cond_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget v1, v1, Lcom/android/internal/telephony/SemRIL;->mWlSequenceNum:I

    if-ne p1, v1, :cond_9

    .line 275
    iget-object p1, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p1, p1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 277
    check-cast p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getRilMonitor()Lcom/android/internal/telephony/RilMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL$SemRilHandler;->this$0:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RilMonitor;->checkRilRequestPendingAndResetRild(Landroid/util/SparseArray;)V

    .line 280
    :cond_9
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
