.class Lcom/android/internal/telephony/ImsSmsDispatcher$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
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

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(I)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsConnected imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->setPreVolte(Z)V

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist onRegistering(I)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 176
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsSmsDispatcher;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ImsSmsDispatcher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmIsRegistered(Lcom/android/internal/telephony/ImsSmsDispatcher;Z)V

    .line 184
    iget-object p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$2;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->-$$Nest$fputmRegisteredTransportType(Lcom/android/internal/telephony/ImsSmsDispatcher;I)V

    .line 185
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
