.class Lcom/android/internal/telephony/ImsSmsDispatcher$4;
.super Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMemoryAvailableResult(III)V
    .locals 5

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMemoryAvailableResult token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkReasonCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 210
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string p1, "onMemoryAvailableResult Invalid token"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 214
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mMemoryAvailableNotifierList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-boolean p2, p1, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    if-nez p2, :cond_1

    const/16 p2, 0xb

    .line 222
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    goto :goto_0

    .line 225
    :cond_1
    iput-boolean p3, p1, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z

    goto :goto_0

    .line 228
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iput-boolean p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRPSmmaRetried:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    throw p0
.end method

.method public blacklist onReceiveSmsDeliveryReportAck(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    const-string v0, "Failed to close stream, exception is: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSmsDeliveryReportAck token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reasonCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 367
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x25

    .line 371
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x3

    .line 372
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 373
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 374
    const-string v3, "Handle Smspp for Stk sent via GoogleIMS"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 384
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 377
    :catch_1
    :try_start_2
    const-string v3, "IOException during handle Smspp for Stk sent via GoogleIMS"

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 384
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 390
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmUsimDownloadMsg(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 381
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 384
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_3
    throw p0

    :cond_0
    :goto_4
    return-void
.end method

.method public blacklist onSendSmsResponse(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSmsResponse for cdma ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispatcher"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v3, :cond_5

    .line 406
    iput p2, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 407
    iput p6, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mErrorClass:I

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0, p5}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mconvertErrorCodeToNetworkReasonCode(Lcom/android/internal/telephony/ImsSmsDispatcher;I)I

    move-result v7

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    :goto_0
    move v4, p1

    move v6, p4

    goto :goto_1

    .line 426
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v5, 0x3

    move v4, p1

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    goto :goto_1

    :cond_2
    move v4, p1

    move v6, p4

    .line 419
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    .line 420
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v4, p1

    move v6, p4

    .line 412
    iget-object p1, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_4

    .line 414
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    .line 431
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    const-string p3, "onSendSmsResponse:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " token ="

    .line 433
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, " messageRef ="

    .line 434
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " reason ="

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " errorCode ="

    .line 436
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " errorClass ="

    .line 437
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 439
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p2, v1, p1, p0}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 403
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid token."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist onSendSmsResult(IIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v5, p4

    .line 238
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 242
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSendSmsResult token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " messageRef="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reason="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkReasonCode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 246
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 247
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmMetrics(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v8

    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    if-eqz v2, :cond_1

    .line 248
    iget-wide v11, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    :goto_0
    move-wide v12, v11

    move v11, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v17, v15

    goto/16 :goto_7

    :cond_1
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 247
    :goto_1
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsServiceSmsSolicitedResponse(IIIJ)V

    if-eqz v2, :cond_9

    .line 252
    iput v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 254
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v1

    const-string v4, "sms_write_uicc_supported"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v1, v3, v7, v10, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleVzwSmsWriteUicc(Lcom/android/internal/telephony/ImsSmsDispatcher;IIILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_2
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eq v10, v9, :cond_6

    const/4 v1, 0x2

    if-eq v10, v1, :cond_5

    const/4 v1, 0x3

    if-eq v10, v1, :cond_4

    if-eq v10, v8, :cond_3

    :goto_2
    move/from16 v5, p4

    goto :goto_4

    .line 282
    :cond_3
    iget v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr v1, v9

    iput v1, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 283
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->fallbackToPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 276
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v4, 0x3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    :goto_3
    move/from16 v3, p1

    goto :goto_2

    .line 270
    :cond_5
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v4, 0x2

    move/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    .line 272
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 261
    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v4, 0x1

    move/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mhandleImsSmsSendComplete(Lcom/android/internal/telephony/ImsSmsDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;IIII)V

    .line 263
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    .line 265
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 266
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isSinglePartOrLastPart()Z

    move-result v4

    .line 265
    invoke-virtual {v1, v2, v9, v4, v9}, Lcom/android/internal/telephony/SmsDispatchersController;->notifySmsSent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZZ)V

    .line 289
    :goto_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    const-string v4, "onSendSmsResult:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " token ="

    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " messageRef ="

    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " reason ="

    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 295
    iget-object v3, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsLogger:Lcom/android/internal/telephony/SmsLogger;

    const-string v4, "ImsSmsDispatcher"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v4, v1, v6}, Lcom/android/internal/telephony/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    iget-object v1, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v1

    const-string v3, "3gpp2"

    iget-object v4, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 300
    invoke-virtual {v4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v10, v8, :cond_7

    move v4, v9

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    iget-wide v7, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    iget-object v6, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isFromDefaultSmsApplication(Landroid/content/Context;)Z

    move-result v6

    .line 306
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getInterval()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v12, v12, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 307
    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    iget-object v13, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v13, v13, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMtSmsPollingMessage(Landroid/content/Context;)Z

    move-result v13

    .line 309
    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getPduLength()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    move-wide/from16 v17, v15

    move v15, v9

    move v9, v6

    move/from16 v6, p5

    .line 298
    :try_start_1
    invoke-virtual/range {v1 .. v14}, Lcom/android/internal/telephony/metrics/SmsStats;->onOutgoingSms(ZZZIIJZJZZI)V

    .line 310
    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 315
    invoke-virtual {v0, v15, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onOutgoingSms(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 323
    :cond_8
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_9
    move-wide/from16 v17, v15

    .line 250
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    :goto_7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw v0
.end method

.method public blacklist onSmsReceived(ILjava/lang/String;[B)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$monSamsungSmsReceived(Lcom/android/internal/telephony/ImsSmsDispatcher;ILjava/lang/String;[B)V

    return-void
.end method

.method public blacklist onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-string v3, "Status report received."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 335
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2, p3, p2}, Landroid/telephony/SmsMessage;->semCreateFromPdu(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mgetImsManager(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/ImsManager;

    move-result-object p2

    iget-object p3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p3, p3, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    const/4 v2, 0x1

    invoke-virtual {p2, p1, p3, v2}, Lcom/android/ims/ImsManager;->acknowledgeSmsReport(III)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 348
    :try_start_2
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$4;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to acknowledgeSmsReport(). Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mloge(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 338
    :cond_0
    :try_start_3
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Status report received with a PDU that could not be parsed."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0
.end method
