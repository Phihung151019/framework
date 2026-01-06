.class Landroid/net/sip/SipAudioCall$1;
.super Landroid/net/sip/SipSession$Listener;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/sip/SipAudioCall;


# direct methods
.method constructor blacklist <init>(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/sip/SipAudioCall;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 384
    iput-object p1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-direct {p0}, Landroid/net/sip/SipSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallBusy(Landroid/net/sip/SipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 489
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 490
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onCallBusy(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    goto :goto_0

    .line 493
    :catchall_0
    move-exception v1

    .line 494
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallBusy(): "

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/sip/SipAudioCall;->-$$Nest$mclose(Landroid/net/sip/SipAudioCall;Z)V

    .line 498
    return-void
.end method

.method public whitelist onCallChangeFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p2}, Landroid/net/sip/SipAudioCall;->-$$Nest$fputmErrorCode(Landroid/net/sip/SipAudioCall;I)V

    .line 505
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p3}, Landroid/net/sip/SipAudioCall;->-$$Nest$fputmErrorMessage(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 507
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmErrorCode(Landroid/net/sip/SipAudioCall;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    goto :goto_0

    .line 511
    :catchall_0
    move-exception v1

    .line 512
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallBusy():"

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist onCallEnded(Landroid/net/sip/SipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 466
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmTransferringSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$fputmTransferringSession(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)V

    .line 468
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmTransferringSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmSipSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 476
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_2

    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onCallEnded(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    goto :goto_0

    .line 479
    :catchall_0
    move-exception v1

    .line 480
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallEnded(): "

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->close()V

    .line 484
    return-void

    .line 473
    .end local v0    # "listener":Landroid/net/sip/SipAudioCall$Listener;
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist onCallEstablished(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p2}, Landroid/net/sip/SipAudioCall;->-$$Nest$fputmPeerSd(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmTransferringSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmTransferringSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$mtransferToNewSession(Landroid/net/sip/SipAudioCall;)V

    .line 445
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 449
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_2

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmHold(Landroid/net/sip/SipAudioCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    goto :goto_1

    .line 456
    :catchall_0
    move-exception v1

    .line 457
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCallEstablished(): "

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist onCallTransferring(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "newSession"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;

    .line 549
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p1}, Landroid/net/sip/SipAudioCall;->-$$Nest$fputmTransferringSession(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)V

    .line 551
    if-nez p2, :cond_0

    .line 552
    :try_start_0
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    .line 553
    invoke-static {v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mcreateOffer(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    .line 552
    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p2}, Landroid/net/sip/SipAudioCall;->-$$Nest$mcreateAnswer(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "answer":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .end local v0    # "answer":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 558
    :catchall_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v2, "onCallTransferring()"

    invoke-static {v1, v2, v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    .line 562
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public whitelist onCalling(Landroid/net/sip/SipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 388
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 389
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    goto :goto_0

    .line 392
    :catchall_0
    move-exception v1

    .line 393
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onCalling():"

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist onError(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 1
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0, p2, p3}, Landroid/net/sip/SipAudioCall;->-$$Nest$monError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    .line 521
    return-void
.end method

.method public whitelist onRegistering(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 526
    return-void
.end method

.method public whitelist onRegistrationDone(Landroid/net/sip/SipSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "duration"    # I

    .line 542
    return-void
.end method

.method public whitelist onRegistrationFailed(Landroid/net/sip/SipSession;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 537
    return-void
.end method

.method public whitelist onRegistrationTimeout(Landroid/net/sip/SipSession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 531
    return-void
.end method

.method public whitelist onRinging(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmLock(Landroid/net/sip/SipAudioCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmSipSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmInCall(Landroid/net/sip/SipAudioCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmSipSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Landroid/net/sip/SipSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v1, p3}, Landroid/net/sip/SipAudioCall;->-$$Nest$mcreateAnswer(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "answer":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v2}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmSipSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v3}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    .end local v1    # "answer":Ljava/lang/String;
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onRinging():"

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    .line 432
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    .line 433
    return-void

    .line 420
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->endCall()V

    .line 421
    monitor-exit v0

    return-void

    .line 432
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist onRingingBack(Landroid/net/sip/SipSession;)V
    .locals 4
    .param p1, "session"    # Landroid/net/sip/SipSession;

    .line 401
    iget-object v0, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-static {v0}, Landroid/net/sip/SipAudioCall;->-$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;

    move-result-object v0

    .line 402
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    goto :goto_0

    .line 405
    :catchall_0
    move-exception v1

    .line 406
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall$1;->this$0:Landroid/net/sip/SipAudioCall;

    const-string v3, "onRingingBack():"

    invoke-static {v2, v3, v1}, Landroid/net/sip/SipAudioCall;->-$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method
