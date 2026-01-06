.class public Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Landroid/telephony/ims/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/ImsCall;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2764
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callQualityChanged(Landroid/telephony/CallQuality;)V
    .locals 4
    .param p1, "callQuality"    # Landroid/telephony/CallQuality;

    .line 3890
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3891
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3892
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3894
    if-eqz v1, :cond_0

    .line 3896
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3899
    goto :goto_0

    .line 3897
    :catchall_0
    move-exception v0

    .line 3898
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callQualityChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3901
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3892
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionCancelTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3786
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3787
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3788
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3789
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3791
    if-eqz v1, :cond_0

    .line 3793
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3796
    goto :goto_0

    .line 3794
    :catchall_0
    move-exception v0

    .line 3795
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionCancelTransferFailed:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3798
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3789
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionCancelTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3768
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3769
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3770
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3773
    if-eqz v1, :cond_0

    .line 3775
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferred(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3778
    goto :goto_0

    .line 3776
    :catchall_0
    move-exception v0

    .line 3777
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionCancelTransferred:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3780
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3771
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3375
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3377
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3378
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3380
    return-void

    .line 3385
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3386
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3387
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3390
    if-eqz v1, :cond_1

    .line 3392
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3395
    goto :goto_0

    .line 3393
    :catchall_0
    move-exception v0

    .line 3394
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3397
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3388
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3402
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3405
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtendReceived :: not supported for transient conference session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3408
    return-void

    .line 3411
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3413
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 3415
    return-void

    .line 3420
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3421
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3422
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3424
    if-eqz v2, :cond_2

    .line 3426
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3429
    goto :goto_0

    .line 3427
    :catchall_0
    move-exception v1

    .line 3428
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3431
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 3422
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public blacklist callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3340
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3344
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3346
    return-void

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2, p3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 3351
    .local v0, "newCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_1

    .line 3352
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3353
    return-void

    .line 3358
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3359
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3360
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3363
    if-eqz v2, :cond_2

    .line 3365
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3368
    goto :goto_0

    .line 3366
    :catchall_0
    move-exception v1

    .line 3367
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3370
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 3361
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public blacklist callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3540
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3541
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3542
    return-void
.end method

.method public blacklist callSessionDtmfReceived(C)V
    .locals 4
    .param p1, "digit"    # C

    .line 3873
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3874
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3875
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3877
    if-eqz v1, :cond_0

    .line 3879
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3882
    goto :goto_0

    .line 3880
    :catchall_0
    move-exception v0

    .line 3881
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionDtmfReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3884
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3875
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3622
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3628
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3629
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3630
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3632
    if-eqz v1, :cond_0

    .line 3634
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3635
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3636
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3634
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3640
    goto :goto_0

    .line 3638
    :catchall_0
    move-exception v0

    .line 3639
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandover :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3642
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3630
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "srcNetworkType"    # I
    .param p3, "targetNetworkType"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3647
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3653
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3654
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3655
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3657
    if-eqz v1, :cond_0

    .line 3659
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 3660
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 3661
    invoke-static {p3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 3659
    invoke-virtual {v1, v0, v2, v3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3665
    goto :goto_0

    .line 3663
    :catchall_0
    move-exception v0

    .line 3664
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandoverFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3667
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3655
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2927
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2930
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2933
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2935
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2937
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmTerminationRequestPending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2940
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$misMergePeer(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    .line 2942
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->needResumeHostAndMerge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2944
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2945
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2946
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateResumeMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2947
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2948
    monitor-exit v0

    return-void

    .line 2953
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V

    .line 2954
    monitor-exit v0

    return-void

    .line 2956
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 2957
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2958
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: Now try to resume single-party session."

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2959
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateResumeMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2960
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergePeer(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    goto :goto_0

    .line 2962
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionHeld :: Completed go back to held for conf session and clearMergeInfo() here."

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2963
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 2965
    :goto_0
    monitor-exit v0

    return-void

    .line 2969
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2970
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 2971
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2972
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2974
    if-eqz v1, :cond_4

    .line 2976
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2979
    goto :goto_1

    .line 2977
    :catchall_0
    move-exception v0

    .line 2978
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2981
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    return-void

    .line 2972
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2985
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2987
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2989
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2991
    return-void

    .line 2994
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2998
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 2999
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3001
    const/4 v0, 0x0

    .line 3004
    .local v0, "isHoldForMerge":Z
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3005
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3006
    const/4 v0, 0x1

    goto :goto_0

    .line 3008
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3009
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3013
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3014
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3015
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3017
    if-eqz v2, :cond_3

    .line 3019
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3022
    goto :goto_1

    .line 3020
    :catchall_0
    move-exception v1

    .line 3021
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3024
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void

    .line 3015
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2999
    .end local v0    # "isHoldForMerge":Z
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public blacklist callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3034
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3036
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3040
    return-void

    .line 3045
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3046
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3047
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3048
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3050
    if-eqz v1, :cond_1

    .line 3052
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3055
    goto :goto_0

    .line 3053
    :catchall_0
    move-exception v0

    .line 3054
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3057
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3048
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3804
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3805
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3806
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3808
    if-eqz v1, :cond_0

    .line 3810
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3813
    goto :goto_0

    .line 3811
    :catchall_0
    move-exception v0

    .line 3812
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionImsCallEvent:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3815
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3806
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionInitiating(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2767
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2772
    return-void

    .line 2777
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2778
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2779
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2782
    if-eqz v1, :cond_1

    .line 2784
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInitiating(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    goto :goto_0

    .line 2785
    :catchall_0
    move-exception v0

    .line 2786
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInitiating :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2789
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2780
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3435
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionInviteParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3437
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3440
    return-void

    .line 3445
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3446
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3447
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3449
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 3451
    if-eqz v1, :cond_1

    .line 3453
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3456
    goto :goto_0

    .line 3454
    :catchall_0
    move-exception v0

    .line 3455
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3458
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3447
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3463
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3465
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3466
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3468
    return-void

    .line 3473
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3474
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3475
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3477
    if-eqz v1, :cond_1

    .line 3479
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3482
    goto :goto_0

    .line 3480
    :catchall_0
    move-exception v0

    .line 3481
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3484
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3475
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V
    .locals 3
    .param p1, "newSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 3215
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: newSession ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3216
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 3221
    :cond_0
    if-eqz p1, :cond_1

    .line 3222
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V

    .line 3225
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V

    .line 3227
    :goto_0
    return-void
.end method

.method public blacklist callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3231
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3235
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3240
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3241
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3244
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 3245
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v2, 0xc2b

    if-ne v1, v2, :cond_2

    .line 3246
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: Put the existed conference session on hold."

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3247
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmSession(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$mcreateHoldMediaProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3248
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    goto :goto_0

    .line 3250
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3251
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 3253
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeFailed :: No merge host for this conference!"

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3255
    :cond_2
    :goto_0
    monitor-exit v0

    .line 3256
    return-void

    .line 3255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist callSessionMergeStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "newSession"    # Landroid/telephony/ims/ImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3181
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3184
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V

    .line 3185
    return-void
.end method

.method public blacklist callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "isMultiParty"    # Z

    .line 3600
    invoke-static {}, Lcom/android/ims/ImsCall;->-$$Nest$sfgetVDBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3601
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged isMultiParty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    .line 3602
    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3601
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3607
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3608
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3609
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3611
    if-eqz v1, :cond_2

    .line 3613
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3616
    goto :goto_1

    .line 3614
    :catchall_0
    move-exception v0

    .line 3615
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMultipartyStateChanged :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3618
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 3609
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2793
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2795
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2799
    return-void

    .line 2804
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 2805
    .local v0, "updatedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 2806
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 2809
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v0}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2812
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v3, :cond_1

    .line 2813
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto :goto_0

    .line 2815
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "Call was closed already, skip updating CallProfile"

    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2817
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2819
    if-eqz v2, :cond_2

    .line 2821
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2824
    goto :goto_1

    .line 2822
    :catchall_0
    move-exception v1

    .line 2823
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionProgressing :: "

    invoke-static {v3, v4, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2826
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-void

    .line 2817
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public blacklist callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3488
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRemoveParticipantsRequestDelivered ::"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3490
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3491
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3493
    return-void

    .line 3498
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3499
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3500
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3502
    if-eqz v1, :cond_1

    .line 3504
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3507
    goto :goto_0

    .line 3505
    :catchall_0
    move-exception v0

    .line 3506
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3509
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3500
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3514
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3516
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3517
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3519
    return-void

    .line 3524
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3525
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3526
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3528
    if-eqz v1, :cond_1

    .line 3530
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3533
    goto :goto_0

    .line 3531
    :catchall_0
    move-exception v0

    .line 3532
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3535
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3526
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3116
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3118
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3121
    return-void

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3125
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 3126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3130
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v1

    .line 3131
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 3132
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 3134
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3135
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3139
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 3140
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3143
    if-eqz v0, :cond_3

    .line 3145
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3148
    goto :goto_1

    .line 3146
    :catchall_0
    move-exception v1

    .line 3147
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3150
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    return-void

    .line 3141
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 3126
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public blacklist callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3154
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3156
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3159
    return-void

    .line 3164
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3165
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3166
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3169
    if-eqz v1, :cond_1

    .line 3171
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3174
    goto :goto_0

    .line 3172
    :catchall_0
    move-exception v0

    .line 3173
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3176
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3167
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3067
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3069
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3072
    return-void

    .line 3077
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 3087
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3088
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v2

    .line 3089
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3091
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V

    .line 3092
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 3094
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V

    .line 3095
    monitor-exit v0

    return-void

    .line 3096
    :cond_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3097
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: Completed go back to original call status and clearMergeInfo() here."

    invoke-static {v1, v3}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3098
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$mclearMergeInfo(Lcom/android/ims/ImsCall;)V

    .line 3099
    monitor-exit v0

    return-void

    .line 3101
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v3, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3105
    if-eqz v2, :cond_3

    .line 3107
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3110
    goto :goto_0

    .line 3108
    :catchall_0
    move-exception v0

    .line 3109
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    invoke-static {v1, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3112
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void

    .line 3103
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 3908
    .local p1, "extensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3909
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3910
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3912
    if-eqz v1, :cond_0

    .line 3914
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3917
    goto :goto_0

    .line 3915
    :catchall_0
    move-exception v0

    .line 3916
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRtpHeaderExtensionsReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3919
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3910
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 3822
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3823
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3824
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3826
    if-eqz v1, :cond_0

    .line 3828
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3831
    goto :goto_0

    .line 3829
    :catchall_0
    move-exception v0

    .line 3830
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttAudioIndicatorChanged:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3833
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3824
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 3750
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3751
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3752
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3754
    if-eqz v1, :cond_0

    .line 3756
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3759
    goto :goto_0

    .line 3757
    :catchall_0
    move-exception v0

    .line 3758
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttMessageReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3761
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3752
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3700
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionRttModifyRequestReceived"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3703
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3705
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v3, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3707
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3719
    if-eqz v1, :cond_0

    .line 3721
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3724
    goto :goto_0

    .line 3722
    :catchall_0
    move-exception v0

    .line 3723
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyRequestReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3726
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3707
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionRttModifyResponseReceived(I)V
    .locals 4
    .param p1, "status"    # I

    .line 3732
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3733
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3734
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3735
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3737
    if-eqz v1, :cond_0

    .line 3739
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3742
    goto :goto_0

    .line 3740
    :catchall_0
    move-exception v0

    .line 3741
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRttModifyResponseReceived:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3744
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3735
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionSendAnbrQuery(III)V
    .locals 4
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 3925
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionSendAnbrQuery in ImsCall"

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3926
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3927
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3928
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3930
    if-eqz v1, :cond_0

    .line 3932
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallSessionSendAnbrQuery(Lcom/android/ims/ImsCall;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3936
    goto :goto_0

    .line 3934
    :catchall_0
    move-exception v0

    .line 3935
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSendAnbrQuery:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3938
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3928
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2865
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2867
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2871
    return-void

    .line 2874
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmIsConferenceHost(Lcom/android/ims/ImsCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2877
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V

    .line 2882
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2883
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2884
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmLastReasonInfo(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2885
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2887
    if-eqz v1, :cond_2

    .line 2889
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2892
    goto :goto_0

    .line 2890
    :catchall_0
    move-exception v0

    .line 2891
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2894
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void

    .line 2885
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2830
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2832
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2836
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2842
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2844
    return-void

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 2850
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2851
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2852
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2854
    if-eqz v1, :cond_1

    .line 2856
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2859
    goto :goto_0

    .line 2857
    :catchall_0
    move-exception v0

    .line 2858
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2861
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 2852
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2838
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionStarted :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2839
    return-void
.end method

.method public blacklist callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 3672
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3675
    return-void

    .line 3678
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suppServiceInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3683
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3684
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3685
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3687
    if-eqz v1, :cond_1

    .line 3689
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3692
    goto :goto_0

    .line 3690
    :catchall_0
    move-exception v0

    .line 3691
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSuppServiceReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3694
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3685
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2898
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: on transient session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2905
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2906
    return-void

    .line 2909
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2910
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: overrideReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2911
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I

    move-result v1

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 2912
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object p2, v0

    .line 2918
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->-$$Nest$mprocessCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2921
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V

    .line 2923
    return-void
.end method

.method public blacklist callSessionTransferFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3856
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3857
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3858
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3860
    if-eqz v1, :cond_0

    .line 3862
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3865
    goto :goto_0

    .line 3863
    :catchall_0
    move-exception v0

    .line 3864
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferFailed:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3867
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3858
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionTransferred(Landroid/telephony/ims/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 3839
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3840
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3841
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3843
    if-eqz v1, :cond_0

    .line 3845
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3848
    goto :goto_0

    .line 3846
    :catchall_0
    move-exception v0

    .line 3847
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTransferred:: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3850
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3841
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I

    .line 3573
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3577
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3578
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3579
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3581
    if-eqz v1, :cond_0

    .line 3583
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3586
    goto :goto_0

    .line 3584
    :catchall_0
    move-exception v0

    .line 3585
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3588
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 3579
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3286
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3288
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3291
    return-void

    .line 3296
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3297
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3298
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3299
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3301
    if-eqz v1, :cond_1

    .line 3303
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3306
    goto :goto_0

    .line 3304
    :catchall_0
    move-exception v0

    .line 3305
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3308
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3299
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3312
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3314
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3317
    return-void

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3323
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3324
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->-$$Nest$fputmProposedCallProfile(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)V

    .line 3325
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->-$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V

    .line 3326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3328
    if-eqz v1, :cond_1

    .line 3330
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3333
    goto :goto_0

    .line 3331
    :catchall_0
    move-exception v0

    .line 3332
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3335
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3326
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3260
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3262
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3265
    return-void

    .line 3270
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3271
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3272
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3275
    if-eqz v1, :cond_1

    .line 3277
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3280
    goto :goto_0

    .line 3278
    :catchall_0
    move-exception v0

    .line 3279
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdated :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3282
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3273
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V
    .locals 4
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 3547
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ussdMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3550
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->-$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3551
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->-$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3553
    return-void

    .line 3558
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v0

    .line 3559
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->-$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 3560
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3562
    if-eqz v1, :cond_1

    .line 3564
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3567
    goto :goto_0

    .line 3565
    :catchall_0
    move-exception v0

    .line 3566
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    invoke-static {v2, v3, v0}, Lcom/android/ims/ImsCall;->-$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3569
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 3560
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
